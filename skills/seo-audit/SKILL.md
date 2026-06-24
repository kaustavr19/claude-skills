---
name: seo-audit
description: >-
  Perform a thorough, professional end-to-end SEO audit of any website —
  covering technical SEO, on-page, structured data, performance/Core Web Vitals,
  multilingual & non-Latin discoverability, and Generative Engine Optimisation
  (GEO / being found via AI assistants like ChatGPT, Perplexity, Gemini). Runs a
  CORE six-pillar audit by default with optional DEEP LENSES (Local, E-commerce,
  Off-page, International). Produces a severity-tiered report with RAG status and
  an impact×effort action plan.
  Use whenever the user wants to audit, diagnose, or improve a site's search
  visibility — "audit my SEO", "why isn't my site ranking", "is my site
  indexed", "technical SEO check", "get found in ChatGPT/AI search", "GEO
  audit", or "my non-English / bilingual site isn't showing up". Also trigger
  when the user shares a URL and asks about discoverability, indexing,
  crawlability, schema, sitemaps, robots.txt, or hreflang — even without saying
  "SEO", and even for a pointed question like "is my robots.txt blocking
  Google?".
---

# SEO Audit

A complete, professional SEO audit engine. It diagnoses why a site is or isn't
discoverable across search engines (Google, Bing, and others) **and** across AI
assistants (ChatGPT, Perplexity, Gemini, Claude, Google AI Overviews), then
hands back a prioritised, dev-ready remediation plan.

This skill is built to **degrade gracefully**. It works whether you have a live
browser, only `web_fetch`, or nothing but a screenshot and a pasted
`robots.txt`. Never block on a tool you don't have — gather what you can, state
what you couldn't verify, and audit the rest.

---

## Step 0 — Gate on depth BEFORE auditing (do not skip)

A full audit with every lens is overwhelming and usually wasteful. **Always
establish scope first.** Ask the user (one short question, offer the options):

> "I'll run the **CORE audit** by default — Crawlability & Indexing, On-page,
> Structured Data, Performance, Multilingual Discoverability (only if the site
> isn't plain English), and GEO/AI Discoverability.
> Want any **deep lenses** on top? **Local SEO** · **E-commerce SEO** ·
> **Off-page & Authority** · **International SEO**."

If the user has already specified scope, or clearly just wants a fast
single-issue answer ("is my robots.txt blocking Google?"), **skip the gate and
go straight to the relevant pillar.** Judgment over ceremony.

Do not run deep lenses unless asked. Do not pad the report with "N/A" sections.

---

## Step 1 — Recon: gather what the environment allows

Audit quality depends on what you can observe. Get the richest data the
environment permits, then proceed with whatever you have.

The full data-gathering playbook — browser-based live crawl, `web_fetch`
fallback, the rendered-DOM-vs-raw-HTML test, the Bing-index check that routes
around CAPTCHA, schema/robots/sitemap inspection, and how to detect
client-side-rendering blindness — lives in
**`references/live-recon-appendix.md`**. Read it whenever you have *any* live
access (browser or fetch). If you have neither, work from user-supplied
material (screenshots, pasted source, exported data) and clearly mark anything
unverifiable.

**The one recon check that changes everything:** does the page's *rendered*
content exist in the *raw server HTML*, or only after JavaScript runs? A raw
fetch that returns an empty shell while the live page shows content means the
site is client-side-rendered and search/AI crawlers may see nothing. This single
test reframes the whole audit — run it first when you can.

---

## Step 2 — Run the CORE pillars (always)

For each pillar: diagnose against the checks below, assign a **RAG status**
(🔴 Red / 🟡 Amber / 🟢 Green), and capture specific, evidenced findings — quote
the actual tag, score, or value you observed, not a generality.

### Pillar 1 — Crawlability & Indexing
The foundation. If crawlers can't reach or render it, nothing else matters.
- `robots.txt`: present, well-formed, not accidentally blocking key paths or
  `Googlebot`/`bingbot`. Note any AI-crawler directives (these matter for
  Pillar 6).
- XML sitemap(s): present, declared in robots, fresh `lastmod`, accurate URL
  set. **Watch for orphaned content** — sections that are indexed but missing
  from the sitemap (a common, costly miss).
- Rendering: SSR/SSG vs client-side-only (see the critical recon test above).
- Canonicalisation: self-referential canonicals, no duplicate-content sprawl,
  no parameter/session-ID chaos.
- Index status: spot-check `site:` on Google **and** Bing — they often differ.
  A stale cache on one engine is a crawl-freshness issue, not a content issue.
- IndexNow (Bing/Yandex instant indexing): is it enabled? On Cloudflare/CDN
  hosts it's often a one-click toggle and a big quick win for frequently-updated
  sites.

### Pillar 2 — On-page SEO
- Title tags: unique, descriptive, keyword-bearing, not truncated/duplicated.
- Headings: exactly one meaningful `H1` per page, logical `H2`/`H3` hierarchy.
- Meta descriptions: written (not auto-truncated), compelling, unique. Flag
  generic boilerplate that could belong to any site — it wastes the highest-
  value pages.
- Image `alt` text: present and descriptive (accessibility + image-search win).
- Internal linking: real `<a href>` links (not JS-onclick traps), descriptive
  anchors, healthy distribution of link equity.

### Pillar 3 — Structured Data (Schema)
- What schema types are emitted, and where. Map coverage by page type.
- **Coverage gaps are the usual finding**: rich schema on detail pages but bare
  hubs/category pages — the pages most likely to rank are the least decorated.
- Rich-result eligibility: does the markup unlock stars, prices, breadcrumbs,
  FAQ, etc.? Flag missing `aggregateRating`/`Review` when a reviews UI exists.
- Validity: required properties present; types appropriate to content.

### Pillar 4 — Performance & Core Web Vitals
- Pull field data when possible (PageSpeed Insights / CrUX). State clearly when
  you only have lab/structural signals, not field data.
- LCP, INP, CLS — the three that matter. Identify the likely LCP element.
- Structural signals you *can* check without field data: CDN presence, image
  delivery/optimisation, lazy-loading below the fold, render-blocking resources,
  excessive DOM/image counts.

### Pillar 5 — Multilingual & Non-Latin Discoverability *(conditional)*
**Run this pillar only if the site is not plain monolingual English.** Detect
first; if English-only, skip silently — no "N/A" noise.

**Detection:** scan the rendered content for non-Latin Unicode ranges and/or
multiple languages. (Bengali `\u0980–\u09FF`, Devanagari `\u0900–\u097F`,
Arabic `\u0600–\u06FF`, CJK `\u4E00–\u9FFF`, Cyrillic `\u0400–\u04FF`, etc.) If
found, run this pillar parameterised to whatever language(s) you detected.

This pillar exists because mainstream SEO advice is English-blind, and the
failure modes below silently destroy discoverability for billions of non-English
searchers. Full guidance — including per-script notes and the phonetic-search
strategy — is in **`references/multilingual-discoverability.md`**. The universal
checks:

- **Text-as-image trap** *(the #1 killer)*: is non-Latin text real, selectable
  Unicode, or baked into images? If it's images, crawlers and LLMs read nothing.
  This single issue sinks more non-Latin sites than all others combined.
- **Language-signal vs content mismatch**: does `<html lang>` match the actual
  page language? Is `inLanguage` set in schema? Is `hreflang` present? A page
  that is visibly Bengali but declares `lang="en"` with no `inLanguage` tells
  search engines the wrong thing — they won't serve it to native-script
  searchers. This is extremely common and extremely fixable.
- **Phonetic / romanized search**: every non-Latin language has a diaspora
  pattern where readers type the language on a QWERTY keyboard (Banglish for
  Bengali, Pinyin for Chinese, Romaji for Japanese, franco-arabe for Arabic).
  Sites that only carry native script miss this entirely. The fix: a visible
  romanized/transliterated line for titles and names.
- **Three-mode coverage**: for full findability a key term should appear in
  native script, English/translated form, AND romanized transliteration.
- **RTL correctness** (Arabic, Hebrew, Urdu, Farsi): `dir="rtl"`, mirrored
  layout, correct bidi handling.

### Pillar 6 — GEO / AI Discoverability (Generative Engine Optimisation)
Being cited and recommended inside AI assistants is now its own discipline. Full
playbook — including the crawler opt-in table — is in
**`references/geo-playbook.md`**. The core checks:

- **AI crawler policy**: does `robots.txt` block AI crawlers? Distinguish
  *training* crawlers (e.g. `GPTBot`, `Google-Extended`) from *answer/search*
  crawlers (e.g. `OAI-SearchBot`, `ChatGPT-User`, `PerplexityBot`). Blocking the
  search/answer bots opts the site out of AI **citations**, not just training —
  often unintentionally. Recommend the surgical split if the user wants AI
  visibility while withholding training.
- **AI Overviews**: powered by ordinary `Googlebot` — so strong classic SEO
  *is* the AI-Overviews strategy. No unblocking needed there.
- **Answer-shaped content**: pages that directly answer a question are far more
  citable than bare grids/listings.
- **Entity clarity**: `Organization`/`Person`/`Product` schema + `sameAs` links
  build the entity graph LLMs reason over.
- **`llms.txt`**: an emerging convention — a curated markdown map of key
  content. Cheap to add, increasingly recognised.

---

## Step 3 — Deep lenses (only if requested in Step 0)

Each lens has its own reference file — read it only when that lens is selected:

- **Local SEO** → `references/deep-lens-local.md` (Google Business Profile, NAP
  consistency, local pack, reviews, local schema)
- **E-commerce SEO** → `references/deep-lens-ecommerce.md` (product feeds /
  Merchant Center, faceted-nav crawl traps, pagination, product schema depth)
- **Off-page & Authority** → `references/deep-lens-offpage.md` (backlink profile,
  E-E-A-T, brand signals, digital PR angles)
- **International SEO** → `references/deep-lens-international.md` (hreflang at
  scale, ccTLD vs subdomain vs subfolder, geotargeting, currency/locale).
  *Distinct from Pillar 5:* Pillar 5 is content discoverability in any script;
  this lens is the geo/locale-targeting machinery for multi-region sites.

---

## Step 4 — Synthesise and produce the report

Use the structure in **`assets/report-template.md`**. Core requirements:

- **Lead with an executive summary** + a scorecard table (pillar → RAG/score →
  one-line read). Give a single honest composite verdict.
- **Severity tiers** for every finding: 🔴 Critical · 🟠 High · 🟡 Medium ·
  🟢 Low. Tie severity to *visibility impact*, not effort.
- **Evidence over assertion**: cite the actual observed tag/score/value. "The
  homepage declares `lang=\"en\"` while its H1 and body are Bengali" beats "i18n
  could be improved."
- **Prioritised action table**: impact × effort, with an Owner column
  (Dev / Content / Strategy) and an Effort estimate (S/M/L). Order by
  impact ÷ effort so the 80/20 is obvious.
- **Be honest about scope**: if you had no Search Console / analytics / field
  data, say so and frame findings as on-page/technical/structural — never
  fabricate traffic or ranking numbers.
- **Default to Markdown.** Offer a polished Word document (.docx) if the user
  wants a client-ready deliverable; if so and a `docx` skill is available, use
  it. For non-Latin content in a generated doc, ensure a font that covers the
  script is embedded (e.g. Noto Sans for the relevant language) or the text will
  render as boxes.

---

## Self-contained but aware: handoffs

This skill is fully self-contained — it never *requires* another skill. But if
the user has these installed and the audit would benefit, hand off rather than
reinvent:

- Deep **visual/aesthetic** critique requested → `visual-aesthetics-audit`.
- **Competitor comparison / benchmark** requested → `competitive-benchmark`.
- **Market positioning / pricing strategy** → `market-intelligence`.
- Full **WCAG accessibility** audit → `audit` (a11y), though on-page `alt`/lang
  checks remain in scope here.

If those skills aren't present, do a lightweight inline version and note that a
deeper dedicated pass is available.

---

## Operating principles

- **Graceful degradation is the whole game.** Some data beats no audit. State
  confidence levels; never stall on a missing tool.
- **Believe the evidence, even when it's surprising** (a stale cache, an
  unexpected block). But re-check conspiracy-adjacent or high-stakes claims.
- **Specific and kind.** This is often someone's project or livelihood. Lead
  with what's working, be precise about what isn't, and make every problem
  actionable. The goal is a fixed site, not a impressive-looking teardown.
- **Don't boil the ocean.** The depth gate exists for a reason. Respect it.
