# SEO Audit Report Template

Use this structure for the deliverable. Adapt depth to scope (CORE vs lenses).
Default to Markdown; offer a polished `.docx` for client-ready needs. Omit any
pillar that doesn't apply (e.g. skip Multilingual for plain-English sites) — do
not leave empty "N/A" sections.

---

```
# SEO Audit — [Site Name]
[one-line scope: target URL, what was assessed, what data was/ wasn't available]

## 1. Executive Summary
- 2–4 short paragraphs: the honest headline read, the few findings that matter
  most, and the realistic path forward.
- **Scorecard** table:

  | Dimension | RAG / Score | One-line read |
  |---|---|---|
  | Crawlability & Indexing | 🟢 9/10 | … |
  | On-page | 🟡 7/10 | … |
  | Structured Data | … | … |
  | Performance | … | … |
  | Multilingual Discoverability* | … | … |
  | GEO / AI Discoverability | … | … |
  | [selected deep lenses] | … | … |

- **Composite verdict:** one honest sentence.

## 2. Methodology & Scope
- How data was gathered (browser / fetch / user-supplied) and what's out of
  scope (e.g. no GSC/analytics → no traffic or ranking figures).

## 3. Findings by Pillar
For each pillar: RAG status, then evidenced findings (quote the actual observed
tag/score/value), then specific fixes. Severity-tag each finding:
🔴 Critical · 🟠 High · 🟡 Medium · 🟢 Low.

### 3.1 Crawlability & Indexing
### 3.2 On-page
### 3.3 Structured Data
### 3.4 Performance & Core Web Vitals
### 3.5 Multilingual & Non-Latin Discoverability   ← only if applicable
### 3.6 GEO / AI Discoverability
### 3.7+ [Deep lenses, if selected]

## 4. Competitive / Opportunity Context (optional)
- Who actually ranks for the core query; where the winnable lanes are.

## 5. Prioritised Action Plan
Ordered by impact ÷ effort. Make it dev-ready.

  | # | Action | Priority | Owner | Effort |
  |---|---|---|---|---|
  | 1 | … | 🔴 Critical | Dev | S |
  | 2 | … | 🟠 High | Content | M |

- Owner ∈ {Dev, Content, Strategy}. Effort: S = hours, M = a day or two,
  L = multi-day/ongoing.
- Call out the 80/20: the few items that unlock the most.

## 6. Closing Note
- Honest, encouraging, specific. Lead with what's working; make the path clear.
```

---

## Tone & rules
- **Evidence over assertion** everywhere. "The homepage declares `lang=\"en\"`
  while its H1 and body are Bengali" — not "i18n could be improved."
- **Severity = visibility impact**, independent of effort. A one-line fix can be
  Critical.
- **Never fabricate** traffic, rankings, or field metrics you didn't observe.
- **Specific and kind.** Open with strengths; make every problem actionable.
- **docx note:** if generating a Word doc with non-Latin content, embed a font
  that covers the script (e.g. Noto Sans [Script]) or text renders as boxes.
