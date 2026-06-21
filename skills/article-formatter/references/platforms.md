# Platform reference — article formatter

Each platform entry contains:
- **Structure template** — the scaffold to apply
- **Length constraints** — hard limits + warning thresholds
- **Conventions** — platform-specific rules and norms
- **Anti-slop notes** — any platform-specific tone guidance on top of the base rules

---

## 1. LinkedIn

### Structure template
```
[Hook — 1–3 lines, no full sentence required. Must earn the "see more" click.]

[Body — 3–6 short paragraphs or punchy line blocks. One idea per paragraph.]

[Closing line or reflection — not a summary. A thought that lands.]

[CTA — optional. If included: one clear ask. Never "feel free to reach out."]

[Hashtags — 3–5 max, on a new line below the post]
```

### Length constraints
- Optimal: 900–1,300 characters (displays without truncation on most feeds)
- Warning threshold: 1,800 characters (show warning, suggest trimming)
- Hard limit: 3,000 characters (LinkedIn truncates at ~210 words visible)
- No character limit technically, but posts beyond 1,300 chars see engagement drop

⚠️ If content exceeds 1,800 characters, show: "LinkedIn posts over ~1,300 chars get truncated in the feed. Consider trimming to the key insight, or splitting into a carousel/series."

### Conventions
- No clickable hyperlinks in the post body (they suppress reach). Mention URLs in comments instead.
- Line breaks are structural — use them intentionally, not decoratively
- First 2–3 lines are everything — they appear before "see more"
- Hashtags at the bottom only, never inline
- First person preferred ("I built...", "We shipped...")
- No headers or markdown — LinkedIn renders plain text only
- Emojis: optional, use sparingly (1–2 max if at all)
- Avoid "Excited to share" / "Proud to announce" / "Thrilled to..." — these are engagement killers and AI tells

### Anti-slop notes
LinkedIn is ground zero for AI slop. The "thought leadership" tone is the enemy. Write like you're telling a colleague what happened, not like you're keynoting a conference. If the hook sounds like a TED talk, rewrite it.

---

## 2. Medium

### Structure template
```
[Title — sentence case, specific, not clickbait]

[Subtitle — optional. One line expanding the title's promise.]

[Lede — 1–2 paragraphs. Sets up the problem or tension. No "In today's world..."]

[Section 1]
[H2 heading — sentence case]
[Body paragraphs]

[Section 2]
[H2 heading]
[Body paragraphs]

[... additional sections as needed]

[Closing — lands the piece. No summary paragraph. No "In conclusion."]

[Tags — 5 max, added in Medium's UI not in the text]
```

### Length constraints
- Optimal: 1,200–2,500 words (6–12 min read — highest engagement range)
- Warning threshold: 3,000 words (show warning: "Medium readers drop off after ~12 min. Consider splitting into a series.")
- Minimum for meaningful piece: 600 words
- Hard limit: none, but >5,000 words should be explicitly intentional (long-form essay)

### Conventions
- Markdown renders: H1, H2, H3, bold, italic, blockquotes, code blocks all supported
- H1 = article title only (set in Medium UI). Use H2/H3 in body.
- Drop cap on first paragraph: Medium applies this automatically — don't add one manually
- Blockquotes work well for pull quotes or key statements
- Images: Medium supports inline images with captions — describe placement if relevant
- No keyword stuffing — Medium's algorithm cares more about read ratio than SEO
- Canonical URL: mention if republishing from elsewhere

### Anti-slop notes
Medium readers are sophisticated. The biggest tells here are: uniform paragraph length, "And here's the thing:" constructions, and conclusions that summarize what was just said. End when the last point is made.

---

## 3. Substack

### Structure template
```
[Subject line / title — specific, honest, not clever for clever's sake]

[Opening — personal or direct. No preamble. Get into it within 2 sentences.]

[Body — longer-form acceptable. Can use sections with H2s or flow as one continuous piece.]

[Closing — can be personal, a question for paid readers, or a direct sign-off]

[Optional: a note for paid subscribers if relevant]
```

### Length constraints
- No algorithmic penalty for length — Substack is email-native
- Optimal for newsletters: 500–1,500 words (opens well on mobile)
- Long-form essays: 2,000–5,000 words acceptable if the writing earns it
- Warning threshold: none hard — but flag if over 4,000 words without clear long-form intent ("This reads as a long-form essay — Substack handles these well, but make sure the depth justifies the length.")

### Conventions
- Substack renders markdown: headers, bold, italic, blockquotes, code blocks, images
- First-person, personal voice expected — readers subscribed to *you*, not a publication
- Can reference past issues or build on previous threads
- Paid gating: content before the paywall break should stand alone and intrigue, not dead-end
- No SEO pressure — write for your readers, not search
- Email subject line = post title — treat it like a subject line (no "RE:" energy, but not clickbait either)

### Anti-slop notes
Substack's biggest trap is newsletter-voice becoming corporate-voice. If it sounds like a press release, it's wrong. The best Substack writing sounds like an opinionated, well-read person thinking out loud.

---

## 4. Newsletter (generic)

### Structure template
```
[Subject line]

[Greeting — optional, keep brief]

[Lead story / main section]
  [Short intro — 1–2 sentences]
  [Body — 3–5 paragraphs or structured sections]

[Secondary section(s) — optional]
  [Section header]
  [Brief content]

[Closing / sign-off]

[Footer — unsubscribe note, legal if needed — typically handled by platform]
```

### Length constraints
- Optimal: 400–800 words (email context — readers scan first)
- Warning threshold: 1,200 words ("Most email newsletters over 1,000 words see drop-off. Consider trimming or breaking into sections with clear headers.")
- Digest-style newsletters: can go longer if well-structured with clear sections

### Conventions
- Subject line is the most important line — write it last, treat it as a headline
- Preview text (first ~90 chars visible in inbox) matters — don't waste it on greetings
- Short paragraphs, clear section breaks — readers scan on mobile
- One primary CTA only
- Plain text or lightly formatted HTML — avoid heavy design language in the copy itself
- Plain, warm tone — you're in someone's inbox, not their feed

---

## 5. DevPost

### Structure template
```
[Project name]

[Tagline — one sentence. What it does and why it matters.]

**Inspiration**
[Why you built this. The problem, the itch, the gap. 1–2 paragraphs.]

**What it does**
[Clear, jargon-accessible description. What does a user actually experience? 1–2 paragraphs.]

**How we built it**
[Tech stack, architecture decisions, notable implementation choices. Can use bullet points for stack.]

**Challenges we ran into**
[Real challenges — not vague "it was hard." Specific technical or design problems. 1–2 paragraphs.]

**Accomplishments that we're proud of**
[What actually worked. Specific wins. Not generic "we're proud of our teamwork."]

**What we learned**
[Genuine learnings. Can be technical, process, or product insights.]

**What's next for [project name]**
[Concrete next steps or future vision. Keep grounded.]

**Built with**
[Tag list — DevPost renders these as tech tags. List the stack.]
```

### Length constraints
- Each section: 100–300 words (DevPost judges read dozens of entries)
- Warning if any single section exceeds 400 words: "DevPost judges read many submissions — keep each section tight."
- Total optimal: 600–1,200 words across all sections

### Conventions
- Use the exact section headers above — judges and bots scan for them
- "Built with" section is separate from the prose — list technologies, frameworks, APIs
- Demo link and GitHub link are entered separately in DevPost UI — mention them as "[Demo link]" and "[GitHub link]" placeholders in the copy
- Screenshots/video: note placement suggestions but don't embed in text
- Write for a non-expert judge — assume they know tech but not your specific stack's quirks
- Avoid: vague inspiration stories, generic "it was a great learning experience," padded accomplishments

---

## 6. Press release

### Structure template
```
FOR IMMEDIATE RELEASE
[OR: EMBARGOED UNTIL: [Date, Time, Timezone]]

[HEADLINE — ALL CAPS or Title Case. One sentence. Lead with the news.]

[SUBHEADLINE — optional. Expands on headline. Sentence case.]

[CITY, Date] — [Lead paragraph: who, what, when, where, why — the whole story in one paragraph.]

[Second paragraph: Context, significance, or expanded detail.]

[Quote paragraph: "Quote," said [Full Name], [Title], [Company]. Quote should add perspective, not restate facts.]

[Third paragraph: Additional details, product specifics, stats, or background.]

[Optional: second quote from partner, customer, or co-founder.]

[Boilerplate: Standard "About [Company]" paragraph — 2–3 sentences.]

###
[End mark — three hashes signals end of release]

**Media contact:**
[Name]
[Email]
[Phone]
[Website]
```

### Length constraints
- Optimal: 400–600 words (journalists scan — they don't read)
- Warning threshold: 700 words ("Press releases over 600 words rarely get read in full. Cut to the essential news and one quote.")
- Absolute hard convention: one page (≈ 500 words)

### Conventions
- Inverted pyramid — most important info first, least important last
- Journalists cut from the bottom — make every paragraph stand alone
- Quotes must sound like a human said them (apply anti-slop hard here)
- Numbers: spell out one through nine, use numerals for 10+
- Dates: [Month Day, Year] format — "May 3, 2026" not "03/05/26"
- "FOR IMMEDIATE RELEASE" at top left is standard
- ### (three hashes) is the standard press release end mark
- Boilerplate is boilerplate — it can be templated, but it must exist

### Anti-slop notes
Press release quotes are the single most slop-infested sentence type in existence. "We are thrilled to announce our groundbreaking, innovative solution..." is the enemy. Write a quote that sounds like a real person with an actual opinion said it.

---

## 7a. News / editorial — AP style (news report)

### Structure template
```
[Headline — specific, active verb, no clickbait]

[Dateline: CITY — ] [Lead paragraph: the story in one sentence. Who did what, when, where, why.]

[Second paragraph: essential context or the most important additional fact.]

[Body paragraphs: inverted pyramid — most newsworthy to least. Each paragraph stands alone.]

[Quote: "Quote," said [Full Name], [Title/affiliation].]

[Context / background paragraph]

[Additional quotes or data]

[Least essential detail or "nut graf" context at the end]
```

### Length constraints
- Hard news brief: 150–300 words
- Standard news article: 400–700 words
- Feature/in-depth: 800–1,500 words
- Warning if over 700 words without feature framing: "Standard news articles run 400–700 words. If this is a feature piece, switch to editorial format."

### Conventions
- AP style: Oxford comma NOT used, spell out numbers one through nine
- Attribution: "said" not "stated," "noted," "explained," "revealed" — AP uses "said"
- Quotes: full name and title on first reference, last name only after
- Passive voice: avoid unless the actor is genuinely unknown
- No opinions in news articles — stick to facts and attributed quotes
- "According to" — use sparingly, not as every attribution
- Dateline: all caps city name, state abbreviated per AP style

---

## 7b. News / editorial — editorial / opinion piece

### Structure template
```
[Headline — takes a stance or poses a genuine question]

[Lede — hooks with a specific scene, fact, or tension. Not a thesis statement yet.]

[Nut graf — 1 paragraph: here's what this is really about and why it matters now.]

[Argument body — 3–5 paragraphs building the case. Each paragraph advances, doesn't repeat.]

[Counterargument — acknowledge the strongest opposing view. Engage it honestly.]

[Resolution — how you respond to the counterargument. Your position, sharpened.]

[Closing — lands on a specific, memorable thought. Not a summary.]
```

### Length constraints
- Standard op-ed: 700–900 words (NYT, Guardian target)
- Long-form opinion: 1,200–1,800 words
- Warning if over 900 words: "Most op-ed slots run 700–900 words. If pitching externally, trim to that range."

### Conventions
- First person acceptable and expected in opinion pieces
- Must take a clear position — waffling is worse than being wrong
- Counterargument is not optional — pieces without it read as uninformed
- Evidence: specific data, named examples, attributed facts — not "research shows"
- No "In conclusion" — the final paragraph is the conclusion, it doesn't need announcing
- Byline and brief bio typically added by editors — leave placeholders if needed

---

## 8a. Academic — abstract only

### Structure template
```
[Background / context — 1–2 sentences: what is the broader problem or field?]

[Gap / motivation — 1 sentence: what is missing or unresolved?]

[Objective / aim — 1 sentence: what does this paper do?]

[Methods — 1–2 sentences: how was it done?]

[Results — 1–2 sentences: what was found? Be specific — include numbers if available.]

[Conclusion / implications — 1–2 sentences: what does this mean and why does it matter?]
```

### Length constraints
- Structured abstract: 250–300 words (most journals)
- Unstructured abstract: 150–250 words
- Conference abstract: 150–250 words
- Warning if over 300 words: "Most journals have a strict 250–300 word abstract limit. This will need trimming before submission."

### Conventions
- No citations in the abstract
- No undefined acronyms — spell out on first use
- Past tense for methods and results ("We conducted...", "Results showed...")
- Present tense for conclusions and implications ("These findings suggest...")
- No "This paper will..." — write as if the paper is complete (it is)
- Avoid hedging language weakening the findings unless genuinely necessary
- Keywords: 4–6 listed below the abstract if required

---

## 8b. Academic — research paper (full IMRaD)

### Structure template
```
[Title — specific, includes key variables and context]

[Abstract — see 8a]

[Keywords: word1, word2, word3, word4, word5]

**1. Introduction**
[Background context → gap in literature → research question/hypothesis → paper structure outline]

**2. Literature review / related work** (if separate from introduction)
[Organised by theme, not chronology. Ends with clear articulation of the gap this paper fills.]

**3. Methodology / methods**
[Research design → participants/data → instruments/materials → procedure → analysis approach]
[Enough detail to replicate. Past tense.]

**4. Results**
[Findings only — no interpretation here. Tables and figures referenced as "Table 1", "Figure 2".]

**5. Discussion**
[Interpret results → relate to literature → explain unexpected findings → limitations → implications]

**6. Conclusion**
[Summary of key findings → contributions → future research directions]

**References**
[Format per target journal style — APA, MLA, IEEE, AMA, Vancouver. Note which style to use.]
```

### Length constraints
- Journal article: 4,000–8,000 words (varies by journal — always check author guidelines)
- Conference paper: 4–8 pages (typically 2,000–4,000 words)
- Warning: "Research paper length varies significantly by journal and field. Flag the target journal for specific word count requirements."

### Conventions
- Third person or first person plural depending on discipline (check journal style)
- Hedging is appropriate and expected: "suggest," "indicate," "appear to" — not weakness, it's precision
- Every claim needs a citation or to be clearly framed as the authors' argument
- Figures and tables should be interpretable without the surrounding text
- Ethics statement and conflict of interest disclosure may be required (flag as placeholder)
- Acknowledgements section if applicable

---

## 8c. Academic — conference paper

### Structure template
```
[Title]

[Author(s), Affiliation(s)]

[Abstract — 150–250 words]

[Keywords]

**1. Introduction**
**2. Related work**
**3. Approach / method**
**4. Evaluation / results**
**5. Discussion**
**6. Conclusion**

[References — IEEE or ACM format common for CS/HCI conferences]
```

### Length constraints
- Short paper: 4 pages (≈ 2,000 words)
- Full paper: 6–10 pages (≈ 3,000–5,000 words)
- Strictly page-limited — conference formatting requirements (column width, font size) determine actual word count
- Warning: "Conference papers are strictly page-limited. Check the CFP for exact page limits and formatting templates (ACM, IEEE, etc.)."

### Conventions
- Figures and tables count toward page limit — budget space for them
- Self-citations: acceptable but don't over-rely on them
- Future work section often folded into conclusion for short papers
- Camera-ready formatting templates (LaTeX/Word) usually required — note this as a reminder

---

## 9. Blog post (generic)

### Structure template
```
[Title — specific promise or question. Sentence case.]

[Intro — 1–2 paragraphs. Establish the problem, tension, or hook. Get to the point.]

[H2 section — body sections, however many the content needs]
[Paragraphs under each section]

[Closing — land the piece. A specific thought, takeaway, or call to action. Not a summary.]
```

### Length constraints
- Short post: 500–800 words
- Standard post: 1,000–1,800 words
- Long-form: 2,000–3,500 words (SEO-optimised, tutorial, or pillar content)
- Warning if under 400 words: "Short posts can work but often don't rank or retain readers. Consider expanding the key idea."

### Conventions
- H2/H3 headers for scanability — readers scroll before they read
- Images, code blocks, and callouts supported depending on platform
- SEO: if SEO matters, lead paragraph and H2s should include the target keyword naturally — don't keyword-stuff
- Internal and external links work here (unlike LinkedIn)
- Clear CTA at the end if appropriate

---

## 10. Product Hunt launch post

### Structure template
```
[Tagline — one sentence: what it is and what problem it solves. No jargon. Max 60 chars ideal.]

**About [Product name]**
[2–3 paragraphs: what it does, who it's for, why you built it. Personal and direct.]

**Key features**
- [Feature 1 — benefit-led, not spec-led]
- [Feature 2]
- [Feature 3]
(3–5 features max)

**Why now / the backstory**
[Optional. 1 paragraph on the problem you personally experienced or saw.]

**What we'd love feedback on**
[1–2 specific questions for the PH community. Not "any feedback welcome."]

[Maker comment — the first comment by the maker is crucial. Write it separately.]
```

### Maker comment template
```
Hey PH! 👋

[Who you are in 1 sentence.]

[Why you built this — the real story, brief.]

[What makes it different — 1–2 specific things.]

[What you want feedback on — 1 specific ask.]

[Gratitude — brief, not gushing. "Happy to answer any questions!" is fine.]
```

### Length constraints
- Tagline: 60 characters ideal, 80 max
- Description: 200–400 words
- Warning if tagline over 80 chars: "Product Hunt taglines get truncated in listings. Aim for under 60 characters."
- Maker comment: 150–300 words

### Conventions
- Tagline: no "the world's first," no "revolutionary," no "AI-powered" as the lead (lead with the outcome instead)
- Feature list: benefit-led ("See your analytics at a glance" not "Real-time dashboard")
- Emojis: acceptable but 1–2 max in the description
- "What we'd love feedback on" section is often the most engaging part — make the questions specific
- Launch day: maker must be active in comments — note this as a reminder in the output
- Gallery images and video are set separately in PH UI — mention as placeholders if relevant

---

## 12. Enterprise / B2B content

Content published on company resource hubs, product pages, or industry blogs. Audience is professional and informed — buyers, practitioners, or decision-makers. Tone is authoritative but not academic, product-aware but not sales-y. All four sub-types share the same media support and general conventions; structure and tone differ.

**Supported media:** Images ✓ · Video (embed) ✓ · Code blocks ✓ · Charts/diagrams ✓ · Embeds ✓

### General conventions (all sub-types)
- No "In today's rapidly evolving landscape" — ever
- Author byline with title and company is standard
- Internal links to related resources, product pages, or documentation are expected
- CTAs are acceptable but must be specific and single ("Download the guide" not "Learn more")
- SEO title and meta description are separate from the article title — note as placeholders at the top if relevant
- Images should have alt text noted in the placeholder description
- Gated content (white papers, reports) typically has a lead capture form before access — note if the piece is intended to be gated

---

### 13a. Thought leadership article

**What it is:** An exec or practitioner perspective on an industry problem, trend, or shift. No product pitch. The company's expertise is the implicit credential — not named explicitly.

#### Structure template
```
[SEO title — for search, can differ from display title]
[Meta description — 150–160 chars]

[Display title — specific, takes a position]
[Author byline — Name, Title, Company]
[Estimated read time]

[Lede — 1–2 paragraphs. Opens with a specific observation, tension, or problem. No industry-landscape throat-clearing.]

## [Section heading — names the problem or challenge]
[Body paragraphs — sets up why this matters and to whom]

## [Section heading — the argument or insight]
[Core perspective — what the author actually thinks, with reasoning]

## [Section heading — implications or what to do about it]
[Practical angle — what this means for the reader's decisions or work]

[Closing — a specific, grounded thought. No call to action. The piece earns the reader's trust; the company benefits implicitly.]

[Author bio — 2–3 sentences. Role, expertise, optional personal detail.]

[Related resources — 2–3 internal links with descriptive anchor text]
```

#### Length constraints
- Optimal: 1,000–1,800 words
- Warning if over 2,000 words: "Thought leadership articles over 2,000 words see drop-off on most B2B resource hubs. Consider trimming or splitting."
- Minimum: 700 words — below this it reads as a blog stub, not a perspective piece

#### Tone notes
- First person acceptable (and often stronger) for exec bylines
- Must take an actual position — vague "it depends" articles are forgettable
- Avoid product mentions unless absolutely necessary; one contextual reference at most
- The anti-slop rules apply in full — enterprise thought leadership is the second-worst offender after LinkedIn

---

### 13b. Product / solution explainer

**What it is:** A structured explanation of what a product or solution does, how it works, and who it's for. Lives on product pages or resource hubs. Educational in tone — not a brochure, not a spec sheet.

#### Structure template
```
[SEO title]
[Meta description — 150–160 chars]

[Display title — describes the outcome, not the product name]
[Subtitle — optional. Expands on who this is for or what problem it solves.]

[Intro — 1–2 paragraphs. Lead with the problem, not the product. What is the reader dealing with that this exists to address?]

## What [product/solution name] does
[Clear, plain-language explanation. What does it actually do? Avoid feature lists here — explain the capability and outcome.]

## How it works
[Process or architecture explanation. Use numbered steps if genuinely sequential. Diagrams strongly recommended here.]

> 📊 **Chart / diagram:** [process flow or architecture diagram]

## Who it's for
[Specific roles, team sizes, industries, or use cases. Be honest about fit — naming who it's NOT for builds trust.]

## Key capabilities
[3–6 capabilities, each with a brief explanation of the practical outcome — not feature specs]

## [Optional: Integration / how it fits your stack]
[If relevant — what it connects to, what it replaces, what it requires]

[Closing — a specific statement about what changes for the reader if they adopt this. No "Ready to get started?" unless a CTA follows immediately.]

[CTA — single, specific: "See a live demo" / "Download the technical overview" / "Talk to our team"]

[Related resources — 2–3 internal links]
```

#### Length constraints
- Optimal: 800–1,400 words
- Warning if under 600 words: "Product explainers under 600 words often leave key questions unanswered. Consider expanding the 'how it works' or 'who it's for' sections."
- Warning if over 1,800 words: "Explainers over 1,800 words risk losing readers before the CTA. Consider moving deep technical detail to a separate technical doc."

#### Tone notes
- Third person or "you" framing — not first person unless a specific practitioner is narrating their experience
- Benefits-led, not features-led — "underwriters get decisions in seconds" not "sub-second rule execution"
- Never use "revolutionary," "world-class," "best-in-class," or "industry-leading" — these are meaningless and damage credibility

---

### 13c. Case study / customer story

**What it is:** A structured narrative of how a specific customer used a product to solve a real problem and what changed as a result. The most trusted content format in B2B — it only works if the results are specific and the story is honest.

#### Structure template
```
[SEO title — "[Customer name] + [outcome achieved]" format works well]
[Meta description — 150–160 chars]

[Display title — outcome-led: "How [Customer] [achieved specific result]"]
[Customer logo placement — note as: [📷 Customer logo]]
[Quick stats block — 2–4 key metrics from the outcome, e.g. "40% faster quote cycles"]

## The challenge
[1–2 paragraphs. What was the customer dealing with before? Be specific — name the operational friction, the manual workaround, the cost. Avoid vague "they needed a better solution."]

## Why [company/product name]
[1 paragraph. What led them to choose this solution? What alternatives did they consider? Honesty here builds credibility.]

## The approach
[How the solution was implemented or adopted. Timeline if relevant. Who was involved. Any notable decisions made during rollout.]

> 📷 **Image suggestion:** [screenshot, interface view, or process diagram relevant to implementation]

## The results
[Specific, quantified outcomes. Numbers where available. Qualitative outcomes clearly attributed to a named person.]

> "[Pull quote from customer — specific, not generic praise]"
> — [Name, Title, Company]

## What's next
[Optional. 1 paragraph on how the customer is expanding use or what they're planning next. Forward momentum.]

[CTA — "Read more customer stories" or "See how [product] works"]

[Customer details sidebar — industry, company size, location, products used — note as placeholder if not available]
```

#### Length constraints
- Optimal: 600–1,000 words
- Warning if under 500 words: "Case studies under 500 words often lack the specificity that makes them credible. Expand the challenge or results sections."
- Warning if over 1,200 words: "B2B case studies over 1,200 words lose readers before the results. Trim the approach section if needed."

#### Tone notes
- Third person throughout — this is the customer's story, told objectively
- Results must be specific: "40% reduction in referral volume" not "significantly fewer referrals"
- Customer quotes must sound human — apply anti-slop hard to any quotes
- If real metrics aren't available, note: "[Metric placeholder — confirm with customer before publishing]"
- Don't editorialize on behalf of the customer ("They were thrilled with...") — let quotes do that work

---

### 13d. Industry report / white paper

**What it is:** Research-backed long-form content, typically gated, that addresses an industry challenge with data, analysis, and recommendations. Positions the company as a subject-matter authority. Can be original research or a synthesis of existing findings with original perspective.

#### Structure template
```
[SEO title]
[Meta description]

[Report title — specific and research-signalling: "The State of X" / "X in [Year]: Findings from [N] practitioners"]
[Subtitle — what the report covers and who it's for]
[Author(s) and company]
[Publication date]
[Estimated read time or page count]

## Executive summary
[3–5 bullet points or a short paragraph. The key findings and recommendations. Readers should be able to stop here and have the core value.]

## Introduction
[The problem or question this report addresses. Why now. Who the intended audience is. Brief methodology note if original research.]

## [Section 1 — first major theme or finding]
[Analysis with supporting data. Charts/diagrams strongly recommended.]

> 📊 **Chart / diagram:** [visualisation of key data in this section]

## [Section 2 — second theme or finding]
[Continue pattern]

## [Section 3 — third theme or finding]
[Continue pattern]

## Recommendations
[3–7 specific, actionable recommendations drawn from the findings. Not vague best practices — concrete guidance tied to the data.]

## Methodology
[If original research: sample size, data collection method, timeframe, any limitations. This section builds credibility — don't skip it.]

## About [company]
[2–3 sentences. What the company does, relevant to the report's subject matter.]

[CTA — "Download the full report" / "Talk to our team" / "Explore related research"]

[Footnotes / references — numbered, linked where possible]
```

#### Length constraints
- Executive summary: 150–300 words
- Full report: 2,500–5,000 words (white paper standard)
- Warning if under 2,000 words: "Industry reports under 2,000 words often lack the depth that justifies gating. Consider expanding analysis sections or adding a methodology section."
- Warning if over 6,000 words: "Reports over 6,000 words should have strong navigation (TOC, section anchors) and a tight executive summary — readers will skim."
- Table of contents: recommended for anything over 3,000 words

#### Tone notes
- Third person, authoritative but not academic — avoid jargon without definition
- Data claims must be sourced — note "[Source: X]" placeholders if specific citations aren't available
- Recommendations should be direct — hedging ("organizations might consider...") weakens the value
- No product pitch in the body — the company's credibility comes from the quality of the analysis, not from mentioning the product
- One contextual CTA at the end is acceptable; don't interrupt analysis sections with promotions

---

## Appendix — Media support by platform

| Platform | Images | Video | Code blocks | Charts / diagrams | Embeds |
|---|---|---|---|---|---|
| LinkedIn | ✓ (post image or carousel) | ✓ (native upload) | ✗ | ✗ | ✗ |
| Medium | ✓ | ✓ (YouTube embed) | ✓ | ✓ (as image) | ✓ |
| Substack | ✓ | ✓ (YouTube / Vimeo) | ✓ | ✓ (as image) | ✓ |
| Newsletter | ✓ | ✗ (link only) | ✗ | ✓ (as image) | ✗ |
| DevPost | ✓ | ✓ (YouTube demo) | ✓ | ✓ (as image) | ✗ |
| Press release | ✓ (wire service only) | ✗ | ✗ | ✗ | ✗ |
| News / AP | ✓ | ✗ | ✗ | ✗ | ✗ |
| News / editorial | ✓ | ✓ (publication-dependent) | ✗ | ✓ (as image) | ✗ |
| Academic abstract | ✗ | ✗ | ✗ | ✗ | ✗ |
| Research paper | ✓ (figures / tables) | ✗ | ✓ (some journals) | ✓ (figures) | ✗ |
| Conference paper | ✓ (figures / tables) | ✗ | ✓ | ✓ (figures) | ✗ |
| Blog post | ✓ | ✓ (embed) | ✓ | ✓ | ✓ |
| Product Hunt | ✓ (gallery) | ✓ (demo video) | ✗ | ✗ | ✗ |
| Enterprise B2B | ✓ | ✓ (embed) | ✓ | ✓ | ✓ |
