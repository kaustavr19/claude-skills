# Live Recon Appendix — gathering audit data

How to collect audit data with whatever tooling is available. This is the
optional "Layer C" playbook: the frameworks in SKILL.md are tool-agnostic; this
file is the craft for users who have live access. **Degrade gracefully** — use
the richest method available, fall back cleanly, and mark anything you couldn't
verify.

---

## Tool tiers (best → minimal)

1. **Live browser (best).** Renders JavaScript, exposes the real DOM, follows
   navigation. Required to truly assess client-side-rendered sites.
2. **`web_fetch` / HTTP fetch.** Gets raw server HTML, `robots.txt`,
   `sitemap.xml`, schema in `<head>`. Cannot run JS — which is itself a useful
   signal (see the SSR test below).
3. **User-supplied material.** Screenshots, pasted source, exported
   GSC/analytics data. Audit what you're given; state the limits.

You will often combine tiers (e.g. fetch raw HTML *and* render in a browser to
compare). No permission needed to use available tools — just use them.

---

## The critical test: rendered DOM vs raw HTML (CSR blindness)

The single most reframing check. Do both and compare:

- **Raw fetch** of a content page (`web_fetch`). Note whether the body contains
  the actual content (titles, product info, article text) or just an empty
  shell / loading skeleton.
- **Rendered DOM** (browser). Note the same content after JS executes.

Interpretation:
- Raw HTML **has** the content → server-rendered (SSR/SSG). Crawlers and most AI
  bots see it. Good.
- Raw HTML **empty**, rendered DOM **full** → **client-side-rendered**. Googlebot
  may eventually render it, but Bing and most AI crawlers often won't. This is
  frequently the top technical finding — flag it prominently.
- Check the **homepage and a key content page separately** — sites often SSR
  detail pages but leave the homepage/hub client-only.

---

## Inspecting structured data, language signals, and meta

When you have a browser, a single read of the rendered DOM gets most of it.
Useful things to extract (adapt as needed):

- `document.title`, all `H1`/`H2` text, `<html lang>`.
- `meta[name=description]`, `link[rel=canonical]`, `og:type`/OG tags.
- Every `script[type="application/ld+json"]` block → parse and list `@type`s and
  key properties (`offers`, `aggregateRating`, `inLanguage`).
- All `link[rel=alternate]` → `hreflang` map.
- Image count and how many lack `alt`.
- Non-Latin presence: run the Unicode-range test on `document.body.innerText`.

If a JS-execution tool is blocked or filtered, fall back to the accessibility
tree / page-text read, or to `web_fetch` of the raw HTML and parse the `<head>`
and any inline JSON-LD from the markup directly.

---

## Checking the Bing index (around CAPTCHA)

Bing frequently differs from Google and is worth checking — but Bing's own
`site:` search often throws a bot-challenge/CAPTCHA. **Do not attempt to solve
CAPTCHAs.** Route around it:

- **DuckDuckGo is Bing-powered.** A `site:domain.com` query via DuckDuckGo's
  results reflects Bing's index — titles, descriptions, and which pages are
  known. Use this to gauge Bing coverage and spot orphaned/indexed content.
- Compare against Google's `site:` result. Divergence is informative: a stale
  cached page on one engine is a **crawl-freshness** issue (fixable with a
  re-index request), not a content problem — verify by checking the *live* page.

---

## Robots, sitemap, and IndexNow

- Fetch `/robots.txt` directly. Read every directive; note AI-crawler rules for
  the GEO pillar. Confirm the sitemap is declared.
- Fetch the sitemap(s). Count URLs, check `lastmod` freshness, and — importantly
  — look for **orphaned sections**: content that's indexed (shows in `site:`)
  but absent from any sitemap. Probe likely-missing sitemaps (e.g.
  `/sitemap-articles.xml`) — a 404 confirms the gap.
- **IndexNow**: on Cloudflare/CDN-hosted sites this is often a one-click toggle
  (Crawler Hints) that instantly notifies Bing/Yandex on content change. Check
  whether it's plausibly enabled; recommend it for frequently-updated sites as a
  high-value, low-effort win.

---

## Performance / Core Web Vitals

- If a PageSpeed Insights / CrUX path is available, pull **field** data (real
  LCP/INP/CLS). State clearly when you only have lab or structural signals.
- Structural signals you can read without field data: CDN presence, image-
  delivery/optimisation, `loading="lazy"` below the fold, render-blocking
  resources, total image/DOM counts. Identify the likely LCP element.

---

## Honesty rules
- Never fabricate traffic, rankings, or field metrics you couldn't observe.
- Tag findings with confidence when data was partial.
- If you had no GSC/analytics access, say so once, plainly, and frame the audit
  as on-page/technical/structural.
