---
name: qa-testcase
description: Quản lý và viết test case thủ công cho QA team Kaopiz. Dùng skill này khi cần: tạo test case mới, thêm/sửa/xóa test case, chuyển đổi giữa Excel và JSON, đọc/tạo file test case .xlsx theo format chuẩn Kaopiz, hoặc cần hướng dẫn viết test case đúng chuẩn QA. Trigger khi user nhắc đến: test case, test TC, viết test, QA document, file excel test, testcase.json, thêm TC, sửa TC, export excel testcase.
---

# QA Test Case Skill

Skill hỗ trợ team QA Kaopiz quản lý test case theo luồng:

```
JSON files (nguồn sự thật)
    ↕  excel_to_json.py / json_to_excel.py
Excel (.xlsx)
    ↕  json_to_md.py
Markdown (.md)
```

## Cấu trúc thư mục JSON

**Mỗi file JSON = 1 sheet trong Excel. Mỗi folder chức năng lớn = 1 file Excel.**

Cấp cao nhất có thể là **Jira ticket** hoặc **tên module lớn của dự án** — tuỳ team tổ chức:

```
testcases/
  fdb-9999/            ← Jira ticket (có thể có nhiều module con)
    meta.json
    user/              ← chức năng lớn → user.xlsx
      login.json       ← sheet: Login Screen
      register.json    ← sheet: Register Screen
    product/           ← chức năng lớn → product.xlsx
      product-list.json
      add-product.json

  user/                ← hoặc module lớn là root luôn → user.xlsx
    meta.json
    login.json
    register.json

  product/             ← module lớn khác → product.xlsx
    meta.json
    product-list.json
```

Đọc [references/json-schema.md](references/json-schema.md) để xem cấu trúc JSON chi tiết.

---

## Hai luồng làm việc chính

### Luồng 1 — Tester điền kết quả vào Excel → sync về JSON

Tester nhận file Excel, điền Pass/Fail/BugID/Tester/Date, rồi chạy:

```bash
python skills/qa-testcase/scripts/excel_to_json.py user.xlsx testcases/user/ --feature user
```

Script override toàn bộ JSON theo nội dung Excel. Sau đó commit JSON lên Git.

**Lưu ý Git nhiều tester:** Mỗi tester làm trên branch riêng, tạo PR. JSON là text nên Git merge được nếu mỗi người điền round khác nhau.

---

### Luồng 2 — Sửa/thêm/xóa test case

Khi cần thay đổi nội dung test case, **luôn sửa JSON trước**:

```
1. Sửa / thêm / xóa trong file JSON
2. json_to_md.py   → verify nội dung trên Markdown
3. json_to_excel.py → gen lại Excel giao cho tester
```

#### Tạo file JSON mới từ template

Copy [assets/template.json](assets/template.json) vào đúng folder, đổi tên theo chức năng:
```bash
cp skills/qa-testcase/assets/template.json testcases/user/login.json
```
Rồi điền nội dung vào JSON.

#### Verify trước khi gen Excel

```bash
# Gen Markdown — file .md đặt cùng folder với .json
python skills/qa-testcase/scripts/json_to_md.py testcases/fdb-9999 testcases/fdb-9999
# → testcases/fdb-9999/login.md, testcases/fdb-9999/student-list.md, README.md

# Gen Excel — file .xlsx đặt cùng folder với .json (output_dir = input_dir)
# Case 1: JSON phẳng trong root → 1 file Excel duy nhất
python skills/qa-testcase/scripts/json_to_excel.py testcases/fdb-9999 testcases/fdb-9999/
# → testcases/fdb-9999/fdb-9999.xlsx  (mỗi JSON = 1 sheet)

# Case 2: Có subfolder → mỗi subfolder = 1 file Excel riêng
python skills/qa-testcase/scripts/json_to_excel.py testcases/fdb-9999 testcases/fdb-9999/
# → testcases/fdb-9999/user.xlsx, testcases/fdb-9999/student-management.xlsx ...
```

---

### Import từ Excel có sẵn lần đầu

```bash
python skills/qa-testcase/scripts/excel_to_json.py <file.xlsx> <output_dir/> [--feature <name>]
```

Mỗi sheet trong Excel → 1 file JSON trong output_dir.

---

## Cách viết test case tốt

Khi user cần hướng dẫn hoặc khi tự generate test case, áp dụng các nguyên tắc sau. Đọc [references/tc-rules.md](references/tc-rules.md) để xem chi tiết với ví dụ.

### Nguyên tắc cốt lõi

- **1 TC = 1 điều kiện kiểm tra** — không gộp
- **Expected result cụ thể** — "Hiển thị popup 'Lưu thành công'" thay vì "hoạt động đúng"
- **Test Data đủ để tái hiện** — ai cũng follow được mà không cần hỏi thêm

### Kỹ thuật bắt buộc

**Boundary Value Analysis (BVA):** Với mọi điều kiện ngày/số, test 3 điểm:
- Giá trị tại biên (= boundary)
- Giá trị ngay bên trong biên (boundary - 1)
- Giá trị ngay bên ngoài biên (boundary + 1)

**Ví dụ điển hình** (từ file mẫu FDB-5346):
```
TC1: test_data = "end_date - 1"  → expected = "Hiển thị / Cho phép"
TC2: test_data = "end_date"      → expected = "Hiển thị / Cho phép"
TC3: test_data = "end_date + 1"  → expected = "Không hiển thị / Không cho phép"
```

### Priority guideline
- **High:** Lỗi block user, chức năng cốt lõi bị fail
- **Normal:** Chức năng phụ, validation thông thường
- **Low:** Edge case hiếm gặp, UI cosmetic

---

## Khi generate test case từ yêu cầu

Khi user cung cấp requirement/spec và muốn Claude tạo test case:

1. Đọc requirement kỹ
2. Xác định: **module lớn** (folder) → **màn hình/chức năng nhỏ** (file JSON, `module_name`)
3. Mỗi TC có đủ: `category`, `name`, `precondition`, `steps`, `test_data`, `expected_result`, `priority`
4. Áp dụng BVA cho mọi điều kiện ngày/số (test tại biên, biên-1, biên+1)
5. Thêm negative test: để trống, sai định dạng, không có quyền
6. Trình bày bảng Markdown để user review trước
7. Hỏi user confirm rồi mới ghi vào file JSON
8. Chạy `json_to_md.py <dir> <dir>` (cùng folder) verify → `json_to_excel.py` gen Excel

**Quy tắc khi ghi JSON:** Bỏ qua các field có giá trị rỗng (`""`) hoặc chưa có dữ liệu — không gen `note`, `results`, `bug_id`, `env*`, `date`, `tester` nếu chưa có gì. Script `excel_to_json.py` sẽ tự strip khi sync ngược lại, và `json_to_excel.py` handle key thiếu bằng default rỗng.

---

## Template JSON cho test case mới

Xem [assets/template.json](assets/template.json) để copy nhanh cấu trúc JSON.

---

## Phụ thuộc

Script cần Python 3 + thư viện openpyxl:
```bash
pip install openpyxl
```
