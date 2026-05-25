---
name: kaopiz-git
description: Quy trình Git chuẩn Kaopiz: tạo branch, commit, và tạo Pull Request theo đúng convention của công ty. Dùng skill này khi user muốn commit code, tạo nhánh mới, tạo PR, hoặc hỏi về git workflow của Kaopiz. Trigger khi thấy: commit, tạo branch, tạo PR, pull request, feature branch, bugfix, hotfix, mã Jira, KPP-, stage change, git add, git commit, checkout nhánh. Cũng trigger khi user nói "tôi muốn push code", "tạo branch cho task", "mở PR", "review code", "merge vào develop".
---

# Kaopiz Git Workflow Skill

Skill này hướng dẫn agent thực hiện các thao tác Git theo đúng quy chuẩn của Kaopiz. Mục tiêu là đảm bảo lịch sử commit rõ ràng, có thể trace về Jira task, và branch strategy nhất quán trong toàn team.

**Tools cần thiết:**
- `user-eamodio.gitlens-extension-GitKraken` MCP: **commit và push** (cross-platform, tránh lỗi môi trường Cursor)
- `user-git` MCP: status, diff, add, log — các thao tác read-only hoặc non-commit
- `user-bitbucket` MCP: tạo branch trên remote, tạo PR (xem `references/mcp-setup.md` nếu chưa cài)

---

## 1. Kiểm tra trạng thái trước khi làm bất cứ điều gì

Luôn bắt đầu bằng `git status` để hiểu ngữ cảnh hiện tại:
- User đang ở branch nào?
- Có file staged chưa?
- Có file modified chưa staged không?

---

## 2. Quy tắc Branch

### Convention đặt tên

```
feature/<mã-jira>-<mô-tả-ngắn>   → tính năng mới
bugfix/<mã-jira>-<mô-tả-ngắn>    → sửa bug thông thường
hotfix/<mã-jira>-<mô-tả-ngắn>    → fix khẩn cấp trên production
```

**Ví dụ:**
- `feature/KPP-123-user-authentication`
- `bugfix/KPP-456-fix-login-redirect`
- `hotfix/KPP-789-critical-payment-bug`

Dùng dấu gạch ngang `-`, viết thường, không dấu cách.

### Quy trình tạo branch mới

1. **Hỏi mã Jira** nếu user chưa cung cấp — đây là thông tin bắt buộc. Nếu task không có mã Jira, hỏi user xác nhận rõ trước khi tạo branch không có mã.

2. **Checkout develop mới nhất** trước khi tạo branch:
   ```
   git checkout develop
   git pull origin develop
   ```

3. **Tạo branch trên remote trước** (ưu tiên dùng Bitbucket MCP `create_pull_request` → dùng tool `list_branches` để kiểm tra, hoặc dùng git trực tiếp):
   ```
   git checkout -b feature/KPP-123-ten-tinh-nang
   git push -u origin feature/KPP-123-ten-tinh-nang
   ```

4. Xác nhận với user sau khi tạo xong.

### Cảnh báo khi ở branch nguy hiểm

Nếu user đang ở `develop`, `main`, hoặc `master` và muốn commit code mới:
> "Bạn đang ở branch `develop/main`. Kaopiz không commit trực tiếp vào branch này. Hãy tạo branch riêng — bạn có mã Jira của task này không?"

Chủ động offer tạo branch cho user ngay tại đây.

---

## 3. Quy trình Commit

### Bước 1: Kiểm tra staged changes

Dùng `git status` để xem file nào đã staged. Nếu **chưa có file nào trong staging area**:

> "Bạn chưa thêm file nào vào staging area. Bạn muốn tôi giúp thêm file nào? (hoặc chạy `git add <files>` / `git add .` nếu muốn add tất cả)"

Đừng tiếp tục tạo commit message khi staging area trống.

### Bước 2: Đọc diff của staged changes

Dùng `git diff --staged` để đọc nội dung thay đổi. **Quan trọng — tránh đọc những file sau** vì chúng thường rất dài và gây tràn context:

- `package-lock.json`, `yarn.lock`, `pnpm-lock.yaml`
- `*.min.js`, `*.min.css`
- Thư mục `vendor/`, `node_modules/`, `dist/`, `build/`
- File migration DB tự sinh (thường có timestamp dài)
- File binary, ảnh

Nếu diff có những file này, bỏ qua chúng khi đọc và ghi chú ngắn vào commit message.

### Bước 3: Soạn commit message

**Format chuẩn:**
```
<mã-jira>: <mô tả ngắn gọn hành động>

[body tùy chọn: mô tả chi tiết hơn nếu cần]
```

**Ví dụ:**
```
KPP-123: Add JWT authentication for login API

- Implement token generation on login
- Add middleware to verify token on protected routes
- Update user model to store refresh token
```

**Quy tắc viết message:**
- Dòng đầu ≤ 72 ký tự
- Dùng động từ ở dạng imperative (Add, Fix, Update, Remove, Refactor...)
- Không kết thúc bằng dấu chấm
- Body giải thích "tại sao" thay vì "cái gì"

### Bước 4: Xác nhận với user

Trình bày commit message đã soạn và hỏi:
> "Tôi sẽ commit với message sau:
> ```
> KPP-123: Add JWT authentication for login API
> ```
> Bạn có muốn chỉnh sửa gì không? (OK để tiến hành)"

Chỉ thực hiện commit sau khi user xác nhận.

### Bước 5: Thực hiện commit

**Lưu ý quan trọng:** Môi trường shell trong Cursor inject các biến khiến `git commit` bị lỗi `unknown option 'trailer'`. Dùng **GitLens MCP** để tránh vấn đề này — hoạt động trên Windows, Mac và Linux.

**Ưu tiên: Dùng GitLens MCP (cross-platform)**

```
CallMcpTool: user-eamodio.gitlens-extension-GitKraken / git_add_or_commit
  action: "commit"
  directory: "<đường dẫn repo>"
  message: "KPP-123: Add JWT authentication for login API\n\n- Implement token generation on login\n- Add middleware to verify token"
```

**Fallback: Nếu GitLens MCP không khả dụng**

- **Linux/Mac** — dùng `env -i` để bypass môi trường Cursor:
  ```bash
  env -i HOME=$HOME PATH=$PATH /usr/bin/git commit -m "KPP-123: Add feature X"
  ```
- **Windows (PowerShell)** — mở terminal ngoài Cursor và chạy git trực tiếp:
  ```powershell
  git commit -m "KPP-123: Add feature X"
  ```

**Push lên remote (dùng GitLens MCP):**

```
CallMcpTool: user-eamodio.gitlens-extension-GitKraken / git_push
  directory: "<đường dẫn repo>"
```

---

## 4. Quy trình tạo Pull Request

### Điều kiện tiên quyết

Kiểm tra `user-bitbucket` MCP có sẵn không. Nếu chưa — hướng dẫn user cài đặt (xem `references/mcp-setup.md`).

### Thông tin cần thu thập

Trước khi tạo PR, thu thập:
1. **Source branch**: branch hiện tại của user
2. **Target branch**: thường là `develop` (hỏi nếu không chắc)
3. **Repository & Project key**: dùng `list_repositories` trong Bitbucket MCP để tìm

### Quy trình đọc diff để viết description

**Bước 1: Xem tổng quan trước** bằng `git diff develop...HEAD --stat` để biết file nào thay đổi và kích thước diff.

**Bước 2: Loại trừ file có diff lớn** khi đọc nội dung chi tiết — những file này không mang lại thông tin hữu ích cho PR description:

```bash
git diff develop...HEAD \
  -- ':!package-lock.json' ':!yarn.lock' ':!pnpm-lock.yaml' \
     ':!*.min.js' ':!*.min.css' \
     ':!dist/**' ':!build/**' ':!vendor/**'
```

Các loại file cần bỏ qua:
- Lock files: `package-lock.json`, `yarn.lock`, `pnpm-lock.yaml`
- Minified files: `*.min.js`, `*.min.css`
- Thư mục build/output: `dist/`, `build/`, `vendor/`, `node_modules/`
- File migration DB tự sinh (có timestamp dài)
- File binary, ảnh

Nếu diff vẫn còn quá lớn, dùng `git log develop..HEAD --oneline` để lấy danh sách commit rồi đọc từng commit một với `git show <hash> --stat`.

Cũng có thể dùng `get_diff` từ Bitbucket MCP nếu PR đã tồn tại (nhớ loại trừ các file trên khi phân tích).

### Format PR

**Title:**
```
[KPP-123] Tên tính năng hoặc mô tả ngắn
```

**Description template:**
```markdown
## Mô tả
<!-- Tóm tắt thay đổi và lý do -->

## Thay đổi chính
- 
- 

## Cách test
<!-- Hướng dẫn reviewer test -->
1. 
2. 

## Checklist
- [ ] Code đã được test locally
- [ ] Không có console.log / debug code thừa
- [ ] Đã xử lý edge cases
```

### Tạo PR bằng Bitbucket MCP

```
create_pull_request:
  project: <project key>
  repository: <repo slug>
  title: "[KPP-123] Tên tính năng"
  description: <nội dung theo template trên>
  sourceBranch: feature/KPP-123-ten-tinh-nang
  targetBranch: develop
  reviewers: []   ← hỏi user có muốn chỉ định reviewer không
```

Sau khi tạo xong, hiển thị link PR cho user.

---

## 5. Luồng xử lý tóm tắt

```
User yêu cầu commit/branch/PR
         ↓
   git status → xác định context
         ↓
┌─────────────────────────────────┐
│ Đang ở develop/main/master?     │
│ → Yêu cầu/hỗ trợ tạo branch    │
└─────────────────────────────────┘
         ↓
┌─────────────────────────────────┐
│ COMMIT                          │
│ 1. Kiểm tra staging area        │
│ 2. Đọc diff (bỏ qua lib files)  │
│ 3. Soạn message (mã Jira + mô tả│
│ 4. Xác nhận với user → commit   │
└─────────────────────────────────┘
         ↓
┌─────────────────────────────────┐
│ TẠO PR (nếu cần)                │
│ 1. Kiểm tra Bitbucket MCP       │
│ 2. Đọc diff develop..HEAD       │
│ 3. Soạn title + description     │
│ 4. Tạo PR → trả về link         │
└─────────────────────────────────┘
```

---

## 6. Xử lý các tình huống đặc biệt

**Không biết mã Jira:**
> "Task này có mã Jira không? (ví dụ KPP-123). Nếu không có, tôi sẽ dùng tên mô tả thôi."

**Branch đã tồn tại trên remote:**
> "Branch `feature/KPP-123-...` đã tồn tại trên remote. Bạn muốn checkout branch đó về local không?"

**Staging area có quá nhiều thay đổi không liên quan:**
> "Tôi thấy staging area có nhiều file từ nhiều tính năng khác nhau. Bạn có muốn tách thành nhiều commit riêng không?"

**Chưa có Bitbucket MCP:**
Đọc `references/mcp-setup.md` và hướng dẫn user cài đặt.

---

## Reference files

- `references/mcp-setup.md` — Hướng dẫn cài đặt Bitbucket Server MCP
