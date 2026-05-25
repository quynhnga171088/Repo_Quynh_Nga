# Template BD08 — Thiết kế báo cáo

## Mục đích
Định nghĩa bố cục và nội dung của các báo cáo, tài liệu được in ấn hoặc xuất file (PDF, Excel). Dùng khi hệ thống có chức năng xuất hóa đơn, phiếu giao hàng, báo cáo tổng hợp.

---

## Template

# [BD08] Thiết kế báo cáo

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Trạng thái | Draft |

---

## Danh sách báo cáo

| ID | Tên báo cáo | Format xuất | Trigger | Ghi chú |
|---- |------------ |------------ |--------- |--------- |
| RPT-001 | Báo cáo doanh thu hàng ngày | PDF, Excel | Manual / Batch | |
| RPT-002 | Hóa đơn | PDF | Manual | Cho từng đơn hàng |
| RPT-003 | Danh sách xuất hàng | Excel | Manual | |

---

## RPT-001: Báo cáo doanh thu hàng ngày

### Thông tin chung

| Mục | Nội dung |
|----- |--------- |
| ID | RPT-001 |
| Tên | Báo cáo doanh thu hàng ngày |
| Format | PDF (A4, landscape) và Excel (.xlsx) |
| Encoding | UTF-8 |
| Điều kiện tạo | Nhập ngày → Click "Xuất báo cáo" |
| Dữ liệu nguồn | orders, order_items, users |

### Bố cục báo cáo

```
+----------------------------------------------------------+
| LOGO                      BÁO CÁO DOANH THU              |
|                           Ngày: YYYY/MM/DD                |
+----------------------------------------------------------+
| Người tạo: [Tên]          Ngày xuất: YYYY/MM/DD HH:mm    |
+----------------------------------------------------------+
| TÓM TẮT                                                   |
| Tổng đơn hàng: XXX đơn   Tổng doanh thu: ¥X,XXX,XXX     |
| Đơn hoàn thành: XXX       Đơn hủy: XXX                   |
+----------------------------------------------------------+
| CHI TIẾT                                                  |
| # | Mã đơn | Khách hàng | Sản phẩm | Số lượng | Thành tiền |
|--- |-------- |----------- |--------- |--------- |---------- |
| 1 | ORD-001 | ABC Corp   | Item A  | 10      | ¥50,000  |
| 2 | ORD-002 | XYZ Ltd    | Item B  | 5       | ¥25,000  |
+----------------------------------------------------------+
| TỔNG CỘNG:                                         ¥75,000 |
+----------------------------------------------------------+
| Trang 1/N                                                 |
+----------------------------------------------------------+
```

### Nội dung từng phần

**Header:**
| Field | Nguồn dữ liệu | Format |
|------- |------------- |-------- |
| Logo | Static file | PNG |
| Tiêu đề | Static | "BÁO CÁO DOANH THU" |
| Ngày báo cáo | Input parameter | YYYY/MM/DD |
| Người tạo | Current user | users.name |
| Ngày xuất | System date | YYYY/MM/DD HH:mm |

**Summary section:**
| Field | Nguồn dữ liệu | Format |
|------- |------------- |-------- |
| Tổng đơn hàng | COUNT(orders) | X,XXX |
| Tổng doanh thu | SUM(order_items.total) | ¥X,XXX,XXX |
| Đơn hoàn thành | COUNT WHERE status='completed' | X,XXX |
| Đơn hủy | COUNT WHERE status='cancelled' | X,XXX |

**Detail table columns:**
| # | Tên cột | Nguồn dữ liệu | Format | Căn lề |
|--- |-------- |------------- |-------- |------- |
| 1 | STT | Auto-increment | X | Center |
| 2 | Mã đơn | orders.order_no | ORD-XXXXX | Left |
| 3 | Khách hàng | users.name | Text | Left |
| 4 | Tên sản phẩm | items.title | Text (max 50 char) | Left |
| 5 | Số lượng | order_items.quantity | X,XXX | Right |
| 6 | Đơn giá | order_items.unit_price | ¥X,XXX,XXX | Right |
| 7 | Thành tiền | order_items.total | ¥X,XXX,XXX | Right |

**Footer:**
- Tổng cộng: SUM của cột Thành tiền, format `¥X,XXX,XXX`
- Số trang: "Trang N/M"

### Sorting & Filtering

| Mục | Giá trị |
|----- |--------- |
| Sort | orders.created_at ASC |
| Filter | created_at >= start_date AND created_at < end_date + 1 day |
| Status filter | Bao gồm: completed, cancelled (không bao gồm: draft, processing) |

---

## Hướng dẫn sử dụng BD08

1. **ASCII layout** là cách nhanh nhất để mô tả bố cục báo cáo trong tài liệu
2. **Nguồn dữ liệu từng field** — ghi rõ table.column để dev biết query gì
3. **Format hiển thị** — số tiền (¥ hoặc VND), ngày (YYYY/MM/DD), căn lề
4. **Pagination** — báo cáo dài cần xử lý page break, footer số trang
5. **Đa ngôn ngữ** — nếu báo cáo cần hiển thị theo locale, ghi rõ bản dịch tiêu đề/cột trong tài liệu hoặc file resource
