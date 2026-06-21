---
name: visual-aesthetics-audit
description: >
  Critique and audit the visual aesthetics of any existing UI from screenshots and/or URLs.
  Evaluates six dimensions: typography & type hierarchy, colour system & palette harmony,
  spacing/rhythm/layout, motion & microinteractions, iconography & illustration style, and
  overall visual personality & brand cohesion. Benchmarks against design systems (Material,
  Apple HIG, Fluent), design movements (Swiss, Bauhaus, Brutalism), and industry peers.
  Outputs diagnosis + specific fix values (hex, type scale, spacing) + inspiration refs.
  Adapts output: written brief, design tokens, or critique report as needed.

  Trigger when user shares screenshots or URL and asks about visual quality, aesthetics,
  look and feel, or design critique. Also trigger for "roast my design", "aesthetic audit",
  "visual critique", "does this look good", "what's off", or "how do I make this feel more
  premium/modern/cohesive".
---

# Visual Aesthetics Audit Skill

A six-dimension visual critique with triple-layer benchmarking and full prescription.
Diagnosis → specific fix values → inspiration references.

---

## Step 0 — Gather Input

### Input Detection

| Input type | Action |
|---|---|
| URL provided | Use `web_fetch` to retrieve page; use Claude in Chrome if available for screenshots at desktop (1440px) and mobile (375px) viewports |
| Screenshots provided | Analyse directly — reference specific regions, elements, coordinates |
| Both | Use screenshots as primary visual truth; URL for computed styles / DOM if browser available |

**If browser (Claude in Chrome) is available:**
1. Navigate to URL
2. Screenshot full page at desktop viewport (1440px)
3. Screenshot at mobile viewport (375px)
4. Extract computed font stacks, colour values via JavaScript if possible
5. Check for CSS animation/transition declarations

**If only web_fetch:**
- Extract inline styles, CSS class hints, font imports, colour values from `<style>` and linked CSS
- Note that visual analysis is inference-based from DOM + screenshots

### Scope Clarification (ask only if genuinely ambiguous)
- Is this a specific page, a full product, or a component?
- Is there a brand or product brief to reference? (Helps assess intent vs. execution)
- Is there a target aesthetic or feeling they're going for?

---

## Step 1 — First Impression Read (Before Detail Analysis)

Before diving into dimensions, record an honest **5-second impression**:
- What is the emotional tone? (Clinical / Warm / Playful / Authoritative / Chaotic / Premium / Generic)
- What design movement or reference does it evoke, intentionally or not?
- What is the single strongest visual element?
- What is the single most dissonant or broken visual element?
- Does the product look like it knows what it wants to be?

This section anchors everything. Reference it when writing the cohesion assessment.

---

## Step 2 — Six-Dimension Audit

Run all six dimensions. Load reference file for detailed criteria:
→ **`references/aesthetic-dimensions.md`** — Full evaluation criteria per dimension

For each dimension, produce:
- **RAG Status**: 🟢 Strong / 🟡 Inconsistent / 🔴 Broken
- **Diagnosis**: What's happening and why it's working or not
- **Prescription**: Specific fix — include actual values where possible (hex codes, px, scale ratios, font names)
- **Inspiration**: Real reference to pull from (design system, product, movement, designer)

### Dimension 1: Typography & Type Hierarchy
Evaluate: typeface choice, weight range, size scale, line height, letter spacing, hierarchy legibility, pairing logic.

### Dimension 2: Colour System & Palette Harmony
Evaluate: palette range, primary/secondary/semantic colour logic, contrast ratios, temperature harmony, use of neutrals, dark mode consideration.

### Dimension 3: Spacing, Rhythm & Layout
Evaluate: base unit consistency, white space use, grid alignment, visual rhythm, density, breathing room vs. clutter.

### Dimension 4: Motion & Microinteractions
Evaluate: presence/absence of animation, easing quality, duration appropriateness, purposefulness vs. decoration, loading states, hover/focus states.
**Note:** If screenshots only, infer from UI patterns and flag as estimated. Recommend checking live if critical.

### Dimension 5: Iconography & Illustration Style
Evaluate: icon style consistency (line weight, fill, corner radius), icon-to-text alignment, illustration presence/absence, style coherence with overall visual language.

### Dimension 6: Overall Visual Personality & Brand Cohesion
Evaluate: does the visual system feel intentional? Are all dimensions speaking the same design language? Is there a coherent "design soul" or is it assembled from mismatched parts?

---

## Step 3 — Benchmarking

For each significant observation, contextualise it against all three benchmark layers.
Load reference file: → **`references/benchmarks.md`**

### Layer 1 — Design Systems
Does the approach align with, diverge from, or contradict established system conventions?
- Material Design 3, Apple HIG, Fluent 2, Carbon (IBM), Atlassian, Shopify Polaris

### Layer 2 — Design Movements & Styles
What aesthetic lineage is present — intentionally or accidentally?
- Swiss International Style, Bauhaus, Brutalism, Neubrutalism, Glassmorphism, Neumorphism, Skeuomorphism, Flat Design, Claymorphism, Dark Luxury, Bento Grid

### Layer 3 — Industry Peers
How does this compare to leading products in the same category?
- Use web search if category is known: `[product category] UI design 2024 2025`
- Reference specific products by name and what they do well in the relevant dimension

---

## Step 4 — Overall Aesthetic Score

| Dimension | RAG | Score /10 |
|---|---|---|
| Typography & Type Hierarchy | | |
| Colour System & Palette Harmony | | |
| Spacing, Rhythm & Layout | | |
| Motion & Microinteractions | | |
| Iconography & Illustration Style | | |
| Visual Personality & Brand Cohesion | | |
| **Overall Aesthetic Score** | | **/10** |

---

## Step 5 — Determine Output Format

Based on what the user asked for, adapt the output:

| User intent | Primary output |
|---|---|
| "What's wrong / critique / roast" | Critique report (diagnosis-heavy) |
| "How do I make this better / fix this" | Prescription report (fix values + inspiration) |
| "Define a visual direction / brief" | Written visual design brief (typography, colour, spacing, motion, feel — as a design spec) |
| "Give me design tokens" | Token-ready values (colour hex, type scale, spacing units, radius, shadow) |
| Ambiguous | Full report with all four sections |

---

## Step 6 — Structure the Report

Output a markdown report with these sections:

**Header**: Product name, date, input method, scope

**First Impression**: Honest 5-second read

**Dimension Scores Table**: All 6 dimensions with RAG + score

**Per-Dimension Sections** (for each of the 6):
- RAG status + score
- Diagnosis (specific, evidenced)
- Prescription (with actual values: hex, px, font names, ratios)
- Inspiration (named references with what to borrow)

**Priority Fix List**: Top issues ranked by impact, with effort estimate (🟢 Quick Win / 🟡 Medium / 🔴 Large)

**Visual Design Brief** (if requested): Design personality adjectives, typeface direction, colour direction with hex, spacing philosophy, motion principle, reference mood board (named products)

**Design Token Suggestions** (if requested): CSS custom properties for colour, typography, spacing, border-radius, shadow

**Audit Caveats**: What couldn't be verified and why; what to check live

---

## Step 7 — Deliver

- Save as `visual-audit-[product]-[date].md`
- Use `present_files` to surface it
- Offer to:
  - Generate an alternative colour palette with hex values
  - Write a full design language brief for the product
  - Produce a Figma-ready token set
  - Compare the aesthetic against a specific competitor

---

## Audit Principles

- **Name what you see.** "The font looks like Inter Regular at 14px" beats "the typography feels small."
- **Distinguish intent from execution.** "They're going for dark luxury but the off-black (#1C1C1C) reads as dull, not rich — try #0A0A0F."
- **Every prescription needs a value.** If you say "increase contrast," give the target hex. If you say "tighten the scale," give the ratio.
- **References are a design language.** When you say "look at Linear" — say *why* and *what specifically* to borrow.
- **Cohesion is the hardest thing to fake.** A system that doesn't know what it is will always feel off even if individual pieces are good. Say this plainly.
- **Motion from screenshots is an estimate.** Flag it. Don't fabricate animation behaviour you can't verify.
- **Aesthetic quality is partially subjective — be honest about that.** Frame opinions as perspectives, not verdicts, especially on style/personality choices.
