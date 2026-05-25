# Screen Build

Used by: Phase 6 — build every screen from requirements (one agent can own a logical cluster for parallelism, or one agent builds all).

**Inputs**: `docs/requirements.md`, the **screen list + user flows from Phase 1** (must stay consistent with the doc), `tailwind.config.ts` + `src/index.css` from Phase 4, base components + layout shell from Phase 5.

**Outputs**: page components under `src/pages/`, mock data, optional shared types + Zustand stores, routes wired in `src/App.tsx`.

---

## Your Job

Implement **every screen** listed in Phase 1 with correct navigation per extracted flows.

Use **`docs/requirements.md`** when you need detail beyond the Phase 1 summary (labels, fields, tables, edge cases).

Use **`tailwind.config.ts` and `src/index.css`** for the visual language — semantic Tailwind tokens only (`bg-primary`, `text-base`, `rounded-card`, etc.). Do not invent one-off hex colors in JSX.

Use base components from `src/components/ui/` — do not reimplement Button, Card, Table, etc.

**Suggested build order**: group screens by domain (same idea as former “clusters”). Within each group, build **list/index → detail → create/edit** when applicable — that stabilizes shared types and mock data shapes early.

---

## Step 1 — Define Shared Types

If multiple screens share a data model (e.g. `Order` on list + detail + create), define the TypeScript interface **once** in `src/lib/types/[domain].ts`:

```ts
// src/lib/types/orders.ts
export interface Order {
  id: string
  customer: string
  total: number
  status: 'pending' | 'processing' | 'shipped' | 'delivered'
  date: string
}
```

Import this type in mock data and pages — never duplicate it.

---

## Step 1b — Zustand Store (optional)

If screens share interactive state (filters, selection, draft form), add `src/lib/store/[domain].ts`:

```ts
// src/lib/store/orders.ts
import { create } from 'zustand'
import type { Order } from '@/lib/types/orders'

interface OrderStore {
  selectedOrder: Order | null
  setSelectedOrder: (order: Order | null) => void
}

export const useOrderStore = create<OrderStore>((set) => ({
  selectedOrder: null,
  setSelectedOrder: (order) => set({ selectedOrder: order }),
}))
```

If screens only render mock data with local UI state, skip the store — use `useState`.

---

## Step 2 — Generate Mock Data

Create `src/lib/mock-data/[screen-name].ts` per screen as needed.

Rules:

- Realistic, domain-appropriate values (not `foo` / `test`)
- Shapes must match what the UI shows (infer from Phase 1 + `docs/requirements.md`)
- Use interfaces for typing
- Lists: ~8–15 rows so tables feel real; detail views: one coherent record
- Images: `https://picsum.photos/seed/[seed]/[w]/[h]`

Example:

```ts
import type { Order } from '@/lib/types/orders'

export const orders: Order[] = [
  { id: 'ORD-001', customer: 'Nguyen Van An', total: 1250000, status: 'delivered', date: '2024-03-15' },
  // ...
]
```

---

## Step 3 — Build the Screen Component

Create `src/pages/[route-name].tsx` (or nested folders under `src/pages/`). All components run client-side in Vite.

### Structure

```tsx
import { useState, useEffect } from 'react'
import { Link, useNavigate, useParams } from 'react-router-dom'
import { orders } from '@/lib/mock-data/orders'
import { Button, Card, Table, Badge, Skeleton } from '@/components/ui'
import { PageWrapper } from '@/components/layout/PageWrapper'

export default function OrderListPage() {
  const navigate = useNavigate()
  const [isLoading, setIsLoading] = useState(true)

  useEffect(() => {
    const t = setTimeout(() => setIsLoading(false), 1000)
    return () => clearTimeout(t)
  }, [])

  return (
    <PageWrapper>
      {/* screen content */}
    </PageWrapper>
  )
}
```

### Navigation

**Within your logical group**: implement every transition described in Phase 1 flows (`<Link to="...">`, `navigate()`, `useParams()`, modals via `useState`).

**Cross-group**: layout shell from Phase 5 may expose nav links to major routes — ensure your routes match pathnames used there. Prefer `<Link>` / `navigate()` for internal routes — **never** raw `<a href>` for in-app navigation.

---

## Step 4 — Register Routes in App.tsx

Append routes without wiping existing ones:

```tsx
import OrderListPage from '@/pages/orders/list'
import OrderDetailPage from '@/pages/orders/detail'
import OrderCreatePage from '@/pages/orders/create'

// inside <Routes>
<Route path="/orders" element={<OrderListPage />} />
<Route path="/orders/:id" element={<OrderDetailPage />} />
<Route path="/orders/new" element={<OrderCreatePage />} />
```

Read `src/App.tsx` first and merge — preserve routes built by other agents if parallelizing.

---

## Step 5 — UI Implementation Rules

### Every screen must have

- **Page title** — visible `<h1>` or prominent heading
- **Loading skeleton** — `<Skeleton />` while `isLoading` is true (~1s simulated in `useEffect`)
- **Empty state** — for lists/tables that can be empty: message + sensible action
- **Hover/focus** — interactive controls visibly respond

### Styling

- Use only semantic Tailwind classes backed by Phase 4 tokens (`bg-primary`, `bg-surface`, `text-base`, …)
- **No hardcoded hex** in JSX
- Spacing: Tailwind scale (`p-4`, `gap-6`, …)
- Radius: prefer theme utilities (`rounded-btn`, `rounded-card`) when defined; otherwise align with the chosen theme’s radius story

### Patterns

- **Lists/tables**: `Table` component; rows clickable when navigation exists
- **Detail**: two-column on desktop where appropriate; stack on mobile
- **Forms**: fields grouped in `Card`; validation error styling on inputs
- **Dashboards**: KPI cards + tables; chart-like blocks can be simple div layouts — no chart library required

### Responsive

- Desktop-first: no breakage below 768px (no horizontal spill)
- Mobile-first: solid at ~375px; desktop enhancements additive

---

## Step 6 — Quality Check Before Finishing

- [ ] Mock data exists and is typed
- [ ] All transitions from Phase 1 flows implemented (`Link` / `navigate`)
- [ ] Loading skeleton ~1s on mount where relevant
- [ ] Empty states where lists can be empty
- [ ] No hardcoded colors in JSX
- [ ] Page title visible per screen
- [ ] Routes registered in `App.tsx`
- [ ] Imports resolve (`@/components/ui/...`, `@/lib/...`)
