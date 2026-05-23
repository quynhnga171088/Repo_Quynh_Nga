Hãy phân tích TOÀN BỘ spec cho màn hình LIST có URL: [URL_MÀN_HÌNH]
Role đang login: [ROLE_NAME]

YÊU CẦU CHI TIẾT:

⚠️ LƯU Ý QUAN TRỌNG VỀ NGÔN NGỮ:
- Tài liệu output phải viết bằng TIẾNG VIỆT
- Các thông tin sau phải viết bằng TIẾNG NHẬT (tham khảo file `renew_hogos_fdb_ex\02_source\webapp\app\Locale\jpn\LC_MESSAGES\default.po`):
  * Tên màn hình (screen name, page title)
  * Label của các field (field labels)
  * Title của buttons, links
  * Message lỗi (error messages)
  * Message thành công (success messages)
  * Menu items
  * Tooltips, hints
  * Validation messages
- Với mỗi text tiếng Nhật, PHẢI tìm trong file default.po để lấy chính xác msgstr tương ứng với msgid

1. MỤC ĐÍCH VÀ FILE LIÊN QUAN:
   - Nêu rõ mục đích của màn hình này là gì (chức năng chính)
   - Tên màn hình (bằng tiếng Nhật, chính xác từ view code hoặc default.po)
   - Xác định file View được sử dụng (chính xác file path)
   - Xác định Controller xử lý (chính xác class và method)
   - Kiểm tra xem có sử dụng Shell/Batch/Cronjob không (nếu có, ghi rõ file path và schedule)

2. DATABASE TABLES:
   - Liệt kê TẤT CẢ các tables được sử dụng trong màn hình này
   - PHẢI check trong queries, models, không được đoán

3. SEARCH FIELDS:
   - Liệt kê TẤT CẢ các field search trên màn hình
   - Với mỗi search field, phân tích:
     
     a) Field Information: Tên field/label (bằng tiếng Nhật, chính xác từ view code hoặc default.po)
     
     b) Dropdown/Radio/Checkbox Options:
     - Nếu là dropdown/radio/checkbox, PHẢI xác định:
       * Giá trị default được select (chính xác từ code)
       * Có "Please select" hoặc "None" option không? (chính xác từ code, label bằng tiếng Nhật)
       * Options là cố định (hardcode) hay lấy từ database?
       * Nếu cố định: liệt kê TẤT CẢ options (value và label bằng tiếng Nhật, chính xác từ code)
       * Nếu từ database: chỉ ra SQL query lấy options (chính xác 100% từ code)
       * Table và column chứa options (chính xác 100%)
       * Value và Label mapping (chính xác từ code, label bằng tiếng Nhật)
     
     c) Search Logic:
     - Cách field này được sử dụng trong search (LIKE, =, IN, BETWEEN, etc.)
     - Điều kiện search (chính xác từ code)
     - Có required hay optional không (chính xác từ code)

4. SQL QUERY ĐẦY ĐỦ:
   - Tạo câu SQL đầy đủ với TẤT CẢ các search fields
   - PHẢI dựa vào code thực tế, không được tự tạo SQL
   - Nếu có dynamic SQL, ghi rõ logic build SQL (chính xác từ code)

5. TABLE COLUMNS VÀ MAPPING:
   - Liệt kê TẤT CẢ các cột hiển thị trên table
   - Với mỗi cột, phân tích:
     * Tên cột hiển thị và ý nghĩa của cột
     * Mapping với database:
       - Tên cột và bảng trong database (chính xác 100%)
       - Có transformation/formatting không (date format, number format, etc.)
       - Có join/calculation không (nếu có, ghi rõ công thức)
     * Nếu có sử dụng constants để map giá trị, ghi rõ:
       - Tên constant và giá trị của nó (chính xác từ code)

6. BUTTONS VÀ ACTIONS:
   - Liệt kê TẤT CẢ các buttons trên màn hình
   - Với mỗi button, phân tích:
     
     a) Button Information:
     - Tên button/label (bằng tiếng Nhật, chính xác từ view code hoặc default.po)
     - Button này dùng để làm gì? (chính xác từ code)
     
     b) Điều kiện Ẩn/Hiện, Enable/Disable:
     - Có điều kiện ẩn/hiện không? (chính xác điều kiện từ code)
     - Logic ẩn/hiện (role-based, data-based, state-based, chính xác từ code)
     
     c) Logic khi click: mô tả rõ logic nghiệp vụ  (step by step, không bỏ sót)
     
     d) Database Impact:
     - Table nào, cột nào bị tác động? (chính xác tên bảng)
     - Câu SQL đầy đủ thực hiện operation (chính xác 100% từ code)

7. LOGIC ĐẶC BIỆT:
   - Phân tích TẤT CẢ các logic đặc biệt:
     * Logic màu sắc (row colors, cell colors, chính xác điều kiện từ code)
     * Logic điều kiện enable/disable (ngoài buttons, các elements khác)
     * Quyền hạn truy cập (role-based permissions, chính xác từ code)
     * Conditional display (elements ẩn/hiện dựa trên điều kiện, chính xác từ code)
     * Export functionality (nếu có, chính xác từ code)
     * Bulk actions (nếu có, chính xác từ code)

8. PHẢI đọc code thực tế, KHÔNG được giả định:
   - Đọc view code để tìm search fields, table columns, buttons
   - Đọc Controller code để tìm search logic, data loading
   - Đọc Service/Model code để tìm business logic, database queries
   - Đọc JavaScript code (nếu có) để tìm frontend logic
   - Trace TẤT CẢ sub-functions, helper functions

9. SAU KHI PHÂN TÍCH XONG, BẮT BUỘC REVIEW LẠI:
   - Verify mục đích màn hình với code
   - Verify tên bảng/cột đã chính xác 100% chưa
   - Verify SQL queries đã chính xác 100% chưa
   - Verify search fields options đã chính xác chưa
   - Verify table columns mapping đã chính xác chưa
   - Verify buttons logic đã chính xác chưa
   - Verify database impact SQL đã chính xác chưa
   - Verify logic đặc biệt đã chính xác chưa
   - Đảm bảo không có thông tin nào bị bỏ sót
   - Đảm bảo không có thông tin nào được giả định