# Benchmark Rubric — Seven Axes

Reference for the `competitive-benchmark` skill. Score the user's site and every competitor
on these seven axes, through the lens of the detected business model. Each axis: 🔴/🟡/🟢
RAG + score /10, per site.

**Scoring scale (applies to every axis):**
- 9–10 🟢 — Category-leading; a benchmark others should study
- 7–8 🟢 — Strong; minor gaps only
- 5–6 🟡 — Competent but unremarkable; clear room to improve
- 3–4 🔴 — Notably weak; actively costing the business
- 1–2 🔴 — Broken or absent

---

## Axis 1 — Visual Design & Brand Expression

Does the site look intentional, cohesive, and distinct — or templated and generic?

- **Craft:** typography, colour, spacing, imagery quality, consistency
- **Cohesion:** does it feel like one designed system or assembled parts?
- **Distinctiveness:** memorable and ownable, or interchangeable with any competitor?
- **Appropriateness:** does the aesthetic fit the audience and model? (Enterprise ≠ playful D2C)

*Deep mode:* run `visual-aesthetics-audit`'s six dimensions; pull diagnosis + fix values here.

---

## Axis 2 — UX Writing & Messaging Clarity

Can a first-time visitor understand what this is, who it's for, and why it matters — fast?

- **Hero clarity:** is the value proposition legible in 5 seconds? No jargon fog?
- **CTA quality:** action-oriented, benefit-clear verbs? ("Start free trial" > "Submit")
- **Microcopy:** labels, form help, empty/error states — helpful and human?
- **Scannability:** can a skimmer extract the point, or is it a wall of text?

*Deep mode:* apply `ux-writing` evaluation to hero, CTAs, microcopy, error/empty states.

---

## Axis 3 — Brand Voice & Positioning

Is there a sharp, distinct voice and a clear position in the market — or beige sameness?

- **Voice distinctiveness:** could you tell this brand apart with the logo removed?
- **Positioning sharpness:** is the "we are the X that does Y for Z" clear?
- **"Why us" clarity:** is the reason to choose them over alternatives explicit?
- **Consistency:** does the voice hold across hero, product, about, footer?

---

## Axis 4 — Conversion & Persuasion Hooks

How effectively does the page drive the **model-appropriate** target action? (See
`business-models.md` for per-model calibration.)

- **Primary action clarity:** is the one thing they want you to do obvious?
- **Friction:** how many steps / how much commitment before value? Too much? Too little proof?
- **Persuasion mechanics:** social proof, urgency, authority, reciprocity used — and used *honestly*?
- **Path integrity:** does the journey from hook → action actually work, or break?

*Deep mode:* apply the **Trust & Persuasion deep lens** (Fogg + Cialdini) from the `ux-audit`
skill's deep-lenses reference. **Dark patterns (fake scarcity, inflated proof,
coercive commitment) are AVOID findings — never STEAL. Flag them.**

---

## Axis 5 — Information Architecture & Journey

Can users find what they need and flow toward conversion without friction?

- **Nav logic:** is the structure intuitive? Labels match user mental models (Jakob's Law)?
- **Findability:** are key pages (pricing, product, contact) easy to reach?
- **Journey flow:** does the path from landing → interest → action hold together?
- **Cognitive load:** too many choices at once (Hick's Law)? Overwhelming nav?

---

## Axis 6 — Social Proof & Trust Signals

Does the site earn belief — especially critical for first-time visitors and higher-stakes models?

- **Presence & quality:** reviews, logos, testimonials, case studies, ratings — real and specific?
- **Placement:** proof near the decision point, or buried?
- **Credibility cues:** security badges, guarantees, transparent pricing, real team/contact?
- **Authenticity:** does the proof feel genuine, or thin/fabricated? (Stock-photo "team", vague quotes)

---

## Axis 7 — Differentiation Clarity

Is this brand *obviously* different from the others in the set — or category wallpaper?

This axis is partly **derived from the comparison itself**: after scoring axes 1–6 across all
sites, assess how much the user's site stands apart.

- **Visual distinctiveness** vs the set
- **Positioning distinctiveness** vs the set
- **Experience distinctiveness** — does anything here feel uniquely theirs?
- **The sameness test:** if you stripped logos from all sites in this set, how many would be
  indistinguishable? The more interchangeable, the lower everyone scores — and the bigger
  the differentiation *opportunity*.

A category where everyone scores low on Axis 7 is a category wide open for someone to break
the mould. Flag that as the headline opportunity in synthesis.

---

## Scoring Discipline

- **Same lens for every site.** Don't grade the user's site more harshly or kindly than rivals.
- **Evidence every score.** "Hero CTA 'Submit' is vague and the value prop is jargon — 4/10",
  not "writing could be better."
- **Model-calibrate Axis 4.** A self-serve product without "Talk to sales" isn't failing —
  it's a different model. Score the hook *appropriate to its model*.
- **Axis 7 is comparative by nature.** It only has meaning relative to the set.
