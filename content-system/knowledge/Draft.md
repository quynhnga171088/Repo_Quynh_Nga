## HIỂU HỆ THỐNG TỪ GÓC NHÌN USER → MAP SANG SYSTEM

Mình không hướng dẫn theo kiểu kỹ thuật như API login hay DB insert — vì nontech sẽ khó hiểu.
Nhiều người đào tạo đi thẳng vào kỹ thuật, đã không có base kỹ thuật mà giảng bằng kỹ thuật thì hiểu làm sao?

→ Cách tiếp cận ở đây: **bắt đầu từ góc nhìn người dùng**, sau đó mới map sang hệ thống.

---

### I. Mục tiêu đào tạo

Sau bài này, bạn sẽ làm được:

- Nhìn 1 website → hiểu nó dùng để làm gì
- Tự xác định: User Type, Function List, Screen List
- Hiểu được sự khác nhau giữa Site User và Site Admin
- Có thể tự phân tích 1 hệ thống mới trong 1–2 ngày

---

### II. Cấu trúc khóa học (5 Phase)

#### PHASE 1 — HIỂU BẰNG TRẢI NGHIỆM (User Thinking)

**Mục tiêu:** Không cần tech, chỉ cần hiểu "website này để làm gì"

**Nội dung dạy:**

**1. Câu hỏi vàng (Golden Question)**

> "User vào đây để làm gì?"

**2. Xác định User Type**

Ví dụ:
- Customer (user thường)
- Admin (quản trị)

**Ví dụ cụ thể:** Tham khảo hệ thống Shopee
- Liệt kê user type
- Viết mục đích của từng user

**Output mẫu:**

Loại hệ thống: EC site (trang thương mại điện tử)
- Customer → mua hàng
- Admin → quản lý sản phẩm

---

#### PHASE 2 — HIỂU BẰNG HÀNH ĐỘNG (Function Thinking)

**Mục tiêu:** Hiểu được Function List là gì

**Nội dung dạy:**

**1. Định nghĩa đơn giản**

> Function = 1 hành động mà user có thể làm trên hệ thống

**2. Ví dụ trực quan**

User có thể: Đăng ký, Đăng nhập, Tìm kiếm, Mua hàng...

**Bài tập:** Từ kết quả Phase 1 → Viết function list

**Output mẫu:**

Function list (Customer):
- Register
- Login
- Search product
- Add to cart
- Checkout

---

#### PHASE 3 — HIỂU BẰNG MÀN HÌNH (Screen Thinking)

**Mục tiêu:** Hiểu được Screen List là gì

**Nội dung dạy:**

**1. Định nghĩa**

> 1 Function → thường đi kèm với 1 Screen (màn hình)

**2. Mapping Function → Screen**

| Function | Screen |
|----------|--------|
| Login | Login screen |
| Search | Search screen |
| Checkout | Payment screen |

**Bài tập:** Convert function list → screen list

**Output mẫu:**

Screen list:
- Login screen
- Home screen
- Product list screen
- Cart screen
- Payment screen

---

#### PHASE 4 — HIỂU CẤU TRÚC HỆ THỐNG (System Structure)

**Mục tiêu:** Hiểu được "Site User / Site Admin / App"

**Nội dung dạy:**

**1. Site User là gì?**
→ Phần giao diện dành cho khách hàng sử dụng

**2. Site Admin là gì?**
→ Phần giao diện dành cho người vận hành / quản trị

**3. App là gì?**
→ Cùng function nhưng chạy trên platform khác (mobile)

**Sơ đồ đơn giản:**

```
System
├── User Site (Customer)
├── Admin Site (Admin)
└── Mobile App (optional)
```

**Bài tập:** Phân loại screen list:
- Screen nào thuộc User Site?
- Screen nào thuộc Admin Site?

---

#### PHASE 5 — USER FLOW (Kết nối tất cả)

**Mục tiêu:** Hiểu "flow" = xương sống của hệ thống

**Nội dung dạy:**

User flow là chuỗi các bước mà user thực hiện để hoàn thành 1 mục tiêu.

**Ví dụ:**

> Register → Login → Search → Add to cart → Checkout

**Bài tập:** Vẽ 1 user flow hoàn chỉnh cho hệ thống bạn đã phân tích

---

### III. TEMPLATE PHÂN TÍCH HỆ THỐNG (Áp dụng thực tế)

Dùng template này để phân tích bất kỳ hệ thống nào:

1. **Overview** — Hệ thống dùng để làm gì?
2. **User Types** — Ai sử dụng? (User, Admin...)
3. **Function List** — Mỗi loại user làm được gì?
4. **Screen List** — Gồm những màn hình nào?
5. **User Flow** — Luồng thao tác chính
6. **Site Structure** — User site, Admin site, App
