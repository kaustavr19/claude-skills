---
name: competitive-benchmark
description: >
  Benchmark a brand's website against named competitors and synthesise a strategic
  direction. Detects business model (B2B / B2C / D2C / marketplace) and scores every site
  across seven axes — visual design, UX writing, brand voice & positioning, conversion
  hooks, IA & journey, social proof & trust, and differentiation — producing a comparison
  matrix plus a synthesis of what to STEAL, DIFFERENTIATE, and AVOID. Orchestrates the
  visual-aesthetics-audit, ux-writing, and ux-audit skills for depth; hands off to
  product-requirements or market-intelligence to build.

  Use whenever the user shares their site AND one or more competitor sites and wants a
  comparison, benchmark, or teardown. Triggers: "benchmark my site against these", "how do
  I compare to competitors", "what are they doing better", "what should I steal / avoid /
  do differently". Distinct from market-intelligence (business/pricing strategy) — this is
  about the website and digital experience layer.
---

# Competitive Website Benchmark Skill

A three-phase competitive teardown: **Benchmark** every site on a shared rubric →
**Synthesise** Steal / Differentiate / Avoid → optionally **Hand off** to build.

This skill is an **orchestrator**. It owns the comparative logic (matrix + strategy) and
pulls in specialist skills for craft depth rather than reinventing them.

---

## Step 0 — Gate: Choose Audit Depth (ASK FIRST, DO NOTHING ELSE YET)

**This is a hard gate. Before fetching, detecting, or scoring anything, present the two
depth modes to the user and wait for their explicit choice.** Do not begin analysis until
they answer. Frame the choice descriptively so they pick with full information:

> **⚡ Fast Benchmark**
> Uses this skill's own rubric across every site. Each competitor and your own site scored
> on all seven axes from a direct read of the pages. You get the full **comparison matrix**
> and the **Steal / Differentiate / Avoid** synthesis. You won't get the granular craft
> teardown — exact hex values, type-scale diagnosis, line-by-line copy critique. Quick,
> broad, strategic. Best for a first read or when there are many competitors.
>
> **🔬 Deep Teardown**
> Everything in Fast, plus the skill orchestrates specialist audits on every site:
> `visual-aesthetics-audit` for design (typography, palette, spacing, with fix values),
> `ux-writing` analysis for copy, and the persuasion lens for conversion hooks. Far richer
> and more defensible, but heavier — for your site + 3 competitors that's ~12 deep passes
> before synthesis. Slower and more thorough. Best when you're committing to act on it.

**Throttle note:** If the user picks Deep Teardown AND there are 4+ competitors (5+ total
sites), warn them about run length and offer to either (a) run Deep on their own site +
the top 2-3 competitors and Fast on the rest, or (b) proceed full Deep anyway. Respect
their call. For 3 or fewer competitors, honour Deep directly without friction.

Use `ask_user_input_v0` to present the Fast / Deep choice as tappable options.

---

## Step 1 — Gather & Validate Inputs

Once depth is chosen:

1. Confirm which URL is **the user's own** site and which are **competitors**. If unclear,
   ask — the whole synthesis hinges on knowing whose side you're on.
2. Fetch each site. Use Claude in Chrome if available (screenshots at 1440px desktop +
   375px mobile, page text, accessibility tree). Fall back to `web_fetch` for HTML/text,
   and note that visual analysis is inference-based.
3. For each site capture: hero/above-the-fold, primary nav & IA, key CTAs, pricing or
   conversion path, social proof elements, footer. These are the comparison surfaces.

If any site is unreachable or behind auth, flag it and proceed with what's available.

---

## Step 2 — Detect Business Model (Auto, Ask Only If Unclear)

Infer the model from the sites themselves — it sets the evaluation lens. Read
→ **`references/business-models.md`** for detection signals and per-model "what good looks
like."

| Model | Tell-tale signals | What "hooking the user" means |
|---|---|---|
| **B2B** | Demo/contact-sales CTAs, ROI/case studies, integrations, "trusted by [logos]" | Credibility, proof, low-risk next step (demo, trial) |
| **B2C** | Direct signup, broad appeal copy, app-store badges, lifestyle imagery | Speed to value, emotional resonance, social proof |
| **D2C** | Product catalogue, add-to-cart, shipping/returns, brand story | Aspiration, frictionless purchase, brand identity |
| **Marketplace** | Two-sided messaging (buyers + sellers), listings, trust/safety | Liquidity signals, trust between strangers |

Detect per-site (competitors may differ from the user — note it if so). If the model is
genuinely ambiguous after reading the sites, ask the user once. Otherwise state your
detected model and proceed.

---

## Step 3 — Benchmark Every Site on the Seven Axes

Score the **user's site and every competitor** on the same seven axes, through the lens of
the detected business model. Read → **`references/benchmark-rubric.md`** for the full
scoring criteria per axis.

| # | Axis | Evaluates |
|---|---|---|
| 1 | **Visual Design & Brand Expression** | Aesthetic quality, cohesion, distinctiveness, craft |
| 2 | **UX Writing & Messaging Clarity** | Copy clarity, value articulation, microcopy, CTA quality |
| 3 | **Brand Voice & Positioning** | Distinct voice, sharp positioning, "why us" clarity |
| 4 | **Conversion & Persuasion Hooks** | How effectively the page drives the target action (model-specific) |
| 5 | **Information Architecture & Journey** | Navigation logic, findability, flow to conversion |
| 6 | **Social Proof & Trust Signals** | Reviews, logos, testimonials, security, credibility cues |
| 7 | **Differentiation Clarity** | Is it obviously different from the others, or category wallpaper? |

**Scoring:** Each axis gets a 🔴/🟡/🟢 RAG + score /10, per site.

### Deep Teardown orchestration (only if Deep was chosen)
For each site, invoke the specialist skills and fold their findings into the relevant axis:
- **Axis 1 (Visual)** → run `visual-aesthetics-audit` logic; pull its six-dimension
  diagnosis and fix values into this axis.
- **Axis 2 (UX Writing)** → apply `ux-writing` evaluation to hero copy, CTAs, microcopy,
  error/empty states.
- **Axis 4 (Hooks)** → apply the **Trust & Persuasion deep lens** from the `ux-audit` skill
  (its `references/deep-lenses.md` — Fogg + Cialdini). **Flag dark patterns explicitly** — a
  competitor using fake scarcity is not a strength to steal; it's a trap to avoid.

In **Fast** mode, score all seven axes from this skill's own rubric without invoking the
sub-skills.

---

## Step 4 — Build the Comparison Matrix

Output a side-by-side matrix: axes as rows, sites as columns, RAG + score in each cell.
The user's own site is always the first/anchor column, visually distinguished.

```
| Axis | YOUR SITE | Competitor A | Competitor B | Competitor C |
|---|---|---|---|---|
| Visual Design | 🟡 6 | 🟢 8 | 🟡 5 | 🟢 9 |
| UX Writing | 🔴 4 | 🟢 8 | 🟡 6 | 🟡 6 |
| ... | | | | |
| **Overall** | **5.1** | **7.8** | **5.6** | **7.2** |
```

Immediately below the matrix, a one-line **positional read**: where the user ranks, and
their single biggest gap and single biggest existing strength relative to the field.

---

## Step 5 — Synthesise: Steal / Differentiate / Avoid

This is the payload. Read → **`references/synthesis-method.md`** for the full method.

For each axis (or grouped where it reads better), produce three lenses:

- **🟢 STEAL** — A competitor does this measurably better; it's adoptable without becoming
  derivative. Name the competitor, the specific thing, and how to adapt it (not copy it).
- **🔵 DIFFERENTIATE** — Where every site looks the same. Sameness in a crowded category is
  a liability; this is the gap the user can own. **Bias the synthesis toward this** —
  differentiation beats imitation. Be concrete about the opening.
- **🔴 AVOID** — A mistake one or more competitors make (clutter, dark patterns, weak
  positioning, broken journeys). Name it so the user doesn't inherit it.

**The cardinal rule:** Do not produce a "become more like your competitors" report. The
most valuable output finds the *unoccupied position* — where the user can be deliberately
different and better, not a cleaner clone. If the whole category shares a blind spot, that
blind spot is the strategy.

End the synthesis with **The One Move**: if the user changed only one thing about their
site to compete, what is it and why.

---

## Step 6 — Structure the Report

```
# Competitive Website Benchmark — [Your Brand] vs [N] Competitors
**Date:** [today] · **Business model detected:** [model] · **Depth:** [Fast / Deep]
**Sites analysed:** [your site] (anchor) + [competitors]

## Executive Summary
- Where you rank: [X of N]
- Biggest gap: [axis + one line]
- Biggest existing strength: [axis + one line]
- The One Move: [single highest-leverage change]

## Comparison Matrix
[the seven-axis × all-sites table with RAG + scores + overall row]
**Positional read:** [one line]

## Per-Axis Findings
For each of the 7 axes:
- The matrix row restated
- What the leader on this axis is doing (named)
- Where the user sits and why
- [Deep mode] specialist findings (visual fix values / copy critique / persuasion read)

## Strategic Synthesis
For each axis or grouped theme:
- 🟢 STEAL — [competitor] does [X]; adapt as [Y]
- 🔵 DIFFERENTIATE — everyone does [X]; you could own [Y]
- 🔴 AVOID — [competitor] / the category does [X]; don't inherit it

**The One Move:** [the single highest-leverage play]

## Dark Pattern Watch (if any found)
[Competitor persuasion tactics that are manipulative, not admirable — flagged so the user
doesn't copy them]

## Caveats
[Unreachable sites, auth walls, inference-based visual notes, dynamic states not audited]

## Next Steps (handoff offer)
[See Step 7]
```

---

## Step 7 — Deliver & Hand Off

- Save as `competitive-benchmark-[your-brand]-[date].md`.
- Use `present_files` to surface it.
- Then offer the **build handoff** (this skill does NOT build — it briefs):
  - **Want to act on this?** → Offer to package the findings into a brief for the
    **`product-requirements`** skill to produce a build/redesign PRD.
  - **Want deeper market/positioning/GTM strategy?** → Hand off to the
    **`market-intelligence`** skill (business model, pricing, channel strategy — the layers
    this skill deliberately doesn't cover).
  - **Want the visual direction spelled out?** → Offer a full `visual-aesthetics-audit`
    design brief for the user's own site.
- Also offer: re-benchmark after changes; deep-dive a single competitor; convert findings
  into a prioritised action backlog.

---

## Orchestration Principles

- **Ask depth first, always.** Never start analysis before the Fast/Deep gate is answered.
- **Anchor on the user.** Every score, every synthesis line exists to answer "so what should
  *I* do?" — competitor analysis is a means, not the product.
- **Differentiation over imitation.** Push the user toward an unoccupied position. A report
  that just says "copy the leader" has failed.
- **Same lens for everyone.** Score every site on the identical rubric through the same
  business-model lens, or the comparison is meaningless.
- **Flag manipulation, don't admire it.** Dark patterns are AVOID findings, never STEAL.
- **Don't reinvent — orchestrate.** In Deep mode, route to the specialist skills; in Fast
  mode, use the built-in rubric. Don't duplicate their logic inline.
- **Hand off, don't sprawl.** Building the thing is `product-requirements`' job; deep market
  strategy is `market-intelligence`' job. This skill benchmarks and directs — then passes
  the baton.
- **Be honest about inference.** Visual/motion findings from `web_fetch` alone are
  estimates. Say so.
