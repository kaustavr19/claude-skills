# Multilingual & Non-Latin Discoverability

Detailed guidance for Pillar 5. Read this when the site is **not** plain
monolingual English. The goal: make content findable in **every way a real
person might search for it**, in any language or script.

Mainstream SEO tooling is overwhelmingly English-centric and silently ignores
the failure modes below — which is exactly why a site that does everything else
right can still be invisible to its actual audience.

---

## Step A — Detect before you audit

Don't assume. Scan the rendered content and classify:

1. **Which scripts are present?** Check for non-Latin Unicode ranges:

   | Script | Unicode range | Languages |
   |---|---|---|
   | Bengali | `\u0980–\u09FF` | Bengali, Assamese |
   | Devanagari | `\u0900–\u097F` | Hindi, Marathi, Nepali, Sanskrit |
   | Tamil | `\u0B80–\u0BFF` | Tamil |
   | Telugu | `\u0C00–\u0C7F` | Telugu |
   | Arabic | `\u0600–\u06FF` | Arabic, Urdu, Persian (RTL) |
   | Hebrew | `\u0590–\u05FF` | Hebrew (RTL) |
   | CJK | `\u4E00–\u9FFF` | Chinese, Japanese kanji |
   | Hiragana/Katakana | `\u3040–\u30FF` | Japanese |
   | Hangul | `\uAC00–\uD7AF` | Korean |
   | Cyrillic | `\u0400–\u04FF` | Russian, Ukrainian, etc. |
   | Thai | `\u0E00–\u0E7F` | Thai |

   A quick programmatic test (adapt the range to the script you suspect):
   `/[\u0980-\u09FF]/.test(text)` → true means real Bengali text is present.

2. **Is it monolingual English?** If no non-Latin script and a single language →
   **skip this pillar entirely.** Don't generate empty "not applicable" sections.

3. **What's the audience?** In-country, diaspora, or both? This changes the
   recommendation (diaspora ⇒ phonetic search and `hreflang` targeting matter
   much more).

---

## Step B — The five universal checks

### 1. The text-as-image trap (check this first — it's the #1 killer)
Non-Latin text is frequently baked into images (banners, covers, "stylish"
headings) because of font/rendering fears. If the title, headings, or body are
images, **search engines and LLMs read nothing** — the single most catastrophic
non-Latin SEO failure.

- **Test:** can you select the text? Does it appear in the rendered DOM as text,
  or only as `<img>`? Does the Unicode-range test above find it in
  `document.body.innerText`?
- **If image-based:** this is almost always the top finding. Recommend real
  Unicode web text with a proper web font (Noto family covers nearly every
  script). Everything else is secondary until this is fixed.
- **If real Unicode text:** call it out as a genuine strength — most competitors
  get this wrong.

### 2. Language-signal vs content mismatch (the most common fixable bug)
The page is visibly in language X, but the machine-readable signals say
otherwise. Check all three:

- `<html lang="...">` — does it match the dominant content language? A Bengali
  page declaring `lang="en"` is actively misleading Google.
- Schema `inLanguage` — present on `Book`/`Article`/`Product`/`WebPage`? Often
  missing entirely, leaving structured data language-agnostic.
- `hreflang` — present anywhere? For a single-language non-English site, at
  minimum `hreflang="<lang>"` + `x-default`. For parallel-language versions,
  reciprocal tags pairing the URLs.

When visible content and these signals disagree, **the signals lose** — engines
may decline to serve the page to native-script searchers. Fixing this is small
code, large payoff.

### 3. Phonetic / romanized search (the channel everyone forgets)
Every non-Latin language has a diaspora pattern: people who can *read* the script
but *type* on a QWERTY keyboard, so they search phonetically.

| Language | Phonetic/romanized form | Example |
|---|---|---|
| Bengali | "Banglish" | `rabindranath boi`, `tenjing norge` |
| Hindi | Romanized Hindi | `premchand ki kahani` |
| Chinese | Pinyin | `hong lou meng` |
| Japanese | Rōmaji | `natsume soseki` |
| Arabic | Franco-arabe / Arabizi | `naguib mahfouz ktab` |
| Korean | Romanization | `han kang chaek` |

Sites carrying only native script miss this traffic completely. **Fix:** add a
visible romanized/transliterated line for titles and proper names. It's often
the single highest-ROI content change for diaspora-facing sites.

### 4. Three-mode coverage
For a key term (a book title, an author, a product) to be findable no matter how
it's typed, it should appear in indexable on-page text in **all three** forms:

1. **Native script** — in title, H1, description.
2. **English / translated** — meaning or English equivalent, plus English
   descriptive/genre terms.
3. **Romanized transliteration** — as a visible subtitle line.

Three lines of text, total findability. Most sites do one; the leaders do all
three. This is usually a concrete, copy-pasteable recommendation per item.

### 5. RTL correctness (Arabic, Hebrew, Urdu, Farsi)
- `dir="rtl"` set correctly at the right scope.
- Layout actually mirrors (navigation, alignment, icons) rather than LTR with
  RTL text jammed in.
- Bidirectional (bidi) handling where LTR (numbers, English brand names) mixes
  into RTL text — a frequent source of garbled rendering.

---

## Step C — Where the signals must live
Meta keywords are ignored by Google — putting native-script terms only in
`<meta keywords>` does nothing. Native-script and romanized terms must appear in
**visible, indexable** places: titles, H1/H2, body copy, descriptions,
`alt` text, and schema. Category/hub pages especially benefit from a short
keyword-bearing intro paragraph in the native script before the product grid.

---

## Step D — Competitive framing
Non-Latin search is frequently an **under-contested** space. Incumbents often
operate in a single "script lane" (English metadata over native inventory, or
native script with no transliteration) and rarely set correct language signals.
A site that nails real Unicode text + correct signals + three-mode coverage can
become the most thoroughly findable option in its niche — a winnable #1 because
few competitors are even running that race. Say so when it's true; it reframes
the audit from "list of problems" to "an open lane."
