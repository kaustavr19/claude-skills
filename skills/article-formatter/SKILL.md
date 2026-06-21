---
name: article-formatter
description: >
  Full-stack article formatting assistant. Use this skill whenever the user wants to write, format, restructure, or polish any article, post, or written content for a specific platform or publication format. Triggers include: "format this for LinkedIn", "write an article from my notes", "polish my draft", "help me post this to Medium/Substack/DevPost", "make this ready to publish", "turn my braindump into an article", "write a press release", "format my research paper", "make this publication-ready", or any mention of writing for a specific platform. Also trigger when the user pastes raw notes, bullet points, or a rough draft and asks for help making it article-ready — even if they don't name a platform yet.
---

# Article formatter

A structured formatting assistant that turns raw ideas, rough drafts, or existing content into polished, platform-ready articles. It knows the rules for each platform — structure, length, tone, SEO hygiene, and media placement — and applies them with full session memory across iterations.

---

## Session state — track throughout the conversation

Initialise at the start of each session. Update after every intake answer and every revision. Never ask the user to repeat information already in state.

```
SESSION STATE
─────────────────────────────────────────────
Mode:           [A / B / C — set in Step 1]
Platform:       [platform + sub-type]
Tone profile:   [Formal / Conversational / Technical / Custom: ___]
Target keyword: [keyword / "none specified"]
Author voice:   [notes from intake / "not specified"]
Purpose:        [awareness / lead gen / SEO / education / sales support / etc.]
Audience:       [who the reader is]
Series:         [standalone / part N of M / undetermined]
Iterations:     [running log of changes made this session]
─────────────────────────────────────────────
```

When the user requests a revision — "make it shorter", "more casual", "try a stronger hook" — update the relevant fields and re-deliver. Do not re-ask anything already captured.

---

## Step 1 — Identify mode

If not clear from the user's message, present the three options:

**Mode A — Braindump to article**
Raw notes, bullet points, voice memo transcripts, or scattered ideas → Claude writes the full article from scratch. Anti-slop rules apply fully to all generated content.

**Mode B — Polish a draft**
A rough article or draft exists → Claude restructures, tightens, and refines while preserving the author's voice. Anti-slop flags appear after the output; prose is not silently rewritten.

**Mode C — Format / layout only**
Apply structure and platform conventions without changing content → Claude applies the scaffold and section headers. Prose is untouched. Anti-slop runs in detection-only mode.

---

## Step 2 — Run intake

Ask only what isn't already clear from the user's message. Combine questions where logical. Hard cap: 4 questions maximum. Never run a full intake if 1–2 questions would do.

### Intake question bank

**Q — Platform** *(skip if already stated)*
"Which platform or format is this for?" + show the platform list from Step 3.

**Q — Audience + purpose** *(ask if not obvious from context)*
"Who's the primary reader, and what should they think or do after reading this?"
Offer examples: build trust in our expertise / drive demo requests / rank for a search term / educate practitioners / support a sales conversation.

**Q — Tone** *(ask for Modes A and B; skip for Mode C)*
"How should this sound?" + present the four tone profiles:
- **Formal** — authoritative, precise, minimal personality. Suits enterprise B2B, press releases, academic.
- **Conversational** — direct, human, occasional informality. Suits Medium, Substack, blog posts.
- **Technical** — accuracy-first, comfortable with domain jargon, assumes reader expertise. Suits DevPost, research, documentation-adjacent content.
- **Custom** — "describe the voice" (e.g. "confident but not sales-y", "senior practitioner explaining to a peer")

**Q — SEO keyword** *(ask for: Medium, Blog post, Substack, Enterprise B2B only)*
"Is there a specific keyword or search phrase this should rank for? If not, I'll optimise for clarity and read-through instead."

**Q — Argument / POV** *(ask for Mode A braindumps where a strong position matters)*
"Is there a specific argument or angle you want the article to take, or should I find it from the material?"

**Do not ask about series upfront.** Series detection is automatic in Step 4b — it's an offer, not an intake question.

---

## Step 3 — Select platform

Confirm from intake or ask now:

1. LinkedIn
2. Medium
3. Substack
4. Newsletter (generic)
5. DevPost
6. Press release
7. News / editorial
   - 7a. AP style (news report)
   - 7b. Editorial / opinion piece
8. Academic abstract
9. Research paper
   - 9a. Abstract only
   - 9b. Full IMRaD structure
   - 9c. Conference paper
10. Blog post (generic)
11. Product Hunt launch post
12. Enterprise / B2B content
    - 12a. Thought leadership article
    - 12b. Product / solution explainer
    - 12c. Case study / customer story
    - 12d. Industry report / white paper

Always load `references/platforms.md` before generating anything. It contains the structure template, length limits, constraint thresholds, conventions, and supported media types for each platform.

---

## Step 4 — Pre-generation checks

Run all three in order. Handle each before generating output.

### 4a — Length and constraint check

Compare estimated output size against platform limits in `references/platforms.md`.

If a limit would be breached:
```
⚠️ Constraint notice — [Platform]
[What limit is breached and by how much]
Suggestion: [specific actionable advice]
```

Show this block above the output. If content is 2× or more over the limit, also run 4b.

### 4b — Series detection

When content volume clearly justifies multiple pieces, offer a split before generating:

```
📚 Series opportunity
This content could work well as a [N]-part series.

Suggested structure:
  Part 1 — "[title]": [what it covers]
  Part 2 — "[title]": [what it covers]
  Part 3 — "[title]": [what it covers, if applicable]

Want me to write Part 1 now, or keep this as one long piece?
```

Wait for the user's choice before proceeding. If they choose the series:
- Update session state: `Series: part 1 of N`
- Write Part 1 only
- After delivery, offer: "Ready to write Part 2 when you are."

If the content fits in one piece, skip this step silently.

### 4c — SEO check (light)

**Applies to:** Medium, Blog post, Substack, Enterprise B2B.
**Skip entirely for:** all other platforms.

**If a keyword was provided:**
- Confirm it appears naturally in: the display title, the first 100 words, and at least 2 H2 headings
- Do not force it where it doesn't fit — note the gap instead
- Write the meta description for click-through rate: lead with the tension or value, include the keyword, 150–160 chars

**If no keyword was provided:**
- Infer the most likely search intent from the content
- Suggest a keyword as an advisory note — don't apply it without the user confirming

Append this block after the article, before the media summary:
```
── SEO notes ────────────────────────────
Keyword:     [keyword / "none — suggested: [keyword]"]
Title:       [✓ contains keyword] or [✗ absent — suggested: "[alternative]"]
Lede:        [✓ keyword in first 100 words] or [✗ absent]
H2s:         [✓ keyword in N headings] or [✗ absent — suggested: "[heading]"]
Meta:        [written meta description, 150–160 chars]
─────────────────────────────────────────
```

*SEO skill integration note: this block is the handoff point. A full SEO skill can extend from keyword, title, meta, and H2 data here into intent analysis, title variants, featured snippet optimisation, and internal linking strategy.*

---

## Step 5 — Plan media placements

Check `references/platforms.md` for supported media types before suggesting anything. Plan placements while writing — not as an afterthought.

### Inline placeholder format

Insert at the natural placement point in the text:

```
> 📷 **[ESSENTIAL / RECOMMENDED / OPTIONAL] Image:** [specific description of what to show]
>    *Alt text: [descriptive alt text for accessibility]*

> 🎬 **[ESSENTIAL / RECOMMENDED / OPTIONAL] Video:** [what it covers + ideal duration]

> 💻 **[ESSENTIAL / RECOMMENDED / OPTIONAL] Code block:** [what code or output to show]

> 📊 **[ESSENTIAL / RECOMMENDED / OPTIONAL] Diagram / chart:** [what to visualise]

> 🔗 **[ESSENTIAL / RECOMMENDED / OPTIONAL] Embed:** [what to embed and why]
```

**Priority definitions:**
- **ESSENTIAL** — the concept is significantly harder to grasp without this; reader may disengage or misunderstand
- **RECOMMENDED** — meaningful value, worth production effort; text works alone but this makes it better
- **OPTIONAL** — adds polish or visual break; lowest priority for production budget

### Media placement summary block

Append after the article (before SEO notes):
```
── Media placement summary ──────────────
[#] [PRIORITY] [emoji type] — after "[section heading]"
    → [what it should show]
─────────────────────────────────────────
```

### Media rules

- Only suggest types the platform supports (table in `references/platforms.md`)
- Max 1 media item per major section — no padding thin content with visuals
- Never suggest media in press releases or academic abstracts
- Always include alt text suggestion with every image placeholder

---

## Step 6 — Generate output

Apply the platform template from `references/platforms.md`. Apply tone from intake. Deliver in this exact order:

1. **Constraint warning** (Step 4a — if applicable)
2. **Series suggestion** (Step 4b — if applicable; pause and wait for user choice before continuing)
3. **Article content** — ready to paste; no "here is your article:" preamble
4. **Media placement summary** (Step 5)
5. **SEO notes** (Step 4c — SEO-applicable platforms only)
6. **Anti-slop notes** (Modes B and C — if flags exist)

### Tone application

| Profile | What changes |
|---|---|
| **Formal** | Third person preferred; no contractions; structured paragraphs; precise word choice; minimal personality |
| **Conversational** | First or second person fine; contractions acceptable; shorter sentences; room for a dry observation or two |
| **Technical** | Domain terms used without apology; numbered steps where sequential; precision over accessibility; assumes expertise |
| **Custom** | Apply the described voice consistently; note it in session state; check against it before delivering |

In Mode C, preserve the tone of the original — do not shift it.

---

## Anti-slop rules — full

Read `references/anti-slop.md` for the complete rules. Apply selectively by mode:

**Mode A:** Rules active during writing. Output clean from the start — no post-output flag block.

**Mode B:** After output, append:
```
── Anti-slop notes ──────────────────────
[Flagged phrase] → [suggested replacement or approach]
─────────────────────────────────────────
```
Omit entirely if the draft was clean.

**Mode C:** If 3+ slop phrases detected, add one line:
```
Spotted [N] AI-sounding phrases — want me to flag them?
```

---

## Iteration

After each delivery, offer exactly one follow-up — chosen for what would genuinely be useful next:

- After a first draft: "Want me to adjust the tone or tighten any section?"
- After a long piece near the limit: "Want me to map out the series structure for remaining parts?"
- After Mode C: "Want me to run a full polish pass on the content too?"
- After Mode B with flags: "Want me to apply those anti-slop suggestions and re-deliver?"
- After a series Part 1: "Ready to write Part 2 when you are."
