# Checklist: Lấy style từ LP / trang tham khảo (không bao gồm content)

Mục tiêu: thu thập đủ thông tin **visual & layout system** để tái tạo hoặc làm LP mới với **nội dung do bạn tự viết**.

---

## 0. Chuẩn bị

- [ ] Lưu **URL chính xác** (production, không bản nháp nếu khác style).
- [ ] Ghi **ngày chụp** (LP đổi style theo thời gian / A-B test).
- [ ] Chụp **full-page** ở ít nhất **2 breakpoint**: desktop (~1440px) và mobile (~390px).
- [ ] Nếu có **dark mode**: chụp thêm bản dark (nếu LP có toggle).

---

## 1. Design tokens — màu

- [ ] **Màu nền** chính (body), nền section xen kẽ (nếu có).
- [ ] **Màu chữ** chính / phụ / muted / on-primary (chữ trên nền CTA).
- [ ] **Màu brand** (primary, secondary, accent) — ghi hex hoặc token name.
- [ ] **Border / divider** (màu + độ trong suốt nếu có).
- [ ] **Gradient** (nếu có): điểm dừng màu, góc / radial.
- [ ] **Semantic** (success/warning/error) nếu LP dùng cho form / alert.

---

## 2. Typography

- [ ] **Font family** heading / body / mono (nếu có).
- [ ] **Scale**: H1→H6 (cỡ chữ, line-height, letter-spacing, font-weight).
- [ ] **Body**: cỡ mặc định, đoạn lead (intro lớn hơn), caption / nhỏ.
- [ ] **Link**: màu, underline, hover.
- [ ] **Uppercase / tracking** cho label, badge, nút.

---

## 3. Spacing & layout

- [ ] **Max width** container nội dung (vd. 1200px, 1280px).
- [ ] **Padding** section (trên/dưới) — so sánh vài section để thấy nhịp lặp.
- [ ] **Grid / cột**: 12 cột, 2 cột hero, gap giữa cột.
- [ ] **Alignment**: trái / giữa cho hero, card grid căn chỉnh thế nào.
- [ ] **Breakpoint** đáng chú ý: khi nào chuyển 2 cột → 1 cột, khi nào ẩn nav.

---

## 4. Hình ảnh & media (chỉ phong cách, không cần copy text)

- [ ] **Tỉ lệ** ảnh hero / card (16:9, 4:3, vuông).
- [ ] **Bo góc** ảnh (radius), viền, shadow.
- [ ] **Overlay** trên ảnh (gradient tối + chữ sáng).
- [ ] **Video/embed**: có viền, radius, autoplay pattern không.

---

## 5. Component — nút & CTA (style only)

- [ ] **Primary button**: nền, viền, radius, padding, font-weight, shadow.
- [ ] **Secondary / ghost / text link** — trạng thái hover / focus (nếu lấy được).
- [ ] **Kích thước** (sm/md/lg) nếu có nhiều loại.

---

## 6. Component — thẻ, khối, testimonial (khung)

- [ ] **Card**: nền, viền, radius, shadow, padding nội bộ.
- [ ] **Badge / tag** (nếu có): hình dạng, màu nền, chữ.
- [ ] **Quote / logo wall**: khoảng cách, đơn sắc hay màu.

---

## 7. Component — form (appearance)

- [ ] **Input**: height, radius, border, focus ring.
- [ ] **Label** phía trên hay trong field (floating).
- [ ] **Spacing** giữa các field.

---

## 8. Header & footer

- [ ] **Header**: cố định (sticky) hay cuộn theo; nền trong suốt → đục khi scroll?
- [ ] **Logo** vùng an toàn, chiều cao header.
- [ ] **Footer**: số cột, đường kẻ phân tách, màu nền khác body?

---

## 9. Hiệu ứng & chiều sâu

- [ ] **Shadow** (card, nút, dropdown).
- [ ] **Blur / glass** (backdrop-filter) — ghi mức blur + opacity nền nếu đo được.
- [ ] **Border** mảnh / hairline, gradient border.
- [ ] **Motion** (nếu quan trọng cho brand): hover lift, fade — ghi mức độ (nhẹ / nặng), không cần clone pixel-perfect animation.

---

## 10. Icon & minh họa

- [ ] **Bộ icon**: stroke vs fill, độ dày nét, kích thước chuẩn.
- [ ] **Minh họa**: phẳng / 3D / line art — ghi mood (tech, friendly, luxury).

---

## 11. Xuất tài liệu cho bước tiếp (bạn tự viết content)

- [ ] Gom token vào **một file** (Markdown / JSON / CSS variables) trong project Cowork hoặc design handoff.
- [ ] Kèm **2–4 screenshot** chú thích: “hero spacing”, “card system”, “typography hierarchy”.
- [ ] Ghi **giới hạn**: những gì **không** cần giống LP gốc (vd. chỉ lấy màu + type, bỏ glass vì nặng).

---

## Gợi ý công cụ (chọn phù hợp)

- Extension / tool **extract design system** từ trình duyệt (màu, type, spacing).
- DevTools → **Computed** cho 1 nút + 1 card + 1 heading mẫu.
- Nếu có file nguồn: export từ **Figma** (variables / styles).

---

*Phần content (headline, body, offer, FAQ…) bạn chủ động viết sau — checklist này chỉ đảm bảo **khung visual** đủ để build hoặc prompt AI build HTML/CSS nhất quán.*
