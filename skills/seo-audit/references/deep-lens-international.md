# Deep Lens — International SEO

Run only when selected. The geo/locale-targeting machinery for sites serving
**multiple countries or regions**. Distinct from Pillar 5 (Multilingual
Discoverability): Pillar 5 is about content being findable in any script; this
lens is about correctly targeting the right region/locale at scale.

## Checks
- **URL structure for international targeting:** ccTLD (`example.fr`) vs
  subdomain (`fr.example.com`) vs subfolder (`example.com/fr/`). Subfolders are
  usually simplest to consolidate authority; ccTLDs give the strongest geo
  signal but split authority. Assess what they chose and whether it fits their
  resources.
- **`hreflang` at scale:** every language/region variant cross-references every
  other, reciprocally, with a valid `x-default`. Common bugs: missing return
  tags, wrong region codes, non-canonical hreflang URLs, hreflang pointing to
  redirecting/404 pages. This is the #1 international SEO failure.
- **Correct language–region codes:** `en-GB` vs `en-US`, `pt-BR` vs `pt-PT`,
  `es-MX` vs `es-ES`. Wrong or invented codes are ignored.
- **Geotargeting in Search Console:** set appropriately (or deliberately left
  global) for the chosen URL structure.
- **Localisation depth:** currency, date formats, units, payment methods,
  shipping info, and genuinely translated content (not machine-translated
  boilerplate or, worse, mixed-language pages).
- **Server/CDN & performance by region:** acceptable latency in target markets;
  no aggressive geo-redirects that trap crawlers in one locale.
- **Avoid auto-redirect-by-IP:** redirecting users (and crawlers) by IP can
  prevent indexing of other locales. Prefer suggestion banners + correct
  hreflang.

## Reporting
hreflang correctness is almost always the core finding — validate reciprocity
and codes precisely, and quote the specific broken pairs. Tie URL-structure
advice to the user's actual scale and team capacity.
