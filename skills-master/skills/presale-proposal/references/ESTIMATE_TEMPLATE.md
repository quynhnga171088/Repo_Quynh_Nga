# Estimate Template | 見積テンプレート

## Cấu trúc Bảng Estimate | 見積表構造

### Các cột bắt buộc | 必須カラム

| Tên cột | Mô tả | Ví dụ |
|---------|-------|-------|
| 業務 | Loại công việc - luôn là "Phát triển" | Phát triển |
| 区分 | Phân loại: FE/BE/Mobile/Infra/Design/PM/QA | BE |
| 機能／画面（大分類） | Nhóm chức năng lớn | ユーザー管理 |
| 機能／画面（中分類） | Chức năng con | ログイン |
| 説明 | Mô tả chi tiết | Email/Password認証、JWT発行 |
| 工数（人日） | Công số theo Man-Day | 2.0 |
| 備考 | Ghi chú thêm | 外部API連携あり |

---

## Hệ số Công số Tham khảo | 工数係数参考

> **Lưu ý:** Công số dưới đây tính cho **Dev Middle (3-4 năm) + AI Assistant** (GitHub Copilot, Cursor, etc.)
> 
> | Level | Hệ số | Ghi chú |
> |-------|-------|---------|
> | Junior (1-2 năm) + AI | 1.3-1.5x | Cần review nhiều hơn |
> | **Middle (3-4 năm) + AI** | **1.0x** | **Baseline trong bảng này** |
> | Senior (5+ năm) + AI | 0.8x | Giảm 20% |
>
> ⚠️ **Lưu ý thực tế:** AI giúp giảm ~25% thời gian coding, nhưng KHÔNG giảm thời gian: hiểu yêu cầu, design, testing, debug edge cases, code review.

### Backend (BE)

| Loại chức năng | Công số (Middle + AI) | Ghi chú |
|----------------|----------------------|---------|
| CRUD đơn giản | 1.5 - 2.0 MD | 1 entity + validation + unit test |
| CRUD phức tạp (relation) | 2.5 - 4.0 MD | Multiple relations, soft delete |
| Authentication (basic) | 2.0 - 3.0 MD | Login + Register + JWT |
| Authentication (full) | 3.0 - 4.5 MD | + Forgot PW + Email verify + Refresh |
| Authorization (RBAC) | 3.0 - 5.0 MD | Role-based, permission check |
| File upload/download | 2.0 - 3.0 MD | S3/Local + validation |
| API integration (simple) | 2.0 - 3.5 MD | REST API + error handling |
| API integration (complex) | 5.0 - 8.0 MD | Multiple APIs + retry + logging |
| Payment integration | 6.0 - 10.0 MD | Stripe/PayPay + webhook + refund |
| Notification (Email/Push) | 2.5 - 4.0 MD | Template + queue + tracking |
| Realtime (WebSocket) | 4.0 - 6.0 MD | Socket.io + reconnect + rooms |
| Batch processing | 2.5 - 4.5 MD | Scheduling + error handling |
| Report/Export | 2.5 - 4.5 MD | PDF/Excel + template |
| Search với filter phức tạp | 2.0 - 3.0 MD | Multiple conditions + index |
| Data migration | 2.0 - 4.0 MD | Tùy complexity + rollback |

### Frontend (FE)

| Loại màn hình | Công số (Middle + AI) | Ghi chú |
|---------------|----------------------|---------|
| Landing page | 1.0 - 2.0 MD | Static, responsive |
| Form đơn giản | 0.5 - 1.0 MD | < 10 fields |
| Form phức tạp | 2.0 - 3.5 MD | Multi-step, conditional, validation |
| List/Table với filter | 1.5 - 2.5 MD | Pagination, search, sort |
| Dashboard | 3.0 - 5.0 MD | Charts, widgets, data aggregate |
| CRUD screen (full) | 2.0 - 3.0 MD | List + Create + Edit + Detail |
| Modal/Dialog phức tạp | 0.5 - 1.0 MD | Form trong modal |
| Responsive design | +25% | Mobile adaptation |
| State management setup | 1.0 - 1.5 MD | Redux/Pinia/Zustand |

### Mobile (Flutter)

| Loại màn hình | Công số (Middle + AI) | Ghi chú |
|---------------|----------------------|---------|
| Simple screen | 0.5 - 1.0 MD | Static content |
| Form screen | 1.5 - 2.5 MD | Input, validation, keyboard |
| List screen | 1.5 - 2.5 MD | Pull-refresh, infinite scroll |
| Detail screen | 1.0 - 1.5 MD | Dynamic content |
| Camera/Gallery | 2.0 - 3.0 MD | Permissions, crop, upload |
| Maps integration | 2.5 - 4.0 MD | Google Maps + markers |
| Push notification | 2.0 - 3.0 MD | FCM + deep link |
| Offline mode | 4.0 - 6.0 MD | Local DB + sync + conflict |
| QR/Barcode scan | 1.5 - 2.5 MD | Camera, parsing |
| Biometric auth | 1.5 - 2.5 MD | Face ID, Fingerprint |
| App initial setup | 2.0 - 3.0 MD | Splash, routing, DI |

### Infrastructure (Infra)

| Task | Công số (Middle + AI) | Ghi chú |
|------|----------------------|---------|
| Setup CI/CD | 2.0 - 3.0 MD | GitHub Actions + test + deploy |
| AWS setup (basic) | 2.5 - 4.0 MD | EC2, RDS, S3 |
| AWS setup (advanced) | 5.0 - 8.0 MD | ECS, Lambda, CloudFront |
| Docker setup | 1.0 - 2.0 MD | Dockerfile + compose + env |
| Monitoring setup | 1.5 - 2.5 MD | CloudWatch, Sentry |
| SSL/Domain setup | 0.5 - 1.0 MD | Certificate, DNS |

### Design

| Task | Công số cơ bản | Ghi chú |
|------|----------------|---------|
| Wireframe (per screen) | 0.25 - 0.5 MD | Low-fidelity |
| UI Design (per screen) | 0.5 - 1.0 MD | High-fidelity |
| Design system | 3.0 - 5.0 MD | Components + guidelines |
| Prototype | 1.0 - 2.0 MD | Interactive |

### QA/Testing

| Task | Công số cơ bản | Ghi chú |
|------|----------------|---------|
| Test case creation | 15-20% of dev | |
| Manual testing | 10-15% of dev | |
| Automation testing | 20-30% of dev | If required |

### PM/Communication

| Task | Công số cơ bản | Ghi chú |
|------|----------------|---------|
| Project management | 10-15% of total | |
| Communication buffer | 5-10% of total | |
| Documentation | 5-8% of total | AI giúp viết docs |

---

## Buffer và Risk | バッファとリスク

| Loại Risk | Buffer | Ghi chú |
|-----------|--------|---------|
| Yêu cầu rõ ràng, có mockup | 10% | Ideal |
| Yêu cầu chưa chi tiết | 15-20% | Cần clarify |
| Công nghệ mới cho team | 20-25% | Learning curve |
| Tích hợp third-party không quen | 20-30% | Unknown API |
| Khách hàng mới | 15% | Communication |

---

## Ví dụ Bảng Estimate | 見積例

```
| 業務 | 区分 | 機能／画面（大分類） | 機能／画面（中分類） | 説明 | 工数（人日） | 備考 |
|------|------|---------------------|---------------------|------|-------------|------|
| Phát triển | Design | Chung | Hệ thống thiết kế | Định nghĩa màu sắc, typography, component | 3.0 | Figma |
| Phát triển | BE | Quản lý người dùng | Xác thực | JWT authentication, refresh token | 2.5 | |
| Phát triển | BE | Quản lý người dùng | CRUD người dùng | Tạo, cập nhật, xóa, danh sách, chi tiết | 3.0 | Dành cho Admin |
| Phát triển | FE | Quản lý người dùng | Màn hình đăng nhập | Form đăng nhập, validation | 1.0 | |
| Phát triển | FE | Quản lý người dùng | Màn hình danh sách người dùng | Bảng, tìm kiếm, phân trang | 1.5 | |
| Phát triển | FE | Quản lý người dùng | Màn hình chi tiết người dùng | Hiển thị chi tiết, form chỉnh sửa | 1.5 | |
| Phát triển | Infra | Chung | Thiết lập môi trường | Cấu hình AWS EC2, RDS, S3 | 3.0 | |
| Phát triển | Infra | Chung | CI/CD | Cấu hình GitHub Actions | 2.0 | |
| Phát triển | QA | Chung | Kiểm thử | Tạo và thực hiện test case | 3.0 | |
| Phát triển | PM | Chung | Quản lý dự án | Quản lý tiến độ, giao tiếp | 2.0 | |
```

