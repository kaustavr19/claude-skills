# Claude Skills by Kaustav Roy

A collection of [Claude](https://claude.com/claude-code) skills I've built — focused
on UX, AI, and design workflows. Free for anyone to use.

## What's inside

Each skill lives in its own folder under [`skills/`](skills/) and contains a
`SKILL.md` (the entry point) plus any supporting files.

| Skill | What it does |
|-------|--------------|
| `example-skill` | Template — replace with real skills |

## How to use these skills

### Option A — Install via the marketplace (recommended)

In Claude Code, add this repo as a skill/plugin marketplace:

```
/plugin marketplace add kaustavr19/claude-skills
/plugin install example-skill@kaustav-skills
```

Then invoke a skill by name, or let Claude trigger it automatically based on its
`description`.

### Option B — Manual install

Clone the repo and copy any skill folder into your personal skills directory:

```bash
git clone https://github.com/kaustavr19/claude-skills.git
cp -r claude-skills/skills/example-skill ~/.claude/skills/
```

## Authoring a new skill

1. Create a folder under `skills/<your-skill-name>/`.
2. Add a `SKILL.md` with YAML frontmatter (`name`, `description`) — see
   [`skills/example-skill/SKILL.md`](skills/example-skill/SKILL.md) for the shape.
3. Write a sharp `description`: it's what Claude matches against to decide when to
   trigger the skill. Include concrete trigger phrases and scenarios.
4. Register it in [`.claude-plugin/marketplace.json`](.claude-plugin/marketplace.json).
5. Add a row to the table above.
6. Commit and push.

## License

[MIT](LICENSE) — use, modify, and share freely.
