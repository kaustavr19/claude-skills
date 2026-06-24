# Deep Lens — E-commerce SEO

Run only when selected. For stores selling products online. Goal: maximise
product/category visibility and avoid the crawl-efficiency traps that plague
e-commerce.

## Checks
- **Product schema depth:** `Product` + `Offer` with `price`, `priceCurrency`,
  `availability`, `sku`/`gtin`/`mpn`, plus `aggregateRating`/`Review` when
  reviews exist. Missing availability/currency blocks rich results.
- **Faceted navigation crawl traps:** filter/sort URL parameters
  (`?color=&size=&sort=`) generate near-infinite low-value URLs that waste crawl
  budget and create duplication. Check for `canonical` to the clean category
  URL, sensible `robots`/`noindex` on filtered states, and that crawlable links
  aren't generated for every facet combination.
- **Pagination:** category pages handle deep pagination cleanly (self-canonical
  per page or a "view all"/load-more that's crawlable). Avoid orphaning page 2+.
- **Product feed / Merchant Center:** is there a product feed for Google
  Shopping / free listings? Feed accuracy (titles, GTINs, availability) drives
  Shopping visibility.
- **Out-of-stock / discontinued handling:** don't 404 valuable URLs; keep,
  redirect, or mark availability so equity and rankings aren't lost.
- **Category page content:** unique intro copy + `ItemList`/`CollectionPage`
  schema, not just a bare grid — these are primary ranking pages.
- **Internal search & related products:** distribute equity; avoid indexing
  internal search-results pages.
- **Duplicate products:** variants (size/colour) shouldn't spawn duplicate
  indexable URLs without canonicalisation.

## Reporting
Faceted-nav crawl traps and missing `Offer` properties are the classic
high-impact findings. Quantify where possible (e.g. "filters generate N
parameterised URLs, none canonicalised").
