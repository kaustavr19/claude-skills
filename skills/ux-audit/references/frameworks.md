# Audit Frameworks — Full Checklists

Reference file for the `ux-audit` skill. Load this when running the audit.

---

## Table of Contents
1. [Nielsen's 10 Heuristics](#1-nielsens-10-heuristics)
2. [WCAG 2.2 Accessibility](#2-wcag-22-accessibility)
3. [Gestalt Visual Design Principles](#3-gestalt-visual-design-principles)
4. [UX Writing & Microcopy](#4-ux-writing--microcopy)
5. [Mobile / Responsive Behaviour](#5-mobile--responsive-behaviour)
6. [Performance & Core Web Vitals](#6-performance--core-web-vitals)

---

## 1. Nielsen's 10 Heuristics

Evaluate each heuristic and note violations with severity.

| # | Heuristic | Key Questions |
|---|---|---|
| H1 | **Visibility of System Status** | Does the UI keep users informed? Loading states, progress indicators, success/error feedback present? |
| H2 | **Match Between System and Real World** | Does language match the user's vocabulary? No jargon? Metaphors feel natural? |
| H3 | **User Control and Freedom** | Can users undo/redo? Clear exits from flows? "Emergency exit" patterns present? |
| H4 | **Consistency and Standards** | Do similar elements behave the same? Platform conventions followed? Internal consistency across pages? |
| H5 | **Error Prevention** | Are destructive actions confirmed? Forms validate inline? Ambiguous inputs constrained? |
| H6 | **Recognition Rather Than Recall** | Options visible rather than memorised? Context preserved across steps? Labels on icons? |
| H7 | **Flexibility and Efficiency** | Shortcuts for power users? Defaults sensible for novices? Personalisation available? |
| H8 | **Aesthetic and Minimalist Design** | No irrelevant information cluttering UI? Hierarchy is clear? Every element earns its place? |
| H9 | **Help Users Recognise, Diagnose, and Recover from Errors** | Error messages plain language? Point to the problem? Suggest a fix? |
| H10 | **Help and Documentation** | Is help findable? Context-sensitive? Task-oriented rather than feature-oriented? |

**Scoring guide:**
- 9–10: All or most heuristics well-addressed
- 7–8: Minor violations only
- 5–6: Several notable violations
- 3–4: Systemic issues across multiple heuristics
- 1–2: Fundamental usability problems

---

## 2. WCAG 2.2 Accessibility

Organised by POUR principles. Focus on Level AA compliance minimum; note AAA where relevant.

### Perceivable
- **1.1.1 Non-text Content (A):** All images have meaningful alt text; decorative images have `alt=""`
- **1.3.1 Info and Relationships (A):** Headings, lists, tables marked up semantically
- **1.3.2 Meaningful Sequence (A):** Reading/focus order matches visual order
- **1.3.3 Sensory Characteristics (A):** Instructions don't rely solely on shape, colour, size, or position
- **1.3.4 Orientation (AA):** Content not restricted to single orientation
- **1.3.5 Identify Input Purpose (AA):** Form inputs have `autocomplete` attributes
- **1.4.1 Use of Colour (A):** Colour not the only means of conveying information
- **1.4.3 Contrast Minimum (AA):** Normal text ≥ 4.5:1; large text ≥ 3:1
- **1.4.4 Resize Text (AA):** Text resizable to 200% without loss of content
- **1.4.5 Images of Text (AA):** Real text used instead of images of text
- **1.4.10 Reflow (AA):** Content reflows at 320px width without horizontal scrolling
- **1.4.11 Non-text Contrast (AA):** UI components and focus indicators ≥ 3:1 against adjacent colours
- **1.4.12 Text Spacing (AA):** No loss of content when spacing adjusted
- **1.4.13 Content on Hover or Focus (AA):** Tooltip/popup content is persistent, dismissible, hoverable

### Operable
- **2.1.1 Keyboard (A):** All functionality operable via keyboard
- **2.1.2 No Keyboard Trap (A):** Focus not trapped in any component
- **2.4.1 Bypass Blocks (A):** Skip navigation link present
- **2.4.2 Page Titled (A):** Pages have descriptive titles
- **2.4.3 Focus Order (A):** Focus order preserves meaning
- **2.4.4 Link Purpose (A):** Link purpose clear from text or context
- **2.4.6 Headings and Labels (AA):** Headings and labels describe topic/purpose
- **2.4.7 Focus Visible (AA):** Keyboard focus indicator visible
- **2.4.11 Focus Not Obscured (AA — new in 2.2):** Focused component not fully hidden by sticky headers/banners
- **2.4.12 Focus Not Obscured Enhanced (AAA — new in 2.2):** Focused component fully visible
- **2.5.3 Label in Name (A):** Accessible name contains visible label text
- **2.5.7 Dragging Movements (AA — new in 2.2):** Drag operations have single-pointer alternative
- **2.5.8 Target Size Minimum (AA — new in 2.2):** Touch targets ≥ 24×24px (aim for 44×44px)

### Understandable
- **3.1.1 Language of Page (A):** `lang` attribute set on `<html>`
- **3.1.2 Language of Parts (AA):** Language changes within content marked
- **3.2.1 On Focus (A):** No context change on focus
- **3.2.2 On Input (A):** No context change on input unless warned
- **3.2.3 Consistent Navigation (AA):** Navigation repeated consistently across pages
- **3.2.4 Consistent Identification (AA):** Consistent labels for same-function elements
- **3.3.1 Error Identification (A):** Errors identified and described in text
- **3.3.2 Labels or Instructions (A):** Labels/instructions provided for inputs
- **3.3.3 Error Suggestion (AA):** Error suggestions provided where known
- **3.3.4 Error Prevention (AA):** Submissions reversible, checked, or confirmed

### Robust
- **4.1.1 Parsing (A):** Valid HTML (no duplicate IDs, properly nested elements)
- **4.1.2 Name, Role, Value (A):** All UI components have accessible name, role, state
- **4.1.3 Status Messages (AA):** Status messages programmatically determinable without focus

**DOM checks to perform when browser available:**
- Run axe-core or check accessibility tree for violations
- Tab through the page manually noting focus order and visibility
- Check colour contrast using computed styles

---

## 3. Gestalt Visual Design Principles

| Principle | What to Check |
|---|---|
| **Proximity** | Related elements grouped visually; unrelated elements separated with space |
| **Similarity** | Elements that function the same look the same (buttons, links, tags) |
| **Continuity** | Eye guided smoothly through content; no jarring breaks in visual flow |
| **Closure** | Incomplete shapes still perceived correctly; icons legible at small sizes |
| **Figure/Ground** | Content clearly separates from background; no ambiguous layering |
| **Common Fate** | Animated/moving elements perceived as grouped |
| **Symmetry** | Layouts feel balanced; asymmetry used intentionally for emphasis |
| **Prägnanz** | Simplest interpretation possible; UI doesn't make users think |

**Additional visual quality checks:**
- **Visual hierarchy:** Is there a clear F/Z reading pattern? Primary > Secondary > Tertiary actions distinct?
- **Whitespace:** Used actively, not accidentally; breathing room around key elements
- **Colour system:** Consistent palette; purposeful colour usage (not decorative noise)
- **Iconography:** Consistent style, weight, and size; labelled where ambiguous
- **Typography:** Limited type scales; clear hierarchy; appropriate line-height and measure

---

## 4. UX Writing & Microcopy

### Voice & Tone
- Does the copy feel consistent with the brand? Professional, approachable, or playful as appropriate?
- Is the tone appropriate for context (error states should not be flippant; onboarding can be warm)

### Clarity
- Is every label self-explanatory without hover/read-more?
- Jargon, acronyms, or technical terms unexplained?
- Passive voice overused?

### CTAs (Calls to Action)
- Are CTAs action-oriented verbs? ("Save changes" not "Submit"; "Start free trial" not "Go")
- Is the benefit/outcome clear from the CTA text?
- Primary vs secondary CTAs visually distinct and copy-distinct?

### Error Messages
- Do they say what went wrong in plain language?
- Do they say how to fix it?
- Are they non-blaming? ("That email is already in use" not "Invalid input")

### Empty States
- Are empty states explained? Do they provide a next action?
- Opportunity to educate or encourage missed?

### Form Labels & Placeholders
- Labels visible always (not hidden inside inputs)?
- Placeholder text doesn't substitute for labels?
- Helper text provided where input format is specific?

### Onboarding & System Messages
- Loading states have copy? ("Finding your results…" vs blank spinner)
- Success messages confirm the action taken?
- Confirmation dialogs specific? ("Delete this project?" not "Are you sure?")

---

## 5. Mobile / Responsive Behaviour

### Layout
- Does content reflow cleanly at 320px, 375px, 768px?
- No horizontal overflow at mobile breakpoints?
- Tables and wide elements handled (scroll, collapse, or stack)?

### Touch Targets
- Minimum 44×44px for all interactive elements (WCAG 2.5.8 says 24px minimum; 44px is best practice)
- Adequate spacing between adjacent tap targets (≥ 8px)
- No hover-only interactions (hover doesn't exist on touch)

### Navigation
- Hamburger menu or mobile nav accessible and keyboard operable?
- Sticky elements (headers, banners) not consuming > 25% viewport height?
- Back navigation intuitive?

### Typography
- Font sizes ≥ 16px for body text on mobile (prevents iOS auto-zoom)
- Line length appropriate for narrow screens (< 80 characters)

### Forms
- Appropriate input types (`tel`, `email`, `number`) to trigger correct keyboards?
- Forms single-column on mobile?
- Autocomplete enabled?

### Performance perception on mobile
- Does the page feel fast on a throttled 3G connection?
- Images served at appropriate sizes (not desktop-sized images on mobile)?

---

## 6. Performance & Core Web Vitals

### Core Web Vitals Thresholds

| Metric | Good | Needs Improvement | Poor |
|---|---|---|---|
| **LCP** (Largest Contentful Paint) | ≤ 2.5s | 2.5–4.0s | > 4.0s |
| **INP** (Interaction to Next Paint) | ≤ 200ms | 200–500ms | > 500ms |
| **CLS** (Cumulative Layout Shift) | ≤ 0.1 | 0.1–0.25 | > 0.25 |

### What to Check
- **LCP:** What is the largest element? Is it an unoptimised image? Does it load early?
- **INP:** Are there heavy JS event handlers? Long tasks blocking the main thread?
- **CLS:** Images/ads without dimensions? Late-injected banners or fonts causing shift?

### Additional Performance Checks
- Images: WebP/AVIF format? Appropriate compression? Lazy loading below fold?
- Fonts: Self-hosted or system fonts? `font-display: swap` set? Subset loaded?
- JavaScript: Bundle size excessive? Render-blocking scripts in `<head>`?
- CSS: Unused styles? Critical CSS inlined?
- Caching: Static assets cache-controlled? CDN in use?

### How to Gather This Data (without browser tools)
- Recommend user run [PageSpeed Insights](https://pagespeed.web.dev/) or [WebPageTest](https://www.webpagetest.org/)
- If web_fetch available, check `<head>` for obvious render-blocking resources
- If browser MCP available, check Network tab for large assets or waterfall issues
- Note clearly what is inferred vs measured

**Important:** If you cannot access real performance data, flag estimates as estimates and direct the user to measure themselves. Do not fabricate CWV scores.
