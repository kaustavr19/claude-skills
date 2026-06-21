#!/usr/bin/env bash
# Builds the static marketplace site into ./site:
#   - copies docs/index.html
#   - zips each skills/<name> folder into site/downloads/<name>.skill
#   - generates site/skills.json from .claude-plugin/marketplace.json
# Requires: bash, zip, jq. Designed to run in CI (ubuntu) or locally.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE="$ROOT/site"
DL="$SITE/downloads"

rm -rf "$SITE"
mkdir -p "$DL"
cp "$ROOT/docs/index.html" "$SITE/index.html"

MARKET="$ROOT/.claude-plugin/marketplace.json"
MARKET_NAME="$(jq -r '.name' "$MARKET")"

# Build downloads + an array of skill objects for skills.json
items='[]'
while IFS= read -r name; do
  src="$ROOT/skills/$name"
  [ -d "$src" ] || { echo "WARN: skills/$name missing, skipping" >&2; continue; }

  # zip the folder so the archive root is <name>/... (matches the .skill format)
  ( cd "$ROOT/skills" && zip -qr "$DL/$name.skill" "$name" )
  size="$(wc -c < "$DL/$name.skill" | tr -d ' ')"

  desc="$(jq -r --arg n "$name" '.plugins[] | select(.name==$n) | .description' "$MARKET")"
  items="$(jq \
    --arg name "$name" \
    --arg desc "$desc" \
    --arg dl "downloads/$name.skill" \
    --argjson size "$size" \
    '. += [{name:$name, description:$desc, download:$dl, size:$size}]' \
    <<<"$items")"
done < <(jq -r '.plugins[].name' "$MARKET")

jq -n \
  --arg marketplace "$MARKET_NAME" \
  --arg repo "kaustavr19/claude-skills" \
  --argjson skills "$items" \
  '{marketplace:$marketplace, repo:$repo, skills:$skills}' \
  > "$SITE/skills.json"

echo "Built $(jq '.skills | length' "$SITE/skills.json") skills into $SITE"
