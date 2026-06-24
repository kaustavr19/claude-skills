# seo-audit

A Claude skill for end-to-end, professional SEO audits — technical, on-page,
structured data, performance, **multilingual / non-Latin discoverability**, and
**GEO (Generative Engine Optimisation — being found via AI assistants)**.

Built to **degrade gracefully**: it works with a live browser, with only
`web_fetch`, or with nothing but a screenshot and a pasted `robots.txt`.

## What makes it different
- **Conditional multilingual pillar.** Detects the scripts/languages actually
  present and audits non-Latin discoverability (text-as-image traps,
  `lang`/`hreflang`/`inLanguage` mismatches, phonetic/romanized search, RTL) —
  then *skips itself silently* on plain-English sites. Most SEO tools are
  English-blind; this one isn't.
- **GEO / AI search built in.** Distinguishes AI *training* crawlers from
  *answer/search* crawlers so you can be cited in ChatGPT/Perplexity/Claude
  without feeding model training — a distinction most guidance misses.
- **CORE + optional deep lenses.** A six-pillar CORE pass runs by default;
  Local, E-commerce, Off-page/Authority, and International lenses load only when
  asked.
- **Self-contained but aware.** Needs no other skill, but hands off to
  `visual-aesthetics-audit`, `competitive-benchmark`, or `market-intelligence`
  when they're installed and relevant.

## Structure
```
seo-audit/
├── SKILL.md                                  # workflow, depth gate, CORE pillars, output
├── references/
│   ├── live-recon-appendix.md                # tool-aware data-gathering playbook
│   ├── multilingual-discoverability.md       # the conditional non-Latin pillar
│   ├── geo-playbook.md                        # AI/GEO + crawler opt-in table
│   ├── deep-lens-local.md
│   ├── deep-lens-ecommerce.md
│   ├── deep-lens-offpage.md
│   └── deep-lens-international.md
└── assets/
    └── report-template.md                     # severity-tiered report skeleton
```

## Usage
Trigger it by asking for an SEO audit, or just by sharing a URL and asking why
you're not ranking / not indexed / not showing up in AI search. It will confirm
scope (CORE vs deep lenses), gather what the environment allows, and return a
severity-tiered report with an impact×effort action plan.

## License
MIT.
