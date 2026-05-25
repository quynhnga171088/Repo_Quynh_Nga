# Base Components + Layout Shell

Used by: Phase 5
Inputs received: theme tokens already applied in Phase 4 (`tailwind.config.ts` + starter variables in `src/index.css`), chosen theme name + layout pattern name
Outputs: completed `src/index.css`, all base UI components, layout shell + App.tsx router

**Before building any component**, align with the **chosen theme’s visual DNA** (radius, shadow, typography, primary/accent roles) — already encoded as Tailwind/CSS tokens in Phase 4. Components must match that theme, not generic defaults.

---

## Step 1 — index.css

Replace / complete `src/index.css` using the **same tokens as Phase 4** (fonts and palette come from the chosen theme HTML):

```css
@import url('[display font import URL from chosen theme]');
@import url('[body font import URL from chosen theme]');

@import "tailwindcss";

@theme {
  --color-primary: [hex];
  --color-surface: [hex];
  --color-bg: [hex];
  --color-text: [hex];
  --color-accent: [hex];
  --color-border: [hex];
  --color-muted: [hex];
  --color-danger: #EF4444;
  --color-success: #22C55E;
  --color-warning: #F59E0B;

  --font-display: '[Display Font]', sans-serif;
  --font-body: '[Body Font]', sans-serif;
}

body {
  font-family: var(--font-body);
  background-color: var(--color-bg);
  color: var(--color-text);
}
```

If the confirmed style is Dark, add a `[data-theme="dark"]` block. Otherwise omit it.

---

## Step 2 — Base UI Components

Create each in `src/components/ui/`. All components must:
- Use **only** Tailwind classes from CSS variables (`bg-primary`, `text-base`, etc.) — no hardcoded hex
- Use `rounded-btn`, `rounded-card` etc. from tailwind.config.ts (not `rounded-lg` generically)
- Export a single named component per file
- Use TypeScript props with explicit interfaces
- **Match the visual style implied by the chosen theme** (flat vs elevated cards, pill vs sharp controls, etc.)

### Button — `Button.tsx`
Variants: `primary` | `secondary` | `ghost` | `destructive`  
Sizes: `sm` | `md` | `lg`  
States: default, hover, focus-visible ring, disabled (`opacity-50 cursor-not-allowed`), loading (inline spinner)

**Style**: implement consistently with the chosen theme. Examples:
- Minimalist: flat `bg-primary text-white`, no shadow, `rounded-btn`, hover `opacity-90`
- Bold: `bg-primary text-white shadow-btn-hover`, `rounded-btn`, hover `shadow-lg scale-[1.02]`
- Soft/Friendly: `bg-primary text-white`, pill `rounded-btn`, `shadow-card` on hover
- Luxury: `border border-primary text-primary bg-transparent`, `rounded-btn`, `tracking-heading`, hover `bg-primary text-white`
- Playful: gradient `bg-gradient-to-r from-primary to-accent`, pill, `shadow-card`
- Dark/Prof: `bg-primary text-white`, subtle glow `shadow-[0_0_12px_rgba(var(--color-primary),0.4)]` on hover

### Card — `Card.tsx`
Sub-components: `CardHeader`, `CardBody`, `CardFooter`  
**Style**: follow the theme’s card treatment. Use `rounded-card`. Examples:
- Shadow style: `bg-surface shadow-card` (no border)
- Border style: `bg-surface border border-default` (no shadow)
- Playful: `bg-surface shadow-card border-t-4 border-primary`
- Luxury: `bg-surface border border-default` (ultra-thin, no shadow)

### Input — `Input.tsx`
Props: `label`, `error`, `helperText`, `leftIcon`, `rightIcon`  
States: default, focus (`ring-1 ring-primary`), error (`border-danger` + message below), disabled  
**Style**: match inputs to buttons (same radius family). Use same `rounded-btn` as buttons unless theme dictates otherwise.

### Badge — `Badge.tsx`
Variants: `default` | `success` | `warning` | `danger` | `info`  
Shape: follow the theme — pill for rounded themes, `rounded-md` for sharp themes.

### Table — `Table.tsx`
Props: `columns: { key: string; header: string; sortable?: boolean }[]`, `data: Record<string, unknown>[]`  
Features: row hover (`hover:bg-surface`), sort indicator on headers (visual only)

### Modal — `Modal.tsx`
Props: `open`, `onClose`, `title`, `children`, `footer`  
Accessibility: focus trap, ESC closes, backdrop click closes, `role="dialog"` + `aria-modal`  
Style: `rounded-card shadow-modal bg-white`

### Skeleton — `Skeleton.tsx`
Animated pulse placeholder. Variants: `line` | `block` | `circle`

---

## Step 3 — Layout Shell

Create in `src/components/layout/`. Build the shell that matches the **confirmed layout pattern** from Phase 3.

### PageWrapper — `PageWrapper.tsx` (always created)
```tsx
export function PageWrapper({ children }: { children: React.ReactNode }) {
  return <div className="max-w-[1280px] mx-auto px-6 py-6">{children}</div>
}
```

### Fixed Left Sidebar

**`Sidebar.tsx`** — 240px fixed sidebar:
- Logo / app name at top
- Nav links using `<Link to="...">` from `react-router-dom`; active state via `useLocation()` + `location.pathname`
- Placeholder nav items (routes filled in Phase 6 when screens are implemented)
- Mobile: hidden by default, toggled via hamburger

**`Header.tsx`** — 64px top bar:
- Hamburger for mobile sidebar toggle
- Page title slot
- Right side: user avatar / notifications slot

**`src/App.tsx`** — router + layout shell:
```tsx
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import { Sidebar } from '@/components/layout/Sidebar'
import { Header } from '@/components/layout/Header'
import { PageWrapper } from '@/components/layout/PageWrapper'
// import all screen pages

export default function App() {
  return (
    <BrowserRouter>
      <div className="flex bg-bg text-base font-body min-h-screen">
        <Sidebar />
        <div className="flex-1 flex flex-col">
          <Header />
          <main className="flex-1">
            <PageWrapper>
              <Routes>
                {/* routes added in Phase 6 — placeholder */}
                <Route path="/" element={<div>Home</div>} />
              </Routes>
            </PageWrapper>
          </main>
        </div>
      </div>
    </BrowserRouter>
  )
}
```

### Top Navigation

**`TopNav.tsx`** — horizontal bar with logo, nav links, right-side actions. Active state via `useLocation()`.

**`src/App.tsx`**:
```tsx
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import { TopNav } from '@/components/layout/TopNav'
import { PageWrapper } from '@/components/layout/PageWrapper'

export default function App() {
  return (
    <BrowserRouter>
      <div className="bg-bg text-base font-body min-h-screen">
        <TopNav />
        <main>
          <PageWrapper>
            <Routes>
              <Route path="/" element={<div>Home</div>} />
            </Routes>
          </PageWrapper>
        </main>
      </div>
    </BrowserRouter>
  )
}
```

### Bottom Tab Bar (mobile-first)

**`BottomNav.tsx`** — fixed bottom bar, 4–5 icon+label tabs. Active tab uses accent/primary via `useLocation()`.

**`src/App.tsx`**:
```tsx
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import { BottomNav } from '@/components/layout/BottomNav'
import { PageWrapper } from '@/components/layout/PageWrapper'

export default function App() {
  return (
    <BrowserRouter>
      <div className="bg-bg text-base font-body flex flex-col min-h-screen">
        <main className="flex-1 pb-16">
          <PageWrapper>
            <Routes>
              <Route path="/" element={<div>Home</div>} />
            </Routes>
          </PageWrapper>
        </main>
        <BottomNav />
      </div>
    </BrowserRouter>
  )
}
```

---

## Completion Check

After all files are written, confirm:
- `src/index.css` — tokens match Phase 4 theme palette exactly
- `src/components/ui/` — 7 components: Button, Card, Input, Badge, Table, Modal, Skeleton
- `src/components/layout/` — shell components for the confirmed layout pattern
- `src/App.tsx` — BrowserRouter + layout shell + placeholder Routes
- Visual style of components matches the chosen theme (not generic defaults)
