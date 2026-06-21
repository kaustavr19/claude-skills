---
name: ux-audit
description: >
  Perform a thorough, professional UI/UX audit of any existing website or web product.
  Runs a CORE six-framework audit by default — Nielsen's 10 Heuristics, WCAG 2.2
  Accessibility, Gestalt, UX Writing & Microcopy, Mobile/Responsive, and Performance & Core
  Web Vitals — and offers optional DEEP LENSES on request: Classic Usability Extended
  (Shneiderman, Gerhardt-Powals, Bastien & Scapin), Behavioural Laws (Hick's, Fitts's,
  Miller's, Jakob's, Peak-end), Trust & Persuasion (Fogg, Cialdini), and Interaction Design
  Principles (Norman, Tognazzini). Produces a markdown report with severity tiers, RAG
  status, fix recommendations, and effort estimates.

  Use whenever the user wants to audit, review, or critique a website, app, or web
  product's UI/UX — including "roast my site", "review this product", "what's wrong with this
  UI", "give me a UX review". Also trigger when the user shares a URL or screenshots for
  design feedback, or asks for a persuasion / behavioural-psychology / cognitive-load /
  dark-pattern review.
---

# UI/UX Audit Skill

A tiered audit that produces a prioritised, actionable report. A **core** six-framework
audit runs by default; **deep lenses** (behavioural psychology, persuasion, classic
usability, interaction-design principles) can be layered on when the user wants them.

> **On WCAG versions:** This skill audits against **WCAG 2.2**, which is a superset of
> WCAG 2.1 — every 2.1 success criterion is included, plus 2.2's additions (e.g. Target
> Size Minimum, Dragging Movements, Focus Not Obscured). There is no separate "2.1" pass;
> auditing 2.2 covers it.

---

## Step 0 — Gather Input

Determine what the user has provided:

| Input type | Action |
|---|---|
| URL only | Use browser (Claude in Chrome) to navigate, screenshot, and extract DOM/text. Fall back to `web_fetch` if no browser available. |
| Screenshots + URL | Use screenshots as primary visual evidence; fetch URL for DOM/text data. |
| Screenshots only | Proceed with visual analysis only; note DOM-based checks are unavailable. |

**If browser is available (Claude in Chrome):**
1. Navigate to the URL.
2. Capture a full-page screenshot.
3. Capture screenshots at mobile viewport (375px wide).
4. Extract page text (`get_page_text`) for copy/microcopy analysis.
5. Read the accessibility tree (`read_page`) for WCAG structural checks.

**If browser is not available:**
- Use `web_fetch` to retrieve page HTML/text.
- Clearly note which checks are visual-only estimates vs. DOM-verified.

**Ask the user if scope is ambiguous:**
- Single page or full site sweep?
- Specific user journey to focus on (e.g. onboarding, checkout)?
- Target audience or device context?

---

## Step 0.5 — Choose Audit Depth (Core vs Deep Lenses)

The **core audit** (six frameworks) always runs. Beyond that, decide whether to add deep lenses.

**Add a deep lens when:**
- The user explicitly asks for it ("also check persuasion", "run a behavioural-psychology pass", "is this using dark patterns?", "audit cognitive load").
- The product type strongly calls for one (see mapping below) — in which case **offer it**, don't silently force it.

**Lens-to-context mapping (use to offer the right lens):**

| If the product is… | Offer this lens | Because |
|---|---|---|
| Data-dense, enterprise, dashboard, analytics, AI tool | **Classic Usability Extended** (esp. Gerhardt-Powals) | Cognitive-load framing is where the real issues hide |
| A flow-heavy product (onboarding, checkout, search, signup) | **Behavioural Laws** | Hick/Fitts/Miller/Peak-end bite hardest on flows |
| Commerce, growth, conversion, subscription, marketing site | **Trust & Persuasion** | Catches both missed trust-building *and* dark patterns |
| A novel/custom interaction model or design-system work | **Interaction Design Principles** | Norman/Tognazzini test affordances and mental models |

If scope is unclear, **ask the user which lenses they want** rather than running all of them — a 10-section report is exhausting and most sections would be redundant. Default to core-only unless there's a clear reason to expand.

When a lens is selected, read its reference file:
→ **`references/deep-lenses.md`** — Full checklists for all deep lenses, plus de-duplication guidance.

---

## Step 1 — Run the Audit

Always evaluate the product against the **core six frameworks**. Read the reference file for detailed criteria:
→ **`references/frameworks.md`** — Full checklists for the core six frameworks.

Then run **any selected deep lenses** from `references/deep-lenses.md`. Follow that file's de-duplication guidance: do **not** restate a finding already raised under a core framework — cross-reference it instead, and surface only what is genuinely new through each lens.

For each framework **and each active lens**, assign:
- **RAG Status**: 🔴 Red (failing) / 🟡 Amber (partial / needs improvement) / 🟢 Green (passing)
- **Score**: X / 10
- **Issues found**: Each tagged with severity tier

### Severity Tiers

| Tier | Meaning |
|---|---|
| 🔴 **Critical** | Blocks task completion, causes data loss, or creates legal/accessibility risk |
| 🟠 **Major** | Significantly degrades experience; users likely to fail or abandon |
| 🟡 **Minor** | Friction or confusion; workaround exists |
| 💡 **Suggestion** | Enhancement opportunity; no active harm |

### Effort Estimates (per fix)

| Label | Meaning |
|---|---|
| 🟢 Quick Win | < 1 day; copy change, CSS tweak, attribute add |
| 🟡 Medium | 1–5 days; component refactor, layout change |
| 🔴 Large | > 5 days; architectural or systemic change |

---

## Step 2 — Structure the Report

Output a markdown report using this structure:

```
# UI/UX Audit Report — [Product / URL]
**Date:** [today's date]
**Audited by:** Claude (AI-assisted audit)
**Scope:** [page(s) or journey audited]
**Input method:** [browser / screenshots / web_fetch]

---

## Executive Summary

| Framework | RAG | Score |
|---|---|---|
| Nielsen's Heuristics | 🟡 | 6/10 |
| WCAG 2.2 Accessibility | 🔴 | 4/10 |
| Gestalt Visual Design | 🟢 | 8/10 |
| UX Writing & Microcopy | 🟡 | 6/10 |
| Mobile / Responsive | 🟡 | 5/10 |
| Performance & Core Web Vitals | 🔴 | 3/10 |
| *— Deep lenses below (only if run) —* | | |
| Behavioural Laws | 🟡 | 6/10 |
| Trust & Persuasion | 🟢 | 7/10 |

**Overall Score: X / 10**  *(core frameworks only; deep lenses reported separately)*

**Top 3 Priority Fixes:**
1. [Most critical issue — one line]
2. [Second most critical]
3. [Third]

---

## 1. Nielsen's 10 Heuristics
**RAG: 🟡 Amber | Score: 6/10**

### Issues

#### [Issue Title]
- **Severity:** 🟠 Major
- **Heuristic violated:** #4 — Consistency and Standards
- **Observation:** [What was observed and why it's a problem]
- **Fix:** [Specific, actionable recommendation]
- **Effort:** 🟢 Quick Win

[Repeat for each issue]

### Positives
- [What the product does well under this framework]

---

## 2. WCAG 2.2 Accessibility
[Same structure]

## 3. Gestalt Visual Design
[Same structure]

## 4. UX Writing & Microcopy
[Same structure]

## 5. Mobile / Responsive Behaviour
[Same structure]

## 6. Performance & Core Web Vitals
[Same structure]

---

## Deep Lenses
*(Include only the lenses that were run. Omit this whole section for a core-only audit.)*

### Lens — [Name, e.g. Behavioural Laws]
**RAG: 🟡 Amber | Score: 6/10**

#### Issues
[Same issue structure as core frameworks. For bundled lenses like Behavioural Laws,
tag each issue to the specific law/principle, e.g. "**Law:** Hick's Law".]

#### Net-new vs. core
[Briefly note what this lens surfaced that the core audit didn't. If nothing, say so.]

#### Positives
- [What the product does well under this lens]

[Repeat per active lens]

---

## Prioritised Action Plan

| Priority | Issue | Framework | Severity | Effort |
|---|---|---|---|---|
| 1 | [Issue] | [Framework] | 🔴 Critical | 🟢 Quick Win |
| 2 | ... | ... | ... | ... |

---

## What's Working Well
[Concise list of genuine strengths — don't skip this. Balance matters.]

---

## Audit Caveats
- [Note any checks that couldn't be performed and why]
- [Note if dynamic/authenticated states weren't audited]
- [Recommend follow-up user testing for subjective areas]
```

---

## Step 3 — Deliver the Report

- Save the report as a `.md` file: `ux-audit-[domain]-[date].md`
- Use `present_files` to surface it to the user.
- Offer to:
  - Deep-dive into any single framework section
  - **Run a deep lens not yet applied** (behavioural psychology, trust & persuasion, classic usability extended, interaction-design principles) — name the one most relevant to this product
  - Generate a developer-friendly issue ticket list
  - Re-audit after fixes are applied

---

## Audit Principles

- **Be specific, not vague.** "Low contrast on the CTA button (#6B6B6B on white fails WCAG AA)" beats "contrast could be better."
- **Cite what you saw.** Reference actual copy, element names, or screenshot regions.
- **Balance criticism with strengths.** An all-negative report loses credibility and demoralises teams.
- **Don't hallucinate metrics.** If you can't verify a Core Web Vitals score, say so — suggest tools like PageSpeed Insights.
- **Flag subjective areas.** Some heuristics (e.g. aesthetic minimalism) require human judgment. Mark these clearly.
- **Group by pattern.** If 6 buttons have inconsistent labels, that's one issue with 6 instances — not 6 issues.
- **Don't double-count across lenses.** Deep lenses overlap the core frameworks and each other by design. Raise each root issue once, under the most specific framework/principle, and cross-reference elsewhere. A lens that surfaces nothing new should say so and be scored on its merits — never pad it with restated core findings.
- **Persuasion cuts both ways.** Under Trust & Persuasion, flag dark patterns (fake scarcity, inflated social proof, coercive commitment) as findings of at least Major severity — persuasion misused is a problem, not a strength.
