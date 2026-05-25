# Template BD16 — Phiếu Review

## Mục đích
Phiếu review là công cụ QA bắt buộc trong quy trình phát triển có kiểm soát tài liệu. Mọi tài liệu trước khi được chấp thuận đều phải qua ít nhất một vòng review có documentation. Phiếu này theo dõi: ai review gì, phát hiện vấn đề nào, và vấn đề được xử lý ra sao.

---

## Template

# [BD16] Phiếu Review

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Tài liệu được review | [BD-ID] [Tên tài liệu] |
| Phiên bản tài liệu | v1.0 |
| Ngày review | YYYY-MM-DD |
| Người review | [Tên] |
| Người được review | [Tên] |
| Trạng thái | Đang review |

---

## 1. Checklist kiểm tra tổng quát

*Cột Kết quả: **Đ** = đạt, **K** = không đạt, **N/A** = không áp dụng.*

| # | Hạng mục kiểm tra | Kết quả | Ghi chú |
|--- |------------------ |--------- |--------- |
| 1 | Header tài liệu đầy đủ (tên, phiên bản, ngày, trạng thái) | Đ / K / N/A | |
| 2 | Lịch sử thay đổi được cập nhật | Đ / K / N/A | |
| 3 | Thuật ngữ nhất quán xuyên suốt tài liệu | Đ / K / N/A | |
| 4 | Không có lỗi chính tả/ngữ pháp nghiêm trọng | Đ / K / N/A | |
| 5 | Tất cả diagram đều có chú thích | Đ / K / N/A | |
| 6 | Tham chiếu đến tài liệu khác chính xác | Đ / K / N/A | |
| 7 | Không có thông tin mâu thuẫn với tài liệu khác | Đ / K / N/A | |
| 8 | Mọi requirement/function/screen/table đều có ID duy nhất, không trùng | Đ / K / N/A | |

## 2. Checklist theo loại tài liệu

### Dành cho BD01 — Sơ đồ cấu trúc hệ thống
| # | Hạng mục | Kết quả | Ghi chú |
|--- |--------- |--------- |--------- |
| 1 | Tất cả server/component được liệt kê | Đ / K / N/A | |
| 2 | Protocol và port được ghi rõ | Đ / K / N/A | |
| 3 | Môi trường (DEV/STG/PRD) được phân biệt | Đ / K / N/A | |
| 4 | External system được highlight | Đ / K / N/A | |

### Dành cho BD03 — Danh sách & thiết kế chức năng
| # | Hạng mục | Kết quả | Ghi chú |
|--- |--------- |--------- |--------- |
| 1 | Tất cả chức năng đều có ID theo format F[module]-[số] (ví dụ: F01-01) | Đ / K / N/A | |
| 2 | Flowchart bao gồm cả error path | Đ / K / N/A | |
| 3 | Validation rules được liệt kê đầy đủ | Đ / K / N/A | |
| 4 | Permission cho mỗi chức năng được xác định | Đ / K / N/A | |
| 5 | Mỗi function có reference đến Screen ID trong BD04 | Đ / K / N/A | |

### Dành cho BD04 — Thiết kế màn hình
| # | Hạng mục | Kết quả | Ghi chú |
|--- |--------- |--------- |--------- |
| 1 | Mỗi màn hình có ID theo format SCR-NNN (ví dụ: SCR-001) | Đ / K / N/A | |
| 2 | Bố cục màn hình được mô tả rõ ràng | Đ / K / N/A | |
| 3 | Tất cả UI element được liệt kê | Đ / K / N/A | |
| 4 | Error message đầy đủ theo ngôn ngữ / spec đã thống nhất | Đ / K / N/A | |
| 5 | Màn hình trước/sau được xác định | Đ / K / N/A | |
| 6 | Mỗi màn hình có trace về function ID trong BD03 (cột "Chức năng liên quan") | Đ / K / N/A | |

### Dành cho BD09 — Thiết kế DB / ER
| # | Hạng mục | Kết quả | Ghi chú |
|--- |--------- |--------- |--------- |
| 1 | Tất cả bảng có trong ER diagram | Đ / K / N/A | |
| 2 | Kiểu dữ liệu và constraint đầy đủ | Đ / K / N/A | |
| 3 | FK relationship chính xác | Đ / K / N/A | |
| 4 | Index được đặt hợp lý | Đ / K / N/A | |

---

## 3. Danh sách vấn đề phát hiện

| ID | Trang/Mục | Mô tả vấn đề | Loại | Mức độ | Trạng thái xử lý | Người xử lý | Deadline | Ghi chú |
|---- |---------- |------------- |------ |-------- |----------------- |------------ |--------- |--------- |
| R001 | BD04 / SCR-001 | Error message MSG-001-04 chưa đủ theo spec ngôn ngữ | Lỗi | Critical | Chưa xử lý | [Tên] | YYYY-MM-DD | |
| R002 | BD09 / T003 | Thiếu index trên cột status | Cải thiện | Major | Đang xử lý | [Tên] | YYYY-MM-DD | |
| R003 | BD01 | Sơ đồ hệ thống chưa có DMZ zone | Cải thiện | Minor | Đã xử lý | [Tên] | - | |

> **Phân loại:**
> - **Lỗi:** Nội dung sai, thiếu, hoặc không nhất quán — bắt buộc phải sửa
> - **Cải thiện:** Chất lượng có thể tốt hơn — nên sửa
> - **Câu hỏi:** Cần làm rõ — trả lời hoặc xử lý
>
> **Mức độ:**
> - **Critical:** Ảnh hưởng đến implementation hoặc security — phải sửa trước approve
> - **Major:** Ảnh hưởng đến quality hoặc clarity — nên sửa trước approve
> - **Minor:** Cải thiện nhỏ — sửa hoặc không ảnh hưởng approve

---

## 4. Kết quả review

| Mục | Nội dung |
|----- |--------- |
| Tổng số vấn đề phát hiện | [N] |
| Critical | [N] |
| Major | [N] |
| Minor | [N] |
| Đã xử lý | [N] |
| Chưa xử lý | [N] |

### Quyết định

- [ ] **Phê duyệt:** Tài liệu đạt yêu cầu, có thể tiến hành bước tiếp theo
- [ ] **Phê duyệt có điều kiện:** Phê duyệt nhưng cần sửa [N] vấn đề Minor trước khi release
- [ ] **Yêu cầu review lại:** Còn [N] vấn đề Critical/Major cần sửa và review lại

### Ký xác nhận

| Vai trò | Tên | Chữ ký/Xác nhận | Ngày |
|--------- |----- |---------------- |------ |
| Reviewer | [Tên] | [Sign] | YYYY-MM-DD |
| Tác giả | [Tên] | [Sign] | YYYY-MM-DD |
| PM | [Tên] | [Sign] | YYYY-MM-DD |

---

## 5. Lịch sử review

| Vòng | Ngày | Người review | Kết quả | Vấn đề tìm thấy | Đã xử lý |
|------ |------ |------------- |--------- |---------------- |--------- |
| 1 | YYYY-MM-DD | [Tên] | Yêu cầu sửa | 5 | 5 |
| 2 | YYYY-MM-DD | [Tên] | Phê duyệt | 0 | - |

---

## Hướng dẫn sử dụng BD16

1. **Tạo 1 phiếu riêng cho mỗi lần review** của mỗi tài liệu — không gộp chung
2. **ID vấn đề** — đánh số từ R001 tăng dần, không dùng lại ID đã dùng
3. **Mức độ Critical phải sửa hết** trước khi phê duyệt — đây là quy tắc cứng trong quy trình QA
4. **Giữ lại tất cả phiếu review cũ** — phía khách hàng có thể audit bất cứ lúc nào
5. **Checklist theo loại tài liệu** — chỉ điền section checklist phù hợp với tài liệu đang review
