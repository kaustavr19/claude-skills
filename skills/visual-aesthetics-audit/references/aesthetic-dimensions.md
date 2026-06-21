# Aesthetic Dimensions — Full Evaluation Criteria

Reference file for the `visual-aesthetics-audit` skill.

---

## 1. Typography & Type Hierarchy

### Typeface Evaluation
- **Category fit**: Is the typeface (serif / sans-serif / mono / display) appropriate for the product's personality and context?
- **Legibility**: Does it render cleanly at all sizes used? Especially at 12–14px?
- **Personality match**: Does the typeface *feel* like the brand? (e.g. Fraunces = literary warmth; Space Grotesk = technical playfulness; Söhne = confident editorial)
- **Origin/licensing**: Google Fonts vs. licensed vs. system font — relevant for load performance
- **Pairing logic**: If two typefaces are used, do they create contrast (not competition)?

### Scale Evaluation
- Is there a clear modular scale? (Common ratios: 1.125 Major Second, 1.25 Major Third, 1.333 Perfect Fourth, 1.5 Perfect Fifth)
- Number of size steps in use — are there too many? (5–7 is ideal; 10+ is chaos)
- Is there sufficient contrast between heading and body sizes?
- Are display sizes (32px+) used with restraint?

### Weight Evaluation
- How many weights are in use? (2–3 is clean; 4+ needs strong justification)
- Is weight used to signal hierarchy, or randomly?
- Is the weight range wide enough to create contrast? (e.g. 400 + 700 vs. 400 + 500 — the latter barely readable as hierarchy)

### Rhythm & Spacing
- Line height: body copy should be 1.4–1.6×; headings 1.1–1.3×
- Letter spacing: display type often benefits from -0.02 to -0.04em; body should be default or very slightly positive
- Paragraph spacing: consistent relationship to line height
- Measure (line length): ideal 60–80 characters for body; wider for display

### Hierarchy Legibility Test
Can you answer these instantly from a glance?
- What is the most important thing on this page?
- What is body copy vs. label vs. caption?
- Where does the eye go first, second, third?

---

## 2. Colour System & Palette Harmony

### Palette Architecture
- **Primary**: Main brand/action colour — is it distinctive? Ownable?
- **Secondary**: Supporting colour — does it harmonise or clash?
- **Neutrals**: Grey scale — warm, cool, or pure? Consistency across uses?
- **Semantic colours**: Success (green), Warning (amber), Error (red), Info (blue) — present and distinct?
- **Surface colours**: Background, surface, elevated surface — do they create depth?

### Harmony Evaluation
- **Colour theory**: Is the palette analogous / complementary / triadic / split-complementary — or just random?
- **Temperature consistency**: Warm primaries with cold neutrals creates tension (sometimes intentional). Is it?
- **Saturation balance**: Are all colours at similar saturation (flat) or is there intentional vibrancy contrast?
- **Hue range**: How many distinct hues? (2–3 hues + neutrals is typically coherent; 5+ needs strong logic)

### Contrast & Accessibility
- Normal text on background: must be ≥ 4.5:1 (WCAG AA)
- Large text (18px+ or 14px bold+): must be ≥ 3:1
- UI components and focus indicators: ≥ 3:1
- Use contrast ratio estimation from visual if DOM unavailable; flag as approximate

### Dark Mode Consideration
- Does the palette have a logical dark mode counterpart?
- Are pure blacks (#000000) used or rich dark backgrounds (#0A0A0F, #111218)?
- Does the primary colour work on both light and dark surfaces?

### Colour Psychology Signals
- What emotions does the palette evoke? (Cool blues = trust/calm, warm oranges = energy/warmth, deep navy = authority, bright greens = growth/health)
- Is this appropriate for the product's category and audience?
- Does the palette feel generic (SaaS blue #3B82F6) or ownable?

---

## 3. Spacing, Rhythm & Layout

### Base Unit System
- Is there a consistent base unit? (Common: 4px, 8px, or 10px grid)
- Are spacing values multiples of the base unit? (4, 8, 12, 16, 24, 32, 48, 64...)
- Random spacing values (13px, 22px, 37px) indicate no system

### White Space Philosophy
- **Macro white space**: Space between major sections — generous (premium/calm) or tight (utility/dense)?
- **Micro white space**: Space between elements within a component — consistent?
- Is white space *active* (used to create hierarchy and focus) or *accidental* (just whatever was leftover)?

### Grid & Alignment
- Is content on a visible or implied grid?
- Column count and gutter consistency
- Are elements left-aligned, centred, or justified — and is this consistent?
- Are there misaligned elements that break the grid?

### Visual Rhythm
- Does the page have a consistent vertical rhythm?
- Do repeated elements (cards, list items, nav items) have identical spacing?
- Is there a sense of *breathing* — pause moments between content blocks?

### Density Assessment
| Level | Description | Suits |
|---|---|---|
| Sparse | Lots of white space, few elements per screen | Premium, editorial, marketing |
| Balanced | Moderate density, clear sections | SaaS, productivity, consumer |
| Dense | High information per screen, minimal padding | Data dashboards, developer tools, enterprise |
| Cluttered | No clear density intention, random | ❌ Always a problem |

---

## 4. Motion & Microinteractions

### Presence Evaluation
- Is animation present? If not — does it feel static and lifeless, or appropriately calm?
- Are hover states defined? Focus states? Active/pressed states?
- Loading states — spinner, skeleton, progress? Or just blank/freeze?

### Quality Evaluation (if animation present or inferable)
- **Easing**: Linear feels robotic. Ease-in-out or custom cubic-bezier feels natural.
  - Enter animations: ease-out (starts fast, decelerates — feels responsive)
  - Exit animations: ease-in (accelerates out — feels intentional)
  - Hover transitions: ease-in-out (smooth, balanced)
- **Duration**: 
  - Microinteractions (hover, toggle): 100–200ms
  - Component transitions (modal open, drawer slide): 200–350ms
  - Page transitions: 300–500ms
  - Longer than 500ms usually feels slow unless intentional
- **Scale of motion**: Large movements on small UI elements feel wrong. Motion should be proportional.
- **Purposefulness**: Does the animation communicate something (state change, hierarchy, feedback) or is it decorative noise?

### Interaction Feedback
- Do buttons give visual feedback on click/press?
- Do form inputs show focus state clearly?
- Are errors and success states communicated with motion?
- Are loading states present for async actions?

### Motion as Personality
- **Snappy & minimal** (Linear, Vercel) = precision, performance, developer-adjacent
- **Fluid & springy** (Apple, Framer) = premium, playful, crafted
- **Subtle & calm** (Notion, Readwise) = focus, non-distracting, editorial
- **Expressive & bouncy** (Duolingo, consumer apps) = fun, energetic, approachable

---

## 5. Iconography & Illustration Style

### Icon System Evaluation
- **Style consistency**: Are all icons from the same family? (Line vs. filled vs. duotone vs. bold — mixing is a red flag)
- **Stroke weight**: Consistent across all icons? (1px, 1.5px, 2px — pick one)
- **Corner radius**: Sharp corners vs. rounded — consistent with overall UI border radius?
- **Size grid**: Icons typically live on a 16px, 20px, or 24px grid. Are they sized consistently?
- **Optical alignment**: Icons optically centred within their bounding box? (Not mathematically centred)
- **Recognisability**: At 16–20px, are icons immediately legible without labels?
- **Labelling**: Are ambiguous icons always labelled?

### Common Icon Libraries (for reference/recommendation)
- **Lucide** — clean, 2px stroke, highly consistent, MIT license
- **Phosphor Icons** — versatile, 6 weights, great range
- **Heroicons** — outline + solid, Tailwind-adjacent
- **Feather** — minimal, elegant, 1.5px stroke
- **Tabler** — comprehensive, consistent, open source
- **Radix Icons** — minimal, precise, great for product UI

### Illustration Evaluation (if present)
- **Style match**: Does illustration style match the UI's visual language? (Abstract geometric with flat UI ✅; detailed painterly with minimal UI ❌)
- **Colour integration**: Do illustration colours pull from the product's palette?
- **Consistency**: Are all illustrations clearly from the same illustrator/system?
- **Purpose**: Are illustrations adding meaning or just decoration?

### Illustration Styles Reference
| Style | Character | Suits |
|---|---|---|
| Geometric abstract | Clean, modern, scalable | Tech, SaaS, B2B |
| Character-based | Warm, human, approachable | Consumer, education, health |
| Isometric | Technical, detailed, precise | Enterprise, developer tools |
| Line-based | Minimal, editorial | Professional services, finance |
| 3D render | Premium, immersive | Marketing, gaming, luxury |
| Photography | Real, trustworthy | E-commerce, lifestyle, healthcare |

---

## 6. Visual Personality & Brand Cohesion

### Cohesion Test
Ask these questions across all five dimensions:

1. **Do the typefaces, colours, spacing, and icons feel like they were chosen together?**
2. **Could you identify this product's design language from a single component, out of context?**
3. **Is there a clear point of view — or does it feel assembled from trends?**
4. **Do UI components feel like they come from the same family?**
5. **Does the visual language match what the product *does* and who it's *for*?**

### Personality Spectrum Axes
Rate the product on each axis:

| Axis | ← Pole | → Pole |
|---|---|---|
| Formality | Casual / Playful | Formal / Professional |
| Energy | Calm / Quiet | Bold / Expressive |
| Complexity | Minimal / Sparse | Rich / Dense |
| Temperature | Warm / Human | Cool / Technical |
| Familiarity | Safe / Expected | Distinctive / Surprising |
| Finish | Raw / Rough | Polished / Premium |

### Common Cohesion Failure Patterns
- **Frankenstein UI**: Components clearly from different eras or designers — no unifying logic
- **Trend-stacking**: Glassmorphism cards + Neumorphic buttons + Brutalist typography = no identity
- **Aspirational mismatch**: Trying to look premium but using free Unsplash stock, system fonts, and Bootstrap defaults
- **Color chaos**: 8+ colours with no system — vibrant primary, random secondaries, inconsistent neutrals
- **The ghost of redesigns past**: Old design elements surviving alongside new ones — tells the story of a product that never finished evolving

### Visual Identity Adjective Test
Can you describe the product's visual personality in 3 adjectives?
- If you can: it has an identity (even if it's the wrong one)
- If you can't: it has no identity — this is the core problem to name

Good examples:
- Linear: "Precise. Dark. Uncompromising."
- Notion: "Calm. Flexible. Understated."
- Duolingo: "Playful. Loud. Confident."
- Stripe: "Authoritative. Technical. Premium."
- Figma: "Creative. Accessible. Collaborative."
