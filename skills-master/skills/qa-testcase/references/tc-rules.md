# Quy Tắc Viết Test Case — Manual QA

Tài liệu này dành cho **QA không biết code**, cung cấp hướng dẫn viết test case thủ công đạt chuẩn chất lượng.

---

## 1. Nguyên Tắc Cốt Lõi

### 1.1 Mỗi test case chỉ kiểm tra MỘT điều

Đừng gộp nhiều kiểm tra vào một TC. Ví dụ:

❌ **Sai:** "Kiểm tra nút lưu hoạt động và hiển thị thông báo và dữ liệu được lưu đúng"

✅ **Đúng:**
- TC1: Kiểm tra nút Lưu hoạt động
- TC2: Kiểm tra thông báo thành công hiển thị
- TC3: Kiểm tra dữ liệu được lưu đúng vào DB

---

### 1.2 Kết quả mong đợi phải cụ thể và có thể xác minh được

❌ **Sai:** "Hệ thống hoạt động bình thường"

✅ **Đúng:** "Hiển thị thông báo 'Lưu thành công', danh sách refresh tự động, item mới xuất hiện ở đầu danh sách"

---

### 1.3 Test Data phải rõ ràng và đủ để tái hiện

❌ **Sai:** "Nhập dữ liệu hợp lệ"

✅ **Đúng:** "Username: `user_test01`, Password: `Test@1234`, Email: `test@example.com`"

---

## 2. Phân Loại Mức Ưu Tiên

| Priority | Khi nào dùng |
|----------|-------------|
| **High** | Chức năng cốt lõi, luồng chính, bất kỳ lỗi nào block user |
| **Normal** | Chức năng phụ, validation thông thường, UI check |
| **Low** | Edge case hiếm gặp, cosmetic, performance không critical |

---

## 3. Các Kỹ Thuật Thiết Kế Test Case

### 3.1 Phân tích giá trị biên (Boundary Value Analysis)

Luôn test 3 điểm cho mỗi điều kiện biên:

| Điều kiện | Test case cần có |
|-----------|-----------------|
| `ngày <= start_date` | start_date - 1, start_date, start_date + 1 |
| `độ dài password 8-20 ký tự` | 7 ký tự, 8 ký tự, 20 ký tự, 21 ký tự |
| `số lượng tối đa 100` | 99, 100, 101 |

**Ví dụ áp dụng vào test data:**
```
TC1: test_data = "Ngày truy cập: start_date - 1"  → [hiển thị]
TC2: test_data = "Ngày truy cập: start_date"       → [hiển thị]  
TC3: test_data = "Ngày truy cập: start_date + 1"   → [không hiển thị]
```

### 3.2 Phân vùng tương đương (Equivalence Partitioning)

Nhóm các input có cùng hành vi vào 1 nhóm, chỉ cần test đại diện 1 giá trị:

| Vùng | Đặc điểm | Test 1 giá trị |
|------|----------|----------------|
| Valid | Dữ liệu hợp lệ | Giá trị trung bình |
| Invalid thấp | Dưới min | min - 1 |
| Invalid cao | Trên max | max + 1 |

### 3.3 Bảng quyết định (Decision Table)

Dùng khi có nhiều điều kiện kết hợp. Liệt kê tất cả tổ hợp:

| User logged in | Has permission | Expected |
|----------------|---------------|----------|
| ✅ | ✅ | Cho phép truy cập |
| ✅ | ❌ | Hiện thông báo lỗi quyền |
| ❌ | - | Redirect sang login |

---

## 4. Cấu Trúc Test Case Chuẩn

### 4.1 Category (Chức năng lớn)

Thường là tên màn hình hoặc module:
- `Check MH /CourseLessonFrame/index/`
- `Check màn hình Login`
- `Check API /api/v1/users/`

### 4.2 Sub-category (Chức năng nhỏ)

Nhóm theo hành vi cần test:
- `Check hiển thị danh sách`
- `Check validation form`
- `Check phân quyền`
- `Check đăng ký thành công`
- `Check đăng ký thất bại`

### 4.3 Steps (Các bước thực hiện)

Viết theo dạng đánh số, từng bước rõ ràng:
```
1. Đăng nhập bằng tài khoản [role]
2. Truy cập màn hình [URL]
3. Click nút [tên nút]
4. Nhập [dữ liệu] vào trường [tên trường]
5. Click Lưu
```

Lưu ý:
- Steps dùng **chung** cho nhiều TC trong cùng nhóm
- Biến thể của mỗi TC nằm ở **Test Data**

### 4.4 Test Data (Dữ liệu đầu vào)

Ghi rõ điều kiện hoặc giá trị cụ thể:
- `Ngày truy cập: end_date + 1` (điều kiện biên)
- `Username: 'admin', Password: 'Admin@123'` (giá trị cụ thể)
- `File: PDF 5MB` (loại/kích thước file)
- `<không nhập gì>` (trường hợp để trống)

### 4.5 Expected Result (Kết quả mong đợi)

Mô tả **chính xác** những gì user thấy/nhận được:
- `Hiển thị popup "Lưu thành công"`
- `Trường [tên] hiển thị border đỏ và text lỗi "Trường này bắt buộc nhập"`
- `Redirect về trang danh sách, item mới xuất hiện ở vị trí đầu tiên`
- `HTTP 403, hiện thông báo "Bạn không có quyền truy cập"`

---

## 5. Các Loại Test Case Phổ Biến

### 5.1 Positive Test (Happy Path)
Test luồng chính với dữ liệu hợp lệ.
- Dữ liệu đúng định dạng, đủ điều kiện
- Expected: thành công, đúng như thiết kế

### 5.2 Negative Test
Test với dữ liệu sai hoặc thiếu.
- Ô bắt buộc để trống
- Sai định dạng (email thiếu @, số âm)
- Vượt giới hạn ký tự
- Expected: thông báo lỗi rõ ràng, không crash

### 5.3 Boundary Test
Test giá trị tại/xung quanh biên giới.
- Xem mục 3.1 ở trên

### 5.4 Permission Test
Test phân quyền.
- Role không có quyền xem/sửa/xóa
- Expected: ẩn nút hoặc hiện lỗi 403

### 5.5 UI/Display Test
Test giao diện hiển thị.
- Responsive trên các kích thước màn hình
- Text đúng ngôn ngữ, không bị cắt
- Icon/ảnh hiển thị đúng

---

## 6. Checklist Trước Khi Submit Test Case

Trước khi nộp test case document, kiểm tra:

- [ ] Mỗi TC chỉ kiểm tra 1 điều
- [ ] Expected Result cụ thể, không mơ hồ
- [ ] Test Data đủ để ai cũng tái hiện được
- [ ] Đã cover cả positive và negative test
- [ ] Đã test các giá trị biên quan trọng
- [ ] Priority đặt đúng (lỗi block user = High)
- [ ] Steps đủ rõ cho người khác follow mà không cần hỏi thêm
- [ ] Trùng lặp với TC đã có không? (kiểm tra lại)

---

## 7. Ví Dụ Mẫu Hoàn Chỉnh

### Chức năng: Đăng ký môn học phụ đạo

**Category:** `Check MH /CourseLessonFrameDivideStudent/index/`
**Sub-category:** `Check đăng ký môn học`

**Steps (chung):**
```
1. Đăng nhập bằng tài khoản học sinh
2. Vào màn hình danh sách môn học phụ đạo
3. Click button "Đăng ký" của môn học X
4. Xác nhận đăng ký
```

| Test Data | Expected Result | Priority |
|-----------|-----------------|----------|
| Ngày truy cập <= start_date | Đăng ký thành công, lịch học hiển thị tiết học đã đăng ký | Normal |
| Ngày truy cập: end_date - 1 | Đăng ký thành công | Normal |
| Ngày truy cập: end_date | Đăng ký thành công | Normal |
| Ngày truy cập: end_date + 1 | Nút "Đăng ký" bị ẩn hoặc disabled, không thể đăng ký | High |
| Học sinh đã đăng ký môn học này rồi | Hiển thị thông báo "Bạn đã đăng ký môn học này" | Normal |
| Lớp đã đủ số học sinh tối đa | Hiển thị thông báo "Lớp đã đầy" | High |
