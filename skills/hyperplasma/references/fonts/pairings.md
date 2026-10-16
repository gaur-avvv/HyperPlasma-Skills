# Font Pairings (Heading + Body)

Format: **Heading + Body** - what it feels like. Groups A-O. Duplicates across the source categories are merged; use the group's "Best for" line to match a project.

## Availability legend (check before writing CSS)
- no mark = Google Fonts (free, loads via `@import` / `<link>`)
- † = free but NOT on Google Fonts (Fontshare or the designer's site); self-host or use the fallback below
- $ = paid or system/OS-licensed (Helvetica Neue, SF Pro, Arial, Garamond, Ogg, Founders Grotesk, Integral CF); only use if the user owns a license, otherwise use the fallback
- ? = could not verify the exact font name; confirm with the user or substitute
- X = invalid in the source ("Technical", generic "Mono"); do not use as written

## Fallbacks when a font isn't available
| Wanted | Use instead (Google Fonts) |
|---|---|
| Satoshi† | Plus Jakarta Sans or Outfit |
| General Sans† / Switzer† | Inter |
| Cabinet Grotesk† | Bricolage Grotesque or Space Grotesk |
| Clash Display† | Unbounded or Syne |
| Ogg$ | Cormorant Garamond or Fraunces |
| Founders Grotesk$ | Archivo or Space Grotesk |
| Integral CF$ | Archivo Black |
| SF Pro / SF Mono $ | Inter / JetBrains Mono |
| Helvetica Neue / Arial $ | Inter or Arimo |
| Garamond $ | EB Garamond |
| Anka/Coder†, Monoid† | JetBrains Mono or Space Mono |
| KyivType Sans† | Bricolage Grotesque |
| Chrono?, SWT?, Latina?, Proza Sans?, Litera? | Inter / Plus Jakarta Sans / Literata (Litera is likely a typo of Literata) |
| "Technical" X, "Mono" X | IBM Plex Mono or Space Mono |
| "Space Grotesque" (typo) | Space Grotesk |

## Style -> font group (use after the user picks a visual style)
| Visual style (IDs from the style catalogue) | Font groups to offer |
|---|---|
| 191, 65, 192, 71, 5, 1 (SaaS, glass, AI) | A, B, K |
| 69, 142, 141, 30, 77 (terminal, HUD, cyber) | B, L |
| 23, 22, 124, 32 (brutalist, anti-design) | C, J |
| 47, 107, 171, 178, 100 (luxury, deco, leather) | D, G |
| 44, 45, 76, 281, 94 (wellness, organic) | E |
| 14, 12, 196 (Swiss, minimal) | F, M |
| 161, 57, 56, 176 (editorial, newspaper, parchment) | G, O, D |
| 13, 33, 58, 135 (maximal, Memphis, kinetic) | H, J |
| 60, 121, 123, 148 (collage, De Stijl, suprematism) | I, J |
| 28, 29, 70, 238, 61 (synthwave, gaming, pixel) | L |
| 151, 154, 164 (blueprint, isometric, graph paper) | B, M |
| 3, 80, 88 (clay, kawaii, kinder) | N, E |
| 195, 192 (accessible, enterprise) | F, K, N |

## A. Modern SaaS and Clean Tech
Best for: product dashboards, landing pages, AI and dev products.
- **Inter + Inter** - the default; heavy weights for headers, regular for body.
- **Plus Jakarta Sans + Inter** - geometric header with friendly curves over legible body.
- **Satoshi† + General Sans†** - premium geometric header, neutral stable body.
- **Satoshi† + Switzer†** - sharp geometric over clean Swiss grid.
- **Geist + Geist Mono** - Vercel look; minimal sans with clean code font.
- **Geist + Geist** - ultra-heavy titles over light body; precise technical feel.
- **SF Pro$ + SF Pro$** - Apple ecosystem look.
- **SF Pro Display$ + SF Pro Text$** - Apple's split display/text system.
- **SWT? + Roboto** - contemporary geometric title, structured body.
- **Clash Display† + Inter** - dramatic high-contrast headlines, clean body.
- **Clash Display† + General Sans†** - striking variable headers, neutral body.
- **Cabinet Grotesk† + Switzer†** - editorial, sophisticated tech tone.
- **Cabinet Grotesk† + Satoshi†** - distinctive variable-width heads over sharp body.
- **Albert Sans + Open Sans** - accessible, structured; scales to dense analytics.
- **Outfit + Plus Jakarta Sans** - rounded yet sharp; approachable software.
- **Outfit + Inter** - bubbly geometric heads; modern deep-tech.
- **Plus Jakarta Sans + Fira Code** - friendly heads with ligature code font.
- **Space Grotesk + IBM Plex Mono** - quirky angular heads over engineering mono.
- **Unbounded + Inter** - ultra-wide experimental heads over invisible body.
- **Manrope + Switzer†** - balanced modern geometric hybrid.

## B. Developer Platforms and Cyber-Tech
Best for: docs hubs, code playgrounds, security tools, ML dashboards.
- **Geist + Fira Code** - sharp sans titles, developer code font with ligatures.
- **JetBrains Mono + Inter** - structured mono headers, standard UI body.
- **IBM Plex Sans + IBM Plex Mono** - unified engineering family.
- **SF Mono$ + SF Pro$** - Apple-style developer trust.
- **Inconsolata + Roboto** - smooth humanist mono with stable body.
- **Space Grotesk + Source Code Pro** - angular technical heads, Adobe code font.
- **Roboto Mono + Inter** - high-density engineering layouts.
- **Satoshi† + DM Mono** - minimalist geometric head, tight mechanical text.
- **Anka/Coder† + Switzer†** - nostalgic terminal-style head over Swiss body.
- **Monoid† + Plus Jakarta Sans** - pixel-optimized technical heads, friendly body.

## C. Neo-Brutalist and Anti-Design
Best for: loud agency sites, event/club pages, creative portfolios.
- **Syne + Space Mono** - wide eccentric heads over rigid mono.
- **Space Grotesk + Plus Jakarta Sans** - quirky technical header, functional body.
- **Lexend Mega + Lexend** - ultra-bold wide heads, reading-optimized body.
- **Grotesk? + Courier New$** - raw early-web brutalism, typewriter default.
- **DM Sans + Space Mono** - clean geometric title over raw data mono.
- **Archivo Black + Archivo** - maximum-weight heads, neutral technical body.
- **Public Sans + IBM Plex Mono** - government-clean blocks with engineering text.
- **Bricolage Grotesque + Space Grotesk** - expressive distorted variable title, technical subheads.
- **Unbounded + Satoshi†** - wide blocky heads over sharp body.
- **Founders Grotesk$ + Mono X** - streetwear editorial; use fallback (Archivo + Space Mono).

## D. Premium Luxury and Editorial Fashion
Best for: fashion, luxury e-commerce, high-end brands.
- **Playfair Display + Montserrat** - classic high-contrast serif, geometric body.
- **Cormorant Garamond + Proza Sans?** - razor-thin serif, open humanist body.
- **Fraunces + Satoshi†** - warm chunky serif, hyper-sharp body.
- **Ogg$ + Switzer†** - calligraphic luxury head, neutral grid text.
- **Prata + Inter** - dramatic editorial head, functional body.
- **Cinzel + Lato** - Roman proportions over warm sans.
- **Italiana + Montserrat** - whisper-thin fashion head, stable body.
- **DM Serif Display + DM Sans** - matched serif-to-geometric editorial system.
- **Bodoni Moda + Montserrat** - Italian fashion-magazine contrast.
- **Chrono? + Helvetica Neue$** - technical luxury with Swiss type.

## E. Organic, Wellness and Warm Lifestyle
Best for: wellness, beauty, D2C, eco brands, warm blogs.
- **Lora + Hind** - soft calligraphic serif, clean warm body.
- **Merriweather + Open Sans** - legible editorial, approachable.
- **Quicksand + Nunito** - fully rounded, friendly, no sharp corners.
- **PT Serif + PT Sans** - unified family; printed-journal feel.
- **Cardo + Jost** - academic serif over futuristic geometric body.
- **Cardo + Hind** - historical serif, warm open body.
- **Urbanist + Tenor Sans** - sleek geometric head, elegant wide body.
- **Newsreader + Litera?** - literary text structure like a book page.
- **Alice + Roboto** - quirky fairytale serif, corporate grid.
- **Alice + Inter** - whimsical serif, functional body.
- **Volkhov + Open Sans** - rich heavy serif for warm blogs and portfolios.
- **Gilda Display + Source Sans 3** - delicate line heads, readable body.
- **Gilda Display + Inter** - fine organic heads, high-performance body.
- **Outfit + Lora** - minimalist geometric head into soft serif body.
- **Tenor Sans + Source Serif 4** - wide elegant head, readable serif body.
- **Philosopher + Open Sans** - sweeping calligraphic curves, clean body.
- **Marcellus + Lato** - Roman proportions, timeless lifestyle tone.
- **Federo + Switzer†** - art-nouveau-inspired head, Swiss body.
- **Cormorant Garamond + Switzer†** - thin traditional serif, neutral body.
- **Quattrocento + Quattrocento Sans** - matched classic serif and warm sans.

## F. Corporate Enterprise
Best for: B2B, large-scale platforms, agencies needing authority.
- **Helvetica Neue$ + Helvetica$** - Swiss standard, weight-driven hierarchy.
- **Poppins + Roboto** - round geometric heads, stable body.
- **Jost + Inter** - Futura-inspired heads, functional body.
- **Montserrat + Open Sans** - scalable corporate default.
- **Latina? + Hind Siliguri** - warm executive tone for banking/international.
- **Raleway + Lato** - elegant stylized head, warm body.
- **Work Sans + Inter** - enterprise screen reading, data formatting.
- **Sora + General Sans†** - tech-agency wide shapes over neutral body.
- **Titillium Web + Roboto** - angular industrial; automotive, engineering, aerospace.
- **Manrope + Inter** - balanced hybrid for massive site grids.

## G. Heritage and Academic Editorial
Best for: archives, institutions, universities, long essays.
- **Playfair Display + Source Serif 4** - all-serif; display titles over modern reading serif.
- **Cinzel + Garamond$** - Roman header, literary body. Fallback: EB Garamond.
- **PT Serif + Lora** - warm calligraphic rhythm for long essays.
- **EB Garamond + Inter** - academic titles over invisible UI body.
- **Cormorant Garamond + Jost** - delicate serif, open geometric body.
- **Fraunces + Open Sans** - warm soft-carved serif, accessible body.
- **Alegreya + Merriweather** - made for literature and storytelling.
- **Domine + Roboto** - sturdy journal header, structured body.
- **Cardo + Crimson Pro** - academic head flowing into classic text.
- **Prata + Switzer†** - fashion-journalism head, sharp body.

## H. Bold Startup, Marketing, E-Commerce and Streetwear
Best for: hero-section impact, conversion pages, retail, fitness.
- **Clash Display† + Plus Jakarta Sans** - heavy variable heads, friendly body.
- **Cabinet Grotesk† + Inter** - high-impact agency pairing.
- **Syne + Inter** - ultra-wide eccentric heads, neutral body.
- **Archivo Black + DM Sans** - heavy display cards, versatile body.
- **Unbounded + Plus Jakarta Sans** - blocky wide heads, smooth body.
- **Lexend Zetta + Lexend** - ultra-wide hero heads, fast-reading body.
- **Bricolage Grotesque + Inter** - expressive variable title, neutral body.
- **Bricolage Grotesque + Satoshi†** - expressive head over hyper-sharp body.
- **Outfit + Outfit** - one family, Black-to-Light weight hierarchy.
- **Outfit + Roboto** - bubbly sharp heads over stable body.
- **Founders Grotesk$ + Switzer†** - editorial streetwear. Fallback: Archivo + Inter.
- **Integral CF$ + Roboto** - loud athletic display. Fallback: Archivo Black.
- **Archivo + Archivo** - heavy-impact heads into readable body.

## I. Creative Portfolio, Indie Studio, Museums and Galleries
Best for: artists, boutique studios, curatorial and cultural sites.
- **Ogg$ + General Sans†** - calligraphic luxury head, stable body.
- **Ogg$ + Satoshi†** - artistic head over sharp modern body.
- **Schibsted Grotesk + Switzer†** - Scandinavian editorial feel.
- **Schibsted Grotesk + Inter** - contemporary editorial, performant body.
- **Italiana + Inter** - delicate Italian editorial head.
- **Italiana + Satoshi†** - whisper-thin head, sharp body.
- **Tenor Sans + Plus Jakarta Sans** - wide elegant head, friendly body.
- **Urbanist + Satoshi†** - sleek lifestyle geometry, sharp body.
- **Volkhov + Lato** - heavy editorial serif for warm studios.
- **Gilda Display + Open Sans** - fine organic heads, readable body.
- **Newsreader + Space Mono** - soft literary titles against raw mono.
- **Alice + Switzer†** - whimsical serif over neutral body.
- **Cormorant Infant + Inter** - expressive historical serif, invisible body.
- **Cormorant Infant + Switzer†** - sharp-tailed serif over Swiss grid.
- **Fraunces + Inter** - warm editorial serif, functional body.
- **Fraunces + DM Sans** - chunky soft serif, versatile body.
- **Syne + Plus Jakarta Sans** - eccentric wide head, friendly body.
- **Playfair Display + Jost** - high-contrast serif, futuristic geometric body.
- **EB Garamond + Helvetica Neue$** - academic title over Swiss authority.
- **Cormorant Garamond + Switzer†** - exquisite thin serif, neutral body.

## J. Radical Art Agency and Experimental
Best for: underground music, avant-garde fashion, boundary-pushing portfolios.
- **Coustard + Space Grotesk** - heavy slab serif, angular subheads.
- **KyivType Sans† + Switzer†** - expressive distorted variable shapes, neutral body.
- **Syne + Syne Mono** - wide avant-garde heads with matching mono.
- **Cinzel Decorative + Inter** - ornate Roman heads, invisible body.
- **Oi + Satoshi†** - ultra-fat cartoon letters over clean body.
- **Major Mono Display + IBM Plex Mono** - abstract uppercase structure, raw data lines.
- **Bungee + DM Sans** - signage-style block lettering, smooth body.
- **Megrim + Plus Jakarta Sans** - ultra-thin experimental line type.
- **DotGothic16 + Space Mono** - Japanese dot-matrix retro computing.
- **Rubik Glitch + Rubik** - distorted glitch headline over soft body. Use for short headlines only.

## K. FinTech, Legal, Venture Capital and Institutional Trust
Best for: banking, compliance, law, consulting, data tables.
- **Helvetica Neue$ + Arial$** - global enterprise standard.
- **Public Sans + Public Sans** - accessible government-grade neutrality.
- **Work Sans + Work Sans** - large-scale enterprise reading and charts.
- **Sora + Roboto** - wide corporate-tech heads, stable rows.
- **Sora + Inter** - wider structural heads over functional body.
- **Manrope + Open Sans** - balanced and accessible data clarity.
- **Manrope + Roboto** - balanced engine, high stability.
- **Poppins + Inter** - friendly geometric tech-banking combo.
- **Albert Sans + Arial$** - mathematical foundation for dense dashboards.
- **Titillium Web + Technical X** - invalid as written; use Titillium Web + Roboto.
- **Lato + Lato** - warm humanist default across weights.
- **DM Sans + Roboto** - clean geometric, industry-trusted body.
- **Plus Jakarta Sans + Switzer†** - friendly geometric head, Swiss body.
- **Clash Display† + Satoshi†** - heavy variable heads for neo-banking.
- **Space Grotesk + Inter** - quirky technical heads, standard body.
- **General Sans† + Inter** - neutral corporate-tech.
- **Playfair Display + Helvetica Neue$** - prestigious serif plus Swiss rigor.
- **Cinzel + Inter** - Roman header, invisible body.
- **Cormorant Garamond + Roboto** - literary serif, stable body.
- **DM Serif Display + Inter** - crisp serif to flat digital canvas.
- **Prata + Plus Jakarta Sans** - fashion-journal head, friendly body.
- **Fraunces + Satoshi†** - warm chunky serif, sharp body.
- **Domine + Switzer†** - sturdy journal head, neutral grid.
- **EB Garamond + DM Sans** - academic title, versatile body.
- **Alegreya + Open Sans** - intellectual trust, elegant reading.
- **Cardo + Roboto** - stone-carved heads, stable text rows.
- **Garamond$ + Arial$** - classic publishing prestige. Fallback: EB Garamond + Inter.
- **Chrono? + Inter** - timeless corporate; confirm font name.

## L. Gaming, Web3, DAO and E-Sports
Best for: gaming dashboards, esports, streaming, crypto/DAO sites.
- **Orbitron + Space Mono** - aircraft-HUD geometry over mechanical code.
- **Chakra Petch + Inter** - angular military-style heads.
- **Syncopate + Satoshi†** - wide horizontal display, sharp grid.
- **Press Start 2P + Space Mono** - 8-bit arcade with rigid mono.
- **Oxanium + Plus Jakarta Sans** - cyber heads with 45-degree cuts.
- **Russo One + Roboto** - heavy block lettering for esports teams.
- **Rajdhani + Technical X** - invalid as written; use Rajdhani + Inter.
- **Share Tech Mono + Inter** - crisp terminal font, invisible UI body.
- **Teko + Switzer†** - tall condensed impact heads.
- **Exo 2 + Open Sans** - futuristic tech sans, accessible body.
- **Lexend Zetta + Lexend** - expansive hero heads, fast-reading body.

## M. Minimalist Architecture, Interior and Real Estate
Best for: studios, property, spatial and design-led brands.
- **Jost + Jost** - Futura-style; Thin-to-Medium weight shift.
- **Jost + Switzer†** - geometric head over Swiss grid.
- **Allerta Stencil + Switzer†** - blueprint-style stencil head.
- **Syncopate + Inter** - wide agency heads, neutral body.
- **Tenor Sans + Helvetica Neue$** - elegant wide lettering over Swiss framework.
- **Tenor Sans + Inter** - wide humanist head, performant body.
- **Satoshi† + Satoshi†** - one family, Black-to-Light hierarchy.
- **Urbanist + Open Sans** - sleek geometric curves, accessible text.
- **Urbanist + Plus Jakarta Sans** - lifestyle geometry, friendly body.
- **Montserrat + Montserrat** - scalable geometric; architectural clarity.
- **Public Sans + Space Mono** - clean blocks with raw data mono.
- **Alata + Satoshi†** - wide early-20th-century geometry.
- **Alata + Inter** - wide geometric head, high-performance body.
- **Marcellus + Montserrat** - Roman stone-carving proportions, scalable body.
- **Cinzel + Lato** - architectural heads, warm trust-building body.
- **Cabinet Grotesk† + Inter** - variable headline widths, clean body.

## N. Local Services, Healthcare and Community Care
Best for: clinics, local businesses, community and education platforms. Prioritize readability.
- **Open Sans + Open Sans** - clear, familiar community engine.
- **Nunito + Nunito** - fully rounded, warm and welcoming.
- **Arimo + Arimo** - exceptional screen readability, reassuring.
- **Lato + Roboto** - warm humanist heads, trusted body.
- **Poppins + Open Sans** - round geometric heads, accessible body.
- **Ubuntu + Ubuntu** - fluid, modern, approachable.
- **Cabin + Inter** - soft humanist curves, performant body.
- **Source Sans 3 + Source Sans 3** - Adobe's consistent cross-device engine.
- **Rubik + Rubik** - slightly rounded, clear in dense text.
- **Merriweather + Inter** - legible editorial structure, approachable.

## O. Long-Form Journalism, Magazines and Essays
Best for: reading endurance on essays, news, blogs.
- **Lora + Lora** - warm calligraphic rhythm for long essays.
- **PT Serif + Open Sans** - printed-journal feel over accessible layout.
- **EB Garamond + Switzer†** - academic titles, crisp neutral body.
- **Alegreya + Alegreya** - made for literature and storytelling.
- **Crimson Pro + Inter** - book-press serif, invisible UI body.
- **Source Serif 4 + Source Sans 3** - Adobe's unified publishing pair.
- **Merriweather + Merriweather** - robust serifs; strong on mobile.
- **Charter$ + Helvetica Neue$** - journalism look. Fallback: Source Serif 4 + Inter.

## Typographic tuning by style
| Style | Heading type | Body type | Line height | Letter spacing |
|---|---|---|---|---|
| Modern SaaS | Geometric sans (Satoshi) | Neutral UI (Inter) | 1.5-1.6 | -0.01em body |
| Neo-Brutalist | Display / mono (Syne) | Monospace (Space Mono) | 1.2-1.4 | 0 |
| Luxury Editorial | High-contrast serif (Ogg) | Sharp sans (Switzer) | 1.6-1.8 | +0.05em headers |
| Warm Wellness | Organic serif (Lora) | Humanist sans (Hind) | 1.6 | 0 |
| Corporate Trust | Neo-grotesque (Poppins) | Structural (Roboto) | 1.5 | -0.02em headers |

## CSS starter
```css
:root {
  --font-heading: 'Plus Jakarta Sans', 'Inter', sans-serif; /* swap per chosen pair */
  --font-body: 'Inter', sans-serif;
}
h1, h2, h3 { font-family: var(--font-heading); font-weight: 700; letter-spacing: -0.03em; line-height: 1.15; }
body, p    { font-family: var(--font-body); font-weight: 400; letter-spacing: -0.01em; line-height: 1.6; }
```
Tailwind: `theme.extend.fontFamily = { heading: ['Plus Jakarta Sans','Inter','sans-serif'], body: ['Inter','sans-serif'] }`.
Load only the weights used (e.g. 400, 600, 700) and add `display=swap`.

## Source category map (original 30 categories -> groups above)
Every pairing from the original 400-entry list appears once above; repeated pairs were merged. If the user refers to an original category number, use this map.

| Source category | Group | | Source category | Group |
|---|---|---|---|---|
| 1 Modern SaaS and Clean Tech | A | | 16 Local Services, Medical, Community | N |
| 2 Neo-Brutalist and Anti-Design | C | | 17 High-Growth FinTech, Neo-Banking | K |
| 3 Premium Luxury and Editorial Fashion | D | | 18 Creative Studio, Boutique Agency | I |
| 4 Organic, Wellness, Warm Lifestyle | E | | 19 Digital Magazines, Long-Form | O |
| 5 Corporate Enterprise, Creative Agency | F | | 20 Bold E-Commerce, Retail | H |
| 6 Developer Platforms, Cyber-Tech | B | | 21 Stealth Luxury Tech, Premium AI | A |
| 7 Modern Heritage, Academic Editorial | G | | 22 Real Estate, Architecture, Spatial | M |
| 8 High-Energy Startup, Bold Marketing | H | | 23 Art Museums, Galleries, Cultural | I |
| 9 Creative Portfolio, Indie Studio | I | | 24 Web3, DAO, Crypto | L |
| 10 FinTech, Legal, Institutional Trust | K | | 25 Organic Beauty, Sustainable D2C | E |
| 11 Gaming, Web3, E-Sports | L | | 26 Law Firms, Consultancy, High Finance | K |
| 12 Radical Art Agency, Experimental | J | | 27 High-Density SaaS Analytics | K |
| 13 Wellness, Eco-Tech, Sustainability | E | | 28 Fashion Labels, Streetwear | H |
| 14 Corporate Law, Venture Capital | K | | 29 Long-Form Journalism, News | O |
| 15 Minimalist Architecture, Interior | M | | 30 Local Service, Healthcare, Clinical | N |
