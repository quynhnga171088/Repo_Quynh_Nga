# AGENTS.md — Living Project Manifest

`AGENTS.md` is the shared memory for all agents in this prototype project.

- **Created**: Phase 2 (scaffold agent writes the full initial file)
- **Updated**: after phases that add facts — orchestrator after Phase 3 / Phase 1 recap; Phase 4–6 agents or orchestrator append progress
- **Read first**: every subagent reads AGENTS.md before starting work

---

## Update Rules

| Phase | Who updates | Section |
|-------|------------|---------|
| 2 | Scaffold subagent (writes full file) | All sections |
| 3 | Orchestrator (after theme + layout confirmed) | `## Design System` |
| 4 | Theme/tokens step | `## Design System` (tokens summary) |
| 5 | Base components subagent | `## Base Components`, `## Layout Shell` |
| 6 | Screen build agent(s) | `## Implementation` / `## Cluster: …` |

**Append, don't overwrite.** Add new bullets or sections; never delete useful history.

---

## AGENTS.md Full Template

```markdown
# Project Agent Context
> Living manifest — updated after each phase. Read this first before starting any task.

---

## Project
- **App**: [one sentence — what this app does and who uses it]
- **Source document**: [absolute path to docs/requirements.md or original file]
- **Project root**: [absolute path to project]
- **Run**: `pnpm dev` → `http://localhost:5173`
- **Stack**: React 18, TypeScript, Vite, Tailwind CSS v4, React Router v6, Zustand, Biome, pnpm

---

## Design System
- **Theme**: [theme name from Phase 3]
- **Device priority**: [mobile / desktop]-first
- **Layout pattern**: [Fixed Left Sidebar / Top Navigation / Bottom Tab Bar / ...]
- **Tokens**: `tailwind.config.ts` + `src/index.css` (Phase 4 — sourced from chosen theme HTML)

### Color Tokens
| Token | Hex | CSS Variable | Tailwind Class |
|-------|-----|-------------|----------------|
| Primary | #... | `--color-primary` | `bg-primary` / `text-primary` |
| Surface | #... | `--color-surface` | `bg-surface` |
| Background | #... | `--color-bg` | `bg-bg` |
| Text | #... | `--color-text` | `text-base` |
| Accent | #... | `--color-accent` | `bg-accent` / `text-accent` |
| Border | #... | `--color-border` | `border-default` |
| Muted | #... | `--color-muted` | `text-muted` |

### Typography
- Display font: [Font Name] — headings
- Body font: [Font Name] — body text

---

## Screens & flows (Phase 1)
> Single source for what to build in Phase 6. Keep aligned with `docs/requirements.md`.

### Screens
| Screen | Route | Purpose | Key UI |
|--------|-------|---------|--------|
| … | `/…` | … | … |

### Navigation / flows
- [Trigger] → [from screen/route] → [to screen/route]

---

## Project Structure
```
[project-root]/
├── AGENTS.md              ← this file
├── docs/
│   └── requirements.md   ← original source document
├── src/
│   ├── main.tsx           ← entry point
│   ├── App.tsx            ← BrowserRouter + layout shell + Routes
│   ├── index.css          ← CSS variables / @theme + Tailwind v4
│   ├── pages/             ← one file per screen
│   ├── components/
│   │   ├── ui/            ← Button, Card, Input, Badge, Table, Modal, Skeleton
│   │   └── layout/        ← [Sidebar|TopNav|BottomNav], Header, PageWrapper
│   └── lib/
│       ├── mock-data/     ← one file per screen (as needed)
│       ├── types/         ← shared TypeScript interfaces
│       └── store/         ← Zustand stores (optional)
```

### Base Components Available
All agents must use these — do not reimplement:
- `Button` — variants: primary / secondary / ghost / destructive
- `Card` — with CardHeader / CardBody / CardFooter
- `Input` — with label, error, helperText
- `Badge` — variants: default / success / warning / danger / info
- `Table` — sortable columns, row hover
- `Modal` — accessible, focus-trapped
- `Skeleton` — animated loading placeholder
- `PageWrapper` — max-width + padding container

### Layout Shell
- Pattern: [layout pattern name]
- Components: [Sidebar.tsx / TopNav.tsx / BottomNav.tsx] + Header.tsx + PageWrapper.tsx
- Nav links in shell: [main routes + labels]

---

## Implementation (Phase 6)

### Progress
| Area | Status |
|------|--------|
| Routes wired | ⏳ |
| Mock data | ⏳ |
| Navigation matches Phase 1 | ⏳ |

---

## Cluster: [Name]
> Optional — when parallel agents own a slice of Phase 6.

- **Status**: ✅ complete | ⏳ in progress
- **Screens built**:
  - `[Screen Name]` → `src/pages/...`
- **Mock data**: `src/lib/mock-data/...`
- **Shared types**: `src/lib/types/...`
- **Navigation wired**: [bullet list]
- **Notes**: [deviations, UX additions]

---

## Cluster: [Next Name]
...

---
```

---

## How to Append a Section

Read the current AGENTS.md, then append your section at the bottom. Do not strip prior content.

Example — Phase 6 agent appending:

```
## Cluster: Orders

- **Status**: ✅ complete
- **Screens built**:
  - `Order List` → `src/pages/orders/index.tsx`
  - `Order Detail` → `src/pages/orders/[id].tsx`
  - `Order Create` → `src/pages/orders/new.tsx`
- **Mock data**:
  - `src/lib/mock-data/orders.ts`
- **Shared types**: `src/lib/types/orders.ts` — exports: `Order`, `OrderStatus`
- **Navigation wired**:
  - List row → Detail via `<Link to>`
  - List "New" → Create via `navigate()`
  - Create submit → Detail via `navigate()`
- **Notes**: Empty state includes secondary action per UX pass
```
