# Template BD09 — Thiết kế DB

## Mục đích
Định nghĩa toàn bộ cấu trúc dữ liệu của hệ thống: các bảng, cột, quan hệ giữa các bảng, và các ràng buộc dữ liệu. ER diagram là ngôn ngữ chung giữa BA, dev backend, và DBA — không cần giải thích nhiều nếu vẽ đúng.

---

## Template

# [BD09] Thiết kế DB

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Trạng thái | Draft |
| DBMS | MySQL 8.x / PostgreSQL / etc. |
| Encoding | UTF-8 |

## Lịch sử thay đổi

| Phiên bản | Ngày | Người thực hiện | Nội dung thay đổi |
|----------- |------ |----------------- |------------------- |
| 1.0 | YYYY-MM-DD | [Tên] | Tạo mới |

---

## 1. ER Diagram tổng quan

```mermaid
erDiagram
    USERS {
        bigint id PK "Auto increment"
        varchar(100) name "Tên người dùng"
        varchar(255) email UK "Email (unique)"
        varchar(255) password_hash "Mật khẩu đã hash"
        enum role "admin |user |guest"
        boolean is_active "Trạng thái hoạt động"
        int fail_count "Số lần đăng nhập thất bại"
        datetime locked_until "Khóa đến thời điểm"
        datetime last_login_at "Lần đăng nhập cuối"
        datetime created_at
        datetime updated_at
        datetime deleted_at "Soft delete"
    }

    CATEGORIES {
        int id PK
        varchar(100) name "Tên danh mục"
        varchar(255) description "Mô tả"
        int parent_id FK "Danh mục cha (nullable)"
        int sort_order "Thứ tự hiển thị"
        boolean is_active
        datetime created_at
        datetime updated_at
    }

    ITEMS {
        bigint id PK
        varchar(200) title "Tiêu đề"
        text description "Mô tả chi tiết"
        int category_id FK "Danh mục"
        bigint created_by FK "Người tạo"
        bigint updated_by FK "Người cập nhật"
        enum status "draft |published |archived"
        decimal(10_2) price "Giá (nullable)"
        int stock_quantity "Số lượng tồn kho"
        datetime published_at "Ngày xuất bản"
        datetime created_at
        datetime updated_at
        datetime deleted_at
    }

    TAGS {
        int id PK
        varchar(50) name UK "Tên tag (unique)"
        datetime created_at
    }

    ITEM_TAGS {
        bigint item_id FK
        int tag_id FK
    }

    USER_LOGS {
        bigint id PK
        bigint user_id FK "Người thực hiện"
        varchar(50) action "Loại hành động"
        varchar(100) target_type "Đối tượng"
        bigint target_id "ID đối tượng"
        json changes "Dữ liệu thay đổi (before/after)"
        varchar(45) ip_address "IP address"
        datetime created_at
    }

    USERS ||--o{ ITEMS : "tạo"
    USERS ||--o{ USER_LOGS : "thực hiện"
    CATEGORIES ||--o{ ITEMS : "phân loại"
    CATEGORIES ||--o{ CATEGORIES : "cha-con"
    ITEMS }o--o{ TAGS : "gán tag"
    ITEMS ||--o{ ITEM_TAGS : ""
    TAGS ||--o{ ITEM_TAGS : ""
```

> **Chú thích ký hiệu:**
> - ` ||` = Exactly one (bắt buộc có 1)
> - `} |` = One or more (ít nhất 1)
> - ` |o` = Zero or one (0 hoặc 1)
> - `}o` = Zero or more (0 hoặc nhiều)

## 2. ER Diagram theo module

### 2.1. Module xác thực & phân quyền

```mermaid
erDiagram
    USERS {
        bigint id PK
        varchar email UK
        varchar password_hash
        enum role
    }

    ROLES {
        int id PK
        varchar(50) name UK "admin |manager |user"
        varchar description
    }

    PERMISSIONS {
        int id PK
        varchar(100) name UK "items.create |items.delete"
        varchar module
    }

    ROLE_PERMISSIONS {
        int role_id FK
        int permission_id FK
    }

    USER_SESSIONS {
        varchar(64) token PK "Session token (hash)"
        bigint user_id FK
        datetime expires_at
        varchar(45) ip_address
        varchar user_agent
        datetime created_at
    }

    USERS }o-- || ROLES : "có role"
    ROLES ||--o{ ROLE_PERMISSIONS : ""
    PERMISSIONS ||--o{ ROLE_PERMISSIONS : ""
    USERS ||--o{ USER_SESSIONS : "phiên đăng nhập"
```

---

## 3. Quy tắc thiết kế DB

### 3.1. Naming conventions

| Đối tượng | Quy tắc | Ví dụ |
|---------- |--------- |------- |
| Tên bảng | snake_case, số nhiều | `users`, `order_items` |
| Tên cột | snake_case | `created_at`, `user_id` |
| Primary key | `id` (bigint auto increment) | `id` |
| Foreign key | `[table_name_singular]_id` | `user_id`, `category_id` |
| Unique key | Đặt UK constraint | |
| Timestamp | Luôn có `created_at`, `updated_at` | |
| Soft delete | Dùng `deleted_at` (nullable) | |
| Boolean | Prefix `is_` | `is_active`, `is_deleted` |
| Enum | Ghi rõ các giá trị cho phép | `enum('draft','published')` |

### 3.2. Quy ước bảng chung

Mọi bảng chính (entity tables) đều có các cột sau:
- `id` — BIGINT UNSIGNED, AUTO_INCREMENT, PRIMARY KEY
- `created_at` — DATETIME, NOT NULL, DEFAULT CURRENT_TIMESTAMP
- `updated_at` — DATETIME, NOT NULL, DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
- `deleted_at` — DATETIME, NULL (soft delete)

Bảng junction (many-to-many) chỉ cần 2 FK columns.

### 3.3. Danh sách bảng

| ID bảng | Tên bảng | Mô tả | Ghi chú |
|-------- |--------- |------- |--------- |
| T001 | users | Quản lý người dùng | |
| T002 | categories | Danh mục phân loại | Self-referencing |
| T003 | items | Dữ liệu chính | |
| T004 | tags | Nhãn/Tag | |
| T005 | item_tags | Junction table items-tags | M:N |
| T006 | user_logs | Audit log | |

---

## Hướng dẫn vẽ Mermaid erDiagram

### Cú pháp cơ bản
```mermaid
erDiagram
    TABLE_NAME {
        datatype column_name PK "Comment"
        datatype column_name FK "Comment"
        datatype column_name UK "Comment (unique)"
        datatype column_name "Comment"
    }

    TABLE_A ||--o{ TABLE_B : "relationship label"
```

### Quan hệ thường dùng
- ` ||-- ||` One-to-one (1:1)
- ` ||--o{` One-to-many (1:N), bên phải là many (0 hoặc nhiều)
- `}o--o{` Many-to-many (M:N) — thường qua junction table
- ` ||--o |` One-to-one optional (1:0..1)

### Kiểu dữ liệu viết trong erDiagram (mang tính minh họa)
`int`, `bigint`, `varchar(n)`, `text`, `decimal(p,s)`, `datetime`, `date`, `boolean`, `json`, `enum`

**Lưu ý:** Mermaid erDiagram không validate kiểu dữ liệu — viết để mô tả, không phải SQL. Chi tiết SQL schema ghi trong BD10.
