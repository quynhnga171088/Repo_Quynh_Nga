# Scaffold Agent

Used by: Phase 2 subagent
Inputs received: app name, app description, source document path, project root path
Outputs: bare React + Vite project structure + initial AGENTS.md

---

## Step 1 — Create Vite App

Run in the **parent directory** of the desired project folder:

```bash
pnpm create vite@latest <project-name> --template react-ts
cd <project-name>
pnpm install
```

Install dependencies:

```bash
# Routing + state
pnpm add react-router-dom zustand

# Tailwind CSS v4 (Vite plugin)
pnpm add -D tailwindcss @tailwindcss/vite

# Biome (replaces ESLint + Prettier)
pnpm add -D @biomejs/biome
npx biome init
```

Update `vite.config.ts` to add the Tailwind plugin and path alias:

```ts
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'
import path from 'path'

export default defineConfig({
  plugins: [react(), tailwindcss()],
  resolve: {
    alias: { '@': path.resolve(__dirname, './src') },
  },
})
```

Add `paths` to `tsconfig.app.json` (no `baseUrl` — deprecated in TypeScript 6):

```json
{
  "compilerOptions": {
    "paths": { "@/*": ["./src/*"] }
  }
}
```

---

## Step 2 — Create Folder Structure

Create the following empty directories:

```bash
mkdir -p src/components/ui
mkdir -p src/components/layout
mkdir -p src/pages
mkdir -p src/lib/mock-data
mkdir -p src/lib/types
mkdir -p src/lib/store
mkdir -p docs
```

Create `src/pages/.gitkeep` — empty folder placeholder for screen pages.

Copy the source document into the project:
```bash
cp <source-doc-path> docs/requirements.md
```
If the source was already saved at `docs/requirements.md`, skip this.

Replace `src/index.css` with a placeholder (tokens completed from Phase 4 onward; Phase 5 finishes globals + component polish):

```css
@import "tailwindcss";

/* Design tokens — Phase 4 applies theme; Phase 5 completes index.css */
:root {}
```

Make sure `src/main.tsx` imports `./index.css`.

---

## Step 3 — Write Initial AGENTS.md

Read `skills/ai-prototyping/references/agents-manifest.md` for the full format.

**Check first**: if AGENTS.md already exists in the project root AND contains real project content (not a generated stub), **do not overwrite it**. Instead, update only the `## Project` section with the correct app description, source document path, and project root. Preserve all other existing sections.

If AGENTS.md does not exist, overwrite it completely with the template below.

Populate only what is known at this stage:

```markdown
# Project Agent Context
> Living manifest — updated after each phase. Read this first before starting any task.

---

## Project
- **App**: [app description]
- **Source document**: [project-root]/docs/requirements.md
- **Project root**: [absolute project root path]
- **Run**: `pnpm dev` → `http://localhost:5173`
- **Stack**: React 18, TypeScript, Vite, Tailwind CSS v4, React Router v6, Zustand, Biome, pnpm

---

## Design System
⏳ Theme + tokens after Phase 4 (from chosen theme HTML → `tailwind.config.ts` + `src/index.css`)

---

## Project Structure
[project-root]/
├── AGENTS.md
├── docs/
│   └── requirements.md
├── src/
│   ├── main.tsx           ← entry point
│   ├── App.tsx            ← router + layout shell (to be built by Phase 5)
│   ├── index.css          ← design tokens (Phase 4–5)
│   ├── pages/             ← one file per screen (Phase 6)
│   ├── components/
│   │   ├── ui/            ← to be built by Phase 5
│   │   └── layout/        ← to be built by Phase 5
│   └── lib/
│       ├── mock-data/     ← Phase 6
│       ├── types/         ← Phase 6
│       └── store/         ← Zustand stores (Phase 6, optional)

---

## Base Components
⏳ To be built after Phase 5 (base-components agent)

---

## Screens & flows
⏳ Captured in Phase 1 from `docs/requirements.md`; implemented in Phase 6

---
```

---

## Project Structure After This Phase

```
<project-name>/
├── AGENTS.md              ← initial manifest
├── docs/
│   └── requirements.md   ← copy of source document
├── src/
│   ├── main.tsx
│   ├── App.tsx            ← placeholder (built by Phase 5)
│   ├── index.css          ← placeholder tokens
│   ├── pages/             ← empty
│   ├── components/
│   │   ├── ui/            ← empty
│   │   └── layout/        ← empty
│   └── lib/
│       ├── mock-data/     ← empty
│       ├── types/         ← empty
│       └── store/         ← empty
```
