# Template BD10 — Định nghĩa bảng

## Mục đích
Mô tả chi tiết từng cột trong từng bảng — kiểu dữ liệu, ràng buộc, giá trị mặc định, ý nghĩa nghiệp vụ. Dev backend cần tài liệu này để implement DB chính xác. Người review sẽ verify từng cột một.

---

## Template

# [BD10] Định nghĩa bảng

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Trạng thái | Draft |
| DBMS | MySQL 8.x |
| Encoding | utf8mb4 |
| Collation | utf8mb4_unicode_ci |

## Lịch sử thay đổi

| Phiên bản | Ngày | Người thực hiện | Nội dung thay đổi |
|----------- |------ |----------------- |------------------- |
| 1.0 | YYYY-MM-DD | [Tên] | Tạo mới |

---

## Danh sách bảng

| ID | Tên bảng | Mô tả | Ghi chú |
|---- |--------- |------- |--------- |
| T001 | users | Quản lý người dùng hệ thống | |
| T002 | categories | Danh mục phân loại | Self-referencing |
| T003 | items | Dữ liệu đối tượng chính | |
| T004 | tags | Nhãn phân loại | |
| T005 | item_tags | Junction items-tags | |
| T006 | user_logs | Audit log | |

---

## T001: users

**Mô tả:** Lưu trữ thông tin tài khoản và quyền truy cập của người dùng hệ thống.

**Index:**
- PRIMARY: `id`
- UNIQUE: `email`
- INDEX: `role`, `is_active`, `deleted_at`

| # | Tên cột | Kiểu dữ liệu | NULL | Default | Key | Mô tả | Giá trị cho phép |
|--- |-------- |------------- |------ |--------- |----- |------- |----------------- |
| 1 | id | BIGINT UNSIGNED | NO | AUTO_INCREMENT | PK | ID tự tăng | ≥ 1 |
| 2 | name | VARCHAR(100) | NO | - | | Tên hiển thị | Tối đa 100 ký tự |
| 3 | email | VARCHAR(255) | NO | - | UK | Email đăng nhập | Format email hợp lệ, unique |
| 4 | password_hash | VARCHAR(255) | NO | - | | Mật khẩu đã hash bcrypt | bcrypt hash |
| 5 | role | ENUM | NO | 'user' | IDX | Vai trò | 'admin', 'manager', 'user' |
| 6 | is_active | TINYINT(1) | NO | 1 | IDX | Trạng thái kích hoạt | 0=Inactive, 1=Active |
| 7 | fail_count | INT | NO | 0 | | Số lần đăng nhập thất bại liên tiếp | 0–5 |
| 8 | locked_until | DATETIME | YES | NULL | | Tài khoản bị khóa đến thời điểm | NULL=không bị khóa |
| 9 | last_login_at | DATETIME | YES | NULL | | Thời điểm đăng nhập gần nhất | |
| 10 | created_at | DATETIME | NO | CURRENT_TIMESTAMP | | Ngày tạo | |
| 11 | updated_at | DATETIME | NO | CURRENT_TIMESTAMP ON UPDATE | | Ngày cập nhật | |
| 12 | deleted_at | DATETIME | YES | NULL | IDX | Soft delete timestamp | NULL=chưa xóa |

**DDL:**
```sql
CREATE TABLE users (
    id          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name        VARCHAR(100)    NOT NULL,
    email       VARCHAR(255)    NOT NULL,
    password_hash VARCHAR(255)  NOT NULL,
    role        ENUM('admin','manager','user') NOT NULL DEFAULT 'user',
    is_active   TINYINT(1)      NOT NULL DEFAULT 1,
    fail_count  INT             NOT NULL DEFAULT 0,
    locked_until DATETIME       NULL,
    last_login_at DATETIME      NULL,
    created_at  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_at  DATETIME        NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_users_email (email),
    KEY idx_users_role (role),
    KEY idx_users_is_active (is_active),
    KEY idx_users_deleted_at (deleted_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Bảng người dùng';
```

---

## T002: categories

**Mô tả:** Danh mục phân loại theo cấu trúc cây (tự tham chiếu). `parent_id = NULL` là root category.

**Index:**
- PRIMARY: `id`
- INDEX: `parent_id`, `is_active`

| # | Tên cột | Kiểu dữ liệu | NULL | Default | Key | Mô tả | Giá trị cho phép |
|--- |-------- |------------- |------ |--------- |----- |------- |----------------- |
| 1 | id | INT UNSIGNED | NO | AUTO_INCREMENT | PK | ID tự tăng | |
| 2 | name | VARCHAR(100) | NO | - | | Tên danh mục | Tối đa 100 ký tự |
| 3 | description | TEXT | YES | NULL | | Mô tả | |
| 4 | parent_id | INT UNSIGNED | YES | NULL | FK, IDX | ID danh mục cha | NULL=root category |
| 5 | sort_order | INT | NO | 0 | | Thứ tự hiển thị | ≥ 0 |
| 6 | is_active | TINYINT(1) | NO | 1 | IDX | Trạng thái | 0=Ẩn, 1=Hiển thị |
| 7 | created_at | DATETIME | NO | CURRENT_TIMESTAMP | | Ngày tạo | |
| 8 | updated_at | DATETIME | NO | CURRENT_TIMESTAMP ON UPDATE | | Ngày cập nhật | |

---

## T003: items

**Mô tả:** Bảng dữ liệu chính của nghiệp vụ. `[Thay thế tên/mô tả phù hợp với dự án]`

| # | Tên cột | Kiểu dữ liệu | NULL | Default | Key | Mô tả | Giá trị cho phép |
|--- |-------- |------------- |------ |--------- |----- |------- |----------------- |
| 1 | id | BIGINT UNSIGNED | NO | AUTO_INCREMENT | PK | ID tự tăng | |
| 2 | title | VARCHAR(200) | NO | - | | Tiêu đề | Tối đa 200 ký tự |
| 3 | description | TEXT | YES | NULL | | Mô tả chi tiết | |
| 4 | category_id | INT UNSIGNED | NO | - | FK, IDX | ID danh mục | Ref: categories.id |
| 5 | created_by | BIGINT UNSIGNED | NO | - | FK, IDX | ID người tạo | Ref: users.id |
| 6 | updated_by | BIGINT UNSIGNED | YES | NULL | FK | ID người cập nhật | Ref: users.id |
| 7 | status | ENUM | NO | 'draft' | IDX | Trạng thái | 'draft','published','archived' |
| 8 | price | DECIMAL(10,2) | YES | NULL | | Giá (nếu có) | NULL=không áp dụng |
| 9 | stock_quantity | INT | NO | 0 | | Số lượng tồn kho | ≥ 0 |
| 10 | published_at | DATETIME | YES | NULL | | Ngày xuất bản | |
| 11 | created_at | DATETIME | NO | CURRENT_TIMESTAMP | | Ngày tạo | |
| 12 | updated_at | DATETIME | NO | CURRENT_TIMESTAMP ON UPDATE | | Ngày cập nhật | |
| 13 | deleted_at | DATETIME | YES | NULL | IDX | Soft delete | |

**FK Constraints:**
- `fk_items_category`: `category_id` → `categories(id)` ON DELETE RESTRICT
- `fk_items_created_by`: `created_by` → `users(id)` ON DELETE RESTRICT
- `fk_items_updated_by`: `updated_by` → `users(id)` ON DELETE SET NULL

---

## T004: tags

**Mô tả:** Nhãn phân loại dùng để gán vào items theo kiểu nhiều-nhiều.

**Index:**
- PRIMARY: `id`
- UNIQUE: `name`

| # | Tên cột | Kiểu dữ liệu | NULL | Default | Key | Mô tả | Giá trị cho phép |
|--- |-------- |------------- |------ |--------- |----- |------- |----------------- |
| 1 | id | INT UNSIGNED | NO | AUTO_INCREMENT | PK | ID tự tăng | ≥ 1 |
| 2 | name | VARCHAR(50) | NO | - | UK | Tên nhãn | Tối đa 50 ký tự, unique |
| 3 | slug | VARCHAR(50) | NO | - | UK | Slug URL-friendly | Lowercase, hyphens only |
| 4 | created_at | DATETIME | NO | CURRENT_TIMESTAMP | | Ngày tạo | |

**DDL:**
```sql
CREATE TABLE tags (
    id         INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    name       VARCHAR(50)     NOT NULL,
    slug       VARCHAR(50)     NOT NULL,
    created_at DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY uk_tags_name (name),
    UNIQUE KEY uk_tags_slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
  COMMENT='Bảng nhãn phân loại';
```

---

## T005: item_tags

**Mô tả:** Bảng junction cho quan hệ nhiều-nhiều giữa items và tags.

| # | Tên cột | Kiểu dữ liệu | NULL | Default | Key | Mô tả |
|--- |-------- |------------- |------ |--------- |----- |------- |
| 1 | item_id | BIGINT UNSIGNED | NO | - | PK, FK | Ref: items.id |
| 2 | tag_id | INT UNSIGNED | NO | - | PK, FK | Ref: tags.id |

**PRIMARY KEY:** `(item_id, tag_id)` — composite key

---

## Hướng dẫn điền template BD10

1. **Mỗi bảng một section** — đặt tên section = `T[ID]: [table_name]`
2. **Ghi rõ FK references** — không chỉ ghi "FK" mà ghi luôn "Ref: table.column"
3. **ENUM values** — liệt kê hết tất cả giá trị cho phép trong cột "Giá trị cho phép"
4. **DDL SQL** — nên include DDL để dev copy-paste chính xác, tránh hiểu nhầm
5. **Index quan trọng** — ghi rõ Index trên cột nào, loại gì (UNIQUE, IDX, composite)
6. **Soft delete** — mọi bảng chính đều nên có `deleted_at` thay vì xóa thật
7. **Comment cho bảng** — đặt comment rõ nghĩa nghiệp vụ trong DDL (thường tiếng Việt hoặc tiếng Anh)
