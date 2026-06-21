# Deep-Lens Frameworks — Optional Audit Layers

Reference file for the `ux-audit` skill. Load this **only when a deep lens is requested** (by the user, or offered by Claude and accepted). These are not run by default — the core six frameworks in `frameworks.md` are.

Each lens uses the same output contract as the core audit: RAG status, score /10, issues tagged with severity tier and effort estimate, plus a positives list.

---

## Table of Contents
- [Lens A — Classic Usability Extended](#lens-a--classic-usability-extended)
  - [A1. Shneiderman's 8 Golden Rules](#a1-shneidermans-8-golden-rules)
  - [A2. Gerhardt-Powals' Cognitive Engineering Principles](#a2-gerhardt-powals-cognitive-engineering-principles)
  - [A3. Bastien & Scapin's Ergonomic Criteria](#a3-bastien--scapins-ergonomic-criteria)
- [Lens B — Behavioural Laws](#lens-b--behavioural-laws)
- [Lens C — Trust & Persuasion](#lens-c--trust--persuasion)
  - [C1. Fogg Behaviour Model](#c1-fogg-behaviour-model)
  - [C2. Cialdini's Principles of Influence](#c2-cialdinis-principles-of-influence)
- [Lens D — Interaction Design Principles](#lens-d--interaction-design-principles)
  - [D1. Norman's Design Principles](#d1-normans-design-principles)
  - [D2. Tognazzini's First Principles of Interaction Design](#d2-tognazzinis-first-principles-of-interaction-design)

---

## Overlap & De-duplication Guidance

These lenses intentionally overlap with the core frameworks and with each other. Several are explicitly derivative — Tognazzini builds on Nielsen and Fitts; Norman's principles share DNA with Nielsen's heuristics; Gerhardt-Powals restates parts of Nielsen through a cognitive-load frame.

**Rules to keep the report from repeating itself:**
- If an issue was already raised under a core framework, **do not restate it** as a fresh finding in a lens. Instead, reference it: "See Nielsen H1 — same root cause, viewed through Fitts's Law."
- Each lens section should surface what is **genuinely new** through that lens. If a lens produces zero net-new insight for this product, say so plainly and score it — don't manufacture findings to fill space.
- When two lenses both catch the same thing (common for Norman ↔ Tognazzini), attribute it once to the more specific principle and cross-reference.

---

## Lens A — Classic Usability Extended

Three classic inspection frameworks that complement Nielsen with a cognitive-load and ergonomics emphasis.

### A1. Shneiderman's 8 Golden Rules

| # | Rule | Key Questions |
|---|---|---|
| S1 | **Strive for consistency** | Identical terminology, layout, colour, and action sequences across analogous situations? |
| S2 | **Enable frequent users to use shortcuts** | Keyboard shortcuts, macros, saved states, "recent" lists for power users? |
| S3 | **Offer informative feedback** | Every action gets a system response, scaled to the action's significance (subtle for frequent, substantial for major)? |
| S4 | **Design dialogs to yield closure** | Sequences have a clear beginning, middle, and end; completion confirmed with a satisfying signal? |
| S5 | **Prevent errors** | Interface constrains input to prevent serious errors; on error, offers simple, constructive recovery? |
| S6 | **Permit easy reversal of actions** | Undo available; actions reversible so users explore without anxiety? |
| S7 | **Keep users in control (internal locus of control)** | Users initiate actions rather than respond to them; no surprising system behaviour? |
| S8 | **Reduce short-term memory load** | Displays kept simple; info consolidated; recognition over recall (the "rule of 7±2" heritage)? |

**De-dup note:** S1/S5/S6/S8 overlap Nielsen H4/H5/H3/H6 respectively. Surface only Shneiderman-specific framing (e.g. closure in S4, locus of control in S7 are sharper here than in Nielsen).

### A2. Gerhardt-Powals' Cognitive Engineering Principles

Focus: reducing cognitive load and supporting human information processing. Strong for data-dense and enterprise UIs.

| # | Principle | What to Check |
|---|---|---|
| G1 | **Automate unwanted workload** | System does the calculating, estimating, and remembering so the user doesn't have to? |
| G2 | **Reduce uncertainty** | Data presented clearly and unambiguously, lowering decision-making cost? |
| G3 | **Fuse data** | Lower-level data combined into higher-level summaries to reduce cognitive load? |
| G4 | **Present new information with meaningful aids to interpretation** | New info framed with familiar context, metaphors, or comparisons? |
| G5 | **Use names that are conceptually related to function** | Labels, icons, and terms map intuitively to what they do? |
| G6 | **Group data in consistent, meaningful ways** | Related items chunked to decrease memory load and search time? |
| G7 | **Limit data-driven tasks** | Reduced reliance on the user reading, comparing, or transcribing raw data? |
| G8 | **Include only information the user needs at a given time** | Progressive disclosure; no premature or irrelevant data? |
| G9 | **Provide multiple coding of data where appropriate** | Info conveyed through more than one channel (colour + icon + text)? |
| G10 | **Practise judicious redundancy** | Strategic repetition to resolve the tension between G2 (reduce uncertainty) and G8 (limit data)? |

**Best applied to:** dashboards, analytics tools, enterprise/B2B products, anything data-heavy. Often the most valuable lens for Kaustav's enterprise-AI work.

### A3. Bastien & Scapin's Ergonomic Criteria

A detailed inspection framework with 8 top-level criteria (several with sub-criteria). Granular — best when a thorough, defensible audit is needed.

| Criterion | Sub-criteria | What to Check |
|---|---|---|
| **1. Guidance** | Prompting, Grouping/Distinction (by location & format), Immediate Feedback, Legibility | Is the user advised, oriented, and informed at every step? |
| **2. Workload** | Brevity (concision, minimal actions), Information Density | Is everything that adds to perceptual/cognitive load minimised? |
| **3. Explicit Control** | Explicit User Action, User Control | Does the system process only explicitly requested actions, and let users control execution? |
| **4. Adaptability** | Flexibility, User Experience (novice vs expert) | Can the interface adapt to varied user needs and contexts? |
| **5. Error Management** | Error Protection, Quality of Error Messages, Error Correction | Are errors prevented, well-explained, and easily corrected? |
| **6. Consistency** | — | Are design choices kept consistent across contexts? |
| **7. Significance of Codes** | — | Are codes, labels, and abbreviations meaningful and unambiguous to users? |
| **8. Compatibility** | — | Does the system match user characteristics and task/environment expectations? |

**De-dup note:** Heavy overlap with Nielsen and Shneiderman. Bastien & Scapin's distinct value is **granularity** — use it when the user wants an exhaustive, academically rigorous inspection. For a fast audit, prefer Shneiderman or Gerhardt-Powals.

---

## Lens B — Behavioural Laws

Five behavioural and cognitive laws bundled as one framework. Score the lens as a whole; tag findings to the specific law.

| Law | Principle | What to Check | Typical Fix Direction |
|---|---|---|---|
| **Hick's Law** | Decision time increases with the number and complexity of choices. | Overloaded menus, too many simultaneous CTAs, paralysing option counts, unfiltered lists. | Reduce/group choices, progressive disclosure, smart defaults, categorisation. |
| **Fitts's Law** | Time to acquire a target depends on its size and distance. | Tiny tap targets, primary actions placed far from the natural cursor/thumb path, important buttons crowded together. | Enlarge key targets, place high-frequency actions in easy-reach zones (thumb zone on mobile, screen edges/corners). |
| **Miller's Law** | People hold ~7±2 items in working memory. | Long unchunked lists, forms with many unsegmented fields, navigation with too many flat items. | Chunk content, group into 5–9 item sets, multi-step flows over one giant page. |
| **Jakob's Law** | Users spend most of their time on *other* sites and expect yours to work the same way. | Reinvented patterns (unconventional nav, cart, search, form behaviour) that violate established mental models. | Honour convention for standard components; reserve novelty for genuine differentiators. |
| **Peak-End Rule** | People judge an experience by its most intense moment and its end, not the average. | Unmemorable or frustrating peaks (errors, waits); weak endings (abrupt success screens, dead-end empty states, joyless confirmations). | Design deliberate positive peaks; craft satisfying endings (confirmation delight, clear next step, graceful completion). |

**How to apply:** Walk the primary user journey and ask, at each decision point and interaction, which law is most at risk. Behavioural laws are most powerful on **flows** (onboarding, checkout, search→result), less so on static pages.

---

## Lens C — Trust & Persuasion

Evaluates whether the product ethically motivates action and builds trust. **Flag dark patterns explicitly** — persuasion techniques used manipulatively are a finding, not a strength.

### C1. Fogg Behaviour Model

Behaviour happens when **Motivation, Ability, and a Prompt** converge at the same moment (B = MAP).

| Factor | What to Check |
|---|---|
| **Motivation** | Does the UI surface the user's reason to act (clear value, benefit, social proof) at the decision point? Over-reliance on motivation for high-effort tasks is fragile. |
| **Ability (simplicity)** | Is the target action as easy as possible? Fogg's simplicity factors: time, money, physical effort, brain cycles, social deviance, non-routine. Which is the bottleneck? |
| **Prompt (trigger)** | Is there a clear, well-timed prompt when motivation and ability are both high? Are prompts present but mistimed (asking too early), or absent at the moment of readiness? |

**Diagnostic:** When a desired action isn't happening, identify whether the gap is Motivation, Ability, or Prompt — the fix differs entirely. Raising ability (simplifying) is usually cheaper and more reliable than raising motivation.

### C2. Cialdini's Principles of Influence

| Principle | What to Check | Ethical Flag |
|---|---|---|
| **Reciprocity** | Does the product give value first (free tools, useful content) before asking? | Manipulative if the "gift" creates coercive obligation. |
| **Commitment & Consistency** | Small initial commitments that build engagement (progress bars, profile completion)? | Dark if it traps users into escalating commitments. |
| **Social Proof** | Reviews, usage counts, testimonials, "others also chose"? Are they genuine? | **Fake/inflated social proof is a dark pattern** — flag it. |
| **Authority** | Credible expertise, certifications, trust badges signalled appropriately? | Manipulative if authority is fabricated or borrowed misleadingly. |
| **Liking** | Friendly tone, relatable brand, attractive design that builds rapport? | Fine unless used to lower guard before extraction. |
| **Scarcity** | Limited stock/time genuinely communicated? | **Fake urgency/countdown timers are a dark pattern** — flag hard. |
| **Unity** | Shared-identity framing ("for designers, by designers")? | Manipulative if exploiting in-group belonging deceptively. |

**Crucial:** This lens cuts both ways. Note where persuasion is **absent** (missed legitimate opportunity to build trust) *and* where it is **abused** (dark patterns harming the user). The latter is always at least a Major severity finding.

---

## Lens D — Interaction Design Principles

### D1. Norman's Design Principles

From *The Design of Everyday Things*. Foundational interaction concepts.

| Principle | What to Check |
|---|---|
| **Affordances** | Do elements visually signal how they're used? Buttons look pressable, fields look fillable, draggable things look draggable? |
| **Signifiers** | Are there explicit cues (labels, icons, arrows) indicating where action is possible? (Affordance is the possibility; the signifier communicates it.) |
| **Constraints** | Are options limited to prevent error? (Physical, logical, semantic, cultural constraints guiding correct use.) |
| **Mappings** | Is the relationship between controls and effects natural? (e.g. layout of controls mirrors layout of what they affect.) |
| **Feedback** | Is every action met with immediate, informative response? |
| **Conceptual Model** | Does the UI give users an accurate mental model of how it works? Is the system image coherent? |
| **Discoverability** | Can users figure out what's possible and how, without instruction? |

**De-dup note:** Feedback overlaps Nielsen H1; Constraints overlap H5. Norman's distinct value is **affordances / signifiers / mapping / conceptual model** — focus findings there.

### D2. Tognazzini's First Principles of Interaction Design

Bruce Tognazzini's expanded principle set. Surface the ones that add beyond Nielsen/Norman.

| Principle | What to Check |
|---|---|
| **Anticipation** | Does the app anticipate the user's next need and bring it forward? |
| **Autonomy** | Are users given control and status of the system, within sensible boundaries? |
| **Colour** | Is colour use accessible (never the sole channel — links to WCAG 1.4.1)? |
| **Consistency** | Consistency where it helps; deliberate *inconsistency* where two things must be told apart? |
| **Defaults** | Sensible, easy-to-change defaults; "reset to default" available? |
| **Discoverability / Explorable Interfaces** | Can users explore without fear? Clearly marked exits; reversible actions? |
| **Efficiency of the User** | Is the *user's* productivity optimised, not just the system's? (Measure human throughput, not machine speed.) |
| **Fitts's Law** | Target size/distance optimised (cross-references Behavioural Laws lens). |
| **Latency Reduction** | Perceived performance managed — acknowledge actions instantly even if processing continues? |
| **Learnability** | Easy to learn, and consistent enough that learning transfers? |
| **Protect Users' Work** | Is user work never lost (autosave, recovery, no destructive surprises)? |
| **Readability** | Sufficient contrast, sizing, and clarity for all users? |
| **Visible Navigation** | Is the user always oriented — where am I, where can I go? |

**De-dup note:** Tognazzini explicitly subsumes Fitts and overlaps Nielsen heavily. Its net-new contributions are usually **Anticipation, Latency Reduction, Protect Users' Work, and Efficiency of the User** — prioritise those when reporting.

---

## Scoring a Deep Lens

Use the same scale as the core frameworks:

- 9–10: Principle set well-honoured across the product
- 7–8: Minor gaps only
- 5–6: Several notable gaps
- 3–4: Systemic issues
- 1–2: Fundamental problems

If a lens yields no net-new findings beyond the core audit, score it on its own merits and state explicitly: "No net-new issues surfaced through this lens; the product's behaviour here is already captured under [core framework]."
