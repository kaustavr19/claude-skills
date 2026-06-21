# Benchmarks Reference

Triple-layer benchmark reference for the `visual-aesthetics-audit` skill.
Use these to contextualise observations and make prescriptions concrete.

---

## Layer 1 — Design Systems

### Material Design 3 (Google)
**Character**: Expressive, adaptive, inclusive
**Key conventions**:
- Dynamic colour (tonal palettes derived from a single seed colour)
- Typescale: Display / Headline / Title / Body / Label — 5 roles × 3 sizes
- 8dp spacing grid; component padding multiples of 4dp
- Rounded corners (extra-large = 28dp for cards, small = 4dp for chips)
- Motion: Emphasised easing (cubic-bezier(0.2, 0, 0, 1.0)) for spatial transitions
**Best for referencing**: Consumer apps, Android-adjacent products, expressive UI

### Apple Human Interface Guidelines
**Character**: Refined, spatial, premium, deeply system-integrated
**Key conventions**:
- SF Pro / SF Compact / New York typefaces; Dynamic Type sizes
- Vibrancy, translucency, depth layers (materials)
- 44pt minimum touch target; 8pt grid
- Motion: Spring physics (natural, momentum-preserving)
- Semantic colours (systemBlue, systemRed etc.) that adapt to context/dark mode
**Best for referencing**: iOS/macOS apps, premium consumer products, spatial design

### Microsoft Fluent 2
**Character**: Inclusive, calm, depth-aware
**Key conventions**:
- Segoe UI Variable; strict type ramp
- Layer system: Background / Base / Overlay / Floating
- Acrylic (frosted glass material), Reveal (light reflection hover effect)
- Neutral-dominant palette; accent colour user-controlled
- Motion: Quick (100ms), Fast (150ms), Normal (200ms), Gradual (250ms)
**Best for referencing**: Enterprise SaaS, productivity tools, Windows-adjacent

### IBM Carbon Design System
**Character**: Systematic, technical, data-forward, enterprise-grade
**Key conventions**:
- IBM Plex typeface family (Sans, Serif, Mono) — high legibility at small sizes
- Strict 8px base, 2px fine-grain grid
- Layered token system: Global → Alias → Component
- Colour: 10-step swatches (Cool Gray, Warm Gray, Blue 60 as primary)
- Motion: Productive (fast, utility) vs. Expressive (slower, engaging)
**Best for referencing**: Enterprise tools, data platforms, B2B SaaS, developer tools

### Atlassian Design System
**Character**: Collaborative, accessible, pragmatic
**Key conventions**:
- Inter typeface; 5-step type scale
- Neutral-first with a teal/blue primary; strong semantic colour use
- 8px grid; component-level spacing tokens
- Accessible by default — WCAG AA throughout
**Best for referencing**: Collaboration tools, project management, productivity SaaS

### Shopify Polaris
**Character**: Merchant-friendly, functional, trustworthy
**Key conventions**:
- Inter; conservative type hierarchy
- Green primary (brand trust signal), strong neutral palette
- Generous spacing — optimised for scanning, not reading
- Responsive-first; mobile-optimised throughout
**Best for referencing**: E-commerce tools, admin interfaces, merchant-facing products

---

## Layer 2 — Design Movements & Styles

### Swiss International Style (International Typographic Style)
**Era**: 1950s–present (still influential)
**Key traits**: Grid systems, sans-serif typography (Helvetica, Akzidenz-Grotesk), objective imagery, mathematical layout, white space as structure
**In UI**: Clean nav, strict alignment, type-as-hero, minimal decoration
**Products that echo it**: Stripe, Apple (print), Swiss-aesthetic fintech brands
**When to reference**: When recommending rigour, grid discipline, typographic confidence

### Bauhaus
**Era**: 1919–1933 (cyclically revived)
**Key traits**: Form follows function, geometric shapes, primary colours, no ornamentation, craft + industry unity
**In UI**: Geometric icons, primary accent colours, bold geometric type (Futura-adjacent), purposeful layout
**Products that echo it**: Some fashion-tech brands, editorial apps
**When to reference**: When recommending geometric icon systems, primary palette simplification

### Brutalism / Neubrutalism
**Era**: Web 2020s revival
**Key traits**: Raw, unpolished intentionally, bold outlines, offset shadows, high contrast, system fonts or obvious display faces, flat colour
**In UI**: Gumroad, Figma's marketing (sometimes), indie products, SaaS that wants to signal anti-corporate
**When to reference**: When observing intentional rawness — distinguish from *accidentally* unpolished

### Glassmorphism
**Era**: ~2020–2022 peak
**Key traits**: Frosted glass effect, backdrop-blur, semi-transparent surfaces, border with low opacity, gradient backgrounds behind
**In UI**: Apple OS, iOS widgets, some fintech/crypto products
**Caution**: Often implemented poorly — blur without depth context reads as muddy, not premium
**When to reference**: When observing translucency effects — assess if they're adding depth or just noise

### Neumorphism (Soft UI)
**Era**: ~2019–2020 (largely passed)
**Key traits**: Extruded from background, soft inset shadows, monochromatic, tactile
**In UI**: Almost exclusively concept work — accessibility failures make it impractical (contrast too low)
**When to reference**: When observing inset/raised shadow patterns — flag accessibility risk

### Flat Design
**Era**: 2013–present (still dominant baseline)
**Key traits**: No gradients, no shadows, solid colours, simple geometry, high contrast
**In UI**: Majority of modern SaaS; pure flat often too stark — most products now use "flat 2.0" (subtle shadows, slight depth)
**When to reference**: When product is very flat — recommend "flat 2.0" layering for depth

### Dark Luxury
**Era**: Ongoing — premium consumer and fintech
**Key traits**: Deep near-black backgrounds (#0A0A0F range), gold/amber or electric accent, generous white space, premium serif or geometric sans, minimal UI chrome
**Products that use it**: Raycast, Arc (partially), premium fintech apps, high-end SaaS
**When to reference**: When a dark UI is attempting premium — assess if the execution matches the ambition

### Bento Grid
**Era**: 2023–present
**Key traits**: Card-based asymmetric grid layout, varied card sizes creating visual interest, often used in feature showcases and marketing pages
**Products that use it**: Apple product pages, Linear marketing, many modern SaaS marketing sites
**When to reference**: When observing card-based layout — assess rhythm and size variation intentionality

### Claymorphism
**Era**: ~2022–present
**Key traits**: 3D-looking, soft rounded shapes, pastel colours, inner glow, inflated objects
**Products that use it**: Notion avatars (partially), some consumer apps, children-adjacent products
**When to reference**: When observing puffy, inflated 3D shapes — assess if it fits the product's personality

---

## Layer 3 — Industry Peers (Quick Reference)

### Developer Tools / Technical SaaS
| Product | Visual character | What they do well |
|---|---|---|
| **Linear** | Dark, precise, mono-adjacent | Type scale contrast, motion restraint, colour discipline |
| **Vercel** | Dark luxury, editorial | Hero typography, minimal palette, gradient use |
| **Raycast** | Dark premium, fast | Command palette patterns, micro-motion, icon system |
| **GitHub** | Neutral, systematic | Semantic colour, icon consistency, density management |
| **Retool** | Dense, functional | Information hierarchy in data-heavy UI |

### Productivity / Collaboration
| Product | Visual character | What they do well |
|---|---|---|
| **Notion** | Calm, typographic, minimal | White space, type hierarchy, restrained colour |
| **Linear** | Precise, fast | Spacing rhythm, interaction feedback |
| **Figma** | Creative, energetic | Colour confidence, accessible contrast |
| **Cron / Notion Calendar** | Premium, minimal | Component elegance, spacing system |
| **Craft** | Editorial, Apple-adjacent | Typography, dark mode, motion quality |

### Consumer Apps
| Product | Visual character | What they do well |
|---|---|---|
| **Duolingo** | Bold, expressive, character-driven | Personality consistency, illustration integration |
| **Headspace** | Calm, warm, illustrated | Colour warmth, illustration-UI harmony |
| **Robinhood** | Clean, confident | Data visualisation aesthetics, type legibility |
| **Spotify** | Dark, music-expressive | Album art integration, colour extraction, dark mode |

### Fintech / B2B
| Product | Visual character | What they do well |
|---|---|---|
| **Stripe** | Authoritative, technical, premium | Gradient quality, documentation design, type |
| **Mercury** | Calm, trustworthy, minimal | Neutral palette mastery, component restraint |
| **Brex** | Bold, confident | Dark mode, colour contrast, component density |
| **Monzo** | Warm, accessible, colourful | Brand colour ownership (coral), icon system |

### Enterprise / Data
| Product | Visual character | What they do well |
|---|---|---|
| **Salesforce** | Systematic, accessible | Token architecture, icon consistency |
| **Tableau** | Data-forward, functional | Colour in data visualisation |
| **Airtable** | Colourful, structured | Colour system in data contexts |
| **Hex** | Developer-editorial | Dark/light mode parity, data aesthetic |

---

## Inspiration Sources to Reference

### Type Foundries Worth Knowing
- **Google Fonts** — Free, wide range: Inter, DM Sans, Plus Jakarta Sans, Outfit, Sora
- **Klim Type Foundry** — Söhne, Tiempos (used by major editorial brands)
- **Dinamo** — ABC Diatype, ABC Whyte (used by many premium SaaS brands)
- **Pangram Pangram** — Neue Montreal, Editorial New (popular in premium SaaS)
- **Frere-Jones Type** — Mallory, Retina (editorial, fintech)

### Colour Palette Tools
- **Huemint** — AI-generated brand palettes
- **Coolors** — Quick palette generation and exploration
- **Reasonable Colors** — Accessible colour system generator
- **Radix Colors** — Semantic, accessible colour scales (12-step)
- **Tailwind CSS** — Reference palette for SaaS-appropriate neutrals

### Motion Reference
- **Framer Motion** documentation — Easing presets and spring physics reference
- **Material Motion** — Principles for purposeful animation
- **Apple HIG Motion** — Spatial and natural motion principles
- **UI Movement** (uimovement.com) — Real product microinteraction examples

### Broader Design Inspiration
- **Dribbble** — Visual trend signal (what's current, not always what's right)
- **Mobbin** — Real product UI patterns organised by screen type
- **Screenlane** — App UI screenshots for pattern reference
- **Land-book** — Landing page design reference
- **Lapa Ninja** — Marketing site design reference
