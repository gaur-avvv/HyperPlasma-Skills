---
name: hyperplasma
description: Ask the user which visual design style, font pairing, and animation set to use before designing or building any website, landing page, dashboard, web app, portfolio, or UI, and describe each option so they can choose. Use this skill whenever the user asks to build, design, redesign, mock up, or restyle a site or interface and has NOT already named a style, fonts, or animations. Also use when they say "pick a style", "what design should I use", "give me design options", "which fonts", "font pairing", "which animations", "add motion", "glassmorphism or something else", or want to browse aesthetics, typography, or transitions. Contains 300 UI design styles, 400 heading+body font pairings, and 500 animations/transitions (Framer Motion, GSAP, CSS, Three.js/R3F, shaders), each with a one-line description.
license: MIT
metadata:
  author: gaur-avvv
  version: "1.0.0"
---

# HYPERPLASMA: Style, Font and Motion Picker

Before writing any HTML/CSS/JS/React for a new site or UI, help the user choose three things in order: **visual style -> font pairing -> animations**. Never silently default to "clean modern SaaS with Inter and fade-ins". The user wants to be asked, with a short description of every option.

## When NOT to run
- The user already named style, fonts, or animations: confirm in one line and skip that step.
- The user is only fixing a bug or changing content in an existing design.
- A design system or brand guide already exists in the project: follow it.

## Workflow

### Step 0: Detect the stack (silent)
Check the project for `package.json` / framework files. Note: React + Framer Motion, Next.js + GSAP, Three.js/R3F, Vue/Svelte, or plain HTML/CSS. Use this in Step 4. Ask only if there is no project and the user hasn't said.

### Step 1: Get context (max one question)
If project type is unclear, ask only: "What are you building, and who is it for?" If the request already says (e.g. "portfolio for placements"), infer it and skip.

### Step 2: Style (5 options)
Use the Quick Picks table to choose a starting set, then read the matching file in `references/styles/` for more options. Always include a spread:
- 2 safe fits for the project type
- 2 distinctive fits
- 1 bold / unexpected pick

Show each option like this:

```
1. Glassmorphism  - frosted-glass panels, background blur, thin light borders.
   Best for: portfolios, dashboards, hero sections  |  Watch out: text contrast, blur cost on low-end phones
```

End with ONE question: "Which one (number), or want a different batch / a mix of two / to browse by category?"

Escape hatches to offer every time:
- "Show more like #N"
- "Browse a category" (list category names from the index below, nothing more)
- "Mix two" (e.g. Bento Grid + Glassmorphism)
- "You choose" -> pick the best fit yourself and state why in one line

### Step 3: Font pairing (3 options)
Open `references/fonts/pairings.md`. Use its "Style -> font group" table to find the group, then show 3 pairs: 1 safe, 1 distinctive, 1 bold.

```
1. Plus Jakarta Sans + Inter  - geometric header with friendly curves over a legible UI body.
   Feels: modern, approachable  |  Free on Google Fonts
```

- Always state availability. Fonts marked with a dagger, dollar sign, or question mark in the file are not on Google Fonts; prefer free Google Fonts unless the user asks for premium, and use the file's fallback table when a font is unavailable.
- Ask ONE question: "Which pair (number), or a different batch / you choose?"

### Step 4: Animations (up to 4)
Open `references/motion/README.md`, then the file that matches the stack and style (see Motion Quick Picks). Show 4-5 options, each tagged with its engine, e.g.:

```
1. Magnetic Button Pull [FM/GSAP]  - CTA is attracted to the cursor inside a ~40px zone.
   Feels: playful, tactile  |  Cost: low  |  Needs: Framer Motion (already in the project)
```

- Pick engines that match Step 0. Prefer CSS first, then Framer Motion for React state, GSAP for scroll timelines, R3F only for real 3D.
- Show the cost/risk (GPU-heavy shaders, flashing effects, scroll-jacking).
- Ask ONE question: "Pick up to 4 (numbers), or 'subtle', 'standard', 'cinematic' and I'll choose."
  - subtle = 2 effects (micro-interaction + reveal)
  - standard = 3 effects (micro-interaction + scroll reveal + transition)
  - cinematic = 4 effects (adds a signature hero effect)
- Use `references/motion/12-physics-tokens-perf.md` for spring tokens and performance rules.

### Step 5: Lock the spec, then build
Write a short spec before coding:
- Style (name and ID)
- Fonts (heading + body, weights, availability/fallback)
- Palette (3-5 hex values + background)
- Shape (radius, borders, shadows)
- Motion (chosen effects with IDs, engines, spring tokens)
- Signature details (2-3 elements that make the style recognizable)

Confirm in one line ("Going with X + Y + Z: ..."), then build. Do not ask again unless the user changes direction.

## Fast path
If the user says "surprise me", "you choose", or "just build it": pick one coherent trio (style + font group + 3 effects), state it in 3 lines, then build. Never ask more than one question per message.

## ID lookup rules
The catalogues use the original numbering (styles 1-300, motion 1-500). Repeated entries are mapped, not removed:
- Style IDs that don't appear in `references/styles/01-10` are in `references/styles/00-duplicate-map.md`.
- Motion IDs that don't appear in `references/motion/01-11` are in `references/motion/99-duplicate-map.md`.
- Font pairs are in groups A-O; the original 30 categories are mapped at the bottom of the fonts file.

## Rules
- Keep user-facing text short, direct, in natural spoken English.
- Always give the one-line description; a bare name is not enough.
- Never ask style, fonts and motion in the same message (unless "you choose").
- Flag tradeoffs honestly: contrast (glass, neumorphism, dark academia), performance (blur, shaders, parallax), accessibility (flashing, glitch, motion), readability (maximalist, anti-design).
- Production defaults: WCAG AA contrast, `prefers-reduced-motion` branch, no more than 4 motion effects per view, no more than two styles mixed.
- Never put a font in CSS unless it is loadable (Google Fonts link, self-hosted file, or system stack); always add a fallback stack.
- Style, font and animation names come from community naming; some (Goldmorphism, Gellmorphism, "Satoshi" availability) are informal or licensed differently. Describe the look; don't claim authority.

## Quick Picks: style by project type
IDs refer to the style catalogue.

| Project | Safe | Distinctive | Bold |
|---|---|---|---|
| Developer / ML portfolio | 191 Linear SaaS Clean, 11 Bento Grid | 1 Glassmorphism, 142 Terminal Dashboard | 30 Cyberpunk, 23 Neo-Brutalism |
| SaaS landing page | 191, 65 SaaS Clean | 11 Bento Grid, 5 Aurora UI | 71 AI Morphism, 106 Glowmorphism |
| Dashboard / admin | 192 Enterprise Minimal, 144 Split-Pane | 143 Infographic UI, 200 Vector HUD Hybrid | 67 Sci-Fi HUD |
| AI / chatbot product | 71 AI Morphism, 5 Aurora UI | 1 Glassmorphism, 240 AI Cortex Mesh | 4 Liquid Glass |
| Cybersecurity / hacker tool | 142 Terminal Dashboard, 69 Terminal UI | 30 Cyberpunk, 141 Tactical HUD | 77 Cybercore, 127 Cyber-Noir |
| GIS / maps / data viz | 192, 143 | 151 Blueprint, 154 Isometric Grid | 188 Thermal Camera Overlay |
| E-commerce / product | 12 Minimalism, 167 Branded Catalog | 3 Claymorphism, 68 Skeuomorphic 3D | 135 Barbiecore |
| Blog / editorial / magazine | 57 Branded Editorial, 161 Newspaper | 56 Typography-Centric, 14 Swiss | 124 Dadaist Anti-Design |
| Creative / agency | 23 Neo-Brutalism, 13 Maximalism | 32 Acid Graphic, 58 Kinetic Type | 183 Melted Interface |
| Kids / education | 3 Claymorphism, 80 Kawaii | 88 Kindercore, 164 Graph Paper | 33 Memphis |
| Wellness / lifestyle | 44 Japandi, 281 Scandinavian Hygge | 45 Wabi-Sabi, 76 Cottagecore | 94 Watercolor |
| Luxury / finance | 47 Art Deco, 107 Velvetmorphism | 171 Obsidian, 178 Burl Wood | 100 Leather & Stitching |
| Gaming / esports | 70 Gaming HUD, 28 Synthwave | 238 Tactical Mech Console | 204 Magmamorphism |
| Nostalgia / fun side project | 26 Frutiger Aero, 61 Pixel Art | 114 Luna (XP), 217 Windows 95 | 29 Vaporwave |
| Docs / dev tools | 149 Command Palette, 144 Split-Pane | 12 Minimalism, 14 Swiss | 164 Graph Paper |
| Events / club / community | 23 Neo-Brutalism, 33 Memphis | 34 Pop Art, 60 Scrapbook | 32 Acid Graphic |

## Motion Quick Picks: animations by style or goal
IDs refer to the motion catalogue.

| Style or goal | Good starting effects |
|---|---|
| Glassmorphism / Liquid Glass / AI | 56 Backdrop-Blur Sweep, 44 3D Tilt, 43 Specular Sweep, 6 Tab Slider, 1 Layout Morph |
| SaaS / Linear clean | 1 Layout Morph, 6 Tab Slider, 9 Bento Hover Inflation, 10 Staggered List, 51 View-Timeline Reveal |
| Neo-Brutalism / anti-design | 19 Marquee, 47 Text Wave, 48 Stripe Shift Fill, 46 Squish Press, 249 Alternating Rails |
| Luxury / editorial | 13 Text Split Reveal, 17 Image Reveal, 15 Parallax Depth, 31 Cross-Fade, 60 Variable Font Weight |
| Cyber / terminal / hacker | 84 Neon Flicker, 79 Data Matrix Drop, 82 Scanline Crawl, 67 Glitch Wave, 69 Constellation Web |
| Dashboards / telemetry | 71 Radial Progress, 72 Line Draw, 73 Bar Growth, 74 Heatmap Pulse, 76 Telemetry Stream, 16 Counter Tick |
| Developer / ML portfolio | 11 Pin-and-Scrub, 13 Text Split Reveal, 44 3D Tilt, 41 Magnetic Button, 69 Constellation Web |
| 3D product / showcase | 21 Orbital Pan, 22 Dolly-Zoom, 131 Exploded View Scrub, 287 Assembly Snap |
| E-commerce | 123 Cart Drawer, 2 Shared Element, 41 Magnetic Button, 46 Squish Press |
| Retro / nostalgia | 82 Scanline Crawl, 89 Arcade Flash, 59 Step Timing, 81 Y2K Float |
| Wellness / organic | 83 Leaf Drift, 86 Angelcore Pulse, 31 Cross-Fade, 4 Accordion |
| Mobile app feel | 101 Swipe Rubber Band, 102 Pull Refresh, 105 Drag Tilt, 106 Rotation Sweep, 108 Long-Press |
| Page transitions | 32 Curtain, 33 Iris Zoom, 37 Radial Mask, 38 Panel Split, 154 Glitch Compression |

## Category index
Read only the file you need.

| File | Category |
|---|---|
| `references/styles/01-morphisms-light-material.md` | Morphisms, light and material effects (styles 1-10, 71, 92, 101-110, 175, 201-210) |
| `references/styles/02-layout-structure.md` | Layout and interaction structure (11-25, 73-75, 143-150, 153, 193) |
| `references/styles/03-color-mood-genre.md` | Color, mood, genre, "-punk" (28-45, 120, 126-130, 281) |
| `references/styles/04-art-movements.md` | Art movements (46-55, 121-125) |
| `references/styles/05-typography-graphic.md` | Typography and graphic-led (56-64, 166) |
| `references/styles/06-tech-scifi-geometric.md` | Tech, sci-fi, spatial, technical drawing (66-70, 72, 141-142, 151-160, 200, 203, 231-240) |
| `references/styles/07-retro-nostalgia.md` | Retro software and nostalgia (26-27, 61, 87, 111-119, 211-220) |
| `references/styles/08-internet-subcultures.md` | Internet aesthetics (76-90, 131-140) |
| `references/styles/09-physical-materials.md` | Paper, stone, metal, wood, fabric (91, 93-100, 161-180, 221-230) |
| `references/styles/10-experimental-saas.md` | Experimental and modern SaaS (65, 181-199, 246) |
| `references/styles/00-duplicate-map.md` | Repeated style IDs -> canonical |
| `references/fonts/pairings.md` | Font pairings (groups A-O), availability, fallbacks, tuning |
| `references/motion/README.md` | Motion index; engine tags; file map |
| `references/motion/01-ui-layout-framer.md` ... `11-hybrid-engines.md` | Animation catalogues by engine and purpose |
| `references/motion/12-physics-tokens-perf.md` | Spring tokens, performance and accessibility rules |
| `references/motion/99-duplicate-map.md` | Repeated motion IDs -> canonical |
