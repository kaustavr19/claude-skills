# Claude Skills

A community-maintained, open collection of [Claude](https://claude.com/claude-code)
skills for UX, AI, writing, and design workflows. Free for anyone to use — and
open to contributions.

**🌐 Browse & search the marketplace:** https://kaustavr19.github.io/claude-skills/

## What's inside

Each skill lives in its own folder under [`skills/`](skills/) and contains a
`SKILL.md` (the entry point) plus any supporting files.

| Skill | Category | What it does |
|-------|----------|--------------|
| [`anti-ai-slop`](skills/anti-ai-slop) | Writing | Cuts hedging, filler, and generic phrasing from writing |
| [`article-formatter`](skills/article-formatter) | Writing | Formats articles for LinkedIn, Medium, Substack, and other platforms |
| [`competitive-benchmark`](skills/competitive-benchmark) | Strategy | Benchmarks a website against competitors and synthesises a strategy |
| [`market-intelligence`](skills/market-intelligence) | Strategy | Builds a strategic market brief — trends, audience, competitor deep-dives |
| [`seo-audit`](skills/seo-audit) | Strategy | End-to-end SEO audit — technical, on-page, schema, Core Web Vitals, and AI-search (GEO) |
| [`ux-audit`](skills/ux-audit) | Design | Professional UI/UX audit across six frameworks, with optional deep lenses |
| [`visual-aesthetics-audit`](skills/visual-aesthetics-audit) | Design | Critiques visual design from screenshots/URLs with specific fix values |

## How to use these skills

### Option A — Install via the marketplace (recommended)

In Claude Code, add this repo as a skill/plugin marketplace:

```
/plugin marketplace add kaustavr19/claude-skills
/plugin install ux-audit@claude-skills
```

Then invoke a skill by name, or let Claude trigger it automatically based on its
`description`.

### Option B — Download from the website

Go to https://kaustavr19.github.io/claude-skills/, find a skill, and click
**Download .skill**. Drop the file into your skills directory or share it.

### Option C — Manual install from source

Clone the repo and copy any skill folder into your personal skills directory:

```bash
git clone https://github.com/kaustavr19/claude-skills.git
cp -r claude-skills/skills/ux-audit ~/.claude/skills/
```

## Contributing a new skill

Contributions are welcome — open a PR.

1. Create a folder under `skills/<your-skill-name>/`.
2. Add a `SKILL.md` with YAML frontmatter (`name`, `description`). The
   `description` is what Claude matches against to decide when to trigger the
   skill, so make it rich with concrete trigger phrases and scenarios.
3. Register it in [`.claude-plugin/marketplace.json`](.claude-plugin/marketplace.json),
   including a `category` (e.g. Writing, Strategy, Design).
4. Add a row to the table above.
5. Open a pull request.

The website and downloadable `.skill` files are rebuilt and deployed
automatically on every push to `main` — no manual build step needed.

## License

[MIT](LICENSE) — use, modify, and share freely.
