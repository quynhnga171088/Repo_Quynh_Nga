# JSON Schema Reference — QA Test Cases

Tài liệu này mô tả cấu trúc JSON được dùng để lưu trữ test case.

## Cấu trúc thư mục

```
testcases/
  {module_id}/                          ← tên module/ticket (vd: FDB-5346)
    meta.json                           ← thông tin module
    {category_slug}/                    ← chức năng lớn (slug hóa)
      {sub_category_slug}.json          ← chức năng nhỏ
```

**Ví dụ:**
```
testcases/
  FDB-5346/
    meta.json
    check-mh-courselessonframe/
      check-hien-thi-list-mon-hoc.json
      check-dang-ki-mon-hoc.json
      check-edit-dang-ki-tiet-hoc.json
```

---

## meta.json

Thông tin tổng quát của module.

```json
{
  "module_id": "FDB-5346",
  "project": "FDB-MORI",
  "creator": "LinhLK",
  "created_date": "2026-04-01",
  "phase": "1",
  "environment": "Chrome ver 9.0"
}
```

| Field | Mô tả |
|-------|-------|
| `module_id` | ID ticket/module trên Jira/Bitbucket |
| `project` | Tên project |
| `creator` | Tên người tạo test case |
| `created_date` | Ngày tạo (YYYY-MM-DD) |
| `phase` | Phase của dự án |
| `environment` | Môi trường test chính |

---

## {sub_category_slug}.json

File chứa test case của một chức năng nhỏ.

```json
{
  "category": "Check MH /CourseLessonFrameDivideStudent/index/",
  "sub_category": "Check hiển thị list môn học phụ đạo và icon thùng rác",
  "groups": [
    {
      "context": "Hiện tại là kì phụ đạo xuân",
      "steps": "1. Truy cập màn hình danh sách môn học\n2. Quan sát hiển thị",
      "test_cases": [
        {
          "test_data": "Ngày truy cập <= m_term_details.start_date",
          "expected_result": "Hiển thị list môn học và icon thùng rác",
          "priority": "Normal",
          "note": "",
          "results": {
            "round1": {
              "bug_id": "",
              "env1": {"result": "Pass", "tester": "AnhNVT", "date": "2026-04-07"},
              "env2": {"result": "", "tester": "", "date": ""}
            },
            "round2": {
              "bug_id": "",
              "env1": {"result": "", "tester": "", "date": ""},
              "env2": {"result": "", "tester": "", "date": ""}
            },
            "round3": {
              "bug_id": "",
              "env1": {"result": "", "tester": "", "date": ""},
              "env2": {"result": "", "tester": "", "date": ""}
            }
          }
        }
      ]
    }
  ]
}
```

### Giải thích các field

#### Cấp trên cùng
| Field | Bắt buộc | Mô tả |
|-------|----------|-------|
| `category` | ✅ | Chức năng lớn — thường là tên màn hình hoặc URL |
| `sub_category` | ✅ | Chức năng nhỏ cần test |
| `groups` | ✅ | Danh sách nhóm test case |

#### groups[]
| Field | Bắt buộc | Mô tả |
|-------|----------|-------|
| `context` | ❌ | Điều kiện tiền đề / ngữ cảnh (vd: "Kì phụ đạo xuân") |
| `steps` | ✅ | Các bước thực hiện, dùng chung cho tất cả TC trong nhóm |
| `test_cases` | ✅ | Danh sách test case |

#### test_cases[]
| Field | Bắt buộc | Giá trị hợp lệ | Mô tả |
|-------|----------|----------------|-------|
| `test_data` | ✅ | chuỗi | Dữ liệu đầu vào / điều kiện biên |
| `expected_result` | ✅ | chuỗi | Kết quả mong đợi |
| `priority` | ✅ | `"High"`, `"Normal"`, `"Low"` | Mức độ ưu tiên |
| `note` | ❌ | chuỗi | Ghi chú thêm |
| `results` | ❌ | object | Kết quả test theo round |

#### results.round{1,2,3}
| Field | Mô tả |
|-------|-------|
| `bug_id` | ID bug liên quan nếu Fail |
| `env1.result` | Kết quả env chính: `"Pass"`, `"Fail"`, `"Untested"`, `"Rejected"` |
| `env1.tester` | Tên tester |
| `env1.date` | Ngày test (YYYY-MM-DD) |
| `env2` | Môi trường thứ 2 (tuỳ chọn, cùng cấu trúc env1) |

---

## Quy tắc đặt tên file/folder

- Dùng **slug** (lowercase, dấu `-` thay space, bỏ ký tự đặc biệt)
- Tối đa 60 ký tự
- Ví dụ:
  - `"Check MH /CourseLessonFrame/"` → `check-mh-courselessonframe`
  - `"Check hiển thị list môn học"` → `check-hin-th-list-mn-hc`

Dùng script `excel_to_json.py` để tự động tạo đúng cấu trúc từ Excel.
