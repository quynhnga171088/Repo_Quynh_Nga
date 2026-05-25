# Design Brief

Used by: Phase 3 (theme selection + layout)

---

## Step 1 — Theme Selection

Find the absolute path of `references/themes/index.html` relative to this skill file and give the user a clickable link:

```
file:///[absolute-path]/skills/ai-prototyping/references/themes/index.html
```

Then send this message (one block, no extra preamble):

---
**Bước tiếp theo: chọn theme**

Mở link trên để xem trước 12 design themes. Sau đó cho tôi biết:

1. **Theme nào bạn muốn?** (ví dụ: "Minimalist", "Dark Pro", "Nature"…)
2. **Muốn đổi màu không?** Nếu có, nói màu mong muốn (ví dụ: "Bold nhưng màu xanh lam"). Nếu không, giữ nguyên màu của theme.

---

**Gate**: chờ user trả lời trước khi tiếp tục.

---

## Step 2 — Layout Pattern

Sau khi user chọn theme, gộp xác nhận vào cùng reply:

**Device priority**: dùng lại kết quả đã extract từ Phase 1. Nếu Phase 1 chưa xác định rõ, hỏi user (mobile-first hay desktop-first?).

Sau đó đề xuất **2 layout phù hợp nhất** dựa trên danh sách màn hình từ Phase 1:

| Pattern | Mô tả | Phù hợp nhất |
|---------|-------|--------------|
| **Fixed Left Sidebar** | Sidebar 240px + vùng nội dung chính | Dashboard, admin panel, app nhiều màn hình |
| **Top Navigation + Grid** | Nav ngang + nội dung dạng cột bên dưới | Marketing, catalog, content tools |
| **Split Panel** | Cột danh sách + cột chi tiết song song | CRM, email/chat, settings |
| **Canvas / Workspace** | Chrome tối giản, toàn màn hình | Design tool, editor, map app |
| **Bottom Tab Bar** | Tab nav cố định phía dưới + full-width pages | App consumer, social, e-commerce |
| **Single Column Flow** | Một hành động mỗi màn hình | Onboarding, checkout, form flow |

Chỉ đề xuất 2 lựa chọn phù hợp nhất. Giải thích ngắn lý do. Hỏi user chọn cái nào.

**Gate**: không chuyển Phase 4 cho đến khi có đủ: theme name + layout pattern.

---

## Output cho Phase 4

Ghi nhận:
- **Chosen theme file**: `references/themes/theme-[name].html`
- **Color override**: màu user yêu cầu, hoặc "none"
- **Layout pattern**: tên pattern đã chọn
- **Device priority**: mobile / desktop
