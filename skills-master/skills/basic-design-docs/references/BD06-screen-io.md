# Template BD06 — Danh sách I

## Mục đích
Liệt kê chi tiết từng field input/output trên màn hình — kiểu dữ liệu, validation, format hiển thị. Dùng khi màn hình có nhiều field phức tạp mà BD04 không đủ chỗ mô tả chi tiết.

---

## Template

# [BD06] Danh sách I

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Trạng thái | Draft |

---

## SCR-004: Màn hình Thêm

### Input items

| # | Field ID | Tên field | Loại UI | Bắt buộc | Kiểu dữ liệu | Độ dài/Format | Validation | Giá trị mặc định | Placeholder | Ghi chú |
|--- |--------- |--------- |--------- |--------- |------------- |-------------- |----------- |---------------- |------------ |--------- |
| 1 | title | Tiêu đề | Text Input | ○ | String | 1-200 ký tự | Không được rỗng, max 200 | - | Nhập tiêu đề | |
| 2 | description | Mô tả | Textarea | - | String | 0-2000 ký tự | Max 2000 | - | Nhập mô tả (tùy chọn) | |
| 3 | category_id | Danh mục | Dropdown | ○ | Integer | - | Phải chọn từ danh sách | - | Chọn danh mục | Lấy từ API GET /categories |
| 4 | status | Trạng thái | Radio | ○ | Enum | draft/published | Bắt buộc chọn | draft | - | |
| 5 | price | Giá | Number Input | - | Decimal | 0-99999999.99 | Số dương, tối đa 2 chữ số thập phân | - | 0.00 | Đơn vị: VND hoặc JPY |
| 6 | stock_quantity | Tồn kho | Number Input | ○ | Integer | 0-99999 | Số nguyên không âm | 0 | 0 | |
| 7 | tags | Tags | Multi-select | - | Array | 0-10 tags | Max 10 tags | [] | Chọn thẻ | |
| 8 | thumbnail | Ảnh đại diện | File Input | - | File | JPEG/PNG, max 5MB | Format + size | - | - | Preview sau khi upload |

### Output items

| # | Field ID | Tên field | Format hiển thị | Nguồn dữ liệu | Ghi chú |
|--- |--------- |--------- |---------------- |-------------- |--------- |
| 1 | title | Tiêu đề | Text | items.title | |
| 2 | status_badge | Trạng thái | Badge màu: xanh=published, xám=draft | items.status | |
| 3 | category_name | Danh mục | Text | categories.name (JOIN) | |
| 4 | price_formatted | Giá | ¥X,XXX,XXX hoặc VND X,XXX,XXX | items.price | Null → hiển thị "Chưa thiết lập giá" |
| 5 | stock_quantity | Tồn kho | Số nguyên + đơn vị (vd. "X cái") | items.stock_quantity | 0 → highlight đỏ, text "Hết hàng" |
| 6 | created_at | Ngày tạo | YYYY/MM/DD HH:mm | items.created_at | |
| 7 | created_by_name | Người tạo | Tên | users.name (JOIN) | |

### Dropdown

| Field | API | Response format | Cache? |
|------- |----- |---------------- |------- |
| category_id | GET /categories?is_active=1 | `[{id, name}]` | 5 phút |
| tags | GET /tags | `[{id, name}]` | 5 phút |
| status | Static: [{value:'draft',label:'Bản nháp'},{value:'published',label:'Đã xuất bản'}] | - | - |

### Validation error messages

| Field | Điều kiện lỗi | Message |
|------- |------------- |--------- |
| title | Rỗng | Tiêu đề không được để trống |
| title | > 200 ký tự | Tiêu đề tối đa 200 ký tự |
| category_id | Chưa chọn | Vui lòng chọn danh mục |
| price | < 0 | Giá phải là số không âm |
| price | Không phải số | Giá phải là số |
| thumbnail | > 5MB | File phải nhỏ hơn 5MB |
| thumbnail | Không phải JPEG/PNG | Chỉ chấp nhận file JPEG, PNG |

---

## Hướng dẫn sử dụng BD06

1. **Tạo một section riêng cho mỗi màn hình** phức tạp (nhiều field)
2. **Input và Output tách biệt** — input là form fields, output là display mode
3. **Dropdown data sources** — ghi rõ API nào cung cấp data, format, có cache không
4. **Validation messages** — thống nhất ngôn ngữ theo dự án; có thể tham chiếu `terminology-mapping.md` nếu team dùng song ngữ
5. **File upload** — ghi rõ format, size limit, validation
