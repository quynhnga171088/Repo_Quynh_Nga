# Template BD04 — Thiết kế màn hình

## Mục đích
Định nghĩa giao diện người dùng đủ chi tiết để: (1) khách hàng Nhật xác nhận trước khi dev, (2) dev implement đúng, (3) QA có thể viết test case. Đây là tài liệu review nhiều nhất với khách hàng, nên cần rõ ràng và có wireframe hoặc mô tả bố cục chi tiết.

---

## Template

# [BD04] Thiết kế màn hình

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Trạng thái | Draft |

## Lịch sử thay đổi

| Phiên bản | Ngày | Người thực hiện | Nội dung thay đổi |
|----------- |------ |----------------- |------------------- |
| 1.0 | YYYY-MM-DD | [Tên] | Tạo mới |

---

## Danh sách màn hình

| ID màn hình | Tên màn hình | URL / Route | Quyền truy cập | Chức năng liên quan |
|------------ |------------- |------------- |--------------- |------------------- |
| SCR-001 | Màn hình đăng nhập | /login | Guest | F01-01 |
| SCR-002 | Trang chủ | /home | User, Admin | F02-01 |
| SCR-003 | Danh sách [tên] | /items | User, Admin | F03-01 |
| SCR-004 | Thêm/Sửa [tên] | /items/new, /items/:id/edit | Admin | F03-02, F03-03 |
| SCR-005 | Chi tiết [tên] | /items/:id | User, Admin | F03-04 |

---

## Thiết kế chi tiết từng màn hình

### SCR-001: Màn hình đăng nhập

#### Thông tin chung

| Mục | Nội dung |
|----- |--------- |
| ID màn hình | SCR-001 |
| Tên màn hình | Màn hình đăng nhập |
| URL / Route | /login |
| HTTP Method | POST /api/auth/login |
| Quyền truy cập | Guest (chưa đăng nhập) |
| Màn hình trước | - (Entry point) |
| Màn hình sau | SCR-002 (Trang chủ) khi đăng nhập thành công |

#### Bố cục màn hình

```
+------------------------------------------+
|           [Logo hệ thống]                 |
|                                            |
|        Đăng nhập hệ thống                 |
|                                            |
|  Email *                                  |
|  [___________________________________]    |
|                                            |
|  Mật khẩu *                               |
|  [___________________________________]    |
|                                            |
|  [           Đăng nhập            ]       |
|                                            |
|  Quên mật khẩu?                           |
+------------------------------------------+
```

#### Danh sách thành phần UI

| ID | Thành phần | Loại | Bắt buộc | Giá trị mặc định | Ghi chú |
|---- |----------- |------ |--------- |----------------- |--------- |
| UI-001-01 | Email | Text Input | ○ | - | Max 255 ký tự, validate email format |
| UI-001-02 | Mật khẩu | Password Input | ○ | - | Ẩn ký tự, max 50 ký tự |
| UI-001-03 | Nút Đăng nhập | Button (Primary) | - | - | Kích hoạt submit form |
| UI-001-04 | Link Quên mật khẩu | Link | - | - | Dẫn đến SCR-006 (Quên mật khẩu) |

#### Hành vi màn hình

| Sự kiện | Điều kiện | Hành vi |
|--------- |---------- |--------- |
| Click "Đăng nhập" | Form hợp lệ | Gọi API POST /api/auth/login |
| Click "Đăng nhập" | Form không hợp lệ | Hiển thị lỗi validation inline |
| Đăng nhập thành công | - | Redirect đến SCR-002 |
| Đăng nhập thất bại | - | Hiển thị error message phía trên form |
| Tài khoản bị khóa | - | Hiển thị thông báo khóa và thời gian mở khóa |
| Nhấn Enter | - | Trigger submit như click nút |

#### Thông báo

| ID thông báo | Loại | Nội dung | Khi nào hiển thị |
|------------- |------ |--------- |----------------- |
| MSG-001-01 | Error | Email không được để trống | Email rỗng |
| MSG-001-02 | Error | Email không đúng định dạng | Email sai format |
| MSG-001-03 | Error | Mật khẩu không được để trống | Password rỗng |
| MSG-001-04 | Error | Email hoặc mật khẩu không đúng | Auth fail |
| MSG-001-05 | Error | Tài khoản bị khóa. Thử lại sau [N] phút | Account locked |

---

### SCR-003: Màn hình danh sách [Tên]

#### Thông tin chung

| Mục | Nội dung |
|----- |--------- |
| ID màn hình | SCR-003 |
| Tên màn hình | Danh sách [Tên] |
| URL / Route | /items?page=1&limit=20&keyword=&status= |
| Quyền truy cập | User, Admin |

#### Bố cục màn hình

```
+--------------------------------------------------+
| [Header / Điều hướng]                             |
+--------------------------------------------------+
| Danh sách [Tên]                                   |
|                                                    |
| [Tìm kiếm]                                        |
| Từ khóa: [____________] Trạng thái: [▼] [Tìm]    |
|                                                    |
| Tổng: 100 kết quả  [+ Thêm mới]                   |
|                                                    |
| +---+--------+--------+----------+----------+---+ |
| | # | Tên    | Trạng  | Ngày tạo | Cập nhật | ∙ | |
| |   |        | thái   |          |          |   | |
| +---+--------+--------+----------+----------+---+ |
| | 1 | Item A | Active | 2024-01  | 2024-02  |⊞⊟ | |
| | 2 | Item B | Inactive | 2024-01 | 2024-01  |⊞⊟ | |
| +---+--------+--------+----------+----------+---+ |
|                                                    |
| [< Prev]  1 2 3 ... 10  [Next >]                  |
+--------------------------------------------------+
```

#### Điều kiện tìm kiếm

| Field | Tên | Loại | Giá trị | Ghi chú |
|------- |----- |------ |--------- |--------- |
| keyword | Từ khóa | Text Input | Tùy ý | Tìm theo tên, LIKE %keyword% |
| status | Trạng thái | Dropdown | All / Active / Inactive | Mặc định: All |
| page | Trang | Hidden | Số nguyên | Mặc định: 1 |
| limit | Số kết quả/trang | Hidden | 20 | Cố định 20 |

#### Cột hiển thị trong bảng

| STT | Tên cột | Nguồn dữ liệu | Có thể sort? | Ghi chú |
|----- |-------- |-------------- |------------- |--------- |
| 1 | # | Auto-increment | - | |
| 2 | Tên | name | ○ | |
| 3 | Trạng thái | status | ○ | Badge màu: xanh=Active, xám=Inactive |
| 4 | Ngày tạo | created_at | ○ | Format: YYYY/MM/DD |
| 5 | Cập nhật | updated_at | ○ | Format: YYYY/MM/DD |
| 6 | Hành động | - | - | Icon Edit, Delete |

#### Hành vi

| Sự kiện | Hành vi |
|--------- |--------- |
| Click tên item | Chuyển đến SCR-005 (Chi tiết) |
| Click icon Edit | Chuyển đến SCR-004 (Chỉnh sửa) |
| Click icon Delete | Hiển thị confirm dialog → gọi API DELETE |
| Click "Thêm mới" | Chuyển đến SCR-004 (Thêm mới) |
| Click tiêu đề cột | Sort theo cột đó (asc/desc) |
| Click phân trang | Load trang tương ứng |

---

## Hướng dẫn điền template BD04

1. **Tạo danh sách màn hình trước** — list hết tất cả màn hình trước khi đi vào chi tiết
2. **Bố cục ASCII art** — dùng ký tự ASCII để phác thảo wireframe, giúp reviewer hình dung ngay
3. **UI components table** — liệt kê đầy đủ từng element, type, required, default value
4. **Behavior table** — mô tả từng sự kiện người dùng → phản ứng hệ thống
5. **Message table** — liệt kê tất cả message có thể hiển thị (theo ngôn ngữ giao tiếp dự án)
6. **Mọi màn hình đều cần:** Thông tin chung + Bố cục + UI components + Behavior + Messages
