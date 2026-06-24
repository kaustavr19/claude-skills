# GEO Playbook — Generative Engine Optimisation

Detailed guidance for Pillar 6: being found, cited, and recommended **inside AI
assistants** (ChatGPT, Perplexity, Gemini, Claude) and **Google AI Overviews**.
This is a distinct discipline from classic SEO. Read when running the GEO pillar
or when the user asks about AI search, ChatGPT/Perplexity visibility, or "GEO".

---

## The decision that comes first: do you even want it?

Many sites — especially publishers protecting original content — deliberately
block AI crawlers, which is a legitimate, principled choice. **Don't silently
reverse it.** If the user hasn't decided, surface the trade-off. If they *do*
want AI visibility, run the opt-in steps below. Frame this as the user's call,
not a default.

---

## Step 1 — Unblock the *right* crawlers (the critical prerequisite)

The crucial, widely-missed distinction: **training crawlers** and
**answer/search crawlers** are different user-agents. Blocking the broad
training bot often also blocks the bot that powers live AI **citations** — so a
site can be opted out of being cited in AI answers without realising it.

The move is **surgical, not wholesale**: keep blocking pure training/scraper
bots; allow the answer/search bots. The site can be discoverable in AI search
while still withheld from model training.

| Crawler | Purpose | Recommendation if opting in |
|---|---|---|
| `GPTBot` | OpenAI model training | Keep blocked if avoiding training — does NOT stop ChatGPT citations. |
| `OAI-SearchBot` | ChatGPT Search index | **ALLOW** — required to appear in ChatGPT search answers. |
| `ChatGPT-User` | Live fetch during a user's chat | **ALLOW** — enables real-time retrieval of your pages. |
| `Google-Extended` | Gemini training | Keep blocked if avoiding training — does NOT affect AI Overviews. |
| `Googlebot` | Search + AI Overviews | **Always allow** — this powers AI Overviews too. |
| `ClaudeBot` | Anthropic training | Keep blocked if avoiding training. |
| `Claude-SearchBot` / `Claude-User` | Claude citations / live fetch | **ALLOW** for Claude citations. |
| `PerplexityBot` | Perplexity index | **ALLOW** — major answer-engine surface. |
| `CCBot` | Common Crawl (feeds many models) | Block to broadly limit training use. |

> Verify exact current user-agent strings against each provider's official docs
> before writing `robots.txt` rules — these evolve. Don't hard-code from memory
> if you can check.

**Key insight to always state:** Google AI Overviews run on the ordinary
`Googlebot` the site already allows. So **strong classic SEO (Pillars 1–4) is
itself the AI-Overviews strategy** — nothing needs unblocking to appear there.

---

## Step 2 — What makes content win in AI answers

LLMs don't rank ten links; they synthesise an answer and cite a few sources. To
be one of them:

- **Answer-shaped content.** Pages that directly answer a question ("Best X for
  Y", "How to Z") with a crisp factual answer up top are far more citable than
  bare product grids. Recommend creating these where they're missing.
- **Self-contained, factual passages.** Clear headings, short declarative
  sentences, facts stated in full ("X is a Y based in Z, founded in …") give
  models clean quotable units. Good bios and descriptions already do this.
- **Entity clarity & schema.** `Organization`, `Product`, `Person` (author),
  `Article` schema is what LLMs use to understand the entity. Add `sameAs` links
  (social, Wikidata, Goodreads, LinkedIn) to sharpen the entity graph, plus
  `inLanguage` where relevant.
- **Off-site reputation.** LLMs lean on consensus across the open web. Mentions
  on Wikipedia, reputable directories, forums, and topical blogs teach models to
  associate the brand with its niche. Off-site presence is GEO currency.
- **`llms.txt`.** An emerging convention: a `/llms.txt` file — like
  `robots.txt`, but a curated, link-rich markdown map of the most important
  content — helps AI systems find and summarise the best pages. Cheap to add,
  increasingly recognised. Recommend it.

---

## Step 3 — The multilingual GEO edge (when applicable)

If the site covers a non-English niche, there's an asymmetric opportunity: LLM
knowledge of many non-English topics is thin and English-centric. A site
publishing clean, structured, **bilingual** information about an under-documented
domain becomes a high-value, low-competition source for any AI answering
questions about it. Once the right crawlers are allowed and `inLanguage` signals
are set, such a site can become *the* cited authority for a whole category of
queries incumbents ignore. Flag this when you see it — the niche is a moat.

---

## How to report GEO findings
- State the current AI-crawler posture plainly (what's blocked, what it implies).
- If opting in: give the specific surgical `robots.txt` change.
- List the content/schema/`llms.txt`/off-site moves as concrete actions in the
  main action table, tagged by Owner and Effort.
- Always reassure that classic SEO already covers AI Overviews — it reframes GEO
  from "scary new thing" to "mostly already underway."
