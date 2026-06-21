---
name: market-intelligence
description: >
  Given a product name, idea, abstract, target audience, or competitor list, conducts a
  thorough strategic market intelligence brief: market trends, audience psychographics,
  full competitor deep-dives (business model, pricing, brand identity — voice, visual,
  messaging, content/channel strategy — plus SWOT per competitor), and strategic edge
  synthesis (unique differentiators, feature gap analysis, GTM angle, pricing strategy).
  Outputs a structured saveable markdown report.

  Trigger when the user shares a product idea, asks about competitors, wants to understand
  a market, or uses phrases like "market research", "competitive analysis", "validate my
  idea", "who else is doing this", "what's the landscape", "help me find my edge",
  "is there a gap in the market", or "how should I position this".
---

# Market Intelligence Skill

A full-stack strategic research skill: market landscape → competitor deep-dives → your edge.

---

## Step 0 — Extract Product Context

Parse what the user has provided. Map it to these fields:

| Field | Status |
|---|---|
| Product name / working title | Provided / Missing |
| Product abstract / what it does | Provided / Missing |
| Target audience | Provided / Missing |
| Known competitors | Provided / Missing |
| Stage (idea / prototype / live) | Provided / Missing |

**If critical fields are missing**, ask concisely before proceeding:
- Missing abstract: "What does the product do, in one or two sentences?"
- Missing audience: "Who is this for — any specific role, industry, or demographic?"
- Missing competitors: "Do you have specific competitors in mind, or should I find them?"

Do not ask for more than 2 clarifying questions at once. Use web search to fill gaps where possible.

---

## Step 2 — Market Research

Use **web search** as primary source. Search for:
- `[product category] market size [current year]`
- `[product category] industry trends [current year]`
- `[product category] target audience demographics`
- `[product category] growth forecast`

Reference file for research frameworks → **`references/research-frameworks.md`**

### 2a. Market Trends & Growth Trajectory
- Current market size (cite source + year)
- Projected CAGR / growth rate over next 3–5 years
- Key macro tailwinds driving the market
- Key headwinds or risks
- Emerging sub-trends relevant to the product idea
- Stage of market maturity (emerging / growing / mature / declining)

### 2b. Target Audience Psychographics & Segments
- Primary segment: demographics, role, context of use
- Secondary segment (if applicable)
- Key motivations and goals
- Core frustrations and pain points (what's broken today?)
- Behavioural patterns: where they spend time, how they buy, what they trust
- Jobs-to-be-done framing: functional, emotional, social

---

## Step 3 — Competitor Research

Identify 3–5 key competitors. If user provided competitors, include those. Supplement with web search:
- `[product category] top companies [year]`
- `[product name] alternatives`
- `best [product category] tools / platforms / services`

For **each competitor**, produce a full profile using the template in **`references/competitor-profile.md`**.

Cover:
1. **Business Overview** — what they do, founding, size, funding, target market
2. **Product / Service** — core features, key differentiators, what they do well
3. **Pricing Model** — tiers, freemium, enterprise, pricing signals
4. **What They Don't Do** — gaps, limitations, common complaints (search reviews on G2, Capterra, Reddit, Trustpilot, App Store)
5. **Brand Identity Deep-Dive**:
   - Voice & Tone: formal/casual, emotional register, vocabulary patterns
   - Visual Identity: colour palette feel, typography character, design language (clinical, bold, minimal, warm, etc.)
   - Messaging & Positioning: tagline, value prop framing, who they speak to
   - Content & Channel Strategy: where they publish, what format, how often, what narrative they own
6. **SWOT Analysis**:
   - Strengths: what makes them hard to displace
   - Weaknesses: where they underserve or overcharge
   - Opportunities: market moves they could make
   - Threats: what could hurt them (including the user's product)

---

## Step 4 — Competitive Matrix

Produce a summary comparison table across all competitors + the user's idea:

```
| Dimension | [Competitor A] | [Competitor B] | [Competitor C] | [Your Idea] |
|---|---|---|---|---|
| Primary audience | | | | |
| Core value prop | | | | |
| Pricing model | | | | |
| Key strength | | | | |
| Key weakness | | | | |
| Brand tone | | | | |
| Notable gap | | | | |
```

---

## Step 5 — Strategic Edge Analysis

Synthesise everything above to answer: **"Why would someone choose this over everything else?"**

### 5a. Unique Differentiators
- What does the user's idea do that no one else does (or does poorly)?
- What combination of features / audience / delivery is genuinely novel?
- Is the differentiation sustainable or easily copied?

### 5b. Feature Gap Analysis
- Map the top unmet needs from audience pain points against what competitors offer
- Identify the whitespace: high pain, low coverage = highest opportunity
- Flag which gaps the user's idea already addresses vs. still needs to build toward

### 5c. Go-to-Market Angle Recommendation
- Recommended beachhead segment (smallest viable audience to win first)
- Positioning statement draft: `For [audience] who [pain point], [product] is a [category] that [key benefit]. Unlike [competitor], we [differentiator].`
- Channel recommendations based on where target audience actually lives
- Narrative to own: what story or category can this product define?

### 5d. Pricing Strategy Suggestion
- Recommended model (freemium / subscription tiers / usage-based / one-time / enterprise)
- Rationale based on competitor pricing and audience willingness to pay
- Anchor pricing suggestion with justification
- What the free tier or trial should include (if applicable)

---

## Step 6 — Structure the Report

Output a markdown report using this structure:

```
# Market Intelligence Report — [Product Name]
**Date:** [today]
**Prepared by:** Claude (AI-assisted research)
**Stage:** [idea / prototype / live]

---

## Executive Summary
[4–6 sentence synthesis: market opportunity, competitive landscape in one line, 
the user's strongest edge, and the single most important strategic recommendation]

---

## 1. Market Landscape
### 1a. Trends & Growth Trajectory
### 1b. Target Audience Psychographics

---

## 2. Competitor Profiles
### 2a. [Competitor 1 Name]
[Full profile: business overview, product, pricing, gaps, brand identity, SWOT]

### 2b. [Competitor 2 Name]
[...]

### 2c. [Competitor 3 Name]
[...]

---

## 3. Competitive Matrix
[Summary table]

---

## 4. Your Strategic Edge
### 4a. Unique Differentiators
### 4b. Feature Gap Analysis
### 4c. Go-to-Market Angle
### 4d. Pricing Strategy

---

## 5. Sources & Research Notes
[List key sources used, flag any data that is estimated vs. cited]

---

## Caveats
- Market size figures are estimates from secondary sources; validate with primary research
- Competitor brand identity analysis is based on publicly available digital presence
- Pricing signals sourced from public pages; enterprise pricing may differ
- Recommend user testing and customer interviews to validate audience assumptions
```

---

## Step 7 — Deliver & Offer Next Steps

- Save report as `market-intelligence-[product-name]-[date].md`
- Use `present_files` to surface it
- Offer to:
  - Deep-dive on a single competitor
  - Generate a positioning statement workshop (3 variants)
  - Draft a landing page hero copy based on the GTM angle
  - Build a feature roadmap prioritised against gap analysis

---

## Research Principles

- **Cite sources.** Every market stat needs a source and year. Estimates must be flagged as estimates.
- **Be specific about competitors.** "They have a clean UI" is useless. "Their onboarding is 3 steps with no email verification required" is useful.
- **Separate what exists from what's inferred.** If a competitor's pricing isn't public, say so and estimate from signals (job postings, review sites, Crunchbase).
- **Don't oversell the user's idea.** Strategic edge analysis should be honest — flag where the idea is genuinely differentiated vs. where it's "also in the market."
- **Brand identity is a system, not vibes.** Describe it in terms a designer or copywriter could act on.
- **When data is unavailable**, say so clearly and recommend where the user can find it (G2, Crunchbase, SimilarWeb, LinkedIn, App Store reviews).
