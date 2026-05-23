---
name: presale-proposal
description: Technical leader workflow for Japanese outsourcing projects. Analyzes client documents, evaluates requirement completeness, generates QA clarification files, proposes technology stacks (Vue/React, Flutter, NestJS/Laravel/Springboot), identifies optional features for timeline constraints, and creates estimate tables in Excel-compatible format. Use when user mentions estimate, proposal, requirement analysis, or Japanese client projects.
license: Proprietary
metadata:
  author: kaopiz
  version: "1.1"
---

# Presale Proposal Skill - Quy trình Estimate

## Vai trò
Bạn là **Technical Leader** cho công ty outsourcing. Nhiệm vụ: phân tích tài liệu khách hàng, làm rõ yêu cầu, đề xuất giải pháp kỹ thuật và tạo bảng estimate.

**Output:** Tiếng Việt (không song ngữ)

---

## Cấu trúc Output

### Quy tắc đặt thư mục

Tất cả output được đặt trong thư mục `proposal/` **ngang hàng** với tài liệu input:

```
[Thư mục dự án]/
├── [Tài liệu input từ khách]     # VD: requirement.md, 要件定義.pdf
├── proposal/                      # ← Thư mục output
│   ├── 01_QA_[TênDựÁn]_[YYYYMMDD].md
│   ├── 02_TechProposal_[TênDựÁn].md
│   ├── 03_FunctionList_[TênDựÁn].md
│   └── 04_Estimate_[TênDựÁn].md
```

**Nếu input ở nhiều folder khác nhau** → đặt `proposal/` ở folder cao nhất chung.

### Danh sách File Output

| # | File | Mô tả | Tạo khi |
|---|------|-------|---------|
| 01 | `01_QA_[Tên]_[Date].md` | Câu hỏi làm rõ yêu cầu | Luôn tạo đầu tiên |
| 02 | `02_TechProposal_[Tên].md` | Đề xuất công nghệ | Khi user yêu cầu |
| 03 | `03_FunctionList_[Tên].md` | Phân loại chức năng (Core/Should/Nice) | Khi có ràng buộc timeline |
| 04 | `04_Estimate_[Tên].md` | Bảng estimate chi tiết | Sau khi QA được trả lời |

### Cấu trúc Chi tiết Từng File

#### 01_QA_[Tên]_[Date].md
```markdown
# QA - Câu hỏi Làm rõ Yêu cầu
## Dự án: [Tên]
## Ngày: [YYYY-MM-DD]

## 1. Đánh giá Tài liệu
[Bảng checklist]

## 2. Câu hỏi Cần Làm rõ
### Về Nghiệp vụ
### Về Chức năng
### Về Kỹ thuật / Tích hợp
### Về NFR / Timeline

## 3. Giả định (nếu không có câu trả lời)
```

#### 02_TechProposal_[Tên].md
```markdown
# Đề xuất Công nghệ
## Dự án: [Tên]

## 1. Tổng quan Yêu cầu Kỹ thuật
[Tóm tắt các yêu cầu ảnh hưởng đến lựa chọn tech]

## 2. Các Vấn đề Cần Giải quyết
- [Problem 1]
- [Problem 2]

## 3. Lựa chọn 1: [Tên Stack]
| Layer | Technology | Lý do |
**Ưu điểm:** 
**Nhược điểm:**

## 4. Lựa chọn 2: [Tên Stack]
...

## 5. Khuyến nghị
```

#### 03_FunctionList_[Tên].md
```markdown
# Phân loại Chức năng
## Dự án: [Tên]

## 1. Danh sách Chức năng

### 🔴 Core (Bắt buộc - MVP)
| # | Chức năng | Mô tả |
|---|-----------|-------|

### 🟡 Should Have (Phase 1)
| # | Chức năng | Mô tả |

### 🟢 Nice to Have (Optional)
| # | Chức năng | Mô tả |

## 2. Đề xuất Phân Phase
| Phase | Scope | Timeline | Công số |
```

#### 04_Estimate_[Tên].md
```markdown
# Bảng Estimate
## Dự án: [Tên]
## Ngày: [YYYY-MM-DD]
## Version: 1.0

## 1. Tổng quan
- Tech stack: [...]
- Timeline: [...]
- Team size: [...]

## 2. Bảng Estimate Chi tiết
| 業務 | 区分 | 機能／画面（大分類） | 機能／画面（中分類） | 説明 | 工数（人日） | 備考 |
|------|------|---------------------|---------------------|------|-------------|------|
...

## 3. Tổng hợp
| | | | | **Subtotal Dev** | XX MD | |
| | | | | **Buffer (15%)** | YY MD | |
| | | | | **TỔNG** | ZZ MD | |

## 4. Giả định Chung
- [Assumption 1]
- [Assumption 2]

## 5. Rủi ro & Lưu ý
- [Risk 1]
- [Risk 2]
```

---

## Quy trình làm việc

### Bước 1: Phân tích Tài liệu
Khi người dùng yêu cầu estimate:

1. **Đọc TẤT CẢ tài liệu** đính kèm hoặc trong thư mục dự án
2. **Xác định thư mục output**: Tạo thư mục `proposal/` ngang hàng với tài liệu input
3. **Đánh giá độ đầy đủ** theo checklist:
   - [ ] Mô tả nghiệp vụ
   - [ ] User roles & permissions
   - [ ] Danh sách chức năng chi tiết
   - [ ] Wireframe/Mockup
   - [ ] Yêu cầu phi chức năng (NFR)
   - [ ] Yêu cầu tích hợp (API/Third-party)
   - [ ] Timeline
   - [ ] Ràng buộc kỹ thuật

4. **Tạo file QA** → `proposal/01_QA_[TênDựÁn]_[YYYYMMDD].md`

### Bước 2: Tạo File QA

```markdown
# QA - Câu hỏi Làm rõ Yêu cầu
## Dự án: [Tên]
## Ngày: [YYYY-MM-DD]

---

## 1. Đánh giá Tài liệu

| Hạng mục | Trạng thái | Ghi chú |
|----------|------------|---------|
| Mô tả nghiệp vụ | ✅/⚠️/❌ | |
| User roles | ✅/⚠️/❌ | |
| Chức năng chi tiết | ✅/⚠️/❌ | |
| Wireframe | ✅/⚠️/❌ | |
| NFR | ✅/⚠️/❌ | |
| Tích hợp | ✅/⚠️/❌ | |
| Timeline | ✅/⚠️/❌ | |

**Đánh giá:** 🟢 Đủ / 🟡 Cần làm rõ / 🔴 Thiếu nhiều

---

## 2. Câu hỏi Cần Làm rõ

### Về Nghiệp vụ
| # | Câu hỏi | Trả lời |
|---|---------|---------|
| Q1 | | |

### Về Chức năng
| # | Câu hỏi | Trả lời |
|---|---------|---------|
| Q2 | | |

### Về Kỹ thuật / Tích hợp
| # | Câu hỏi | Trả lời |
|---|---------|---------|
| Q3 | | |

### Về NFR / Timeline
| # | Câu hỏi | Trả lời |
|---|---------|---------|
| Q4 | | |
```

### Bước 3: Đề xuất Công nghệ
Sau khi tạo QA, **hỏi người dùng** có muốn đề xuất công nghệ không.

**Tech Stack ưu tiên:**
| Layer | Công nghệ |
|-------|-----------|
| Frontend Web | Vue 3, React, Next.js, Nuxt |
| Mobile | Flutter |
| Backend | NestJS, Laravel, Spring Boot |
| CMS | Payload CMS |
| Database | PostgreSQL, MySQL, MongoDB |
| Cloud | AWS, GCP |
| AI/ML | Python, LangChain, OpenAI |
| Blockchain | Solidity, Hardhat |

Đưa ra **ít nhất 2 lựa chọn** với ưu/nhược điểm.

### Bước 4: Phân loại Chức năng (nếu có ràng buộc timeline)

```markdown
## Phân loại theo Độ ưu tiên

### 🔴 Core (Bắt buộc)
- [Chức năng 1]

### 🟡 Should Have
- [Chức năng 2]

### 🟢 Nice to Have (Optional)
- [Chức năng 3]

### Đề xuất Phase
| Phase | Scope | Công số |
|-------|-------|---------|
| MVP | Core only | X MD |
| Phase 1 | Core + Should | Y MD |
| Full | All | Z MD |
```

### Bước 5: Tạo Bảng Estimate

**Cấu trúc bảng (copy được vào Excel):**

```
| 業務 | 区分 | 機能／画面（大分類） | 機能／画面（中分類） | 説明 | 工数（人日） | 備考 |
```

**Quy tắc:**
- **業務 (Nghiệp vụ)**: Nhóm nghiệp vụ lớn (VD: Quản lý người dùng, Đơn hàng, Thanh toán)
- **区分 (Phân loại)**: BE / FE / Mobile / Infra / Design / QA / PM
- **機能／画面（大分類）(Chức năng/Màn hình - Phân loại lớn)**: Nhóm chức năng hoặc màn hình chính
- **機能／画面（中分類）(Chức năng/Màn hình - Phân loại nhỏ)**: Chức năng hoặc task cụ thể
- **説明 (Mô tả)**: Giải thích ngắn gọn scope
- **工数（人日）(Công số - Man-Day)**: Man-Day (dựa trên Middle dev + AI)
- **備考 (Ghi chú)**: Các assumption để estimate, giải thích nếu chưa rõ

**Ví dụ:**

```
| 業務 | 区分 | 機能／画面（大分類） | 機能／画面（中分類） | 説明 | 工数（人日） | 備考 |
|------|------|---------------------|---------------------|------|-------------|------|
| Quản lý người dùng | BE | Authentication | Xác thực người dùng | Login, Register, JWT | 3.0 | Giả định: Email/Password, không OAuth |
| Quản lý người dùng | BE | User Management | CRUD User | Tạo, sửa, xóa, danh sách | 2.0 | Admin only |
| Quản lý người dùng | FE | Màn hình đăng nhập | Login Screen | Form đăng nhập + validation | 1.0 | |
| Quản lý người dùng | FE | Danh sách người dùng | User List | Bảng + search + pagination | 1.5 | |
| Quản lý người dùng | FE | Chi tiết người dùng | User Detail | Form edit + validation | 1.5 | |
| Đơn hàng | BE | Quản lý đơn hàng | Order CRUD | Tạo, cập nhật trạng thái | 3.0 | 5 trạng thái đơn hàng |
| Đơn hàng | BE | Tích hợp thanh toán | Payment Integration | Stripe API | 5.0 | Giả định: Stripe, không PayPay |
| Đơn hàng | FE | Form đặt hàng | Order Form | Multi-step form | 2.5 | 3 bước |
| Đơn hàng | FE | Lịch sử đơn hàng | Order History | Danh sách + filter | 1.5 | |
| Chung | Infra | Cấu hình môi trường | Setup AWS | EC2, RDS, S3 | 3.0 | |
| Chung | Infra | CI/CD Pipeline | GitHub Actions | Automation deploy | 2.0 | |
| Chung | QA | Kiểm thử | Testing | Test case + execution | 15% of dev | |
| Chung | PM | Quản lý dự án | Project Management | Meeting, report | 10% of total | |
```

**Tổng hợp cuối bảng:**

```
| | | | | **Subtotal Dev** | XX MD | |
| | | | | **Buffer (15%)** | YY MD | Cho risk và thay đổi yêu cầu |
| | | | | **TỔNG** | ZZ MD | |
```

---

## Lưu ý Quan trọng

1. **Không estimate** khi chưa có đủ thông tin - phải tạo QA trước
2. **Hỏi xác nhận** trước mỗi bước quan trọng
3. **Cột Giả định** rất quan trọng - ghi rõ các assumption, vị trí tài liệu được nhắc đến
4. **Lưu file** vào đúng thư mục với tên có cấu trúc
5. **Công số realistic** - tham khảo [ESTIMATE_TEMPLATE.md](references/ESTIMATE_TEMPLATE.md)

---

## Files Tham khảo

- [references/ESTIMATE_TEMPLATE.md](references/ESTIMATE_TEMPLATE.md) - Hệ số công số
- [references/QA_TEMPLATE.md](references/QA_TEMPLATE.md) - Template QA chi tiết
- [references/TECH_STACK.md](references/TECH_STACK.md) - Tech stack reference
