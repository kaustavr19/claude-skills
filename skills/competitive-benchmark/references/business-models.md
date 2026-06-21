# Business Model Detection & Evaluation Lens

Reference for the `competitive-benchmark` skill. The business model sets the lens for what
"good" means — especially for Axis 4 (Conversion & Persuasion Hooks). A B2B site judged by
D2C standards produces nonsense advice. Detect first, then evaluate accordingly.

---

## Detection Signals

Read each site and match against these. Sites in one comparison set are usually the same
model, but not always — note divergence.

### B2B (selling to businesses)
- CTAs: "Book a demo", "Talk to sales", "Get a quote", "Contact us", "Start free trial"
- Content: case studies, ROI calculators, whitepapers, integration lists, security/compliance pages (SOC 2, GDPR)
- Social proof: company logos ("trusted by"), named-customer testimonials with job titles
- Pricing: often gated, tiered by seats/usage, "contact for enterprise"
- Tone: authoritative, outcome-and-efficiency framed, longer sales cycle assumed

### B2C (selling to individuals, often app/service)
- CTAs: "Sign up free", "Download", "Get started", app-store badges
- Content: feature highlights, broad lifestyle benefit framing, FAQ
- Social proof: user counts ("10M+ users"), star ratings, press mentions
- Pricing: transparent, self-serve, freemium common
- Tone: friendly, benefit-forward, fast time-to-value

### D2C (direct-to-consumer commerce)
- CTAs: "Add to cart", "Shop now", "Buy", quantity selectors
- Content: product catalogue, product detail pages, shipping/returns, "our story"/brand mission
- Social proof: product reviews & ratings, UGC, influencer/press features
- Pricing: per-product, bundles, subscription-for-replenishables
- Tone: brand-personality-heavy, aspirational, identity-driven

### Marketplace / Platform (two-sided)
- Messaging addresses both sides (buyers + sellers, hosts + guests, riders + drivers)
- Listings, search/filter, ratings between users, trust & safety pages
- CTAs often split: "Find a [X]" vs "Become a [Y]"
- Trust signals about strangers transacting (verification, guarantees, escrow)

### Edge cases
- **PLG SaaS** — B2B that behaves B2C (self-serve signup, no sales gate). Lens: blend — speed-to-value *and* credibility.
- **Hybrid commerce** — D2C brand also wholesale/B2B. Score the page's *primary* visible intent.
- **Content/media/community** — monetises via ads/subscription/membership. Hook = engagement & habit, not a single conversion.

If after reading the site the model is genuinely unclear, ask the user once. Otherwise
state the detected model and move on.

---

## What "Hooking the User" Means Per Model

Use this to calibrate Axis 4 scoring. The *same* page element scores differently by model.

| Model | The hook is… | High-score signals | Low-score signals |
|---|---|---|---|
| **B2B** | De-risking the next step | Clear ROI/proof, low-friction demo, named social proof, specific outcomes | Vague claims, no proof, buried/forced "contact sales", jargon wall |
| **B2C** | Fast, emotional time-to-value | Instant signup, clear single benefit, frictionless onboarding preview | Too many steps, unclear value, asking for too much too soon |
| **D2C** | Aspiration + frictionless buy | Strong brand story, great product imagery, reviews, easy cart→checkout | Generic brand, weak imagery, hidden shipping cost, clunky cart |
| **Marketplace** | Trust + liquidity proof | "X listings near you", ratings, guarantees, clear value each side | Empty-feeling, no trust signals, unclear which side a visitor is on |

---

## Cross-Model Comparison Caution

If the user's site and a competitor are *different* models (e.g. user is PLG self-serve, a
competitor is sales-led enterprise), say so explicitly in the report. Their conversion
approaches *should* differ — don't penalise the user for not having a "Talk to sales" CTA
if their whole model is self-serve. Compare craft and clarity, not model-inappropriate
tactics.
