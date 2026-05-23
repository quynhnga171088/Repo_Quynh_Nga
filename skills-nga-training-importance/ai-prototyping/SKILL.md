---
name: ai-prototyping
description: Rapidly prototype frontend UIs from SRS or screen design documents using React + Vite. Use this skill when the user wants to: generate a working UI prototype from requirements, create a React app from screen designs, demo frontend screens with mock data, scaffold a project quickly, or build a realistic navigable product demo from a document. Triggers on phrases like "prototype from SRS", "build screens from doc", "create UI from requirements", "mock frontend", "ai prototype".
---

Scaffold a production-quality React + Vite prototype that feels like a real product — complete navigation and realistic mock data. All data is mocked; the goal is a polished, fully navigable demo.

## Reference Files

| File | Used by |
|------|---------|
| `references/scaffold.md` | Phase 2 — bare React + Vite scaffold + initial AGENTS.md |
| `references/agents-manifest.md` | Phase 2 — AGENTS.md living manifest template |
| `references/design-brief.md` | Phase 3 — theme + layout selection flow |
| `references/themes/index.html` | Phase 3 — theme picker shown to user |
| `references/themes/theme-*.html` | Phase 3 — 12 pre-built theme previews |
| `references/base-components.md` | Phase 5 — index.css + base UI components + layout shell |
| `references/screen-build.md` | Phase 6 — screen implementation |

---

## Flow Overview

```
Phase 1   Parse document → extract screens + flows
Phase 2   Scaffold bare React + Vite app + write AGENTS.md
Phase 3   Show theme picker → user picks theme + layout pattern
Phase 4   Apply theme tokens directly to Tailwind + app styles
Phase 5   Base components + layout shell → index.css
Phase 6   Build all screens from extracted requirements
```

---

## Phase 1 — Parse Document

Read the provided document (SRS, screen design, wireframe, or feature spec). Extract:

- **Screens**: every distinct page/view (name + purpose)
- **User flows**: how screens connect (what action leads where)
- **Key UI elements per screen**: tables, forms, modals, charts, etc.
- **Target device**: mobile-first or desktop-first

If the document was pasted as text, save it to `docs/requirements.md` before Phase 2.

Present the extracted screen list to the user. Ask about ambiguities now.

---

## Phase 2 — Scaffold

Read `references/scaffold.md` and follow it exactly:

1. Create the Vite app with `pnpm create vite`, install react-router-dom, zustand, tailwindcss, biome
2. Set up folder structure and copy source document to `docs/requirements.md`
3. Write initial `AGENTS.md` using `references/agents-manifest.md` as template

---

## Phase 3 — Theme Selection

Read `references/design-brief.md` and follow it exactly (Step 1 → Step 2).

**Gate**: do not proceed until theme name + layout pattern are both confirmed.

---

## Phase 4 — Theme Tokens

Read the chosen theme HTML file (`references/themes/theme-[name].html`) to extract the exact token values (colors, fonts, radii, shadows, component patterns).

If the user requested a color override (e.g. "Bold but blue"), replace only the Primary + Accent tokens — keep all other Visual DNA (radius, shadow, spacing, font) from the original theme.

1. Extend `tailwind.config.ts` with all extracted design tokens
2. Apply global variables and base styles directly in `src/index.css`

---

## Phase 5 — Base Components + Layout Shell

Read `references/base-components.md` and follow exactly:

1. Fill in `src/index.css` with all design tokens extracted in Phase 4
2. Build all base UI components in `src/components/ui/`
3. Build layout shell in `src/components/layout/` for the confirmed layout pattern

---

## Phase 6 — Build Screens

Read `references/screen-build.md` and follow exactly. Build directly from the extracted screen list and flows in Phase 1:

- Build all screens: `src/pages/[route].tsx` per screen
- Create mock data: `src/lib/mock-data/[screen].ts` per screen
- Create shared interfaces: `src/lib/types/[domain].ts`
- Wire complete navigation according to extracted user flows
- Ensure responsive behavior on target device (mobile-first or desktop-first)

---

## Completion

After Phase 6, report to the user:
- Screen count: X/Y screens implemented
- Run: `pnpm dev` → `http://localhost:5173`
- Design decisions made on their behalf
