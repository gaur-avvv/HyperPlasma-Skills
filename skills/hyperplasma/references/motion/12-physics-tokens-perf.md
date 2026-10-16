# Physics Tokens, Performance and Accessibility

Use these as defaults after the user picks animations. Adjust per project.

## Spring tokens (Framer Motion)
```ts
export const springs = {
  // Buttons, toggles, micro-clicks
  tactileClick:     { type: "spring", stiffness: 400, damping: 28, mass: 0.8 },
  // Ultra-reactive touch and drag
  gestureResponse:  { type: "spring", stiffness: 450, damping: 32, mass: 0.7 },
  // Route and sheet transitions
  spatialRoute:     { type: "spring", stiffness: 220, damping: 26, mass: 1.1 },
  // Layout morphs, bento shifts
  componentMorph:   { type: "spring", stiffness: 260, damping: 24, mass: 1.0 },
  // Expressive reveals, large brand moments
  expressiveReveal: { type: "spring", stiffness: 140, damping: 18, mass: 1.4 },
  // Slow atmospheric storytelling
  narrativeDrift:   { type: "spring", stiffness: 90,  damping: 20, mass: 1.5 },
};
```

## Cross-engine profile
```ts
export const WebMotionArchitecture = {
  tactileFeedback:  { engine: "Framer Motion / WAAPI", config: { type: "spring", stiffness: 480, damping: 35, mass: 0.6 }, css: "will-change: transform, opacity" },
  structuralMorph:  { engine: "Framer Motion layoutId",  config: { type: "spring", stiffness: 280, damping: 26, mass: 1.0 }, css: "contain: layout, paint" },
  timelineScrub:    { engine: "GSAP ScrollTrigger / Lenis", config: { scrub: 1.2, ease: "power3.out", anticipatePin: 1 }, css: "transform-style: preserve-3d" },
  spatialRig3D:     { engine: "Three.js / R3F", config: { interpolationLerp: 0.08, targetDampening: 0.15 }, webgl: "powerPreference: 'high-performance', antialias: false" },
};
```

## Per-framework cheat sheet
| Framework | Best for | Primary hook | Perf watchpoint | Default tuner |
|---|---|---|---|---|
| React + Framer Motion | Micro-interactions, UI sheets, tab morphs | `layoutId` / `AnimatePresence` | Minimize parent re-renders | stiffness 300, damping 30 |
| Next.js + GSAP | Long scrollers, timelines, SVG drawing | `ScrollTrigger.create()` | Kill timelines on route change | scrub 1.2, ease `power2.out` |
| Pure HTML/CSS | Infinite loops, hovers, view fades | `@keyframes` / `view()` | Animate only `transform` and `opacity` | `cubic-bezier(0.25, 1, 0.5, 1)` |
| Three.js / R3F | 3D viewports, product models, camera dollies | `useFrame((state) => ...)` | Keep polygons and draw calls low | `lerp(current, target, 0.1)` |

## Rules for the agent
- Pick the lightest engine that works: CSS first, Framer Motion for React state, GSAP for scroll timelines, R3F only for real 3D.
- Never combine more than two engines in one page unless the user picks a [HYB] entry.
- Always include a `prefers-reduced-motion: reduce` branch (disable parallax, marquee, shaders, flicker, shake; keep short fades).
- Avoid flashing above 3 flashes per second (strobe, glitch, flicker entries): warn the user, offer a toned-down version.
- Animate `transform` and `opacity` only; avoid animating `width`, `height`, `top`, `left`.
- Pause canvas/WebGL loops when off-screen or the tab is hidden; cap device pixel ratio at 2.
- Do not add more than 4 motion effects to one view; motion should support hierarchy, not compete with it.
