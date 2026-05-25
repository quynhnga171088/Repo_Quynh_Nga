---
name: basic-design-docs
description: Tạo tài liệu thiết kế phần mềm cho dự án outsource: SRS (IEEE 830) và Basic Design BD01-BD17. Sau khi viết xong, tự động spawn subagent review nội dung, cross-check nhất quán giữa các tài liệu liên quan (BD03↔BD04↔BD05, BD09↔BD10...), và đề xuất sửa cho user trước khi commit. Mặc định bắt đầu bằng SRS. Trigger: SRS, BD01-BD17, tài liệu thiết kế, basic design, screen design, DB design, API design, tài liệu dự án, review tài liệu, kiểm tra nhất quán tài liệu.
---

# Basic Design Documentation Skill

Skill này giúp tạo các tài liệu thiết kế phần mềm theo chuẩn Nhật Bản cho dự án outsource. Tài liệu được viết bằng tiếng Việt (để team nội bộ dễ làm việc), kèm mapping thuật ngữ để dịch chính xác sang tiếng Nhật.

## Nguyên tắc viết tài liệu

**Tại sao cần nguyên tắc này:** Khách hàng Nhật rất coi trọng tính chính xác, nhất quán và truy xuất nguồn gốc. Tài liệu tốt = ít revision = tiết kiệm chi phí và thời gian cho cả hai bên.

1. **Tính nhất quán:** Dùng cùng thuật ngữ xuyên suốt tất cả tài liệu. Tham khảo `references/terminology-mapping.md`
2. **Mermaid cho UML:** Dùng Mermaid diagram thay vì mô tả text khi có thể - dễ review, dễ update, dễ version control
3. **Traceability:** Mỗi requirement phải có ID, mỗi design phải trace về requirement
4. **Review-ready:** Cấu trúc rõ ràng để reviewer Nhật có thể check từng mục dễ dàng
5. **Ngôn ngữ:** Viết nội dung theo ngôn ngữ user yêu cầu; giữ nguyên thuật ngữ kỹ thuật và tên cột/field bằng tiếng Anh; heading dùng một ngôn ngữ duy nhất (hỏi user nếu chưa rõ)

## Mặc định: viết SRS trước

Nếu user yêu cầu "tạo tài liệu dự án" hoặc không chỉ định loại tài liệu cụ thể, **luôn bắt đầu bằng SRS** (Software Requirements Specification theo chuẩn IEEE 830). SRS là nền tảng để viết tất cả tài liệu BD01–BD17 sau này.

## Quy trình tạo tài liệu

**QUAN TRỌNG: Làm rõ yêu cầu TRƯỚC khi viết.** Hỏi từng câu một, chờ trả lời rồi mới hỏi tiếp — không hỏi nhiều câu cùng lúc.

1. **Xác định loại tài liệu** — nếu user không nói rõ, đề xuất bắt đầu bằng SRS
2. **Làm rõ yêu cầu** — hỏi tuần tự (xem thứ tự hỏi trong reference file tương ứng) cho đến khi đủ thông tin
3. **Tóm tắt & xác nhận** — trình bày lại những gì sẽ viết, hỏi user "Bạn có muốn thêm/sửa gì trước khi tôi viết không?"
4. **Tạo tài liệu theo template** — đọc reference file tương ứng
5. **Thêm Mermaid diagrams** phù hợp với loại tài liệu
6. **Review sau khi viết** — xem quy trình review bên dưới
7. **Commit sau mỗi tài liệu** — xem quy tắc commit bên dưới

## Review sau khi viết tài liệu

Sau khi hoàn thành một tài liệu, **luôn thực hiện review tự động** trước khi commit. Quy trình gồm 3 bước:

### Bước 1 — Review nội dung tài liệu vừa viết

Spawn subagent đọc tài liệu vừa tạo và đối chiếu với review rules (xem phần **Review rules** bên dưới). Subagent cần:
- Kiểm tra theo checklist tổng quát (BD16 section 1)
- Kiểm tra theo checklist đặc thù của loại tài liệu (BD16 section 2)
- Liệt kê vấn đề tìm thấy theo format: `[Mức độ] Mục X.Y: mô tả vấn đề → gợi ý sửa`

### Bước 2 — Review chéo với tài liệu liên quan

Đọc các tài liệu đã tồn tại trong dự án và kiểm tra tính nhất quán theo bảng phụ thuộc sau:

| Tài liệu vừa viết | Cần cross-check với |
|---|---|
| SRS | — (tài liệu gốc, các BD phải trace về đây) |
| BD01 | SRS (scope & components), BD02 nếu có |
| BD02 | SRS (architecture phải reflect requirements), BD01 (layer diagram phải nhất quán với system diagram) |
| BD03 | SRS (function IDs phải trace về requirements), BD01 |
| BD04 | BD03 (mỗi màn hình phải trace về function), BD05 (màn hình phải có trong transition diagram) |
| BD05 | BD03, BD04 (tất cả màn hình trong BD04 phải xuất hiện trong sơ đồ) |
| BD06 | BD04 (field list phải khớp với UI description), BD03 (validation rules phải nhất quán) |
| BD07 | BD04 (action phải khớp button/event trên màn hình), BD03 (luồng xử lý) |
| BD08 | BD03 (chức năng in ấn phải được liệt kê trong function list) |
| BD09 | BD03 (entity phải đủ để support tất cả function) — BD10 chưa tồn tại ở bước này, kiểm tra BD09↔BD10 sau khi viết BD10 |
| BD10 | BD09 (mọi bảng trong BD10 phải có trong ER và ngược lại — kiểm tra hai chiều), BD11 |
| BD11 | BD03 (tất cả function phải có trong CRUD), BD10 (tất cả bảng phải có) |
| BD12 | BD03 (API endpoint phải trace về function), BD01 (external system phải xuất hiện trong architecture) |
| BD13 | BD03 (batch phải được liệt kê trong function list), BD12 nếu batch gọi API |
| BD14 | SRS (NFR phải được derive từ SRS section 5/6) |
| BD15 | BD14, BD12 (security requirements phải cover API endpoints) |

Các điểm cần kiểm tra khi cross-check:
- **ID consistency:** Function ID, Screen ID, Table name dùng cùng tên xuyên suốt
- **Scope consistency:** Danh sách chức năng/màn hình/bảng không bị thừa/thiếu so với tài liệu liên quan
- **Traceability:** Tài liệu cấp dưới có reference về tài liệu cấp trên (ví dụ BD04 dẫn về BD03 function ID)

### Bước 3 — Trình bày kết quả review cho user

Trình bày kết quả theo format sau — **không tự ý sửa, chờ user xác nhận**:

```
## Kết quả review: [BD-ID] [Tên tài liệu]

### A. Vấn đề trong tài liệu vừa viết
| # | Mức độ | Mục | Vấn đề | Gợi ý sửa |
|---|--------|-----|--------|-----------|
| 1 | Critical | ... | ... | ... |
| 2 | Major | ... | ... | ... |
| 3 | Minor | ... | ... | ... |

### B. Không nhất quán với tài liệu liên quan
| # | Tài liệu | Mục | Mâu thuẫn | Cần sửa ở đâu |
|---|----------|-----|-----------|----------------|
| 4 | BD03 / F02-01 | ... | BD04 dùng "user_id" nhưng BD03 dùng "userId" | Thống nhất một cách viết |

### C. Gợi ý cải thiện (không bắt buộc)
- ...

Bạn muốn tôi sửa theo gợi ý nào? (nhập số thứ tự hoặc "sửa tất cả Critical", "bỏ qua Minor")
```

Sau khi user phản hồi, sửa theo đúng lệnh của user rồi mới commit.

---

## Review rules

Các tiêu chí này áp dụng khi review bất kỳ tài liệu nào. Đọc `references/BD16-review-sheet.md` để biết checklist đầy đủ.

### Tiêu chí chung (áp dụng mọi tài liệu)

| # | Tiêu chí | Mức độ khi vi phạm |
|---|---|---|
| R-G01 | Header tài liệu đầy đủ (ID, tên, phiên bản, ngày, người tạo, trạng thái) | Major |
| R-G02 | Bảng lịch sử thay đổi tồn tại và được điền | Major |
| R-G03 | Thuật ngữ nhất quán theo `terminology-mapping.md` | Major |
| R-G04 | Tên field/cột/biến dùng tiếng Anh nhất quán (không lẫn lộn snake_case / camelCase) | Major |
| R-G05 | Mọi diagram đều có chú thích tiếng Việt bên dưới | Minor |
| R-G06 | Tham chiếu đến tài liệu/ID khác còn tồn tại và chính xác | Critical |
| R-G07 | Không có thông tin mâu thuẫn với tài liệu cấp trên (SRS → BD) | Critical |
| R-G08 | Mọi requirement/function đều có ID duy nhất, không trùng | Critical |

### Tiêu chí theo loại tài liệu

**SRS:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-SRS01 | FR ID theo format `F-[MODULE]-[NN]` (ví dụ: `F-AUTH-01`); NFR ID theo format `NFR-[CAT]-[NN]` (ví dụ: `NFR-PERF-01`) | Critical |
| R-SRS02 | Phân biệt rõ Functional / Non-functional requirement | Major |
| R-SRS03 | Use case có actor, precondition, main flow, alternate flow | Major |
| R-SRS04 | NFR có metric đo lường cụ thể (không dùng "nhanh", "bảo mật") | Critical |
| R-SRS05 | Mọi assumption/constraint được liệt kê tường minh | Minor |

**BD01 — Sơ đồ cấu trúc hệ thống:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD01-01 | Tất cả server/component được liệt kê | Critical |
| R-BD01-02 | Protocol và port ghi rõ trên mỗi kết nối | Major |
| R-BD01-03 | Phân biệt môi trường DEV / STG / PRD | Major |
| R-BD01-04 | External system được đánh dấu riêng biệt | Major |

**BD03 — Danh sách & thiết kế chức năng:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD03-01 | Tất cả function có ID theo format F[module]-[số] | Critical |
| R-BD03-02 | Flowchart bao gồm cả error path (không chỉ happy path) | Major |
| R-BD03-03 | Validation rules liệt kê thành bảng, không dùng prose | Major |
| R-BD03-04 | Permission/role cho mỗi chức năng được xác định | Major |
| R-BD03-05 | Mỗi function có link đến Screen ID (BD04) tương ứng | Minor |

**BD04 — Thiết kế màn hình:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD04-01 | Mỗi màn hình có ID theo format SCR-NNN | Critical |
| R-BD04-02 | Bố cục màn hình mô tả đủ (layout, vùng chức năng) | Major |
| R-BD04-03 | Tất cả UI element (button, input, label) được liệt kê | Major |
| R-BD04-04 | Error message đủ theo spec ngôn ngữ đã thống nhất | Major |
| R-BD04-05 | Màn hình trước/sau (navigation) được xác định | Minor |
| R-BD04-06 | Mỗi màn hình trace về function ID trong BD03 | Critical |

**BD05 — Sơ đồ chuyển màn hình:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD05-01 | Tất cả màn hình trong BD04 xuất hiện trong sơ đồ | Critical |
| R-BD05-02 | Điều kiện chuyển màn hình ghi rõ trên mỗi transition | Major |
| R-BD05-03 | Entry point (màn hình đầu tiên) được đánh dấu | Minor |

**BD09 — Thiết kế DB / ER:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD09-01 | ER diagram và BD10 nhất quán hai chiều: mọi entity trong ER phải có định nghĩa bảng trong BD10 và ngược lại | Critical |
| R-BD09-02 | Kiểu dữ liệu và constraint đầy đủ | Critical |
| R-BD09-03 | FK relationship chính xác và có label cardinality | Major |
| R-BD09-04 | Index được đặt hợp lý (PK, FK, các cột search thường dùng) | Major |

**BD10 — Định nghĩa bảng:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD10-01 | Mỗi cột có: tên, kiểu dữ liệu, NULL/NOT NULL, constraint, mô tả | Critical |
| R-BD10-02 | PK, FK được ghi rõ | Critical |
| R-BD10-03 | Tên bảng và cột nhất quán với ER diagram (BD09) | Critical |
| R-BD10-04 | Index được định nghĩa thành mục riêng | Minor |

**BD12 — Thiết kế I/F (API):**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD12-01 | Mỗi endpoint có: method, path, request/response schema | Critical |
| R-BD12-02 | HTTP status code cho tất cả trường hợp (200, 400, 401, 500) | Major |
| R-BD12-03 | Authentication method được ghi rõ | Major |
| R-BD12-04 | API trace về function ID trong BD03 | Minor |

**BD02 — Tài liệu kiến trúc:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD02-01 | Architecture layers (Presentation/Application/Domain/Infrastructure) được phân tách rõ | Major |
| R-BD02-02 | Mỗi component có mô tả vai trò và technology stack | Major |
| R-BD02-03 | Lý do chọn kiến trúc (ADR) được ghi lại tối thiểu ở mức bullet point | Minor |

**BD06 — Danh sách I/O màn hình:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD06-01 | Mỗi field có: tên, loại (input/output/hidden), kiểu dữ liệu, bắt buộc/không | Critical |
| R-BD06-02 | Validation rule cho mỗi input field được ghi đầy đủ | Major |
| R-BD06-03 | Tên field nhất quán với tên cột trong BD10 (snake_case) | Major |

**BD07 — Định nghĩa action màn hình:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD07-01 | Mỗi action có: trigger event, precondition, hành vi hệ thống, kết quả | Critical |
| R-BD07-02 | Action ID nhất quán với UI element ID trong BD04 (ví dụ: UI-001-03) | Major |

**BD08 — Thiết kế báo cáo:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD08-01 | Mỗi báo cáo có: layout mẫu, nguồn dữ liệu, điều kiện lọc, format xuất | Critical |
| R-BD08-02 | Tên field trong báo cáo nhất quán với tên cột trong BD10 | Major |

**BD11 — Biểu đồ CRUD:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD11-01 | Tất cả function trong BD03 và tất cả bảng trong BD10 đều có trong ma trận | Critical |
| R-BD11-02 | Mỗi ô CRUD ghi rõ operation (C/R/U/D) hoặc để trống nếu không liên quan — không để không rõ ràng | Major |

**BD13 — Thiết kế batch:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD13-01 | Mỗi batch có: lịch chạy (cron), input/output, điều kiện kết thúc, retry logic | Critical |
| R-BD13-02 | Batch trace về function ID trong BD03 | Minor |

**BD14 — Yêu cầu phi chức năng:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD14-01 | Mỗi NFR có metric đo lường cụ thể (số, %, thời gian) | Critical |
| R-BD14-02 | Môi trường áp dụng được ghi rõ (PRD / STG) | Major |
| R-BD14-03 | NFR trace về SRS requirements | Minor |

**BD15 — Thiết kế bảo mật:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD15-01 | Mỗi API endpoint (BD12) đều có security requirement tương ứng | Critical |
| R-BD15-02 | Authentication và authorization mechanism được mô tả rõ | Critical |
| R-BD15-03 | Data classification (PII, dữ liệu nhạy cảm) được xác định | Major |

**BD17 — Bảng quản lý vấn đề:**
| # | Tiêu chí | Mức độ |
|---|---|---|
| R-BD17-01 | Mỗi issue có: ID, mô tả, người phụ trách, deadline, trạng thái | Critical |
| R-BD17-02 | Issue ID không bị trùng và tăng dần | Critical |

---

## Danh sách tài liệu và khi nào cần

### Khởi đầu dự án (Viết trước tất cả)

| ID | Tên tài liệu | Khi nào cần |
|----|-------------|-------------|
| SRS | Software Requirements Specification (IEEE 830) | Mọi dự án — viết đầu tiên |

### 必須 (Bắt buộc - Dự án nào cũng cần)

| ID | Tên tài liệu | Tên Nhật | Khi nào cần |
|----|-------------|----------|-------------|
| BD01 | Sơ đồ cấu trúc hệ thống | システム構成図 | Mọi dự án |
| BD03 | Danh sách & thiết kế chức năng | 機能一覧・機能設計書 | Mọi dự án |
| BD04 | Thiết kế màn hình | 画面設計書 | Mọi dự án có UI |
| BD05 | Sơ đồ chuyển màn hình | 画面遷移図 | Mọi dự án có UI |
| BD09 | Thiết kế DB / ER diagram | DB設計書| Mọi dự án có DB |
| BD10 | Định nghĩa bảng (Table definition) | テーブル定義書 | Mọi dự án có DB |
| BD14 | Yêu cầu phi chức năng | 非機能要件定義書 | Mọi dự án |
| BD16 | Phiếu review | レビューシート | Mọi dự án (QA Nhật) |
| BD17 | Bảng quản lý vấn đề | 課題管理表 | Mọi dự án |

### 条件付き必須 (Bắt buộc nếu có liên quan)

| ID | Tên tài liệu | Tên Nhật | Khi nào cần |
|----|-------------|----------|-------------|
| BD06 | Danh sách I/O màn hình | 画面入出力項目一覧 | Màn hình nhiều field phức tạp |
| BD07 | Định nghĩa action màn hình | 画面アクション定義 | Màn hình nhiều event/trigger |
| BD08 | Thiết kế báo cáo/in ấn | 帳票設計書 | Hệ thống có in ấn/xuất báo cáo |
| BD11 | Biểu đồ CRUD | CRUD図 | Nhiều bảng & chức năng |
| BD12 | Thiết kế I/F (API) | I/F設計書 | Kết nối hệ thống ngoài/API |
| BD13 | Thiết kế batch | バッチ設計書 | Có xử lý batch/job định kỳ |
| BD15 | Thiết kế bảo mật | セキュリティ設計書 | Tài chính, y tế, dữ liệu nhạy cảm |

### オプション (Tùy chọn)

| ID | Tên tài liệu | Tên Nhật | Khi nào cần |
|----|-------------|----------|-------------|
| BD02 | Tài liệu kiến trúc | アーキテクチャ設計書 | Hệ thống lớn, microservice |

## Thứ tự tạo tài liệu khuyên dùng

```
SRS → BD01 → BD03 → BD04 → BD05 → BD09 → BD10 → BD11 → BD12/BD13 → BD14 → BD15 → BD16 → BD17
```

> **Lưu ý:** BD16 (Phiếu review) và BD17 (Bảng quản lý vấn đề) là tài liệu **sống** — được tạo từ sớm và cập nhật liên tục trong suốt quá trình, không phải chỉ điền một lần ở cuối. Thứ tự trên chỉ thể hiện thứ tự viết nội dung kỹ thuật; BD16/BD17 song song xuyên suốt.

## Cấu trúc thư mục dự án

Tổ chức file tài liệu theo module/nhóm chức năng giúp team dễ tìm, dễ review, và dễ bàn giao cho khách hàng Nhật.

### Nguyên tắc phân chia

- **BD03 + BD04 đi cùng nhau theo module:** Function list và Screen design của cùng module nằm cùng thư mục — mỗi chức năng thường ứng với một hoặc nhiều màn hình.
- **Chức năng con (sub-function) tạo thư mục riêng khi:** số màn hình của chức năng con ≥ 3, hoặc có BD06/BD07 riêng. Khi đó BD03 của module cha vẫn liệt kê cả cha lẫn con; thư mục con chỉ chứa tài liệu màn hình/action.
- **Tách file BD03 theo module** khi dự án có ≥3 module hoặc tổng số chức năng > 50 dòng.
- **Tách file BD04 theo module** khi số màn hình ≥ 10.
- **BD06, BD07 theo sát BD04:** đặt cùng thư mục với BD04 của module/sub-function đó.

### Cấu trúc thư mục chuẩn

**Cấu trúc tối thiểu** — dùng khi dự án có ít module, chức năng chưa quá phức tạp:

```
docs/
├── SRS.md
├── BD01-system-architecture.md
├── BD05-screen-transition.md            ← sơ đồ tổng thể
│
├── 01-user-management/                  ← một module
│   ├── BD03-functions.md
│   └── BD04-screens.md
├── 02-order-management/
│   ├── BD03-functions.md
│   └── BD04-screens.md
│
├── BD09-er-diagram.md
├── BD10-table-definition.md
└── BD14-nonfunctional.md
```

**Cấu trúc đầy đủ** — dùng khi dự án lớn, nhiều module, có tích hợp và batch:

```
docs/
├── SRS.md
├── BD01-system-architecture.md
├── BD02-architecture-design.md          ← nếu có
│
├── functions/                           ← BD03 + BD04 + BD05 + BD06 + BD07
│   ├── BD05-screen-transition.md        ← sơ đồ tổng thể toàn hệ thống
│   │
│   ├── 01-user-management/              ← module lớn
│   │   ├── BD03-functions.md
│   │   ├── BD04-screens.md
│   │   ├── BD06-screen-io.md            ← nếu có
│   │   └── BD07-screen-actions.md       ← nếu có
│   │
│   ├── 02-order-management/             ← module có chức năng con
│   │   ├── BD03-functions.md            ← liệt kê cả chức năng cha lẫn con
│   │   ├── BD04-screens.md
│   │   ├── 01-cart/                     ← sub-function phức tạp → thư mục riêng
│   │   │   ├── BD04-screens.md
│   │   │   └── BD07-screen-actions.md
│   │   └── 02-checkout/
│   │       ├── BD04-screens.md
│   │       └── BD06-screen-io.md
│   │
│   └── 03-report/
│       ├── BD03-functions.md
│       ├── BD04-screens.md
│       └── BD08-report-design.md
│
├── database/                            ← BD09 + BD10 + BD11
│   ├── BD09-er-diagram.md
│   ├── BD10-table-definition.md
│   └── BD11-crud.md
│
├── integration/                         ← BD12 + BD13 (nếu có)
│   ├── BD12-api-design.md
│   └── BD13-batch-design.md
│
├── nonfunctional/                       ← BD14 + BD15
│   ├── BD14-nonfunctional.md
│   └── BD15-security.md
│
└── project-management/                  ← BD16 + BD17
    ├── BD16-review-sheet.md
    └── BD17-issue-management.md
```

### Quy tắc đặt tên thư mục module

Dùng số thứ tự + tên module bằng tiếng Anh lowercase-kebab-case để dễ sort và dễ đọc:

```
01-user-management/
02-order-management/
03-inventory/
04-report/
```

### Khi nào hỏi user về cấu trúc

Khi bắt đầu tạo tài liệu cho một dự án mới, nếu user chưa cung cấp danh sách module, hãy hỏi:
> "Dự án này có những module/nhóm chức năng chính nào? Điều này giúp tổ chức tài liệu theo đúng cấu trúc thư mục."

Nếu user chỉ yêu cầu tạo một tài liệu đơn lẻ mà không rõ context toàn dự án, tạo file đó trước và gợi ý cấu trúc thư mục ở cuối.

## Templates và hướng dẫn chi tiết

Đọc reference file tương ứng khi tạo từng loại tài liệu:

- `references/SRS-ieee830.md` — Software Requirements Specification (IEEE 830)
- `references/BD01-system-architecture.md` — Sơ đồ cấu trúc hệ thống
- `references/BD02-architecture-design.md` — Kiến trúc tổng thể (optional)
- `references/BD03-function-list.md` — Danh sách & thiết kế chức năng
- `references/BD04-screen-design.md` — Thiết kế màn hình
- `references/BD05-screen-transition.md` — Sơ đồ chuyển màn hình
- `references/BD06-screen-io.md` — Danh sách I/O màn hình
- `references/BD07-screen-action.md` — Định nghĩa action màn hình
- `references/BD08-report-design.md` — Thiết kế báo cáo
- `references/BD09-db-er.md` — Thiết kế DB và ER diagram
- `references/BD10-table-definition.md` — Định nghĩa bảng
- `references/BD11-crud.md` — Biểu đồ CRUD
- `references/BD12-interface-design.md` — Thiết kế I/F (API)
- `references/BD13-batch-design.md` — Thiết kế batch
- `references/BD14-nonfunctional.md` — Yêu cầu phi chức năng
- `references/BD15-security.md` — Thiết kế bảo mật
- `references/BD16-review-sheet.md` — Phiếu review
- `references/BD17-issue-management.md` — Bảng quản lý vấn đề
- `references/terminology-mapping.md` — Bảng mapping thuật ngữ Việt-Nhật

## Quy tắc commit tài liệu

Mỗi thay đổi nội dung tài liệu phải được commit riêng để git history là lịch sử thay đổi tài liệu. **Không commit nhiều tài liệu khác nhau cùng lúc.**

**Quy tắc:**
- Sau khi tạo xong một tài liệu → commit ngay file đó
- Sau khi sửa nội dung một tài liệu → commit ngay, dù chỉ sửa một dòng
- Commit message format: `docs: [action] [BD-ID/SRS] - [mô tả ngắn]`
- Ví dụ: `docs: add SRS - user management system`, `docs: update BD04-login - add forgot password screen`

**Không commit:**
- Nhiều file tài liệu khác nhau trong một commit
- File tài liệu cùng với file code

## Header chuẩn cho mỗi tài liệu

Mỗi tài liệu phải bắt đầu bằng metadata header như sau:

```markdown
# [BD-ID] Tên tài liệu

| Mục | Nội dung |
|-----|---------|
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Ngày cập nhật | YYYY-MM-DD |
| Người cập nhật | [Tên] |
| Trạng thái | Draft / Review / Approved |
```

## Lịch sử thay đổi chuẩn

Mỗi tài liệu cần có bảng lịch sử thay đổi:

```markdown
## Lịch sử thay đổi

| Phiên bản | Ngày | Người thực hiện | Nội dung thay đổi |
|-----------|------|-----------------|-------------------|
| 1.0 | YYYY-MM-DD | [Tên] | Tạo mới |
```

## Mermaid diagram conventions

Dùng nhất quán để reviewer Nhật dễ đọc:

- **システム構成図 (BD01):** `graph TB` hoặc `graph LR`
- **画面遷移図 (BD05):** `stateDiagram-v2` hoặc `graph LR`
- **ER図 (BD09):** `erDiagram`
- **CRUD図 (BD11):** `graph TB` với bảng matrix
- **Sequence diagram:** `sequenceDiagram` (dùng cho flow API, batch)
- **Flowchart:** `flowchart TD` (dùng cho business logic)

Luôn thêm chú thích tiếng Việt bên dưới mỗi diagram để giải thích.
