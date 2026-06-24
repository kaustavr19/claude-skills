# Deep Lens — Content / Publisher SEO

Run only when selected. For sites whose product *is* content: blogs, news,
magazines, literary/editorial sites, documentation-led knowledge hubs. Goal:
build topical authority and sustained organic visibility from a body of content,
not from a product catalogue.

## Checks
- **Topical authority & content clusters:** is content organised into
  pillar pages (broad topic) + cluster pages (specific subtopics) that link to
  each other? Scattered one-off posts with no clustering signal weak topical
  authority. Map what clusters exist vs. what the niche demands.
- **Content depth & intent match:** do key pages actually satisfy the search
  intent fully, or are they thin? Identify thin/overlapping pages competing for
  the same query (keyword cannibalisation).
- **Freshness & content decay:** news/evergreen content loses rankings as it
  ages or facts go stale. Are there high-value pages decaying that should be
  refreshed and re-dated? Is `lastmod`/`dateModified` accurate?
- **Author E-E-A-T:** named authors with real bios, credentials, and
  `Author`/`Person` schema linked via `sameAs`. Critical for trust, especially
  YMYL topics. Anonymous content underperforms.
- **Article schema:** `Article`/`NewsArticle`/`BlogPosting` with headline,
  author, `datePublished`/`dateModified`, image. Often missing or applied
  generically — check it's actually on article pages, not just the homepage.
- **Internal linking as topic modelling:** articles should link to related
  articles and to the relevant pillar with descriptive anchors. This is how
  search engines (and LLMs) infer topical relationships. Orphaned articles
  (indexed but barely linked, missing from sitemaps) are a common, costly miss.
- **Editorial sitemaps:** a dedicated news/article sitemap (or sitemap index)
  so editorial content is discoverable separately from any commercial tree.
- **Engagement & format signals:** scannable structure (headings, lists), table
  of contents for long reads, FAQ schema where appropriate, multimedia.
- **Archive/taxonomy hygiene:** tag/category archive pages that generate thin,
  duplicative, or infinite paginated URLs — control indexation deliberately.

## GEO note
Editorial content is the prime fuel for AI citations (Pillar 6). Answer-shaped,
well-sourced, clearly-authored articles are exactly what LLMs cite. A strong
content lens and the GEO pillar reinforce each other — cross-reference them.

## Reporting
Lead with topical-cluster gaps and any orphaned/decaying high-value content —
usually the highest-leverage findings. Tie recommendations to building authority
in specific topic areas, not just fixing individual pages.
