# Knowhow-content (part 05)



---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch TestCase - Test Specs\Backup\Testcase dạng Viewpoint_IT Specs_0414_VN.xlsx`

## Sheet: Testcase_common
D. CM | UI home : bỏ url
Điều kiện/luồng xử lý | Phần xác nhận
1 | Vào màn home | Biểu tượng url còn hiển thị không?
2 | Click vào button mở rộng phần tóm tắt các nguồn | Biểu tượng url còn hiển thị không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 1-1 | Bố cục và các mục hiển thị có chính xác không?
Pattern ID | Kết quả
1.0 | Vào màn home | 1-1 | CM_D_1 | Không có biểu tượng url
2.0 | 1. Vào màn home | 1-1 | CM_D_2 | Không có biểu tượng url
2. Click vào button mở rộng phần tóm tắt các nguồn
A. CM | Hiển thị màn hình list
Điều kiện/luồng xử lý | Phần xác nhận
1 | Sau khi tạo biên bản cuộc họp thành công | Hiển thị title đúng không?
2 | Sau khi tạo White paper thành công | Hiển thị title đúng không?
3 | Edit title ở detail thành công | Hiển thị title đúng không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 2-1 | Dữ liệu hiển thị trên màn hình có chính xác không?
Pattern ID | Kết quả
1.0 | 1. Sau khi tạo biên bản cuộc họp thành công | 2-1 | CM_A_1 | Dữ liệu hiển thị đúng title biên bản cuộc họp được tạo trong DB
2. Kiểm tra hiển thị màn hình list | trường title ở collection [summary]
2.0 | 1. Sau khi tạo white paper thành công | 2-1 | CM_A_2 | Dữ liệu hiển thị đúng title biên bản cuộc họp được tạo trong DB
2. Kiểm tra hiển thị màn hình list | trường title ở collection [summary]
3.0 | 1. Vào màn detail | 2-1 | CM_A_3 | Hiển thị đúng title vừa edit ở detail
2. Edit title thành công | trường title ở collection [summary]
3. Quay lại màn list, kiểm tra title hiển thị
B. CM | Màn hình detail biên bản cuộc họp
Điều kiện/luồng xử lý | Phần xác nhận
1 | Click vào bản ghi ở màn list | Title có đúng không? nội dung của tab thứ 1?
2 | Title : null | Có edit thành công không?
3 | Title : > maxlength? | Có edit thành công không?
4 | Title : nhập toàn thẻ html | Có edit thành công không?
5 | Title : nhập toàn space | Có edit thành công không?
6 | Title dài 2 dòng | Có edit thành công không?
7 | Input text title là câu lệnh SQL | Có edit thành công không?
8 | Click vào tab ホワイトペーパー | Có action gì và điều hướng như nào ?
9 | Click vào tab コメント | Có action gì và điều hướng như nào ?
10 | Edit title ở tab トランスクリプト: data hợp lệ | Có edit thành công không? có áp dụng cho khi chuyển tab không?
11 | Edit title ở tab ホワイトペーパー: data hợp lệ | Có edit thành công không? có áp dụng cho khi chuyển tab không?
12 | Edit title ở tab コメント: data hợp lệ | Có edit thành công không? có áp dụng cho khi chuyển tab không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 1-3 | Hành vi khi hover/ấn vào button/icon/link.. | Viewpoint ID： | 4-3 | Sửa thành công | Viewpoint ID： | 4-4 | Sửa thất bại | Viewpoint ID： | 2-1 | Dữ liệu hiển thị trên màn hình có chính xác không? | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ?
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả
1.0 | 1. Từ màn hình list | 1-3 | CM_B_1 | Mở màn hình detail | 2-1 | CM_B_1 | Dữ liệu hiển thị đúng trong DB
2. Click vào bản ghi biên bản cuộc họp | Collection[transcript]
2.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-4 | CM_B_2 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_B_2_2 | Hiển thị biểu tượng bàn tay
3. Bỏ trống title và lưu
3.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-4 | CM_B_3 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_B_3_2 | Hiển thị biểu tượng bàn tay
3. Nhập title > maxlength
4.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-4 | CM_B_4 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_B_4_2 | Hiển thị biểu tượng bàn tay
3. Nhập title là thẻ html
5.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-4 | CM_B_5 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_B_5_2 | Hiển thị biểu tượng bàn tay
3. Nhập toàn space vào title
6.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-4 | CM_B_6 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_B_6_2 | Hiển thị biểu tượng bàn tay
3. Nhập ký tự hợp lệ dài vào title ( tùy maxlenght)
7.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-4 | CM_B_7 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_B_7_2 | Hiển thị biểu tượng bàn tay
3. Nhập câu lệnh sql vào title
8.0 | 1. Ở màn hình detail biên bản cuộc họp | 1-3 | CM_B_8 | Hiển thị biểu tượng bàn tay | 2-1 | CM_B_8 | Dữ liệu hiển thị đúng trong DB
2. Click vào tab ホワイトペーパー | Collection[sunmary] : title
Collection [summary] : Phần summary_text
9.0 | 1. Ở màn hình detail biên bản cuộc họp | 1-3 | CM_B_9 | Hiển thị biểu tượng bàn tay | 2-1 | CM_B_9 | Dữ liệu hiển thị đúng trong DB
2. Click vào tab コメント | Collection[sunmary] : title
Collection [meeting_minutes] : Phần content
10.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-3 | CM_B_10 | Sửa thành công | 2-1 | CM_B_10 | Dữ liệu hiển thị đúng trong DB | 2-2 | CM_B_10 | Update data trường title ở collection [summary]
2. Edit title ở tab トランスクリプト: data hợp lệ | Collection[sunmary] : title
3. Kiểm tra chuyển đổi giữa các tab | Collection [meeting_minutes] : Phần content
11.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-3 | CM_B_11 | Sửa thành công | 2-1 | CM_B_11 | Dữ liệu hiển thị đúng trong DB | 2-2 | CM_B_11 | Update data trường title ở collection [summary]
2. Edit title ở tab ホワイトペーパー: data hợp lệ | Collection[sunmary] : title
3. Kiểm tra chuyển đổi giữa các tab | Collection [meeting_minutes] : Phần content
12.0 | 1. Ở màn hình detail biên bản cuộc họp | 4-3 | CM_B_12 | Sửa thành công | 2-1 | CM_B_12 | Dữ liệu hiển thị đúng trong DB | 2-2 | CM_B_12 | Update data trường title ở collection [summary]
2. Edit title ở tab コメント: data hợp lệ | Collection[sunmary] : title
3. Kiểm tra chuyển đổi giữa các tab | Collection [meeting_minutes] : Phần content
C. CM | Màn hình detail white paper
Điều kiện/luồng xử lý | Phần xác nhận
1 | Click vào bản ghi ở màn list | Title có đúng không? nội dung của tab thứ 1?
2 | Title : null | Có edit thành công không?
3 | Title : > maxlength? | Có edit thành công không?
4 | Title : nhập toàn thẻ html | Có edit thành công không?
5 | Title : nhập toàn space | Có edit thành công không?
6 | Title dài 2 dòng | Có edit thành công không?
7 | Input text title là câu lệnh SQL | Có edit thành công không?
8 | Click vào tab ホワイトペーパー | Có action gì và điều hướng như nào ?
9 | Click vào tab コメント | Có action gì và điều hướng như nào ?
10 | Edit title ở tab トランスクリプト: data hợp lệ | Có edit thành công không? có áp dụng cho khi chuyển tab không?
11 | Edit title ở tab ホワイトペーパー: data hợp lệ | Có edit thành công không? có áp dụng cho khi chuyển tab không?
12 | Edit title ở tab コメント: data hợp lệ | Có edit thành công không? có áp dụng cho khi chuyển tab không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 1-3 | Hành vi khi hover/ấn vào button/icon/link.. | Viewpoint ID： | 4-3 | Sửa thành công | Viewpoint ID： | 4-4 | Sửa thất bại | Viewpoint ID： | 2-1 | Dữ liệu hiển thị trên màn hình có chính xác không? | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ?
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả
1.0 | 1. Từ màn hình list | 1-3 | CM_C_1 | MỞ màn hình detail White paper | 2-1 | CM_C_1 | Dữ liệu hiển thị đúng trong DB
2. Click vào bản ghi white paper | Collection[transcript]
2.0 | 1. Ở màn hình detail White paper | 4-4 | CM_C_2 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_C_2_2 | Hiển thị biểu tượng bàn tay
3. Bỏ trống title và lưu
3.0 | 1. Ở màn hình detail White paper | 4-4 | CM_C_3 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_C_3_2 | Hiển thị biểu tượng bàn tay
3. Nhập title > maxlength
4.0 | 1. Ở màn hình detail White paper | 4-4 | CM_C_4 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_C_4_2 | Hiển thị biểu tượng bàn tay
3. Nhập title là thẻ html
5.0 | 1. Ở màn hình detail White paper | 4-4 | CM_C_5 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_C_5_2 | Hiển thị biểu tượng bàn tay
3. Nhập toàn space vào title
6.0 | 1. Ở màn hình detail White paper | 4-4 | CM_C_6 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_C_6_2 | Hiển thị biểu tượng bàn tay
3. Nhập ký tự hợp lệ dài vào title ( tùy maxlenght)
7.0 | 1. Ở màn hình detail White paper | 4-4 | CM_C_7 | Sửa không thành công
2. Click vào title bản tóm tắt | 1-3 | CM_C_7_2 | Hiển thị biểu tượng bàn tay
3. Nhập câu lệnh sql vào title
8.0 | 1. Ở màn hình detail White paper | 1-3 | CM_C_8 | Hiển thị biểu tượng bàn tay | 2-1 | CM_C_8 | Dữ liệu hiển thị đúng trong DB
2. Click vào tab ホワイトペーパー | Collection[sunmary] : title
Collection [white_paper] : Phần content
9.0 | 1. Ở màn hình detail White paper | 1-3 | CM_C_9 | Hiển thị biểu tượng bàn tay | 2-1 | CM_C_9 | Dữ liệu hiển thị đúng trong DB
2. Click vào tab コメント | Collection[sunmary] : title
Collection [white_paper] : Phần content
10.0 | 1. Ở màn hình detail White paper | 4-3 | CM_C_10 | Sửa thành công | 2-1 | CM_C_10 | Dữ liệu hiển thị đúng trong DB | 2-2 | CM_C_10 | Update data trường title ở collection [summary]
2. Edit title ở tab トランスクリプト: data hợp lệ | Collection[sunmary] : title
3. Kiểm tra chuyển đổi giữa các tab | Collection [white_paper] : Phần content
11.0 | 1. Ở màn hình detail White paper | 4-3 | CM_C_11 | Sửa thành công | 2-1 | CM_C_11 | Dữ liệu hiển thị đúng trong DB | 2-2 | CM_C_11 | Update data trường title ở collection [summary]
2. Edit title ở tab ホワイトペーパー: data hợp lệ | Collection[sunmary] : title
3. Kiểm tra chuyển đổi giữa các tab | Collection [white_papers] : Phần content
12.0 | 1. Ở màn hình detail White paper | 4-3 | CM_C_12 | Sửa thành công | 2-1 | CM_C_12 | Dữ liệu hiển thị đúng trong DB | 2-2 | CM_C_12 | Update data trường title ở collection [summary]
2. Edit title ở tab コメント: data hợp lệ | Collection[sunmary] : title
3. Kiểm tra chuyển đổi giữa các tab | Collection [white_paper] : Phần content
## Sheet: Testcase_Meeting-Minutes
** Luồng tao biên bản cuộc họp
A. MM0
Điều kiện | Phần xác nhận
1 | Tóm tắt các nguồn: File upload không đúng định dạng | Có upload được không?
2 | Tóm tắt các nguồn: File upload đúng định dạng nhưng không có tiếng | Có upload được không? sau khi xử lý qua azure thì sao?
3.0 | Tóm tắt các nguồn: File upload =0byte | Có upload được không? sau khi xử lý qua azure thì sao?
4.0 | Tóm tắt các nguồn: File đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Không xảy ra lỗi trong quá trình
5.0 | Tóm tắt các nguồn: File đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Xảy ra lỗi 408, retry <=3 lần và thành công
6.0 | Tóm tắt các nguồn: File đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Xảy ra lỗi 408, retry <=3 lần và không thành công
7.0 | Tóm tắt các nguồn đầy đủ: File video upload không đúng định dạng | Có upload được không?
8.0 | Tóm tắt các nguồn đầy đủ: File ghi âm upload không đúng định dạng | Có upload được không?
9.0 | Tóm tắt các nguồn đầy đủ: File video upload đúng định dạng nhưng không tiếng | Có upload được không? sau khi xử lý qua azure thì sao?
10.0 | Tóm tắt các nguồn đầy đủ: File ghi âm upload đúng định dạng nhưng không tiếng | Có upload được không? sau khi xử lý qua azure thì sao?
11.0 | Tóm tắt các nguồn đầy đủ: File video upload =0byte | Có upload được không? sau khi xử lý qua azure thì sao?
12.0 | Tóm tắt các nguồn đầy đủ: File ghi âm upload =0byte | Có upload được không? sau khi xử lý qua azure thì sao?
13.0 | Tóm tắt các nguồn đầy đủ: File video đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Không xảy ra lỗi trong quá trình
14.0 | Tóm tắt các nguồn đầy đủ: File video đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Xảy ra lỗi 408, retry <=3 lần và thành công
15.0 | Tóm tắt các nguồn đầy đủ: File video đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Xảy ra lỗi 408, retry <=3 lần và không thành công
16.0 | Tóm tắt các nguồn đầy đủ: File ghi âm đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Không xảy ra lỗi trong quá trình
17.0 | Tóm tắt các nguồn đầy đủ: File ghi âm đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Xảy ra lỗi 408, retry <=3 lần và thành công
18.0 | Tóm tắt các nguồn đầy đủ: File ghi âm đúng định dạng, >0byte, có tiếng | Có upload được không? quy trình xử lý, lưu có đúng không?sau khi xử lý qua azure thì sao?
Xảy ra lỗi 408, retry <=3 lần và không thành công
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 2-3 | Tệp có được tải lên chính xác không | Viewpoint ID： | 4-1 | Thêm thành công | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ?
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả
1.0 | 1. Vào màn hình Home | 2-3 | MM0_A_1 | Báo lỗi ? | Insert data vào collecion [target] | Update data vào collecion [target]
2. Click vào button 要約を作成 | ID | ID
3. Chọn file không đúng định dạng | target_id = get_from_azure(file upload) | target_id
2.0 | 1. Vào màn hình Home | 2-3 | MM0_A_2 | File được tải lên thành công | 4-1 | MM0_A_2 | Thêm file thành công | type = 2 (Meeting minutes)
2. Click vào button 要約を作成 | information_source :
        type = "FILE"
        target = [file name]
        file_url = NULL
        target_audio = NULL | information_source        
        file_url = [file url]
        target_audio = [URL]
3. Chọn file không đúng định dạng nhưng không có tiếng | 2-2 | MM0_A_2_3 | Insert data vào collecion [target] | share_public | share_public
4. Xử lý qua azure | 2-2 | MM0_A_2_4 | Update data vào collecion [target] | share_members | share_members
3.0 | 1. Vào màn hình Home | 2-3 | MM0_A_3 | Báo lỗi ? | share_teams | share_teams
2. Click vào button 要約を作成 | status = NOT_CREATED | status = NOT_CREATED
3. Chọn file 0 byte | error_details | error_details
4.0 | 1. Vào màn hình Home | 2-3 | MM0_A_4 | File được tải lên thành công | 4-1 | MM0_A_4 | Thêm file thành công | created_by | created_by
2. Click vào button 要約を作成 | created_at | created_at
3. Chọn file đúng định dạng, >0 byte, có tiếng nói | 2-2 | MM0_A_3_3 | Insert data vào collecion [target] | updated_by | updated_by
4. Xử lý qua azure | 2-2 | MM0_A_3_4 | Update data vào collecion [target] | updated_at | updated_at
5.0 | 1. Vào màn hình Home | 2-3 | MM0_A_5 | File được tải lên thành công | 4-1 | MM0_A_5 | Thêm file thành công | deleted_at =  NULL | deleted_at =  NULL
2. Click vào button 要約を作成 | collection_name | collection_name
3. Chọn file đúng định dạng, >0 byte, có tiếng nói | 2-2 | MM0_A_4_3 | Insert data vào collecion [target]
4. Có lỗi 408 xảy ra, tự retry <=3 lần và thành công | 2-2 | MM0_A_4_4 | Update data vào collecion [target]
6.0 | 1. Vào màn hình Home | 2-3 | MM0_A_6 | File được tải lên thành công | 4-2 | MM0_A_6 | Thêm file thành công | 2-2 | MM0_A_6 | Lưu vào collecion [log] : | type=1
2. Click vào button 要約を作成 | detail = [error message]
3. Chọn file đúng định dạng, >0 byte, có tiếng nói | Lưu vào collecion [target]: | status = ERROR
4. Có lỗi 408 xảy ra, tự retry <=3 lần và không thành công | error_details = エラー詳細
7.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_7 | Báo lỗi ?
2. Click vào button video
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成
8.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_8 | Báo lỗi ?
2. Click vào button ghi âm
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成
9.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_9 | File được tải lên thành công | 4-1 | MM0_A_9 | Thêm file thành công
2. Click vào button video
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_9_4 | Insert data vào collecion [target]
5. Xử lý qua azure | 2-2 | MM0_A_9_5 | Update data vào collecion [target]
10.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_10 | File được tải lên thành công | 4-1 | MM0_A_10 | Thêm file thành công
2. Click vào button ghi âm
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_10_4 | Insert data vào collecion [target]
5. Xử lý qua azure | 2-2 | MM0_A_10_5 | Update data vào collecion [target]
11.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_11 | File được tải lên thành công | 4-1 | MM0_A_11 | Thêm file thành công
2. Click vào button video
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_11_4 | Insert data vào collecion [target]
5. Xử lý qua azure | 2-2 | MM0_A_11_5 | Update data vào collecion [target]
12.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_12 | File được tải lên thành công | 4-1 | MM0_A_12 | Thêm file thành công
2. Click vào button ghi âm
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_12_4 | Insert data vào collecion [target]
5. Xử lý qua azure | 2-2 | MM0_A_12_5 | Update data vào collecion [target]
13.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_13 | File được tải lên thành công | 4-1 | MM0_A_13 | Thêm file thành công
2. Click vào button video
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_13_4 | Insert data vào collecion [target]
5. Xử lý qua azure | 2-2 | MM0_A_13_5 | Update data vào collecion [target]
14.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_14 | File được tải lên thành công | 4-1 | MM0_A_14 | Thêm file thành công
2. Click vào button video
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_14_4 | Insert data vào collecion [target]
5. Xử lý azure : Có lỗi 408 xảy ra, tự retry <=3 lần và thành công | 2-2 | MM0_A_14_5 | Update data vào collecion [target]
15.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_15 | File được tải lên thành công | 4-1 | MM0_A_15 | Thêm file thành công | 2-2 | MM0_A_15 | Lưu vào collecion [log] : | type=1
2. Click vào button video | detail = [error message]
3. Chọn file đúng định dạng, >0 byte, có tiếng nói | Lưu vào collecion [target]: | status = ERROR
4. Click button 要約を作成 | error_details = エラー詳細
5. Xử lý azure :Có lỗi 408 xảy ra, tự retry <=3 lần và không thành công
16.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_16 | File được tải lên thành công | 4-1 | MM0_A_16 | Thêm file thành công, convert thành file wav
2. Click vào button ghi âm
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_16_4 | Insert data vào collecion [target]
5. Xử lý qua azure | 2-2 | MM0_A_16_5 | Update data vào collecion [target]
17.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_17 | File được tải lên thành công | 4-1 | MM0_A_17 | Thêm file thành công, convert thành file wav
2. Click vào button ghi âm
3. Chọn file đúng định dạng, >0 byte, có tiếng nói
4. Click button 要約を作成 | 2-2 | MM0_A_17_4 | Insert data vào collecion [target]
5. Xử lý azure :Có lỗi 408 xảy ra, tự retry <=3 lần và thành công | 2-2 | MM0_A_17_5 | Update data vào collecion [target]
18.0 | 1. Vào màn hình Home, click vào button mở form tóm tắt đầy đủ | 2-3 | MM0_A_18 | File được tải lên thành công | 4-1 | MM0_A_18 | Thêm file thành công, convert thành file wav | 2-2 | MM0_A_18 | Lưu vào collecion [log] : | type=1
2. Click vào button ghi âm | detail = [error message]
3. Chọn file đúng định dạng, >0 byte, có tiếng nói | Lưu vào collecion [target]: | status = ERROR
4. Click button 要約を作成 | error_details = エラー詳細
5. Xử lý azure :Có lỗi 408 xảy ra, tự retry <=3 lần và không thành công
B. MM1 | meeting_minutes_transcription_creation
Điều kiện/luồng xử lý | Phần xác nhận
1 | Nhận file wav : File 0byte | Có cập nhật DB không? có lỗi gì không?
Xử lý qua Azure
2 | Nhận file wav : File không có tiếng để gen text | Có cập nhật DB không? có lỗi gì không?
Xử lý qua Azure
3 | Nhận file wav : File có tiếng có thể gen ra text , File 30 phút | Có cập nhật DB không? có lỗi gì không?
Thời gian xử lý <= 30 phút thành công
4.0 | Nhận file wav : File có tiếng có thể gen ra text, File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xử lý function > 30 phút, có throw exception timeout
5.0 | Nhận file wav : File có tiếng có thể gen ra text, File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), có throw exception
6.0 | Nhận file wav : File có tiếng có thể gen ra text, File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
7.0 | Nhận file wav : File có tiếng có thể gen ra text , File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xử lý function <= 30 phút thành công
8.0 | Nhận file wav : File có tiếng có thể gen ra text, File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xử lý function > 30 phút, có throw exception timeout
9.0 | Nhận file wav : File có tiếng có thể gen ra text, File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), có throw exception
10.0 | Nhận file wav : File có tiếng có thể gen ra text, File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
11.0 | Lấy raw text to collection | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert data vào collection [transcript]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | id | IN_PROGRESS_TRANSCRIPT
1.0 | 1. Nhận file wav : File 0byte | 4-2 | MM1_A_1 | Gen thất bại | ai_model_id | Used AI model ID | target_id | target.target_id
2. Xử lý qua Azure | input_token | Number of input tokens | text | from Azure
output_token | Number of output tokens | progress | RAW_DATA
2.0 | 1. Nhận file wav : File không có tiếng để gen text | 4-2 | MM1_A_2 | Gen thất bại | created_by | Summary creator and editor user ID | created_at | time()
2. Xử lý qua Azure | year | Statistics year | updated_at | time()
month | Statistics month | deleted_at | null
3.0 | 1. Nhận file wav 30 phút: File có tiếng để gen text | 4-1 | MM1_A_3 | Gen thành công | 2-2 | MM1_A_3_1 | Update data vào collecion [target] : status:IN_PROGRESS_TRANSCRIPT | collection_name | Collection name | collection_name | Name of Meeting
2. Xử lý function <= 30 phút và thành công | 2-2 | MM1_A_3_2 | Insert data vào collection[usage_stat] | Insert data vào collection [log] | Insert lỗi vào poison queue[target]
id | Key(id) | status | ERROR
4.0 | 1. Nhận file wav 30 phút: File có tiếng để gen text | 4-2 | MM1_A_4 | Gen thất bại | 2-2 | MM1_A_4 | Insert lỗi vào poison queue[target] | target_id | ID đối tượng | error_detail | エラー詳細
2. Xử lý function > 30 phút không thành công, có throw exception timeout | Insert lỗi vào collection [log] | type | 0:OK, 1:ERROR | updated_by
date | updated_at
5.0 | 1. Nhận file wav 30 phút: File có tiếng để gen text | 4-2 | MM1_A_5 | Gen thất bại | 2-2 | MM1_A_5 | Insert lỗi vào collection [log] | detail
2. Xảy ra lỗi ( không phải lỗi timeout), có throw exception | collection_name | Collection name
6.0 | 1. Nhận file wav 30 phút: File có tiếng để gen text | 4-2 | MM1_A_6 | Gen thất bại | 2-2 | MM1_A_6 | Insert lỗi vào collection [log]
2. Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
7.0 | 1. Nhận file wav 2 tiếng: File có tiếng để gen text | 4-1 | MM1_A_7 | Gen thành công | 2-2 | MM1_A_7_1 | Update data vào collecion [target] : status:IN_PROGRESS_TRANSCRIPT
2. Xử lý function <= 30 phút và thành công | 2-2 | MM1_A_7_2 | Insert data vào collection[usage_stat]
8.0 | 1. Nhận file wav 2 tiếng: File có tiếng để gen text | 4-2 | MM1_A_8 | Gen thất bại | 2-2 | MM1_A_8 | Insert lỗi vào poison queue[target]
2. Xử lý function > 30 phút không thành công, có throw exception timeout | Insert lỗi vào collection [log]
9.0 | 1. Nhận file wav 2 tiếng: File có tiếng để gen text | 4-2 | MM1_A_9 | Gen thất bại | 2-2 | MM1_A_9 | Insert lỗi vào collection [log]
2. Xảy ra lỗi ( không phải lỗi timeout), có throw exception
10.0 | 1. Nhận file wav 2 tiếng: File có tiếng để gen text | 4-2 | MM1_A_10 | Gen thất bại | 2-2 | MM1_A_10 | Insert lỗi vào collection [log]
2. Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
11.0 | 1. Sau khi xử lý function thành công | 2-2 | MM1_A_11 | Insert data vào collection[transcript] : progress ： RAW_DATA
2. Lấy raw text to collection
C. MM2 | meeting-minutes-post-processing
Điều kiện/luồng xử lý | Phần xác nhận
1 | Lấy text từ transcript ở MM1 | Có cập nhật DB không?
Xử lý OpenAI <=30 phút và thành công
2 | Lấy text từ transcript ở MM1 | Có cập nhật DB không?
Xử lý function > 30 phút, có throw exception timeout
3 | Lấy text từ transcript ở MM1 | Có cập nhật DB không?
Xảy ra lỗi ( không phải lỗi timeout), có throw exception
4.0 | Lấy text từ transcript ở MM1 | Có cập nhật DB không?
Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
5.0 | Sau khi xử lý OpenAi lấy text thành công | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert data vào collection [transcript] | Insert data vào collection [speaker_identification]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | id | id
1.0 | 1. Lấy text từ transcript ở MM1 | 4-1 | MM2_B_1 | Hậu chuẩn dữ liệu thành công | 2-2 | MM2_B_1 | Insert data vào collection[usage_stat] | ai_model_id | Used AI model ID | target_id | target.target_id | target_id | target.target_id
2. Xử lý OpenAI <=30 phút và thành công | input_token | Number of input tokens | text | from OpenAI | identification
output_token | Number of output tokens | progress | PROCESSED_DATA | time | timestamp
2.0 | 1. Lấy text từ transcript ở MM1 | 4-2 | MM2_B_2 | Hậu chuẩn dữ liệu không thành công | 2-2 | MM2_B_2 | Insert lỗi vào poison queue[target] | created_by | Summary creator and editor user ID | created_at | time() | user_id | auto gen
2. Xử lý function > 30 phút, có throw exception timeout | Insert lỗi vào collection [log] | year | Statistics year | updated_at | time() | conversation | time()
month | Statistics month | deleted_at | null | user_list | all of speaker
3.0 | 1. Lấy text từ transcript ở MM1 | 4-2 | MM2_B_3 | Hậu chuẩn dữ liệu không thành công | 2-2 | MM2_B_3 | Insert lỗi vào collection [log] | collection_name | Collection name | collection_name | Name of Meeting | user_id
2. Xảy ra lỗi ( không phải lỗi timeout), có throw exception | Insert data vào collection [log] | Insert lỗi vào poison queue[target] | name
id | Key(id) | status | ERROR | collection_name
4.0 | 1. Lấy text từ transcript ở MM1 | 4-2 | MM2_B_4 | Hậu chuẩn dữ liệu không thành công | 2-2 | MM2_B_4 | Insert lỗi vào collection [log] | target_id | ID đối tượng | error_detail | エラー詳細
2. Xảy ra lỗi ( không phải lỗi timeout), không có throw exception | type | 0:OK, 1:ERROR | updated_by
date | updated_at
4.0 | 1. Sau khi xử lý OpenAi lấy text thành công | 2-2 | MM2_B_5 | Insert data vào collection[transcript] : progress : PROCESSED_DATA | detail
2. Write to collection | Insert data vào collection[speaker_identification] | collection_name | Collection name
D. MM3 | meeting-minutes-create-agenda
Điều kiện/luồng xử lý | Phần xác nhận
1 | Sau xử lý OpenAI ở MM2 | Có cập nhật DB không?
2 | Lấy text từ MM2 | Có cập nhật DB không?
Xử lý OpenAI <=30 phút và thành công
3 | Lấy text từ MM2 | Có cập nhật DB không?
Xử lý OpenAI > 30 phút, có throw exception timeout
4.0 | Lấy text từ MM2 | Có cập nhật DB không?
Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), có throw exception
5.0 | Lấy text từ MM2 | Có cập nhật DB không?
Xử lý OpenAI : Xảy ra lỗi ( không phải timeout), không có throw exception
6.0 | Sau khi xử lý OpenAi thành công | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Update data vào collection [target] | Insert data vào collection [meeting_minutes]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | status | IN_PROGRESS_MEETING_MINUTES | id
1.0 | Sau xử lý OpenAI ở MM2 | 2-2 | MM3_D_1 | Upate data vào collection[target]: status= IN_PROGRESS_MEETING_MINUTES | ai_model_id | Used AI model ID | updated_by | user_id | target_id
input_token | Number of input tokens | updated_at | time() | start_date
output_token | Number of output tokens | end_date
2.0 | 1. Lấy text từ MM2 | 4-1 | MM3_D_2 | Trích xuất Agenda thành công | 2-2 | MM3_D_2 | Insert data vào collection[usage_stat] | created_by | Summary creator and editor user ID | participants
2. Xử lý OpenAI <=30 phút và thành công | year | Statistics year | participants_others
month | Statistics month | overview
3.0 | 1. Lấy text từ MM2 | 4-2 | MM3_D_3 | Trích xuất agenda thất bại | 2-2 | MM3_D_3 | Insert lỗi vào poison queue[target] | collection_name | Collection name | progress | AGENDA
2. Xử lý OpenAI > 30 phút, có throw exception timeout | Insert lỗi vào collection [log] | Insert data vào collection [log] | Insert data vào poison queue[target] | agenda
id | Key(id) | status | ERROR | contents
4.0 | 1. Lấy text từ MM2 | 4-2 | MM3_D_4 | Trích xuất agenda thất bại | 2-2 | MM3_D_4 | Insert lỗi vào collection [log] | target_id | ID đối tượng | error_detail | エラー詳細 | decision
2. Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), có throw exception | type | 0:OK, 1:ERROR | updated_by | contents
date | updated_at | issue
5.0 | 1. Lấy text từ MM2 | 4-2 | MM3_D_5 | Trích xuất agenda thất bại | 2-2 | MM3_D_5 | Insert lỗi vào collection [log] | detail | contens
2. Xử lý OpenAI : Xảy ra lỗi ( không phải timeout), không có throw exception | collection_name | Collection name | next_action
contents
6.0 | 1. Sau khi xử lý OpenAI thành công | 2-2 | MM3_D_6 | Insert data vào collection[meeting_minutes] | ollection_name
2. Write to collection
E. MM4 | meeting-minutes-enhance-agenda
Điều kiện/luồng xử lý | Phần xác nhận
1 | Lấy text Agenda từ MM3 | Có cập nhật DB không?
Xử lý OpenAI <=30 phút và thành công
2 | Lấy text Agenda từ MM3 | Có cập nhật DB không?
Xử lý OpenAI > 30 phút, có throw exception timeout
3 | Lấy text Agenda từ MM3 | Có cập nhật DB không?
Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), có throw exception
4.0 | Lấy text Agenda từ MM3 | Có cập nhật DB không?
Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), không có throw exception
5.0 | Sau khi xử lý OpenAI thành công | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert lỗi vào poison queue[target] | Insert data vào collection [meeting_minutes]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | status | ERROR | id
1.0 | 1. Lấy text Agenda từ MM3 | 4-1 | MM4_E_1 | Bổ sung data Agenda thành công | 2-2 | MM4_E_1 | Insert data vào collection[usage_stat] | created_by | Summary creator and editor user ID | error_detail | エラー詳細 | target_id
2. Xử lý OpenAI <=30 phút và thành công | year | Statistics year | updated_by | start_date
month | Statistics month | updated_at | end_date
2.0 | 1. Lấy text Agenda từ MM3 | 4-2 | MM4_E_2 | Bổ sung data Agenda thất bại | 2-2 | MM4_E_2 | Insert lỗi vào poison queue[target] | collection_name | Collection name | participants
2. Xử lý OpenAI > 30 phút, có throw exception timeout | Insert lỗi vào collection [log] | Insert data vào collection [log] | Insert data vào collection[summary] | participants_others
id | Key(id) | フィールド名 / field | 説明 / description | progress | AGENDA_EXT
3.0 | 1. Lấy text Agenda từ MM3 | 4-2 | MM4_E_3 | Bổ sung data Agenda thất bại | 2-2 | MM4_E_3 | Insert lỗi vào collection [log] | target_id | ID đối tượng | id | Key | agenda
2. Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), có throw exception | type | 0:OK, 1:ERROR | target_id | ID đối tượng tóm tắt | contents
date | title | target.information_source.target | decision
4.0 | 1. Lấy text Agenda từ MM3 | 4-2 | MM4_E_4 | Bổ sung data Agenda thất bại | 2-2 | MM4_E_4 | Insert lỗi vào collection [log] | detail | summary_text | meeting_minutes.agenda | contents
2. Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), không có throw exception | collection_name | Collection name | created_at | Created datetime | issue
updated_at | Updated datetime | contens
5.0 | 1. Sau khi xử lý OpenAI thành công | 2-2 | MM4_E_5 | Insert data vào collection[meeting_minutes] | collection_name | Collection name | next_action
2. Write to collection | Insert data vào collection[summary] | contents
ollection_name
F. MM5 | meeting-minutes-final-output
Điều kiện/luồng xử lý | Phần xác nhận
1 | Lấy text Agenda từ MM4 | Có cập nhật DB không?
Xử lý OpenAI <=30 phút và thành công
2 | Lấy text Agenda từ MM4 | Có cập nhật DB không?
Xử lý OpenAI > 30 phút, có throw exception timeout
3 | Lấy text Agenda từ MM4 | Có cập nhật DB không?
Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), có throw exception
4.0 | Lấy text Agenda từ MM4 | Có cập nhật DB không?
Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), không có throw exception
5.0 | Sau khi xử lý OpenAI thành công | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert lỗi vào poison queue[target] | Insert data vào collection [meeting_minutes]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | status | ERROR | id
1.0 | 1. Lấy text Agenda từ MM4 | 4-1 | MM5_F_1 | Chuẩn hóa dữ liệu thành công | 2-2 | MM5_F_1 | Insert data vào collection[usage_stat] | created_by | Summary creator and editor user ID | error_detail | エラー詳細 | target_id
2. Xử lý OpenAI <=30 phút và thành công | year | Statistics year | updated_by | start_date
month | Statistics month | updated_at | end_date
2.0 | 1. Lấy text Agenda từ MM4 | 4-2 | MM5_F_2 | Chuẩn hóa dữ liệu thành công | 2-2 | MM5_F_2 | Insert lỗi vào poison queue[target] | collection_name | Collection name | participants
2. Xử lý OpenAI > 30 phút, có throw exception timeout | Insert lỗi vào collection [log] | Insert data vào collection [log] | Update data vào collection[target] | participants_others
id | Key(id) | status | COMPLETE | progress | FINAL
3.0 | 1. Lấy text Agenda từ MM4 | 4-2 | MM5_F_3 | Chuẩn hóa dữ liệu thành công | 2-2 | MM5_F_3 | Insert lỗi vào collection [log] | target_id | ID đối tượng | updated_by | user_id | agenda
2. Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), có throw exception | type | 0:OK, 1:ERROR | updated_at | time() | contents
date | decision
4.0 | 1. Lấy text Agenda từ MM4 | 4-2 | MM5_F_4 | Chuẩn hóa dữ liệu thành công | 2-2 | MM5_F_4 | Insert lỗi vào collection [log] | detail | contents
2. Xử lý OpenAI :Xảy ra lỗi ( không phải timeout), không có throw exception | collection_name | Collection name | issue
contens
5.0 | 1. Sau khi xử lý OpenAI thành công | 4-1 | MM5_F_5 | Tạo biên bản cuộc họp thành công | 2-2 | MM5_F_5 | Insert data vào collection[meeting_minutes] | next_action
2. Write to collection | Update data vào collection[target] | contents
ollection_name
## Sheet: Testcase_White-paper
** Luồng gen whitepaper
A. WP1 | white-paper-transcription-creation
Điều kiện/luồng xử lý | Phần xác nhận
1 | Nhận file wav : File 0byte | Có cập nhật DB không? có lỗi gì không?
Xử lý qua Azure
2 | Nhận file wav : File không có tiếng để gen text | Có cập nhật DB không? có lỗi gì không?
Xử lý qua Azure
3 | Nhận file wav : file ghi âm | Có cập nhật DB không? có lỗi gì không?
Xử lý qua Azure
4 | Nhận file wav : File có tiếng có thể gen ra text , File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xử lý function <= 30 phút thành công
5.0 | Nhận file wav : File có tiếng có thể gen ra text, File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xử lý function > 30 phút, có throw exception timeout
6.0 | Nhận file wav : File có tiếng có thể gen ra text, File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), có throw exception
7.0 | Nhận file wav : File có tiếng có thể gen ra text, File 30 phút | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
8.0 | Nhận file wav : File có tiếng có thể gen ra text , File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xử lý function <= 30 phút thành công
9.0 | Nhận file wav : File có tiếng có thể gen ra text, File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xử lý function > 30 phút, có throw exception timeout
20.0 | Nhận file wav : File có tiếng có thể gen ra text, File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), có throw exception
11.0 | Nhận file wav : File có tiếng có thể gen ra text, File 2 tiếng | Có cập nhật DB không? có lỗi gì không?
Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
12.0 | Lấy raw text to collection | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert data vào collection [transcript]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | id | IN_PROGRESS_TRANSCRIPT
1.0 | 1. Nhận file wav : File 0byte | 4-2 | WP1_A_1 | Gen thất bại | ai_model_id | Used AI model ID | target_id | target.target_id
2. Xử lý qua Azure | input_token | Number of input tokens | text | from Azure
output_token | Number of output tokens | progress | RAW_DATA
2.0 | 1. Nhận file wav : File không có tiếng để gen text | 4-2 | WP1_A_2 | Gen thất bại | created_by | Summary creator and editor user ID | created_at | time()
2. Xử lý qua Azure | year | Statistics year | updated_at | time()
month | Statistics month | deleted_at | null
3.0 | 1. Nhận file wav từ file ghi âm | 4-2 | WP1_A_3 | Gen thất bại | created_by | Summary creator and editor user ID | created_at | time()
2. Xử lý qua Azure | year | Statistics year | updated_at | time()
month | Statistics month | deleted_at | null
4.0 | 1. Nhận file wav : File có tiếng để gen text, dài 30 phút | 4-1 | WP1_A_4 | Gen thành công | 2-2 | WP1_A_4_1 | Update data vào collecion [target] : status:IN_PROGRESS_TRANSCRIPT | collection_name | Collection name | collection_name | Name of Meeting
2. Xử lý function <= 30 phút và thành công | 2-2 | WP1_A_4_2 | Insert data vào collection[usage_stat] | Insert data vào collection [log] | Insert lỗi vào poison queue[target]
id | Key(id) | status | ERROR
5.0 | 1. Nhận file wav : File có tiếng để gen text, dài 30 phút | 4-2 | WP1_A_5 | Gen thất bại | 2-2 | WP1_A_5 | Insert lỗi vào poison queue[target] | target_id | ID đối tượng | error_detail | エラー詳細
2. Xử lý function > 30 phút, có throw exception timeout | Insert lỗi vào collection [log] | type | 0:OK, 1:ERROR | updated_by
date | updated_at
6.0 | 1. Nhận file wav : File có tiếng để gen text, dài 30 phút | 4-2 | WP1_A_6 | Gen thất bại | 2-2 | WP1_A_6 | Insert lỗi vào collection [log] | detail
2. Xảy ra lỗi ( không phải lỗi timeout), có throw exception | collection_name | Collection name
7.0 | 1. Nhận file wav : File có tiếng để gen text, dài 30 phút | 4-2 | WP1_A_7 | Gen thất bại | 2-2 | WP1_A_7 | Insert lỗi vào collection [log]
2. Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
8.0 | 1. Nhận file wav : File có tiếng để gen text, dài 2 tiếng | 4-1 | WP1_A_8 | Gen thành công | 2-2 | WP1_A_8_1 | Update data vào collecion [target] : status:IN_PROGRESS_TRANSCRIPT
2. Xử lý function <= 30 phút và thành công | 2-2 | WP1_A_8_2 | Insert data vào collection[usage_stat]
9.0 | 1. Nhận file wav : File có tiếng để gen text, dài 2 tiếng | 4-2 | WP1_A_9 | Gen thất bại | 2-2 | WP1_A_9 | Insert lỗi vào poison queue[target]
2. Xử lý function > 30 phút, có throw exception timeout | Insert lỗi vào collection [log]
10.0 | 1. Nhận file wav : File có tiếng để gen text, dài 2 tiếng | 4-2 | WP1_A_10 | Gen thất bại | 2-2 | WP1_A_10 | Insert lỗi vào collection [log]
2. Xảy ra lỗi ( không phải lỗi timeout), có throw exception
11.0 | 1. Nhận file wav : File có tiếng để gen text, dài 2 tiếng | 4-2 | WP1_A_11 | Gen thất bại | 2-2 | WP1_A_11 | Insert lỗi vào collection [log]
2. Xảy ra lỗi ( không phải lỗi timeout), không có throw exception
12.0 | 1. Sau khi xử lý function thành công | 2-2 | WP1_A_12 | Insert data vào collection[transcript] : progress : RAW_DATA
2. Lấy raw text to collection
B. WP2 | white-paper-post-processing
Điều kiện/luồng xử lý | Phần xác nhận
1 | Lấy text từ transcript ở WP1 | Có cập nhật DB không?
Hậu chuẩn qua OpenAI <=30 phút và thành công
2 | Lấy text từ transcript ở WP1 | Có cập nhật DB không?
Hậu chuẩn qua OpenAI >30 phút và có throw exception timeout
3 | Lấy text từ transcript ở WP1 | Có cập nhật DB không?
Hậu chuẩn qua OpenAI lỗi ( không phải timeout) và có throw exception
4.0 | Lấy text từ transcript ở WP1 | Có cập nhật DB không?
Hậu chuẩn qua OpenAI lỗi ( không phải timeout) và không có throw exception
5.0 | Sau khi xử lý OpenAi lấy text thành công | Có cập nhật DB không?
Insert data vào collection [usage_stat] | Insert data vào collection [transcript] | Insert data vào collection [speaker_identification]
id | Usage statistics ID | id | id
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | ai_model_id | Used AI model ID | target_id | target.target_id | target_id | target.target_id
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | input_token | Number of input tokens | text | from OpenAI | identification
1.0 | 1. Lấy text từ transcript ở MM1 | 4-1 | WP2_B_1 | Hậu chuẩn dữ liệu thành công | 2-2 | WP2_B_1 | Insert data vào collection[usage_stat] | output_token | Number of output tokens | progress | PROCESSED_DATA | time | timestamp
2. Xử lý OpenAI <=30 phút và thành công | created_by | Summary creator and editor user ID | created_at | time() | user_id | auto gen
year | Statistics year | updated_at | time() | conversation | time()
2.0 | 1. Lấy text từ transcript ở MM1 | 4-2 | WP2_B_2 | Hậu chuẩn dữ liệu không thành công | 2-2 | WP2_B_2 | Insert lỗi vào poison queue[target] | month | Statistics month | deleted_at | null | user_list | all of speaker
2. Hậu chuẩn qua OpenAI >30 phút và có throw exception timeout | Insert lỗi vào collection [log] | collection_name | Collection name | collection_name | Name of Meeting | user_id
Insert data vào collection [log] | Insert lỗi vào poison queue[target] | name
3.0 | 1. Lấy text từ transcript ở MM1 | 4-2 | WP2_B_3 | Hậu chuẩn dữ liệu không thành công | 2-2 | WP2_B_3 | Insert lỗi vào collection [log] | id | Key(id) | status | ERROR | collection_name
2. Hậu chuẩn qua OpenAI lỗi ( không phải timeout) và có throw exception | target_id | ID đối tượng | error_detail | エラー詳細
type | 0:OK, 1:ERROR | updated_by
4.0 | 1. Lấy text từ transcript ở MM1 | 4-2 | WP2_B_4 | Hậu chuẩn dữ liệu không thành công | 2-2 | WP2_B_4 | Insert lỗi vào collection [log] | date | updated_at
2. Hậu chuẩn qua OpenAI lỗi ( không phải timeout) và không có throw exception | detail
collection_name | Collection name
4.0 | 1. Sau khi xử lý OpenAi lấy text thành công | 2-2 | WP2_B_5 | Insert data vào collection[transcript] : progress : PROCESSED_DATA | date | updated_at
2. Write to collection | Insert data vào collection[speaker_identification] | detail
collection_name | Collection name
C. WP3 | white-paper-create-summary
Điều kiện/luồng xử lý | Phần xác nhận
1 | Sau xử lý OpenAI ở WP2 | Có cập nhật DB không?
2 | Lấy text từ WP2 | Có cập nhật DB không?
Trích xuất seminar bằng OpenAI <=30 phút và thành công
3 | Lấy text từ WP2 | Có cập nhật DB không?
Trích xuất seminar bằng OpenAI >30 phút và throw exception timeout
4.0 | Lấy text từ WP2 | Có cập nhật DB không?
Trích xuất seminar bằng OpenAI lỗi ( không phải timeout ) và throw exception
5.0 | Lấy text từ WP2 | Có cập nhật DB không?
Trích xuất seminar bằng OpenAI lỗi ( không phải timeout ) và không có throw exception
6.0 | Sau khi xử lý OpenAI thành công | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Update data vào collection [target] | Insert data vào collection [summary]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | status | IN_PROGRESS_SUMMARY | id | key
1.0 | Sau xử lý OpenAI ở MM2 | 2-2 | WP3_D_1 | Upate data vào collection[target]: status= IN_PROGRESS_SUMMARY | ai_model_id | Used AI model ID | updated_by | user_id | target_id | ID đối tượng tóm tắt
input_token | Number of input tokens | updated_at | time() | title | title
output_token | Number of output tokens | summary_text | Summary_ext
2.0 | 1. Lấy text từ MM2 | 4-1 | WP3_D_2 | Trích xuất Agenda thành công | 2-2 | WP3_D_2 | Insert data vào collection[usage_stat] | created_by | Summary creator and editor user ID | created_at | Created datetime
2. Trích xuất seminar bằng OpenAI <=30 phút và thành công | year | Statistics year | updated_at | Updated datetime
month | Statistics month | collection_name | Collection_name
3.0 | 1. Lấy text từ MM2 | 4-2 | WP3_D_3 | Trích xuất agenda thất bại | 2-2 | WP3_D_3 | Insert lỗi vào poison queue[target] | collection_name | Collection name
2. Trích xuất seminar bằng OpenAI >30 phút và throw exception timeout | Insert lỗi vào collection [log] | Insert data vào collection [log] | Insert lỗi vào poison queue[target]
id | Key(id) | status | ERROR
4.0 | 1. Lấy text từ MM2 | 4-2 | WP3_D_4 | Trích xuất agenda thất bại | 2-2 | WP3_D_4 | Insert lỗi vào collection [log] | target_id | ID đối tượng | error_detail | エラー詳細
2. Trích xuất seminar bằng OpenAI lỗi ( không phải timeout ) và throw exception | type | 0:OK, 1:ERROR | updated_by
date | updated_at
5.0 | 1. Lấy text từ MM2 | 4-2 | WP3_D_5 | Trích xuất agenda thất bại | 2-2 | WP3_D_5 | Insert lỗi vào collection [log] | detail
2. Trích xuất seminar bằng OpenAI lỗi ( không phải timeout ) và không có throw exception | collection_name | Collection name
6.0 | 1. Sau khi trích xuất seminar bằng OpenAI thành công | 2-2 | WP3_D_6 | Insert data vào collection[summary]
2. Write to collection
D.WP4 | white-paper-create-text
Điều kiện/luồng xử lý | Phần xác nhận
1 | Sau Trích xuất seminar bằng OpenAI ở WP3 | Có cập nhật DB không?
2 | Lấy text outpout ở summary từ WP3 | Có cập nhật DB không?
Xử lý thông tin bằng OpenAI <=30 phút và thành công
2 | Lấy text outpout ở summary từ WP3 | Có cập nhật DB không?
Xử lý thông tin bằng OpenAI >30 phút và throw exception timeout
3 | Lấy text từ WP3 | Có cập nhật DB không?
Xử lý thông tin bằng OpenAI lỗi ( không phải timeout ) và throw exception
4.0 | Lấy text từ WP3 | Có cập nhật DB không?
Xử lý thông tin bằng OpenAI lỗi ( không phải timeout ) và không có throw exception
5.0 | Sau khi xử lý OpenAI thành công | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert lỗi vào poison queue[target] | Insert data vào collection [white_paper]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | status | ERROR | id
1.0 | Sau Trích xuất seminar bằng OpenAI ở WP3 | 2-2 | WP4_E_1 | Update data vào collection[target] : status : IN_PROGRESS_WHITE_PAPER | created_by | Summary creator and editor user ID | error_detail | エラー詳細 | target_id
year | Statistics year | updated_by | title
month | Statistics month | updated_at | sub_title
2.0 | 1. Lấy text outpout ở summary từ WP3 | 4-1 | WP4_E_2 | Bổ sung data Agenda thành công | 2-2 | WP4_E_2 | Insert data vào collection[usage_stat] | created_by | Summary creator and editor user ID | error_detail | エラー詳細 | overview
2. Xử lý OpenAI <=30 phút và thành công | year | Statistics year | updated_by | image | NULL
month | Statistics month | updated_at | contents
3.0 | 1. Lấy text outpout ở summary từ WP3 | 4-2 | WP4_E_3 | Bổ sung data Agenda thất bại | 2-2 | WP4_E_3 | Insert lỗi vào poison queue[target] | collection_name | Collection name | table_contents
2. Xử lý thông tin bằng OpenAI >30 phút và throw exception timeout | Insert lỗi vào collection [log] | Insert data vào collection [log] | Update data vào collection[target] | contents
id | Key(id) | status | IN_PROGRESS_WHITE_PAPER | main_text | main_text
4.0 | 1. Lấy text outpout ở summary từ WP3 | 4-2 | WP4_E_4 | Bổ sung data Agenda thất bại | 2-2 | WP4_E_4 | Insert lỗi vào collection [log] | target_id | ID đối tượng | updated_by | user_id | title | title
2. Xử lý thông tin bằng OpenAI lỗi ( không phải timeout ) và throw exception | type | 0:OK, 1:ERROR | updated_at | time() | time | timestamp
date | image | NULL
5.0 | 1. Lấy text outpout ở summary từ WP3 | 4-2 | WP4_E_5 | Bổ sung data Agenda thất bại | 2-2 | WP4_E_5 | Insert lỗi vào collection [log] | detail | contents | contents
2. Xử lý thông tin bằng OpenAI lỗi ( không phải timeout ) và không có throw exception | collection_name | Collection name | collecion_name | collection name
6.0 | 1. Sau khi xử lý OpenAI thành công | 2-2 | WP4_E_6 | Insert data vào collection[white_paper]
2. Write to collection
E. WP5 | white-paper-filter-images
Điều kiện/luồng xử lý | Phần xác nhận
1 | Lấy video gốc từ collection[target] | Có cập nhật DB không?
Xử lý OpenCV, OpenAI <=30 phút và thành công
2 | Lấy video gốc từ collection[target] | Có cập nhật DB không?
Xử lý OpenCV, OpenAI >30 phút và throw exception timeout
3 | Lấy video gốc từ collection[target] | Có cập nhật DB không?
Xử lý OpenCV, OpenAI lỗi( không phải timeout) và throw exception
4.0 | Lấy video gốc từ collection[target] | Có cập nhật DB không?
Xử lý OpenCV, OpenAI lỗi( không phải timeout) và không có throw exception
5.0 | Sau khi xử lý OpenCV,OpenAI thành công | Có cập nhật DB không?
6.0 | Lấy thông tin seminar từ white_paper chuyển đổi text và ảnh thành white_paper | Có cập nhật DB không?
Điều kiện | Step/luồng xử lý | Viewpoint ID： | 4-1 | Thêm/gen thành công | Viewpoint ID： | 4-1 | Thêm/gen thất bại | Viewpoint ID： | 2-2 | Nội dung DB có được cập nhật chính xác không ? | Insert data vào collection [usage_stat] | Insert lỗi vào poison queue[target]
Pattern ID | Kết quả | Pattern ID | Kết quả | Pattern ID | Kết quả | id | Usage statistics ID | status | ERROR
1.0 | 1. Lấy video gốc từ collection[target] | 4-1 | MM5_E_1 | Tìm, chọn và chỉnh sửa ảnh thành công | 2-2 | MM5_F_1 | Insert data vào collection[usage_stat] | created_by | Summary creator and editor user ID | error_detail | エラー詳細
2. Xử lý OpenCV, OpenAI <=30 phút và thành công | year | Statistics year | updated_by
month | Statistics month | updated_at
2.0 | 1. Lấy video gốc từ collection[target] | 4-2 | MM5_E_2 | Tìm, chọn và chỉnh sửa ảnh không thành công | 2-2 | MM5_F_2 | Insert lỗi vào poison queue[target] | collection_name | Collection name
2. Xử lý OpenCV, OpenAI >30 phút và throw exception timeout | Insert lỗi vào collection [log] | Insert data vào collection [log] | Upate data vào collection [white_paper]
id | Key(id) | id
3.0 | 1. Lấy video gốc từ collection[target] | 4-2 | MM5_E_3 | Tìm, chọn và chỉnh sửa ảnh không thành công | 2-2 | MM5_F_3 | Insert lỗi vào collection [log] | target_id | ID đối tượng | target_id
2. Xử lý OpenCV, OpenAI lỗi( không phải timeout) và throw exception | type | 0:OK, 1:ERROR | overview
date | contents
4.0 | 1. Lấy video gốc từ collection[target] | 4-2 | MM5_E_4 | Tìm, chọn và chỉnh sửa ảnh không thành công | 2-2 | MM5_F_4 | Insert lỗi vào collection [log] | detail | table_contents
2. Xử lý OpenCV, OpenAI lỗi( không phải timeout) và không có throw exception | collection_name | Collection name | contents
main_text
5.0 | Sau khi xử lý OpenAI thành công | 2-2 | MM5_F_5 | Update data vào collection[white_paper] | title
time
image
6.0 | Lấy thông tin seminar từ white_paper chuyển đổi text và ảnh thành white_paper | 2-2 | WP5_F_6 | Update data vào collection[target] : status : COMPLETE | title
time
image
## Sheet: Testcase_API-UI
No. | Function | ViewpointID | Quan điểm đánh giá | Nomal
AbNomal | PartenID | Điều kiện đánh giá | Nội dung xác nhận | Kết quả đánh giá develop | Kết quả đánh giá staging | Bug No.
develop | Bug NO. staging | Ghi chú
Big function | Middle function | SMMll function | Kết quả | Ngày thực hiện | Người thực hiện | Kết quả | Ngày thực hiện | Người thực hiện | Ngày duyệt | Người duyệt
1 | 1-1 | Nomal | CM_D_1 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
2 | 1-1 | 同上 | Nomal | CM_D_1 | 同上 | 同上
3 | 2-1 | Nomal | CM_A_1 | 同上 | 同上
4 | 2-1 | 同上 | Nomal | CM_A_2 | 同上 | 同上
5 | 2-1 | 同上 | Nomal | CM_A_3 | 同上 | 同上
6 | 1-1 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
7 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
8 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
9 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
10 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
11 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
12 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
13 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
14 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
15 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
16 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
17 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
18 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
19 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
20 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
21 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
22 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
23 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
24 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
25 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
26 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"
27 | 1-1 | 同上 | Nomal | HO_A_14 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common"


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch TestCase - Test Specs\Backup\Testcase dạng Viewpoint_IT Specs_0416_JP.xlsx`

## Sheet: ホワイトペーパー_テスト項目
** ホワイトペーパーの生成フロー
A.WP1 | white-paper-transcription-creation
条件・処理の流れ | 確認内容
1 | wavファイル受信：0 バイトのファイル | DBが更新されるか？エラーはあるか?
Azure経由で処理する
2 | wavファイル受信：テキストを生成する音声なしのファイル | DBが更新されるか？エラーはあるか?
Azure経由で処理する
3 | wavファイル受信：録音ファイル | DBが更新されるか？エラーはあるか?
Azure経由で処理する
4 | wavファイル受信：テキストを生成する音声ありのファイル、30分のファイル | DBが更新されるか？エラーはあるか?
関数の処理時間が 30 分以内で成功する
5.0 | wavファイル受信：テキストを生成する音声ありのファイル、30分のファイル | DBが更新されるか？エラーはあるか?
関数の処理時間が 30分以上で、例外タイムアウトがスローされる
6.0 | wavファイル受信：テキストを生成する音声ありのファイル、30分のファイル | DBが更新されるか？エラーはあるか?
エラーが発生し (タイムアウト エラーではない)、例外がスローされる
7.0 | wavファイル受信：テキストを生成する音声ありのファイル、30分のファイル | DBが更新されるか？エラーはあるか?
エラーが発生し (タイムアウト エラーではない)、例外がスローされない
8.0 | wavファイル受信：テキストを生成する音声ありのファイル、2時間のファイル | _ | DBが更新されるか？エラーはあるか?
関数の処理時間が 30 分以内で成功する
9.0 | wavファイル受信：テキストを生成する音声ありのファイル、2時間のファイル | DBが更新されるか？エラーはあるか?
関数の処理時間が 30分以上で、例外タイムアウトがスローされる
10.0 | wavファイル受信：テキストを生成する音声ありのファイル、2時間のファイル | DBが更新されるか？エラーはあるか?
エラーが発生し (タイムアウト エラーではない)、例外がスローされる
11.0 | wavファイル受信：テキストを生成する音声ありのファイル、2時間のファイル | DBが更新されるか？エラーはあるか?
エラーが発生し (タイムアウト エラーではない)、例外がスローされない
12.0 | 生のテキストをコレクションに取得する | DBが更新されるか？
条件 | ステップ・処理の流れ | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に成功した場合 | 観点ID： | 2025-04-02 00:00:00 | 追加/生成に失敗した場合 | 観点ID： | 2025-02-02 00:00:00 | DBの内容は正しく更新されているか？ | データがcollection [usage_stat]に挿入される | データがcollection [transcript]に挿入される
パターンID | 結果 | パターンID | 結果 | パターンID | 結果 | id | Usage statistics ID | id | IN_PROGRESS_TRANSCRIPT
1.0 | 1. wavファイルの受信：0 バイトのファイル | 2025-04-02 00:00:00 | WP1_A_1 | ファイルの生成に失敗し、以下のメッセージが表示されること | ai_model_id | Used AI model ID | target_id | target.target_id
2. Azure経由で処理する | ファイル選択必須。0Byte以上のファイルを選択してください。 | input_token | Number of input tokens | text | from Azure
output_token | Number of output tokens | progress | RAW_DATA
2.0 | 1. wavファイルの受信：テキストを生成する音声なしのファイル | 2025-04-02 00:00:00 | WP1_A_2 | ファイルの生成に失敗すること | created_by | Summary creator and editor user ID | created_at | time()
2. Azure経由で処理する | year | Statistics year | updated_at | time()
month | Statistics month | deleted_at | null
3.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 30分のファイル | 2025-04-01 00:00:00 | WP1_A_3 | 生成に成功すること | 2025-02-02 00:00:00 | WP1_A_3_1 | データがcollecion [target] に更新されること
status:IN_PROGRESS_TRANSCRIPT | collection_name | Collection name | collection_name | Name of Meeting
2. 関数の処理時間が30分以内で成功する | 2025-02-02 00:00:00 | WP1_A_3_2 | データがcollection[usage_stat]に更新されること | データがcollection [log]に挿入される | データがpoison queue[target]に挿入される
id | Key(id) | status | ERROR
4.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 30分のファイル | 2025-04-02 00:00:00 | WP1_A_4 | ファイルの生成に失敗すること | 2025-02-02 00:00:00 | WP1_A_4 | データがpoison queue[target]に更新されること | target_id | 対象ID | error_detail | エラー詳細
2. 関数の処理時間が 30分以内で、例外タイムアウトがスローされる | データがcollection [log]に更新されること | type | 0:OK, 1:ERROR | updated_by
date | updated_at
5.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 30分のファイル | 2025-04-02 00:00:00 | WP1_A_5 | ファイルの生成に失敗すること | 2025-02-02 00:00:00 | WP1_A_5 | データがcollection [log]に更新されること | detail
2. エラーが発生し(タイムアウト エラーではない)、例外がスローされる | collection_name | Collection name
6.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 30分のファイル | 2025-04-02 00:00:00 | WP1_A_6 | ファイルの生成に失敗すること | 2025-02-02 00:00:00 | WP1_A_6 | データがcollection [log]に更新されること
2. エラーが発生し (タイムアウト エラーではない)、例外はスローされない
7.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 2時間のファイル | 2025-04-01 00:00:00 | WP1_A_7 | 生成に成功すること | 2025-02-02 00:00:00 | WP1_A_7_1 | データがcollecion [target] に更新されること
status:IN_PROGRESS_TRANSCRIPT
2. 関数の処理時間が30分以内で成功する | 2025-02-02 00:00:00 | WP1_A_7_2 | データがcollection[usage_stat]に更新されること
8.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 2時間のファイル | 2025-04-02 00:00:00 | WP1_A_8 | ファイルの生成に失敗すること | 2025-02-02 00:00:00 | WP1_A_8 | データがpoison queue[target]に更新されること
2. 関数の処理時間が 30分以内で、例外タイムアウトがスローされる | データがcollection [log]に更新されること
9.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 2時間のファイル | 2025-04-02 00:00:00 | WP1_A_9 | ファイルの生成に失敗すること | 2025-02-02 00:00:00 | WP1_A_9 | データがcollection [log]に更新されること
2. エラーが発生し(タイムアウト エラーではない)、例外がスローされる
10.0 | 1. wav ファイルの受信: テキストを生成する音声ありのファイル、 2時間のファイル | 2025-04-02 00:00:00 | WP1_A_10 | ファイルの生成に失敗すること | 2025-02-02 00:00:00 | WP1_A_10 | データがcollection [log]に更新されること
2. エラーが発生し (タイムアウト エラーではない)、例外はスローされない
11.0 | 1. 関数の処理に成功した後 | 2025-02-02 00:00:00 | WP1_A_11 | データがcollection[transcript]に更新されること
progress : RAW_DATA
2. 生のテキストをコレクションに取得する
B.WP2 | white-paper-post-processing
条件・処理の流れ | 確認内容
1 | WP1 のトランスクリプトからテキストを取得する | DBが更新されるか？
OpenAIによるテキストの正規化時間は30分以内で、正常に完了すること
2 | WP1 のトランスクリプトからテキストを取得する | DBが更新されるか？
OpenAIによるテキストの正規化時間は30分以上で、例外タイムアウトがスローされる
3 | WP1 のトランスクリプトからテキストを取得する | DBが更新されるか？
OpenAIによるテキストの正規化に失敗し (タイムアウトではなく)、例外がスローされる
4.0 | WP1 のトランスクリプトからテキストを取得する | DBが更新されるか？
OpenAIによるテキストの正規化に失敗し (タイムアウトではなく)、例外がスローされない
5.0 | OpenAIによるテキストの正規化に成功した後 | DBが更新されるか？
データがcollection[usage_stat]に更新される | データがcollection[transcript]に更新される | データが[speaker_identification] に更新される
id | Usage statistics ID | id | id
条件 | ステップ・処理の流れ | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に成功した場合 | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に失敗した場合 | 観点ID： | 2025-02-02 00:00:00 | DBの内容は正しく更新されているか？ | ai_model_id | Used AI model ID | target_id | target.target_id | target_id | target.target_id
パターンID | 結果 | パターンID | 結果 | パターンID | 結果 | input_token | Number of input tokens | text | from OpenAI | identification
1.0 | 1. MM1 のトランスクリプトからテキストを取得する | 2025-04-01 00:00:00 | WP2_B_1 | テキストの正規化に成功すること | 2025-02-02 00:00:00 | WP2_B_1 | データがcollection[usage_stat]に更新されること | output_token | Number of output tokens | progress | PROCESSED_DATA | time | timestamp
2. OpenAIによるテキストの正規化時間は30 分以内で成功する | created_by | Summary creator and editor user ID | created_at | time() | user_id | auto gen
year | Statistics year | updated_at | time() | conversation | time()
2.0 | 1. MM1 のトランスクリプトからテキストを取得する | 2025-04-02 00:00:00 | WP2_B_2 | テキストの正規化に失敗すること | 2025-02-02 00:00:00 | WP2_B_2 | データがpoison queue[target]に更新されること | month | Statistics month | deleted_at | null | user_list | all of speaker
2. OpenAIによるテキストの正規化時間は30分以上で、例外タイムアウトがスローされる | データがcollection [log]に更新されること | collection_name | Collection name | collection_name | Name of Meeting | user_id
データがcollection [log]に更新される | データがpoison queue[target]に更新される | name
3.0 | 1. MM1 のトランスクリプトからテキストを取得する | 2025-04-02 00:00:00 | WP2_B_3 | テキストの正規化に失敗すること | 2025-02-02 00:00:00 | WP2_B_3 | データがcollection [log]に更新されること | id | Key(id) | status | ERROR | collection_name
2. OpenAIによるテキストの正規化に失敗し (タイムアウトではなく)、例外がスローされる | target_id | 対象ID | error_detail | エラー詳細
type | 0:OK, 1:ERROR | updated_by
4.0 | 1. MM1 のトランスクリプトからテキストを取得する | 2025-04-02 00:00:00 | WP2_B_4 | テキストの正規化に失敗すること | 2025-02-02 00:00:00 | WP2_B_4 | データがcollection [log]に更新されること | date | updated_at
2. OpenAIによるテキストの正規化に失敗し (タイムアウトではなく)、例外がスローされない | detail
collection_name | Collection name
4.0 | 1. OpenAIによるテキストの正規化に成功した後 | 2025-02-02 00:00:00 | WP2_B_5 | データがcollection[transcript]に更新されること。
progress : PROCESSED_DATA | date | updated_at
2. コレクションに書き込む | データが[speaker_identification] に更新されること | detail
collection_name | Collection name
C.WP3 | white-paper-create-summary
条件・処理の流れ | 確認内容
1 | WP2でOpenAI処理後 | DBが更新されるか？
2 | WP2からテキストを取得する | DBが更新されるか？
OpenAIによる文字起こし(テキスト抽出）時間は30分以内で成功する
3 | WP2からテキストを取得する | DBが更新されるか？
OpenAIによる文字起こし時間は30分以上で、例外タイムアウトがスローされる
4.0 | WP2からテキストを取得する | DBが更新されるか？
OpenAIによる文字起こしに失敗し (タイムアウトではない) 、例外がスローされる
5.0 | WP2からテキストを取得する | DBが更新されるか？
OpenAIによる文字起こしに失敗し (タイムアウトではない) 、例外がスローされない
6.0 | OpenAIによる文字起こしに成功した後 | DBが更新されるか？
条件 | ステップ・処理の流れ | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に成功した場合 | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に失敗した場合 | 観点ID： | 2025-02-02 00:00:00 | DBの内容は正しく更新されていますか？ | データがcollection[usage_stat]に更新される | データがcollection [target]に更新される | データがcollection [summary]に更新される
パターンID | 結果 | パターンID | 結果 | パターンID | 結果 | id | Usage statistics ID | status | IN_PROGRESS_SUMMARY | id | key
1.0 | MM2でのOpenAI処理後 | 2025-02-02 00:00:00 | WP3_D_1 | データがcollection[target]に更新されること。
status= IN_PROGRESS_SUMMARY | ai_model_id | Used AI model ID | updated_by | user_id | target_id | 要約対象ID
input_token | Number of input tokens | updated_at | time() | title | title
output_token | Number of output tokens | summary_text | Summary_ext
2.0 | 1. MM2 からテキストを取得する | 2025-04-01 00:00:00 | WP3_D_2 | 要約に成功すること | 2025-02-02 00:00:00 | WP3_D_2 | データがcollection[usage_stat]に更新されること | created_by | Summary creator and editor user ID | created_at | Created datetime
2. OpenAIによる文字起こし時間は30分以内で成功する | year | Statistics year | updated_at | Updated datetime
month | Statistics month | collection_name | Collection_name
3.0 | 1. MM2 からテキストを取得する | 2025-04-02 00:00:00 | WP3_D_3 | アジェンダの抽出に失敗すること | 2025-02-02 00:00:00 | WP3_D_3 | データがpoison queue[target]に更新されること | collection_name | Collection name
2. OpenAIによる文字起こし時間は30分以上で、例外タイムアウトがスローされる | データがcollection [log]に更新されること | データがcollection [log]に更新される | データがpoison queue[target]に更新される
id | Key(id) | status | ERROR
4.0 | 1. MM2 からテキストを取得する | 2025-04-02 00:00:00 | WP3_D_4 | アジェンダの抽出に失敗すること | 2025-02-02 00:00:00 | WP3_D_4 | データがcollection [log]に更新されること | target_id | 対象ID | error_detail | エラー詳細
2. OpenAIによる文字起こしに失敗し (タイムアウトではない) 、例外がスローされる | type | 0:OK, 1:ERROR | updated_by
date | updated_at
5.0 | 1. MM2 からテキストを取得する | 2025-04-02 00:00:00 | WP3_D_5 | アジェンダの抽出に失敗すること | 2025-02-02 00:00:00 | WP3_D_5 | データがcollection [log]に更新されること | detail
2. OpenAIによる文字起こしに失敗し (タイムアウトではない) 、例外がスローされない | collection_name | Collection name
6.0 | 1. OpenAIによる文字起こしに成功した後 | 2025-02-02 00:00:00 | WP3_D_6 | データがcollection[summary]に更新されること
2. コレクションに書き込む
D.WP4 | white-paper-create-text
条件・処理の流れ | 確認内容
1 | WP3でOpenAIによる文字起こしの後 | DBが更新されるか？
2 | WP3 から概要テキストを取得する | DBが更新されるか？
OpenAI による情報処理は30分以内で成功する
2 | WP3 から概要テキストを取得する | DBが更新されるか？
OpenAI による情報処理が30分以上で、例外タイムアウトがスローされる
3 | WP3 から概要テキストを取得する | DBが更新されるか？
OpenAI による情報処理に失敗し(タイムアウトではない)、例外がスローされる
4.0 | WP3 から概要テキストを取得する | DBが更新されるか？
OpenAI による情報処理に失敗し(タイムアウトではない)、例外がスローされない
5.0 | OpenAI 処理に成功した後 | DBが更新されるか？
条件 | ステップ・処理の流れ | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に成功した場合 | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に失敗した場合 | 観点ID： | 2025-02-02 00:00:00 | DBの内容は正しく更新されているか？ | データがcollection [usage_stat]に更新される | データがpoison queue[target]に更新される | データがcollection [white_paper]に更新される
パターンID | 結果 | パターンID | 結果 | パターンID | 結果 | id | Usage statistics ID | status | ERROR | id
1.0 | WP3でOpenAIによる文字起こしの後 | 2025-02-02 00:00:00 | WP4_E_1 | データがcollection[target] に更新されること。
status : IN_PROGRESS_WHITE_PAPER | created_by | Summary creator and editor user ID | error_detail | エラー詳細 | target_id
year | Statistics year | updated_by | title
month | Statistics month | updated_at | sub_title
2.0 | 1. WP3 から概要テキストを取得する | 2025-04-01 00:00:00 | WP4_E_2 | ホワイトペーパーのコンテンツの生成に成功すること | 2025-02-02 00:00:00 | WP4_E_2 | データがcollection[usage_stat]に更新されること | created_by | Summary creator and editor user ID | error_detail | エラー詳細 | overview
2. OpenAI による情報処理は30分以内で成功する | year | Statistics year | updated_by | image | NULL
month | Statistics month | updated_at | contents
3.0 | 1. WP3 から概要テキストを取得する | 2025-04-02 00:00:00 | WP4_E_3 | アジェンダのデータの追加に失敗すること | 2025-02-02 00:00:00 | WP4_E_3 | データがpoison queue[target]に更新されること | collection_name | Collection name | table_contents
2. OpenAI による情報処理が30分以上で、例外タイムアウトがスローされる | データがcollection [log]に更新されること | データがcollection [log]に更新される | データがcollection[target]に更新される | contents
id | Key(id) | status | IN_PROGRESS_WHITE_PAPER | main_text | main_text
4.0 | 1. WP3 から概要テキストを取得する | 2025-04-02 00:00:00 | WP4_E_4 | アジェンダのデータの追加に失敗すること | 2025-02-02 00:00:00 | WP4_E_4 | データがcollection [log]に更新されること | target_id | 対象ID | updated_by | user_id | title | title
2. OpenAI による情報処理に失敗し(タイムアウトではない)、例外がスローされる | type | 0:OK, 1:ERROR | updated_at | time() | time | timestamp
date | image | NULL
5.0 | 1. WP3 から概要テキストを取得する | 2025-04-02 00:00:00 | WP4_E_5 | アジェンダのデータの追加に失敗すること | 2025-02-02 00:00:00 | WP4_E_5 | データがcollection [log]に更新されること | detail | contents | contents
2. OpenAI による情報処理に失敗し(タイムアウトではない)、例外がスローされない | collection_name | Collection name | collecion_name | collection name
6.0 | 1. OpenAI 処理に成功した後 | 2025-02-02 00:00:00 | WP4_E_6 | データがcollection[white_paper]に更新されること
2. コレクションに書き込む
E.WP5 | white-paper-filter-images
条件・処理の流れ | 確認内容
1 | collection[target]からオリジナルビデオを取得する | DBが更新されるか？
OpenCV、OpenAI の処理が30分以内で成功する
2 | collection[target]からオリジナルビデオを取得する | DBが更新されるか？
OpenCV、OpenAI の処理が30分以上で、例外タイムアウトがスローされる
3 | collection[target]からオリジナルビデオを取得する | DBが更新されるか？
OpenCV、OpenAI の処理に失敗し(タイムアウトではない) 、例外がスローされる
4.0 | collection[target]からオリジナルビデオを取得する | DBが更新されるか？
OpenCV、OpenAI の処理に失敗し(タイムアウトではない) 、例外がスローされない
5.0 | OpenCV、OpenAI の処理に成功した後 | DBが更新されるか？
6.0 | 会議から画像やテキストの情報を取得し、ホワイトペーパーに変換する | DBが更新されるか？
条件 | ステップ・処理の流れ | 観点ID： | 2025-04-01 00:00:00 | 追加/生成に成功した場合 | 観点ID： | 2025-04-02 00:00:00 | 追加/生成に失敗した場合 | 観点ID： | 2025-02-02 00:00:00 | DBの内容は正しく更新されていますか？ | データがcollection[usage_stat]に更新される | データがpoison queue[target]に更新される
パターンID | 結果 | パターンID | 結果 | パターンID | 結果 | id | Usage statistics ID | status | ERROR
1.0 | 1.collection[target]からオリジナルビデオを取得する | 2025-04-01 00:00:00 | WP5_F_1 | 画像の検索・選択・編集に成功すること | 2025-02-02 00:00:00 | WP5_F_1 | データがcollection[usage_stat]に更新されること | created_by | Summary creator and editor user ID | error_detail | エラー詳細
2. OpenCV、OpenAI の処理が30分以内で成功する | year | Statistics year | updated_by
month | Statistics month | updated_at
2.0 | 1.collection[target]からオリジナルビデオを取得する | 2025-04-02 00:00:00 | WP5_F_2 | 画像の検索・選択・編集に失敗すること | 2025-02-02 00:00:00 | WP5_F_2 | データがpoison queue[target]に更新されること | collection_name | Collection name
2. OpenCV、OpenAI の処理が30分以上で例外タイムアウトがスローされる | データがcollection [log]に更新されること | データがcollection [log]に更新される | データがcollection [white_paper]に更新される
id | Key(id) | id
3.0 | 1.collection[target]からオリジナルビデオを取得する | 2025-04-02 00:00:00 | WP5_F_3 | 画像の検索・選択・編集に失敗すること | 2025-02-02 00:00:00 | WP5_F_3 | データがcollection [log]に更新されること | target_id | ID đối tượng | target_id
2. OpenCV、OpenAI の処理に失敗し (タイムアウトではない) 、例外がスローされる | type | 0:OK, 1:ERROR | overview
date | contents
4.0 | 1.collection[target]からオリジナルビデオを取得する | 2025-04-02 00:00:00 | WP5_F_4 | 画像の検索・選択・編集に失敗すること | 2025-02-02 00:00:00 | WP5_F_4 | データがcollection [log]に更新されること | detail | table_contents
2. OpenCV、OpenAI の処理に失敗し (タイムアウトではない) 、例外がスローされない | collection_name | Collection name | contents
main_text
5.0 | OpenCV、OpenAI の処理に成功した後 | 2025-02-02 00:00:00 | WP5_F_5 | データがcollection[white_paper] に更新されること | title
time
image
6.0 | 会議から画像やテキストの情報を取得し、ホワイトペーパーに変換する | 2025-02-02 00:00:00 | WP5_F_6 | データがcollection[target]に更新されること
status : COMPLETE | title
time
image
## Sheet: テスト結果
項番 | 機能 | 観点ID | 評価観点 | 正常
異常 | パターンID | Điều kiện đánh giá | Nội dung xác nhận | 開発評価結果 | ステータス評価結果 | バグ番号
開発環境 | バグ番号
ステージング環境 | 備考
0 | 1-1 | Nomal | CM_D_1 | Tham chiếu sheet "Testcase_common" | Tham chiếu sheet "Testcase_common" | OK | 15-04-2025 | DaiHM | ThuyNTP
1 | 1-1 | 同上 | Nomal | CM_D_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
2 | 2-1 | Nomal | CM_A_1 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
3 | 2-1 | 同上 | Nomal | CM_A_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
4 | 2-1 | 同上 | Nomal | CM_A_3 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
5 | 1-2 | Nomal | CM_B_1 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
6 | 1-2 | 同上 | Nomal | CM_B_2_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
7 | 1-2 | 同上 | Nomal | CM_B_3_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
8 | 1-2 | 同上 | Nomal | CM_B_4_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
9 | 1-2 | 同上 | Nomal | CM_B_5_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
10 | 1-2 | 同上 | Nomal | CM_B_6_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
11 | 1-2 | 同上 | Nomal | CM_B_7_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
12 | 1-2 | 同上 | Nomal | CM_B_8 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
13 | 1-2 | 同上 | Nomal | CM_B_9 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
14 | 4-3 | Nomal | CM_B_10 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
15 | 4-3 | 同上 | Nomal | CM_B_11 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
16 | 4-3 | 同上 | Nomal | CM_B_12 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
17 | 4-4 | Nomal | CM_B_2 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
18 | 4-4 | 同上 | Nomal | CM_B_3 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
19 | 4-4 | 同上 | Nomal | CM_B_4 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
20 | 4-4 | 同上 | Nomal | CM_B_5 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
21 | 4-4 | 同上 | Nomal | CM_B_6 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
22 | 4-4 | 同上 | Nomal | CM_B_7 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
23 | 2-1 | Nomal | CM_B_1 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
24 | 2-1 | 同上 | Nomal | CM_B_8 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
25 | 2-1 | 同上 | Nomal | CM_B_9 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
26 | 2-1 | 同上 | Nomal | CM_B_10 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
27 | 2-1 | 同上 | Nomal | CM_B_11 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
28 | 2-1 | 同上 | Nomal | CM_B_12 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
29 | 2-2 | Nomal | CM_B_10 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
30 | 2-2 | 同上 | Nomal | CM_B_11 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
31 | 2-2 | 同上 | Nomal | CM_B_12 | 同上 | 同上 | NG | 15-04-2025 | DaiHM
32 | 4-1 | Nomal | MM1_A_3 | Tham chiếu sheet "Testcase_Meeting-Minutes" | Tham chiếu sheet "Testcase_Meeting-Minutes" | OK | 15-04-2025 | DaiHM
33 | 4-1 | 同上 | Nomal | MM1_A_7 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
34 | 4-1 | 同上 | Normal | MM2_B_1 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
35 | 2-2 | Nomal | MM3_D_2 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
36 | 2-2 | #REF! | Nomal | MM4_E_1 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
37 | 2-2 | 同上 | Nomal | MM5_F_1 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
38 | 2-2 | 同上 | Nomal | MM5_F_5 | 同上 | 同上 | OK | 15-04-2025 | DaiHM
39 | 4-1 | Nomal | WP1_A_4 | Tham chiếu sheet "Testcase_White-paper" | Tham chiếu sheet "Testcase_White-paper" | OK | 15-04-2025 | Trường
40 | 4-1 | 同上 | Nomal | WP1_A_8 | 同上 | 同上 | OK | 15-04-2025 | Trường
41 | 2-2 | Nomal | WP1_A_4_1 | 同上 | 同上 | OK | 15-04-2025 | Trường
42 | 2-2 | 同上 | Nomal | WP1_A_8_1 | 同上 | 同上 | OK | 15-04-2025 | Trường
43 | 2-2 | 同上 | Nomal | WP1_A_11 | 同上 | 同上 | OK | 15-04-2025 | Trường
44 | 2-2 | 同上 | Nomal | WP2_B_1 | 同上 | 同上 | OK | 15-04-2025 | Trường
45 | 2-2 | 同上 | Nomal | WP2_B_5 | 同上 | 同上 | OK | 15-04-2025 | Trường
46 | 4-1 | Nomal | WP3_D_2 | 同上 | 同上 | OK | 15-04-2025 | Trường
47 | 2-2 | Nomal | WP3_D_1 | 同上 | 同上 | OK | 15-04-2025 | Trường
48 | 2-2 | 同上 | Nomal | WP3_D_6 | 同上 | 同上 | OK | 15-04-2025 | Trường
49 | 4-1 | Nomal | WP4_E_2 | 同上 | 同上 | OK | 15-04-2025 | Trường
50 | 2-2 | Nomal | WP4_E_1 | 同上 | 同上 | OK | 15-04-2025 | Trường
51 | 2-2 | 同上 | Nomal | WP4_E_6 | 同上 | 同上 | OK | 15-04-2025 | Trường
52 | 2-2 | 同上 | Nomal | WP5_E_1 | 同上 | 同上 | OK | 15-04-2025 | Trường
53 | 2-2 | 同上 | Nomal | WP5_E_5 | 同上 | 同上 | OK | 15-04-2025 | Trường
54 | 2-2 | 同上 | Nomal | WP5_E_6 | 同上 | 同上 | OK | 15-04-2025 | Trường


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch TestCase - Test Specs\Backup\Testcase dạng matrix.xlsx`

## Sheet: 表紙
NCB_コンサルティングバンク
外部設計フェーズ
【外部設計書】
退会機能
#ERROR!
#ERROR!
株式会社シティアスコム
## Sheet: 改訂履歴
改訂履歴 | システム名 | サブシステム名 | 版 | 承認者 | 承認日 | 更新者 | 更新日 | 作成者 | 作成日
1.0
機能名 | ID | 名称
版数 | 改訂日 | 担当者 | 改訂対象 | 改訂内容
## Sheet: 仕様書
単体テスト仕様書
機能ID/名称
テスト仕様書作成日 | テスト実施日
テスト仕様書作成者 | テスト実施者
テスト結果検証日 | テスト結果検証者
テストイベント一覧
№ | イベントID | 内  容
1.0 | Import | ボタン/インポート
2.0 | Export | ボタン/エクスポート
## Sheet: search
ドキュメント名 | 日付 | 作成者
データセット | シナリオ名 | シナリオＩＤ
テスト
テストパターン
対象データ | 状態 | 1.0 | 2.0 | 3.0 | 4.0 | 5.0 | 6.0 | 7.0 | 8.0 | 9.0 | 10.0 | 11.0 | 12.0 | 77.0 | 77.0 | 78.0 | 13.0 | 14.0 | 15.0 | 16.0 | 17.0 | 18.0 | 19.0 | 20.0 | 21.0 | 22.0 | 23.0 | 24.0 | 25.0 | 26.0 | 27.0 | 28.0 | 29.0 | 30.0 | 31.0 | 32.0 | 33.0 | 34.0 | 35.0 | 36.0 | 37.0 | 38.0 | 39.0 | 40.0 | 41.0 | 42.0 | 43.0 | 44.0 | 45.0 | 46.0 | 47.0 | 48.0 | 49.0 | 50.0 | 51.0 | 52.0 | 53.0 | 54.0 | 55.0 | 56.0 | 57.0 | 58.0 | 59.0 | 60.0 | 61.0 | 62.0 | 63.0 | 64.0 | 65.0 | 66.0 | 67.0 | 68.0 | 69.0 | 70.0 | 71.0 | 72.0 | 73.0 | 74.0 | 75.0 | 75.0 | 76.0 | 79.0
Login thành công | Admin | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
ダッシュボード | Click link ダッシュボード | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
企業情報 | Hiển thị màn hình 企業情報 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
レイアウト | デザインに従う | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
【DB】sfx_tm_companies
id | 設定あり(IS NOT NULL) | N | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
title | 設定あり(IS NOT NULL) | - | N | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
category | 設定あり(IS NOT NULL) | - | - | N | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
prefecture_code | 設定あり(IS NOT NULL) | - | - | - | N | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
city_code | 設定あり(IS NOT NULL) | - | - | - | - | N | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
city_area_code | 設定あり(IS NOT NULL) | - | - | - | - | - | N | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
Số lượng data thỏa mãn điều kiện DB
=0件 | - | - | - | - | - | - | - | - | - | - | - | - | Y | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | Y | - | - | -
>0件&<=20件 | - | - | - | - | - | - | - | - | - | - | - | - | - | Y | - | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | - | Y | - | -
>20件& < =100 件 | - | - | - | - | - | - | - | - | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | Y | -
【画面】Input
ID | "" - 空白 | - | - | - | - | - | - | N | - | - | - | - | - | Y | Y | Y | N | Y | Y | Y | Y | Y | N | N | N | N | N | - | - | - | - | - | - | - | - | - | - | N | N | N | N | N | N | N | N | N | N | - | - | - | - | - | - | - | - | - | - | N | N | N | N | N | N | N | N | N | N | - | - | - | - | - | N | N | N | N | N | - | N | N | N | -
= sfx_tm_companies.id | - | - | - | - | - | - | N | - | - | - | - | - | - | - | - | Y | - | - | - | - | - | Y | Y | Y | Y | Y | - | - | - | - | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | - | - | - | - | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | - | - | - | - | - | Y | Y | Y | Y | Y | - | Y | Y | Y
件名 | "" - 空白 | - | - | - | - | - | - | - | N | - | - | - | - | Y | Y | Y | Y | N | Y | Y | Y | Y | N | - | - | - | - | N | N | N | N | - | - | - | - | - | - | N | N | N | N | - | - | - | - | - | - | N | N | N | N | N | N | - | - | - | - | N | N | N | N | N | N | - | - | - | - | N | N | N | N | - | N | N | N | N | - | N | N | N | N | -
= sfx_tm_companies.title | - | - | - | - | - | - | - | N | - | - | - | - | - | - | - | - | Y | - | - | - | - | Y | - | - | - | - | Y | Y | Y | Y | - | - | - | - | - | - | Y | Y | Y | Y | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | - | - | - | - | Y | Y | Y | Y | Y | Y | - | - | - | - | Y | Y | Y | Y | - | Y | Y | Y | Y | - | Y | Y | Y | Y
カテゴリ | "" - 空白 | - | - | - | - | - | - | - | - | N | - | - | - | Y | Y | Y | Y | Y | N | Y | Y | Y | Y | N | - | - | - | N | - | - | - | N | N | N | - | - | - | N | - | - | - | N | N | N | - | - | - | N | N | N | - | - | - | N | N | N | - | N | N | N | - | - | - | N | N | N | - | N | N | N | - | N | N | N | N | - | N | N | N | N | N | -
= sfx_tm_companies.category | - | - | - | - | - | - | - | - | N | - | - | - | - | - | - | - | - | Y | - | - | - | - | Y | - | - | - | Y | - | - | - | Y | Y | Y | - | - | - | Y | - | - | - | Y | Y | Y | - | - | - | Y | Y | Y | - | - | - | Y | Y | Y | - | Y | Y | Y | - | - | - | Y | Y | Y | - | Y | Y | Y | - | Y | Y | Y | Y | - | Y | Y | Y | Y | Y
エリア | "" - 空白 | - | - | - | - | - | - | - | - | - | N | - | - | Y | Y | Y | Y | Y | Y | N | Y | Y | Y | - | N | - | - | - | N | - | - | N | - | - | N | N | - | - | N | - | - | N | - | - | N | N | - | N | - | - | N | N | - | N | N | - | N | N | - | - | N | N | - | N | N | - | N | N | N | - | N | N | N | N | - | N | N | N | N | N | N
=sfx_tm_companies.prefecture_code | - | - | - | - | - | - | - | - | - | N | - | - | - | - | - | - | - | - | Y | - | - | - | - | Y | - | - | - | Y | - | - | Y | - | - | Y | Y | - | - | Y | - | - | Y | - | - | Y | Y | - | Y | - | - | Y | Y | - | Y | Y | - | Y | Y | - | - | Y | Y | - | Y | Y | - | Y | Y | Y | - | Y | Y | Y | Y | - | Y | Y | Y | Y | Y | Y | -
"" - 空白 | - | - | - | - | - | - | - | - | - | - | N | - | Y | Y | Y | Y | Y | Y | Y | N | Y | Y | - | - | N | - | - | - | N | - | - | N | - | N | - | N | - | - | N | - | - | N | - | N | - | N | - | N | - | N | - | N | N | - | N | N | - | N | - | N | - | N | N | - | N | N | N | - | N | N | N | N | - | N | N | N | N | N | N | N
=sfx_tm_companies.city_code | - | - | - | - | - | - | - | - | - | - | N | - | - | - | - | - | - | - | - | Y | - | - | - | - | Y | - | - | - | Y | - | - | Y | - | Y | - | Y | - | - | Y | - | - | Y | - | Y | - | Y | - | Y | - | Y | - | Y | Y | - | Y | Y | - | Y | - | Y | - | Y | Y | - | Y | Y | Y | - | Y | Y | Y | Y | - | Y | Y | Y | Y | Y | Y | Y | -
"" - 空白 | - | - | - | - | - | - | - | - | - | - | - | N | Y | Y | Y | Y | Y | Y | Y | Y | N | Y | - | - | - | N | - | - | - | N | - | - | N | - | N | N | - | - | - | N | - | - | N | - | N | N | - | - | N | - | N | N | - | N | N | N | - | - | N | - | N | N | - | N | N | N | - | N | N | N | N | - | N | N | N | N | N | N | N | N
=sfx_tm_companies.city_area_code | - | - | - | - | - | - | - | - | - | - | - | N | - | - | - | - | - | - | - | - | Y | - | - | - | - | Y | - | - | - | Y | - | - | Y | - | Y | Y | - | - | - | Y | - | - | Y | - | Y | Y | - | - | Y | - | Y | Y | - | Y | Y | Y | - | - | Y | - | Y | Y | - | Y | Y | Y | - | Y | Y | Y | Y | - | Y | Y | Y | Y | Y | Y | Y | Y | -
【画面】Click button
検索 | Click button 検索 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
追加 | Click button 追加 | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | N | Y
確認項目 | 期待値
終了コード
終了コード | 0:バッチ正常終了（警告なし） | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | -
のレコード数 | 0件 | X | X | X | X | X | X | X | X | X | X | X | X | X | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | -
>0件 & <=20件 | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | - | X | - | -
>20件 | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | -
一覧ページング | 0ページ | X | X | X | X | X | X | X | X | X | X | X | X | X | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | -
1ページ | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | - | X | - | -
>=2ページ& <=5 ページ | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | -
【画面】Table kết quả tìm kiếm
ID | =【画面】Input.ID | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | - | - | - | X | X | X | X | X | - | - | - | - | - | - | - | - | - | - | X | X | X | X | X | X | X | X | X | X | - | - | - | - | - | - | - | - | - | - | X | X | X | X | X | X | X | X | X | X | - | - | - | - | - | X | X | X | X | X | - | X | X | X | -
件名 | =【画面】Input.件名 | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | - | - | X | - | - | - | - | X | X | X | X | - | - | - | - | - | - | X | X | X | X | - | - | - | - | - | - | X | X | X | X | X | X | - | - | - | - | X | X | X | X | X | X | - | - | - | - | X | X | X | X | - | X | X | X | X | - | X | X | X | X | -
カテゴリ | =【画面】Input.カテゴリ | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | - | - | - | X | - | - | - | X | - | - | - | X | X | X | - | - | - | X | - | - | - | X | X | X | - | - | - | X | X | X | - | - | - | X | X | X | - | X | X | X | - | - | - | X | X | X | - | X | X | X | - | X | X | X | X | - | X | X | X | X | X | -
エリア | =【画面】Input.エリア | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | X | X | - | - | X | X | X | - | X | X | X | X | X | X | X | X | X | - | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | -
更新日時 | =【DB】 sfx_tm_companies.update_date | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | -
【画面】Điều hướng
Điều hướng đến MH add | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X
## Sheet: check paging
ドキュメント名 | 日付 | 作成者
データセット | シナリオ名 | シナリオＩＤ
テスト
テストパターン
対象データ | 状態 | 1.0 | 2.0 | 3.0 | 3.0
Điều kiện tiên quyết
Login thành công | Admin | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
ダッシュボード | Click link ダッシュボード | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
企業情報 | Hiển thị màn hình 企業情報 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
レイアウト | デザインに従う | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
【Testspec】User thường
Admin_search!A1 | Case 1- case 12 | Y | - | - | - | - | - | - | - | - | - | - | - | -
Case  19-case 75, case 77 | - | Y | - | - | - | - | - | - | - | - | - | - | -
Case 13-case 18, case 76, case 78 | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
【画面】Vị trí con trỏ đang ở
Đang ở page đầu tiên | =Y | - | - | - | Y | Y | Y | - | - | - | - | - | - | -
Đang ở page cuối cùng | =Y | - | - | - | - | - | - | Y | Y | Y | - | - | - | Y
Đang ở page ở giữa | =Y | - | - | - | - | - | - | - | - | - | Y | Y | - | -
【画面】Button
Button < | Có hiển thị | - | N | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
Enable | - | - | - | N | N | N | Y | Y | Y | Y | Y | Y | Y
Click button < | - | - | - | - | - | - | - | Y | - | - | Y | - | -
Button > | Có hiển thị | - | N | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
Enable | - | - | - | Y | Y | Y | N | N | N | Y | Y | Y | Y
Click button > | - | - | - | - | Y | - | - | - | - | - | - | Y | -
Click vào page khác | =Y | - | - | - | - | - | Y | - | - | Y | - | - | - | Y
確認項目 | 期待値
【画面】Hiển thị paging
Không hiển thị paging | X | - | - | - | - | - | - | - | - | - | - | - | -
Hiển thị 1 page | 1.0 | - | X | - | - | - | - | - | - | - | - | - | - | -
Hiển thị nhiều page | < 12 > / < 123 > / < 1234 >/ < 12345> / <12345..n> | - | - | X | X | X | X | X | X | X | X | X | X | X
Hiển thị highlight vào số trang đang focus | = Y | - | X | X | X | X | X | X | X | X | X | X | X | X
【画面】Điều hướng
Chuyển đến page tương ứng được click | - | - | - | - | - | X | - | - | X | - | - | - | X
Chuyển về page đầu tiên | - | - | - | - | - | - | - | X | - | - | X | - | -
Chuyển đến page cuối cùng | - | - | - | - | X | - | - | - | - | - | - | X | -
## Sheet: add
ドキュメント名 | 日付 | 作成者
データセット | シナリオ名 | シナリオＩＤ
テスト
テストパターン
対象データ | 状態 | 1.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 2.0 | 3.0
Điều kiện tiên quyết
Login thành công | Admin | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
ダッシュボード | Click link ダッシュボード | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
企業情報 | Hiển thị màn hình 企業情報 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
search!A1 | Case 79 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
レイアウト | デザインに従う | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
【画面】Hiển thị
Button ユーザを検索 | Click vào button ユーザを検索 | Y | Y | Y | Y | Y | Y
Hiển thị popup search list user | Y | Y | Y | Y | Y | Y
Image | Click vào + ở image | Y | Y | Y | Y
Hiển thị folder desktop với file ảnh | Y | Y | Y | Y
【画面】Input
件名 | "" - 空白 | Y | N | N | N | N | N
<= 300 ký tự | Y | Y | Y | Y | Y | Y
カテゴリ | "" - 空白 | Y | N | N | N | N
説明 | "" - 空白 | Y | N | N | N | N | N
ユーザを検索 | "" - 空白 | Y | N | N | N | N | N | N
'Search user'!A1 | Case 7-case 14 | Y | Y | Y | Y | Y | Y
Click button x sau email user | N | N | N | N | N | Y
Prefecture | "" - 空白 | Y | N | N | N | N
City | "" - 空白 | Y | N | N | N | N
City area | "" - 空白 | Y | N | N | N | N
Image 1 | "" - 空白 | Y | Y | N | N | N
Image2 | "" - 空白 | Y | N | Y | N | N
Image 3 | "" - 空白 | Y | N | N | Y | N
【画面】Button
追加 | Click button 追加 | Y | Y | Y | Y | Y
戻る | Click button 戻る | Y
確認項目 | 期待値
終了ステータス
正常終了 (success) | Success | X | X | X | X | X
エラー (error) | Display error message | X | X | X | X
【画面】Output
件名 | =【画面】Input. 件名 | X | X | X | X | X
カテゴリ | =【画面】Input. カテゴリ | X | X | X | X
説明 | =【画面】Input. 説明 | X | X | X | X | X
ユーザを検索 | =【画面】Input. ユーザを検索 | X | X | X | X | X
Xóa email user khỏi mục user đã chọn | X
Prefecture | =【画面】Input. Prefecture code | X | X | X | X
City | =【画面】Input. City code | X | X | X | X
City area | =【画面】Input. City area code | X | X | X | X
Không hiển thị khu vực image | = Y | X
Image 1 | =【画面】Input. Image 1 | X | X | X | X
Image2 | =【画面】Input. Image 2 | X | X | X
Image 3 | =【画面】Input. Image 3 | X | X
【画面】Error message
メッセージ出力領域 | デザインに従う | X | X | X | X
Các message lỗi | このフィールドは必須です。 | X | X
Trường 件名 phải nhỏ hơn 300 ký tự | X
Vui lòng chọn user | X
【DB】Số bản ghi được insert DB
のレコード数 | 0件 | X | X | X | X
1件 | X | X | X | X | X
【DB】sfx_tm_companies
id | 自動採番 | X | X | X | X | X
service_id | = param.service_id | X | X | X | X | X
prefectures_code | =【画面】Input. Prefecture code | X | X | X | X
prefectures_name | =【DB】sfx_tm_prefectures. prefectures_codeより導出 | X | X | X | X
city_code | =【画面】Input. City code | X | X | X | X
city_name | =【DB】sfx_tm_prefectures. city_codeより導出 | X | X | X | X
city_area_code | =【画面】Input. City area | X | X | X | X
city_area_name | =【DB】sfx_tm_prefectures.city_area_codeより導出 | X | X | X | X
category | =【画面】Input. カテゴリ | X | X | X | X
title | =【画面】Input. 件名 | X | X | X | X | X
body | =【画面】Input. 説明 | X | X | X | X | X
photo_url_array | =【画面】Input. [Image 1, image 2, image 3] | X | X | X | X
account_id_array | = account_id[【画面】Input. ユーザを検索 ] | X | X | X | X | X
create_id | = ログインaccount_id | X | X | X | X | X
create_date | timestamp | X | X | X | X | X
update_id | = ログインaccount_id | X | X | X | X | X
update_date | timestamp | X | X | X | X | X
【画面】Chuyển màn hình
Điều hướng sang màn hình view | X | X | X | X | X
Điều hướng đến MH list(search) | X
## Sheet: Search & chọn user
ドキュメント名 | 日付 | 作成者
データセット | シナリオ名 | シナリオＩＤ
テスト
テストパターン
対象データ | 状態 | 1.0 | 2.0 | 3.0 | 4.0 | 5.0 | 6.0 | 7.0 | 8.0 | 9.0 | 10.0 | 11.0 | 12.0 | 13.0 | 14.0 | 14.0 | 15.0 | 16.0
Điều kiện tiên quyết
Login thành công | Admin | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
ダッシュボード | Click link ダッシュボード | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
企業情報 | Hiển thị màn hình 企業情報 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
Admin_search!A1 | Case 79 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
ユ一ザを換索 | Click vào button ユ一ザを換索 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
レイアウト | デザインに従う | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
【DB】sfx_tm_account
= sfx_tm_account.account_id | 設定あり(IS NOT NULL) | N | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
= sfx_tm_account.account_name | 設定あり(IS NOT NULL) | - | N | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
=sfx_tm_account.email | 設定あり(IS NOT NULL) | - | - | N | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y
Số bản ghi thỏa mãn DB
>0件&<=5件 | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | - | - | - | - | -
>5件 | - | - | - | - | - | - | - | - | - | - | - | - | Y | Y | Y | Y | -
【画面】Input
ID | "" - 空白 | - | - | - | - | - | - | N | - | - | N | N | - | N | Y | Y | Y | -
=【DB】 sfx_tm_account.account_id | - | - | - | N | - | - | Y | - | - | Y | Y | - | Y | - | - | - | -
Account name | "" - 空白 | - | - | - | - | - | - | - | N | - | N | - | N | N | Y | Y | Y | -
= 【DB】sfx_tm_account.account_name | - | - | - | - | N | - | - | Y | - | Y | - | Y | Y | - | - | - | -
Email | "" - 空白 | - | - | - | - | - | - | - | - | N | - | N | N | N | Y | Y | Y | -
=【DB】sfx_tm_account.email | - | - | - | - | - | N | - | - | Y | - | Y | Y | Y | - | - | - | -
【画面】Button
検索 | Click button 検索 | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
【画面】Chọn user
Click chọn user | =Y | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | N | -
User chưa thuộc doanh nghiệp nào | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | - | - | -
User đã thuộc doanh nghiệp khác | - | - | - | - | - | - | - | - | - | - | - | - | - | - | Y | - | -
割当 | Click button割当 | - | - | - | - | - | - | Y | Y | Y | Y | Y | Y | Y | Y | Y | Y | -
戻る | Click button 戻る | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | Y
確認項目 | 期待値
終了コード
終了コード | 0:バッチ正常終了（警告なし） | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | X | -
【画面】Error message
Có user đã thuộc doanh nghiệp khác | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | - | -
のレコード数 | 0件 | X | X | X | X | X | X | - | - | - | - | - | - | - | - | - | - | -
> 1件 | - | - | - | - | - | - | X | X | X | X | X | X | X | X | X | X | -
一覧ページング | 0ページ | X | X | X | X | X | X | - | - | - | - | - | - | - | - | - | - | -
>=1ページ | - | - | - | - | - | - | X | X | X | X | X | X | X | X | X | X | -
【画面】Điều hướng
Đóng popup, hiển thị user ở màn hình add thông tin doanh nghiệp | - | - | - | - | - | - | X | X | X | X | X | X | X | X | - | - | -
Đóng popup, không có data ở màn hình add thông tin doanh nghiệp | - | - | - | - | - | - | - | - | - | - | - | - | - | - | - | X | X
## Sheet: Edit
ドキュメント名 | 日付 | 作成者
データセット | シナリオ名 | シナリオＩＤ
テスト
テストパターン
対象データ | 状態 | 1.0 | 2.0 | 3.0
Điều kiện tiên quyết
Login thành công | Admin | Y | Y | Y
アカウント管理 | Click l,ink アカウント管理 | Y | Y | Y
[ID]押下 | Click vào [ID] user | Y | Y | Y
アカウント表示画面 | =Y | Y | Y | Y
【画面】Hiển thị mặc định ban đầu
レイアウト | デザインに従う | Y | Y | Y
【Testspec】User thường
'User thường'!A1 | Case 1 đến case 4 | Y | N | N
Case 5 | N | Y | N
Case 6 | N | N | Y
確認項目 | 期待値
Hiển thị
退会理由 | Hiển thị | - | X | X
Không hiển thị | X | - | -
Data 退会理由 | Có | - | - | X
Không | - | X | -
## Sheet: view
ドキュメント名 | 日付 | 作成者
データセット | シナリオ名 | シナリオＩＤ
テスト
テストパターン
対象データ | 状態 | 1.0
Điều kiện tiên quyết
Login thành công | Admin | Y
アカウント管理 | Click l,ink アカウント管理 | Y
[ID]押下 | Click vào [ID] user | Y
アカウント表示画面 | =Y | Y
【画面】Hiển thị mặc định ban đầu
レイアウト | デザインに従う | Y
【Testspec】User thường
'User thường'!A1 | Case 1 đến case 6 | Y
確認項目 | 期待値
Hiển thị
退会理由 | Hiển thị | -
Không hiển thị | X
Data 退会理由 | Có | -
Không | -


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch TestCase - Test Specs\Backup\Testcase dạng mô tả.xlsx`

## Sheet: Cover
TESTCASE
Project Name: | Emile app _ user screen | Creator: | ThuyNTP
Phase: | Phase 02 | Create Date: | 2025-02-04 00:00:00
Time boxing: | Reviewer/Approver:
Version: | 1.0 | Review date:
Record of change: | (*) A (Add), M (Modify), D (Delete)
Effective Date | Version | Change Description | A, D, M (*) | Change item | Reference | Note
## Sheet: Smoke_test
Screen/function | Smoke test
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
Smoke test_1 | Thành công/thất bại theo google | Kiểm tra login thành công/thất bại theo google | 1. Vào màn hình login
2. Click vào button google
3. Vào màn hình chọn đối tượng , chọn địa chỉ email chưa đăng ký trong hệ thống
4. Kiểm tra kết quả 
5. Click lại vào button google
6. Vào màn hình chọn đối tượng , chọn địa chỉ email đã đăng ký hợp lệ trong hệ thống
7. Kiểm tra kết quả
8. Kiểm tra UI màn hình list digital tool | 2. Mở màn hình đăng nhập của bên thứ 3 , hiển thị tên trang web bạn sẽ truy cập
4. Hiển thị message lỗi: 
ログインに失敗しました。 
再度ログインするか学校管理者にお問い合わせください
5. Mở màn hình đăng nhập của bên thứ 3 , hiển thị tên trang web bạn sẽ truy cập
7. Login thành công vào màn hình list digital tool
8. Hiển thị UI như design, không bị xô lệch | High | ● | ●
Smoke test_2 | Thành công/thất bại theo microsoft | Kiểm tra login thành công/thất bại theo microsoft | 1. Vào màn hình login
2. Click vào button microsoft
3. Vào màn hình chọn đối tượng , chọn địa chỉ email chưa đăng ký trong hệ thống
4. Kiểm tra kết quả 
5. Click lại vào button microsoft
6. Vào màn hình chọn đối tượng , chọn địa chỉ email đã đăng ký hợp lệ trong hệ thống
7. Kiểm tra kết quả
8. Kiểm tra UI màn hình list digital tool | 2. Mở màn hình đăng nhập của bên thứ 3 , hiển thị tên trang web bạn sẽ truy cập
4. Hiển thị message lỗi: 
ログインに失敗しました。 
再度ログインするか学校管理者にお問い合わせください
5. Mở màn hình đăng nhập của bên thứ 3 , hiển thị tên trang web bạn sẽ truy cập
7. Login thành công vào màn hình list digital tool
8. Hiển thị UI như design, không bị xô lệch | High | ● | ●
Smoke test_3 | Phóng to/thu nhỏ, chọn digital tool | Kiểm tra chọn digital tool | 1. Vào màn hình list digital tool 
2. Kiểm tra hiển thị list digital tool 
3. Click vào button phóng to digital tool => Kiểm tra hiển thị
4. Click button thu nhỏ digital tool => kiểm tra hiển thị 
5. Click chọn 5 digital tool => kiểm tra hiển thị  
6. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
7. Click x ở màn hình せんたく中のイラスト, Click chọn thêm 16 digital tool => kiểm tra hiển thị
8. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
9. Click vào xóa digital tool ở vị trí số 20 => kiểm tra hiển thị
10. Click vào xóa digital tool ở vị trí số 4=> kiểm tra hiển thị
11. Click x ở màn hình せんたく中のイラスト, kiểm tra hiển thị 2 digital tool bị xóa ở step 9,10 | 2. Hiển thị số lượng tùy theo device :
Asus/chromebook/Ipad : 10x3
Ipad /Asus/chrombook thu nhỏ : 6x3
3. Phóng to ảnh digital tool 
4. Thu nhỏ ảnh digital tool
5. 5 ảnh được chọn hiển thị background #FFCC00 
6. Mở modal せんたく中のイラスト, Hiển thị 5 ảnh ở vị trí số 1 đến 5 theo thứ tự click ảnh 
7. 15 ảnh được chọn đầu tiên sẽ hiển thị background #FFCC00, ảnh thứ 16 sẽ không thể chọn
8. Mở modal せんたく中のイラスト, hiển thị đủ 20 ảnh digital tool ở 20 vị trí 
9. Digital tool ở vị trí số 20 bị xóa 
10. Digital tool ở vị trí số 4 bị xóa, các digital tool phía sau nó sẽ dồn lên
11. 2 digital tool bị bỏ chọn, mất background #FFCC00 | High | ● | ●
Smoke test_4 | Chọn tag category/教科・学年 | Kiểm tra chọn tag | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1=> kiểm tra hiển thị 
4. Click chọn tag level 2=> Kiểm tra hiển thị 
5. Click chọn tag level 3 => kiểm tra hiển thị 
6. Click chọn tag level 4 => Kiểm tra hiển thị 
7. Click vào dropdown 絵の しゅるい=> Kiểm tra hiển thị 
8. Click lại vào dropdown 絵の しゅるい=> Kiểm tra hiển thị 
9. Click ra ngoài vùng hiển thị tag -> Click vào dropdown 学年・教科=> Kiểm tra hiển thị 
10. Thực hiện lại step 3,4,5,6=> Kiểm tra hiển thị 
11. Click ra ngoài vùng hiển thị list tag => Kiểm tra hiển thị 
12. Click vào dropdown 学年・教科=> Kiểm tra hiển thị | 2. Mở list tag theo category 
3. Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 2 thuộc tag level 1 được chọn 
4. Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 3 thuộc tag level 2 được chọn
5.  Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 4 thuộc tag level 3 được chọn
6.  Tag được chọn hiển thị background #FFCC00
7. Đóng list tag theo category 
8. Mở lại list tag theo category, trở về trạng thái ban đầu lúc chưa chọn tag level 1
9. Mở list tag theo [教科・学年] 
10. Output tương tự các case 3,4,5,6 đối với list tag của [教科・学年] 
11. Đóng list tag của [教科・学年] 
12. Mở lại list tag theo [教科・学年], trở về trạng thái ban đầu lúc chưa chọn tag level 1 | High | ● | ●
Smoke test_5 | Search theo keyword | Kiểm tra search theo keyword | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま
3. Đăng ký keyword cho digital tool của category là 雪玉
4. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉 | 1. Vào màn hình list digital tool
2. Nhập vào từ khóa だま, click button さがす=> Kiểm tra kết quả search
3. Thay từ khóa ở step 2 bằng từ khóa ゆきだま, click button さがす=> Kiểm tra kết quả search
4. Xóa từ khóa vừa search ở step 4, click button さがす=> Kiểm tra kết quả search
5. Nhập vào từ khóa 玉, click button さがす=> Kiểm tra kết quả search
6. Thay từ khóa ở step 3 bằng từ khóa ゴム玉, click button さがす=> Kiểm tra kết quả search | 2. Hiển thị digital tool của cả category và [教科・学年] 
3. Chỉ hiển thị digital tool của category 
4. Hiển thị tất cả digital tool như ban đầu 
5. Hiển thị digital tool của cả category và [教科・学年] 
6. Chỉ hiển thị digital tool của [教科・学年] | High | ● | ●
Smoke test_6 | Search theo category | Kiểm tra search theo category | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click button さがす=> kiểm tra hiển thị 
4.  Click vào biểu tượng emile,Click vào dropdown 絵の しゅるい
5.  Chọn tag level 1=>Click button さがす, kiểm tra hiển thị 
6. Click vào biểu tượng emile,Click vào dropdown 絵の しゅるい
7. Chọn tag level 1,2=> Click button さがす=> kiểm tra hiển thị 
8. Click vào tên tag level 1 ở breadscrumb => kiểm tra hiển thị
9. Click vào biểu tượng emile,Click vào dropdown 絵の しゅるい 
10. Chọn tag level 1,2,3=> Click button さがす=> kiểm tra hiển thị 
11. Click vào tên tag level 2 ở breadscrumb 
12. Click vào biểu tượng emile, Click vào dropdown 絵の しゅるい 
13. Chọn tag level 1,2,3,4=> Click button さがす=> kiểm tra hiển thị 
14. Click vào tên tag level 3 ở breadscrumb => Kiểm tra hiển thị | 3. Mở màn hình kết quả tìm kiếm với list data là tất cả digital tool thuộc category 
5. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 1
7. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 2
8. Output giống step 1
10. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 3
11. Output giống step 6
13. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 4
14. Output giống step 9 | High | ● | ●
Smoke test_7 | Search theo [教科・学年] | Kiểm tra search theo [教科・学年] | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click button さがす=> kiểm tra hiển thị 
4. Click biểu tượng emile , Click vào dropdown 学年・教科
5. Chọn tag level 1=>Click button さがす, kiểm tra hiển thị 
6. Click vào biểu tượng emile,Click vào dropdown 学年・教科
7. Chọn tag level 1,2=> Click button さがす=> kiểm tra hiển thị 
8. Click vào biểu tượng emile, Click vào dropdown 学年・教科 
9. Chọn tag level 1,2,3,4=> Click button さがす=> kiểm tra hiển thị 
10. Click vào tên tag level 3 ở breadscrumb => Kiểm tra hiển thị
11.Click vào tên tag level 1 ở breadscrumb => Kiểm tra hiển thị
12. Click button phóng to rồi click thu nhỏ digital tool => kiểm tra hiển thị
13. Click chọn 4 digital tool => kiểm tra hiển thị
14. Click chọn lại 1 digital tool đã chọn ở step 13=> kiểm tra hiển thị
15. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
16. Click xóa 1 digital tool ở vị trí số 1=> kiểm tra hiển thị
17. Click x ở màn hình せんたく中のイラスト | 3. Mở màn hình kết quả tìm kiếm với list data là tất cả digital tool thuộc category 
5. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 1
7. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 2
9. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 4
10. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 3
11. Output giống step 5
12. Phóng to hình ảnh digital tool => sau đó thu nhỏ hình ảnh về ban đầu 
13. 4 digital tool được chọn, hiển thị background #FFCC00 
14. Digital tool được chọn bị mất background #FFCC00 
15. Mở modal せんたく中のイラスト, hiển thị 3 digital tool ở 3 vị trí 1,2,3 
16. Digital tool ở vị trí 1 bị xóa, 2 digital tool sau sẽ dồn lên vị trí 1,2
17. Đóng modal せんたく中のイラスト | High | ● | ●
Smoke test_8 | Download | Kiểm tra download ảnh | 1. Vào màn hình list digital tool
2. Chưa chọn digital tool nào => Kiểm tra hiển thị button download 
3. Click chọn 1 digital tool => Kiểm tra hiển thị button download 
4. Click button download 1 digital tool đã chọn => Kiểm tra hiển thị digital tool sau khi down thành công
5. Mở folder, kiểm tra tên tệp và định dạng tệp
6. Mở lại hệ thống , click chọn 20 ảnh digital tool, click button download 
7. Kiểm tra digital tool đã chọn sau khi down thành công 
8. Mở folder, kiểm tra số lượng ảnh down về, tên tệp và định dạng tệp | 2. Button download bị disbale 
3. Button download enble
4. Down digital đã chọn thành công, sau khi down thì bỏ chọn digital tool đó trên màn hình  
5. Tên tệp là tên ảnh , định dạng tệp là định dạng tương ứng bên admin upload
6. Download 20 ảnh digital tool 
7. Sau khi donwload thì bỏ chọn tất cả digital tool đã down 
8. Down đủ 20 ảnh, tên và định dạng tương ứng với ảnh ở bên admin | High | ● | ●
## Sheet: FT
Screen/function | FT
Testcase_ID | Testcase Title | Testcase Description | \\\\ | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
Login
FT_1 | UI | Kiểm tra UI | 1. Vào màn hình Login
2. Kiểm tra UI | 2. Màn hình hiển thị như design: https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0c0e04ef_0_9#slide=id.g33b0c0e04ef_0_9 | High | ● | ●
FT_2 | Login thất bại | Login bằng google với email người dùng chưa được đăng ký | 1. Tài khoản chưa đăng ký 
2. Email bị xóa/ hết hạn ở amdin ( chưa có specs) | 1. Vào màn hình Login
2. Click vào button google 
3. Ở màn hình đối tượng, chọn email chưa được đăng ký trong hệ thống | 3. Hiển thị message lỗi: 
ログインに失敗しました。 
再度ログインするか学校管理者にお問い合わせください | High | ● | ●
FT_3 | Login bằng microsoft với email người dùng chưa được đăng ký | 1. Tài khoản chưa đăng ký 
2. Email bị xóa/ hết hạn ở amdin ( chưa có specs) | 1. Vào màn hình Login
2. Click vào button microsoft
3. Ở màn hình đối tượng, chọn email chưa được đăng ký trong hệ thống | 3. Hiển thị message lỗi: 
ログインに失敗しました。 
再度ログインするか学校管理者にお問い合わせください | High | ● | ●
FT_4 | Login thành công | Login bằng google với email người dùng đã được đăng ký | 1. Vào màn hình Login
2. Click vào button google => Kiểm tra hiển thị
3. Ở màn hình đối tượng, chọn email đã được đăng ký trong hệ thống | 2. Màn hình hiển thị tên trang web đang truy cập và email lựa chọn
3. Login thành công và điều hướng vào màn hình list digital tool | High | ● | ●
FT_5 | Login bằng microsoft với email người dùng đã được đăng ký | c | 2. Màn hình hiển thị tên trang web đang truy cập và email lựa chọn
3. Login thành công và điều hướng vào màn hình list digital tool | High | ● | ●
FT_6 | Kiểm tra login tài khoản trên 2 thiết bị | [Sử dụng chromebook]
1. Login thành công 
[Sử dụng asus] 
2. Login thành công với tài khoản đã login ở chromebook | 2. Ở chromebook sẽ bị logout | High | ● | ●
FT_7 | Kiểm tra khi login 1 tài khoản trên 2 trình duyệt của cùng 1 thiết bị | 1. Mở chrome, login thành công
2. Mở Microsoft Edge, login thành công với tài khoản đã login ở chrome trong step 1 | 2. Ở chrome sẽ bị logout | Medium | ● | ●
Danh sách list digital tool
FT_8 | UI | Kiểm tra hiển thị màn hình | Khi chưa click chọn digital tool nào | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị màn hình | 2. Màn hình hiển thị như design : https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_51#slide=id.g33b0341dd9c_0_51
Buttton download disbale | High | ● | ●
FT_9 | Khi đã chọn ít nhất 1 digital tool | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị màn hình | 2. Màn hình hiển thị như design : https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_51#slide=id.g33b0341dd9c_0_51
Buttton download enable | High | ● | ●
FT_10 | Khi thay đổi response | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị màn hình | 2. Màn hình hiển thị như design : https://docs.google.com/presentation/d/1XpWbu-bA2yL_-K629zZp4dKmsWBh1WD2/edit?slide=id.p22#slide=id.p22 | High | ● | ●
FT_11 | Kiểm tra button せんたく中の
イラストを見る | Chưa chọn digital tool nào | 1. Vào màn hình list digital tool
2. Click vào button せんたく中の
イラストを見る | 2. Hiển thị modal chứa digital tool được chọn : Modal không chứa digital tool nào | High | ● | ●
FT_12 | Kiểm tra click vào dropdown 絵の しゅるい | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい | 2. Hiển thị list tag theo category: Design như UI | High | ● | ●
FT_13 | Kiểm tra click vào dropdown 学年・教科 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科 | 2. Mở list tag theo [教科・学年]: Design như UI | High | ● | ●
FT_14 | Thông tin avatar | Kiểm tra hiển thị thông tin người dùng | Login bằng account có tên <= số ký tự tối đa có thể hiển thị | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị thông tin người dùng
3. Hover chuột vào tên người dùng=> Kiểm tra hiển thị tooltip | 2. Hiển thị avatar 
    Tên đầy đủ của user
3. Hiển thị tooltip tên đầy đủ của user+ さん | High | ● | ●
FT_15 | Login bằng account có tên > số ký tự tối đa có thể hiển thị | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị thông tin người dùng
3. Hover chuột vào tên người dùng=> Kiểm tra hiển thị tooltip | 2. Hiển thị avatar 
    Tên user: Hiển thị tối đa số ký tự và ...
3. Hiển thị tooltip tên đầy đủ của user+さん | Medium | ● | ●
FT_16 | Kiểm tra click vào avatar | 1. Vào màn hình list digital tool
2. Click vào avatar
3. Kiểm tra hiển thị | 3. Hiển thị menu : email đầy đủ của user và button logout | High | ● | ●
FT_17 | 1. Vào màn hình list digital tool
2. Click vào avatar
3. Click lại vào avatar | 3. Đóng menu hiển thị | High | ● | ●
FT_18 | 1. Vào màn hình list digital tool
2. Click vào avatar
3. Click vào bên ngoài vùng hiển thị menu | 3. Đóng menu hiển thị | Medium | ● | ●
FT_19 | Kiểm tra click vào button ログアウト | 1. Vào màn hình list digital tool
2. Click vào avatar
3. Click vào button logout
4. Click vào button Cancel | 3. Hiển thị popup confirm : 
このアカウントからログアウト 
してもよろしいでしょうか？
2 button キャンセル và はい
4. Đóng popup confirm và vẫn hiển thị màn hình list digital tool | High | ● | ●
FT_20 | 1. Vào màn hình list digital tool
2. Click vào avatar
3. Click vào button logout
4. Click vào ngoài vùng menu | 3. Đóng menu hiển thị | Medium | ● | ●
FT_21 | 1. Vào màn hình list digital tool
2. Click vào avatar
3. Click vào button logout
4. Click vào button Yes | 3. Hiển thị popup confirm : 
このアカウントからログアウト 
してもよろしいでしょうか？
2 button キャンセル và はい
4. Logout ra màn hình login | High | ● | ●
FT_22 | List data | Kiểm tra list hiển thị | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị list data digital tool | 2. Hiển thị list data với số lượng 10x3 : bao gồm digital tool của category và [教科・学年] | High | ● | ●
FT_23 | Khi thu nhỏ response | 1. Vào màn hình list digital tool
2. Thu nhỏ response 
3. Kiểm tra hiển thị list data digital tool | 3. Hiển thị list data với số lượng 6x3 : bao gồm digital tool của category và [教科・学年] | High | ● | ●
FT_24 | Kiểm tra thông tin digital tool | 1. Vào màn hình list digital tool
2. Kiểm tra thông tin 1 digital tool có tên nằm trong khung hiển thị digital tool | 2. Hiển thị ảnh fit trong khung ảnh đến giới hạn hiển thị
    Hiển thị tên đầy đủ của digital tool | High | ● | ●
FT_25 | 1. Vào màn hình list digital tool
2. Kiểm tra thông tin 1 digital tool có tên nằm ngoài khung hiển thị digital tool | 2. Hiển thị ảnh fit trong khung ảnh đến giới hạn hiển thị
    Hiển thị tên đến giới hạn khung digital tool, còn lại thì cắt đi | High | ● | ●
FT_26 | Kiểm tra click vào phóng to digital tool | 1. Vào màn hình list digital tool
2. Click vào button phóng to ở digital tool | 2. Hiển thị popup phóng to digital tool vừa chọn phóng to: Hiển thị đủ ảnh và tên digital tool | High | ● | ●
FT_27 | Kiểm tra đóng popup phóng to digital tool | 1. Vào màn hình list digital tool
2. Click vào button phóng to ở digital tool
3. Click vào button phóng to ở popup digital tool | 3. Đóng popup phóng to của digital tool | High | ● | ●
FT_28 | 1. Vào màn hình list digital tool
2. Click vào button phóng to ở digital tool
3. Click vào vùng ngoài popup digital tool | 3. Đóng popup phóng to của digital tool | Medium | ● | ●
FT_29 | Kiểm tra khi click chọn/ bỏ chọn vào digital tool | 1. Vào màn hình list digital tool
2. Click vào chọn digital tool
3. Click vào digital tool ở step2 | 2. Digital tool được chọn sẽ hiển thị màu #FFCC00 ở background quanh ảnh 
3. Digital tool sẽ mất background #FFCC00 và hiển thị màu nền trắng như ban đầu | High | ● | ●
FT_30 | List digital đã được chọn | Kiểm tra khi đã chọn digital tool | 1. Vào màn hình list digital tool
2. Click vào chọn 1 digital tool
3. Click vào button せんたく中のイラストを見る | 2. Digital tool được chọn sẽ hiển thị màu #FFCC00 ở background quanh ảnh 
3. Hiển thị modal chứa digital tool được chọn: 1 digital tool ở vị trí số 1. 
Nếu digital tool được chọn có thể nhìn thấy ở màn hình dưới modal thì digital tool cũng sẽ hiển thị giống step2 | High | ● | ●
FT_31 | 1. Vào màn hình list digital tool
2. Click vào chọn 20 digital tool
3. Click vào button せんたく中のイラストを見る | 2. Digital tool được chọn sẽ hiển thị màu vàng ở background quanh ảnh 
3. Hiển thị modal chứa digital tool được chọn: 20 digital tool ở vị trí từ số 1 đến 20. 
Nếu digital tool được chọn có thể nhìn thấy ở màn hình dưới modal thì digital tool cũng sẽ hiển thị giống step2 | High | ● | ●
FT_32 | 1. Vào màn hình list digital tool
2. Click vào chọn 21 digital tool
3. Click vào button せんたく中のイラストを見る | 2. Digital tool thứ 21 sẽ không thể được chọn
3. Hiển thị modal chứa digital tool được chọn: 20 digital tool ở vị trí từ số 1 đến 20.
Nếu digital tool được chọn có thể nhìn thấy ở màn hình dưới modal thì digital tool cũng sẽ hiển thị giống step2 | High | ● | ●
FT_33 | Kiểm tra khi click xóa 1 digital tool | Đang có 1 digital tool được chọn | 1. Vào màn hình list digital tool
2. Click vào chọn 1 digital tool
3. Click vào button せんたく中のイラストを見る
4. Click vào button xóa ở digital tool số 1 | 4. Trên modal chứa digital tool được chọn sẽ không còn digital tool nào.
Nếu digital tool được chọn có thể nhìn thấy ở màn hình dưới modal thì sẽ mất màu vàng ở background | High | ● | ●
FT_34 | Đang có 20 digital tool được chọn | 1. Vào màn hình list digital tool
2. Click vào chọn 1 digital tool
3. Click vào button せんたく中のイラストを見る
4. Click vào button xóa ở digital tool số 8 | 4. Trên modal chứa digital tool được chọn: Chỉ còn 19 digital tool, các digital tool từ số 9 đến 20 cũ sẽ được dồn lại , vị trí số 20 sẽ trống
Nếu digital tool được chọn có thể nhìn thấy ở màn hình dưới modal thì sẽ mất màu vàng ở background | High | ● | ●
FT_35 | Đang có 20 digital tool được chọn | 1. Vào màn hình list digital tool
2. Click vào chọn 1 digital tool
3. Click vào button せんたく中のイラストを見る
4. Click vào button xóa ở digital tool số 20 | 4. Trên modal chứa digital tool được chọn: Chỉ còn 19 digital tool, vị trí số 20 sẽ trống do đã xóa.
Nếu digital tool được chọn có thể nhìn thấy ở màn hình dưới modal thì sẽ mất màu vàng ở background | High | ● | ●
FT_36 | Kiểm tra click button x trên modal | 1. Vào màn hình list digital tool
2. Click vào chọn 1 digital tool
3. Click vào button せんたく中のイラストを見る
4. Click vào button x ở góc phải modal | 4. Đóng modal, list digital được chọn không thay đổi | Medium | ● | ●
FT_37 | Kiểm tra click ngoài vùng hiển thị danh sách | 1. Vào màn hình list digital tool
2. Click vào chọn 1 digital tool
3. Click vào button せんたく中のイラストを見る
4. Click vào bên ngoài vùng hiển modal | 4. Đóng modal, list digital được chọn không thay đổil | Medium | ● | ●
FT_38 | Kiểm tra paging | Kiểm tra khi có 1 page | Số digital tool là <=30
Số lượng digital tool 1 hàng là 10 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Kiểm tra hiển thị paging | 2. Hiển thị như design : <<  <  1  2   3   4   5 >  >>
Trong đó các button <<,<,2,3,4,5 , > ,>> đều không hoạt động | High | ● | ●
FT_39 | Số digital tool là <=30
Số lượng digital tool 1 hàng là 6 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Kiểm tra hiển thị paging | 2. Hiển thị như design : <<  <  1  2   3   4   5 >  >>
Trong đó các button <<,<,2,3,4,5 , > ,>> đều không hoạt động
- Vì thu nhỏ response còn 6 digital 1 hàng nên nếu số bản ghi > 18 thì cần scoll xuống mới hiển thị đủ | High | ● | ●
FT_40 | Kiểm tra khi có 5 page | Số lượng digital tool nằm trong khoảng 121< x <=150
Đang ở page 1 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Kiểm tra hiển thị paging
3. Click sang page 5=> Kiểm tra hiển thị paging | 2. Hiển thị như design : <<  <  1  2   3   4   5 >  >>
Trong đó: 
- Các button <<,< bị disable
- Page 1 đang được focus hiển thị dưới dạng nút màu trắng
- Các button 2,3,4,5,>,>> enable có thể click
3. Page 5 đang được focus hiển thị dưới dạng nút màu trắng
Các button <<,<,1,2,3,4 đều enable có thể click
Các button >,>> bị disable | High | ● | ●
FT_41 | Kiểm tra khi có nhiều hơn 5 page | Số lượng digital tool nằm trong khoảng 121< x <=150
Đang ở page 5 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Kiểm tra hiển thị paging | 2. Hiển thị như design : <<  <  1  2   3   4   5 >  >>
Trong đó: 
- Page 5 đang được focus hiển thị dưới dạng nút màu trắng
- Tất cả các button đều enable có thể click | High | ● | ●
FT_42 | Kiểm tra click chuyển page | Số lượng page là > 1
Đang ở page 1 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Click chuyển sang page ở giữa => Kiểm tra hiển thị paging
3. Click chuyển sang page cuối cùng=> Kiểm tra hiển thị paging | 2. Chuyển nhanh sang page được click, data digital tool hiển thị đúng dữ liệu 
- Tất cả các button đều enable 
3. Chuyển nhanh sang page được click, data digital tool hiển thị đúng dữ liệu           
- Page được focus hiển thị dưới dạng nút màu trắng 
- 2 button >,>> bị disable 
- Các button <,<< và các page đứng trước page cuối đều enable | High | ● | ●
FT_43 | Kiểm tra click button <,> | Số lượng page là > 1
Đang ở page 1 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Click vào button > => Kiểm tra hiển thị paging
3. Click vào button <  => Kiểm tra hiển thị paging | 2. Đi tới page 2
3. Đi tới page 1 | High | ● | ●
FT_44 | Kiểm tra click button <<,>> | Số lượng page là 5
Đang ở page 1 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Click vào button >> => Kiểm tra hiển thị paging
3. Click vào button <<=> Kiểm tra hiển thị paging | 2. Đi tới page 5
3. ĐI tới page 1 | High | ● | ●
FT_45 | Số lượng page là > 5
Đang ở page 1 | 1. Vào màn hình list digital tool với data ở pre-codition
2. Click vào button >> => Kiểm tra hiển thị paging
3. Click vào button << => Kiểm tra hiển thị paging | 2. Đi tới page cuối cùng 
3. Đi tới page 1 | High | ● | ●
FT_46 | Tìm kiếm theo keyword | Kiểm tra nhập text vào textbox search | Không nhập gì | 1. Vào màn hình list digital tool
2. Không input từ khóa vào textbox search
3. Click vào button さがす | 3. Hiển thị với list digital tool như cũ : bao gồm list category và [教科・学年] | High | ● | ●
FT_47 | <=20 ký tự | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa có <=20 ký tự 
3. Click vào button さがす | 3. Hiển thị kết quả tương ứng với từ khóa nhập vào | High | ● | ●
FT_48 | >20 ký tự | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa có >20 ký tự | 2. Không thể nhập vào | High | ● | ●
FT_49 | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa không có trong tên và keyword của tất cả digital tool | 2. Hiển thị màn hình trắng | Medium | ● | ●
FT_50 | Kiểm tra tìm kiếm thành công với tên ảnh | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " だま"
3. Click vào button さがす | 3. Cả digital tool của category và [教科・学年] đều hiển thị | High | ● | ●
FT_51 | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " きだま"
3. Click vào button さがす | 3. Chỉ digital tool của category hiển thị | High | ● | ●
FT_52 | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " むだま"
3. Click vào button さがす | 3. Chỉ digital tool của [教科・学年] hiển thị | High | ● | ●
FT_53 | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " ゆきだま"
3. Click vào button さがす | 3. Chỉ digital tool của category hiển thị | High | ● | ●
FT_54 | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " ごむだま"
3. Click vào button さがす | 3. Chỉ digital tool của [教科・学年] hiển thị | High | ● | ●
FT_55 | Kiểm tra tìm kiếm thành công với keyword đã đăng ký với ảnh | 1. Đăng ký keyword cho digital tool của category là 雪玉
2. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉 | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " 玉"
3. Click vào button さがす | 3. Cả digital tool của category và [教科・学年] đều hiển thị | High | ● | ●
FT_56 | 1. Đăng ký keyword cho digital tool của category là 雪玉
2. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉 | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " 雪"
3. Click vào button さがす | 3. Chỉ digital tool của category hiển thị | High | ● | ●
FT_57 | 1. Đăng ký keyword cho digital tool của category là 雪玉
2. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉 | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " ゴム"
3. Click vào button さがす | 3. Chỉ digital tool của [教科・学年] hiển thị | High | ● | ●
FT_58 | 1. Đăng ký keyword cho digital tool của category là 雪玉
2. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉 | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " 雪玉"
3. Click vào button さがす | 3. Chỉ digital tool của category hiển thị | High | ● | ●
FT_59 | 1. Đăng ký keyword cho digital tool của category là 雪玉
2. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉 | 1. Vào màn hình list digital tool
2. Nhập vào textbox từ khóa " ゴム玉"
3. Click vào button さがす | 3. Chỉ digital tool của [教科・学年] hiển thị | High | ● | ●
Tìm kiếm theo category tag
FT_60 | UI | Kiểm tra UI khi click vào dropdown 絵の しゅるい | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい | 2. Hiển thị UI như design : https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_113#slide=id.g33b0341dd9c_0_113 | High | ● | ●
FT_61 | Kiểm tra đóng dropdown list tag | Khi chưa action gì trên list tag | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click lại vào dropdown 絵の しゅるい
4. Click vào dropdown 絵の しゅるい
5. Click ra ngoài vùng hiển thị list tag | 3. Đóng list tag
5. Đóng list tag | High | ● | ●
FT_62 | Đã thực hiện chọn các tag trên list tag | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Thực hiện các action chọn tag =>Click lại vào dropdown 絵の しゅるい
4. Click vào dropdown 絵の しゅるい
5. Thực hiện các action chọn tag =>Click ra ngoài vùng hiển thị list tag 
6. Click vào dropdown 絵の しゅるい | 3. Đóng list tag
5. Đóng list tag
6. Mở lại list tag như steps 2 | High | ● | ●
FT_63 | Kiểm tra list tag | Kiểm tra hiển thị tag level 1 | <=18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Kiểm tra hiển thị list tag level 1 | 3. Hiển thị tối đa 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Không có scroll | High | ● | ●
FT_64 | >18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Kiểm tra hiển thị list tag level 1 | 3. Hiển thị 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_65 | Kiểm tra click chọn tag level 1 | List tag level 2 của tag level 1 được chọn có <=18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào 1 tag level 1 ở pre-condition
4. Kiểm tra hiển thị list tag level 2 | 2. Tag level 1 hiển thị được chọn( hiển thị background #FFCC00)
3. List tag level 2 hiển thị ở phần ô vuông bên cạnh list tag level 1:  
Hiển thị tối đa 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Không có scroll | High | ● | ●
FT_66 | List tag level 2 của tag level 1 được chọn có >18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào 1 tag level 1 ở pre-condition
4. Kiểm tra hiển thị list tag level 2 | 2. Tag level 1 hiển thị được chọn( hiển thị background  #FFCC00)
3. List tag level 2 hiển thị ở phần ô vuông bên cạnh list tag level 1:  
Hiển thị 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_67 | Kiểm tra click chọn 1 tag level 1 khác | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào 1 tag level 1 
4. Click vào 1 tag level 1 khác | 4. Tag level 1 ở step 3 bị bỏ chọn ( mất background #FFCC00)
    Tag level 1 ở step 4 hiển thị được chọn ( hiển thị background #FFCC00)
=> Hiển thị list tag level 2 tương ứng với tag level 1 được click ở step4 | High | ● | ●
FT_68 | Kiểm tra click vào thẻ tag level 1 đang được chọn | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào 1 tag level 1 
4. Click lại vào tag level 1 ở step3 | 4. Bỏ chọn tag level 1, list tag level 2 sẽ trống | High | ● | ●
FT_69 | Kiểm tra click chọn tag level 2 | Tag level 1 có tag level 2 và tag level 2 có <= 10 tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition | 4. Hiển thị tối đa 10 items với màu background là #D9D9D9
Không có scroll | High | ● | ●
FT_70 | Tag level 1 có tag level 2 và tag level 2 có > 10 tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition | 4. Hiển thị 10 items với màu background là #D9D9D9
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_71 | Kiểm tra hiển thị tên tag level 3 | Tag level 1 có tag level 2 và tag level 2 có tag level 3 với : Tên của  tag level 3 có số ký tự nhỏ hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Kiểm tra hiển thị tên tag level 3 | 5. Hiển thị đủ tên tag level 3 | High | ● | ●
FT_72 | Tag level 1 có tag level 2 và tag level 2 có tag level 3 với : Tên của tag level 3 có số ký tự dài hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition 
4. Click vào tag level 2 ở pre-condition
5. Kiểm tra hiển thị tên tag level 3 | 5. Hiển thị tên đến giới hạn của khung, các từ còn lại sẽ bị cắt đi | High | ● | ●
FT_73 | Kiểm tra click chọn tag level 1 | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2
5. Click lại vào tag level 1 ở step 3=> Kiểm tra hiển thị tag level 3 | 5. Tag level 1 ở step 3 sẽ bị bỏ chọn
    List tag level 2,3 sẽ trống | High | ● | ●
FT_74 | Kiểm tra click chọn 1 tag level 2 khác | Tag level 1 có nhiều tag level 2 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 2 khác tag ở step 4=> Kiểm tra hiển thị tag level 2,3 | 5. Tag level 2 ở step 4 sẽ bị bỏ chọn , tag level 2 ở step 5 sẽ hiển thị đang được chọn( hiển thị background vàng)
    Hiển thị list tag level 3 thuộc về tag level 2 ở step 5 | High | ● | ●
FT_75 | Kiểm tra click vào thẻ tag level 2 đang được chọn | Tag level 1 có nhiều tag level 2 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click lại vào tag level 2 ở step 4=> Kiểm tra hiển thị tag level 2,3 | 5. Tag level 2 ở step 4 sẽ bị bỏ chọn
    List tag level 3 sẽ trống | High | ● | ●
FT_76 | Kiểm tra click vào tag level 1 khác | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào tag level 1 khác  step 3=> Kiểm tra hiển thị tag level 1,2, 3 | 5. Tag level 1 ở step 3 sẽ bị bỏ chọn , tag level 1 ở step 5 sẽ hiển thị đang được chọn( hiển thị background vàng)
    Hiển thị list tag level 2 thuộc về tag level 1 ở step 5 | High | ● | ●
FT_77 | Kiểm tra click chọn tag level 3 | Tag level 1 có tag level 2 
Tag level 2 có tag level 3
Tag level 3 có <= 10 tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị list tag level 4 | 6. Hiển thị tất cả tag level 4 với màu background là #D9D9D9
Không có scroll | High | ● | ●
FT_78 | Tag level 1 có tag level 2 
Tag level 2 có có tag level 3
Tag level 3 có > 10 tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị list tag level 4 | 6. Hiển thị 10 items với màu background là #D9D9D9
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_79 | Kiểm tra hiển thị tên tag level 4 | Tag level 1 có tag level 2 
Tag level 2 có có tag level 3
Tag level 3 có tag level 4:  Tên của  tag level 4 có số ký tự nhỏ hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị tên tag level 4 | 5. Hiển thị đủ tên tag level 4 | High | ● | ●
FT_80 | Tag level 1 có tag level 2 
Tag level 2 có có tag level 3
Tag level 3 có tag level 4:  Tên của  tag level 3 có số ký tự dài hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị tên tag level 4 | 5. Hiển thị tên đến giới hạn của khung, các từ còn lại sẽ bị cắt đi | High | ● | ●
FT_81 | Kiểm tra click chọn 1 tag level 3 khác | Tag level 1 có tag level 2 và tag level 2 có nhiều tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 
5. Click vào tag level 3
6. Click vào 1 tag level 3 khác tag ở step 5=> Kiểm tra hiển thị list tag level 3,4 | 6. Tag level 3 ở step 5 sẽ bị bỏ chọn , tag level 3 ở step 6 sẽ hiển thị đang được chọn( hiển thị background #FFCC00)
   Hiển thị list tag level 4 thuộc về tag level 3 ở step 6 | High | ● | ●
FT_82 | Kiểm tra click vào thẻ tag level 3 đang được chọn | Tag level 1 có tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 
5. Click vào tag level 3 
6. Click lại vào tag level 3 ở step5 => Kiểm tra hiển thị list tag level 3,4 | 5. Tag level 3 ở step 5 sẽ bị bỏ chọn
    List tag level 4 sẽ trống | High | ● | ●
FT_83 | Kiểm tra click vào thẻ tag level 2 khác | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào tag level 2 khác step 4 => Kiểm tra hiển thị list tag level 2,3,4 | 5. Tag level 2 ở step 4 sẽ bị bỏ chọn, tag level 2 ở step 6 sẽ được chọn
    Hiển thị list tag level 3 của tag level 2 ở step 6 và list tag level 4 sẽ trống | High | ● | ●
FT_84 | Kiểm tra click vào lần 2 vào thẻ tag level 2 đang được chọn | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click lại vào tag level 2 ở step 4 => Kiểm tra hiển thị list tag level 2,3,4 | 5. Tag level 2 ở step 4 sẽ bị bỏ chọn
    List tag level 3,4 sẽ trống | High | ● | ●
FT_85 | Kiểm tra click vào thẻ tag level 1 khác | Tag level 1 có tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào 1 tag level 1 khác tag ở step 3 => Kiểm tra hiển thị list tag level 1,2,3,4 | 5. Tag level 1 ở step 3 sẽ bị bỏ chọn, tag level 1 ở step 6 sẽ được chọn
    Hiển thị list tag level 2 của tag level 1 ở step 6 và list tag level 3,4 sẽ trống | High | ● | ●
FT_86 | Kiểm tra click lần 2 vào thẻ tag level 1 đang được chọn | Tag level 1 có tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click lại vào tag level 1 ở step 3 => Kiểm tra hiển thị list tag level 1,2,3,4 | 5. Tag level 1 ở step 3 sẽ bị bỏ chọn
    List tag level 2,3,4 sẽ trống | High | ● | ●
FT_87 | Kiểm tra click chọn tag level 4 | Tag level 1 có tag level 2
Tag level 2 có tag level 3
Tag level 3 có tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào 1 tag level 4 => Kiểm tra hiển thị | 6. Tag level 4 được chọn ( hiển thị background  #FFCC00) | High | ● | ●
FT_88 | Kiểm tra click chọn tag level 4 đang được chọn | Tag level 1 có tag level 2
Tag level 2 có tag level 3
Tag level 3 có tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào 1 tag level 4
7. Click lại vào tag level 4 ở step 6 => Kiểm tra hiển thị | 7. Tag level 4 bị bỏ chọn ( mất background  #FFCC00) | High | ● | ●
FT_89 | Kiểm tra tìm kiếm với không chọn thẻ tag | Kiểm tra tìm kiếm khi không chọn tag nào | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :絵のしゅるい không thể click
3. List data là tất cả digital tool thuộc category | High | ● | ●
FT_90 | Kiểm tra tìm kiếm với tag level 1 | Kiểm tra tìm kiếm với tag level 1 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1 có ảnh digital tool
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 絵のしゅるい > [第1層タグ] 
Với 絵のしゅるい là link text và [第1層タグ]  là text
3. List data hiển thị tất cả digital tool thuộc thẻ tag level 1 | High | ● | ●
FT_91 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1 không có ảnh digital tool
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 絵のしゅるい > [第1層タグ] 
Với 絵のしゅるい là link text và [第1層タグ]  là text
3. List data trống | High | ● | ●
FT_92 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1 có tên <=10 ký tự
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 1 hiển thị đủ | High | ● | ●
FT_93 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1 có tên lớn hơn 10 ký tự
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 1 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_94 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1 có ảnh digital tool
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra khi click vào link 絵の しゅるい ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :絵のしゅるい không thể click
    List data là tất cả digital tool thuộc category | High | ● | ●
FT_95 | Kiểm tra tìm kiếm với tag level 2 | Kiểm tra tìm kiếm khi chọn tag level 2 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có digital tool
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ]  > [第2層タグ]
Với : 
     絵のしゅるい,  [第1層タグ] là link text có thể click 
      [第2層タグ]  là text không thể click
3. List data hiển thị tất cả digital tool thuộc thẻ tag level 2 | High | ● | ●
FT_96 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 không có digital tool
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ]  > [第2層タグ]
Với : 
     絵のしゅるい,  [第1層タグ] là link text có thể click 
      [第2層タグ]  là text không thể click
3. List data trống | High | ● | ●
FT_97 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tên <= 10 ký tự
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 2 hiển thị đủ | High | ● | ●
FT_98 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tên > 10 ký tự
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 2 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_99 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra khi click vào link  [第1層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ]  
Với : 
     絵のしゅるい là link text có thể click 
      [第1層タグ]  là text không thể click
- List data là tất cả digital tool thuộc tag level 1 | High | ● | ●
FT_100 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra khi click vào link  絵のしゅるい ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :絵のしゅるい không thể click
    List data là tất cả digital tool thuộc category | High | ● | ●
FT_101 | Kiểm tra tìm kiếm với tag level 3 | Kiểm tra tìm kiếm với tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có digital tool
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ]   
Với : 
     絵のしゅるい,  [第1層タグ] , [第2層タグ]  là link text có thể click 
      [第3層タグ]  là text không thể click
3. List data hiển thị tất cả digital tool thuộc thẻ tag level 3 | High | ● | ●
FT_102 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 không có digital tool
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ]   
Với : 
     絵のしゅるい,  [第1層タグ] , [第2層タグ]  là link text có thể click 
      [第3層タグ]  là text không thể click
3. List data trống | High | ● | ●
FT_103 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tên <=10 ký tự
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 3 hiển thị đủ | High | ● | ●
FT_104 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tên >10 ký tự
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 3 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_105 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第2層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ] > [第2層タグ] 
Với : 
     絵のしゅるい,  [第1層タグ]  là link text có thể click 
      [第2層タグ]  là text không thể click
- List data là tất cả digital tool thuộc tag level 2 | High | ● | ●
FT_106 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第1層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ]  
Với : 
     絵のしゅるい  là link text có thể click 
      [第1層タグ]  là text không thể click    
- List data là tất cả digital tool thuộc tag level 1 | High | ● | ●
FT_107 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  絵のしゅるい ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :絵のしゅるい không thể click
    List data là tất cả digital tool thuộc category | High | ● | ●
FT_108 | Kiểm tra tìm kiếm với tag level 4 | Kiểm tra tìm kiếm với tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có digital tool
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ]   > [第4層タグ]   
Với : 
     絵のしゅるい,  [第1層タグ],  [第2層タグ] ,  [第3層タグ]   là link text có thể click 
      [第4層タグ]  là text không thể click
3.  List data hiển thị tất cả digital tool thuộc thẻ tag level 4 | High | ● | ●
FT_109 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có digital tool
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ]   > [第4層タグ]   
Với : 
     絵のしゅるい,  [第1層タグ],  [第2層タグ] ,  [第3層タグ]   là link text có thể click 
      [第4層タグ]  là text không thể click
3.  List data trống | High | ● | ●
FT_110 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có tên <=10 ký tự
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 4 hiển thị đủ | High | ● | ●
FT_111 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có tên >10 ký tự
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 4 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_112 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第3層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ] 
Với: 
     絵のしゅるい,  [第1層タグ], [第2層タグ]  là link text có thể click
     [第3層タグ]  không thể click
- List data là tất cả digital tool thuộc tag level 3 | High | ● | ●
FT_113 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第2層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ] > [第2層タグ] 
Với: 
     絵のしゅるい,  [第1層タグ]  là link text có thể click
     [第2層タグ]  không thể click    
- List data là tất cả digital tool thuộc tag level 2 | High | ● | ●
FT_114 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第1層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :絵のしゅるい > [第1層タグ]  
Với: 
     絵のしゅるい là link text có thể click
     [第1層タグ]  không thể click       
- List data là tất cả digital tool thuộc tag level 1 | High | ● | ●
FT_115 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  絵のしゅるい ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :絵のしゅるい không thể click
    List data là tất cả digital tool thuộc category | High | ● | ●
FT_116 | Kiểm tra list data ở màn hình kết quả tìm kiếm | Kiểm tra các case FT_22  đến FT_45 | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra tương tự các case từ FT_22  đến FT_45 | 2. Kết quả các case test đều pass | High | ● | ●
FT_117 | Kiểm tra action khác sau khi tìm kiếm | Kiểm tra click vào biểu tượng emile | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click biểu tượng emile | 2. Điều hướng tới màn hình list digital tool | Medium | ● | ●
FT_118 | Kiểm tra khi search bằng keyword ở màn kết quả | 1. Vào màn hình kết quả tìm kiếm
2. Nhập text vào textbox search ở header 
3. Click vào button さがす | 3. Điều hướng về màn list digital tool với list data theo textbox nhập vào, điều kiện tìm kiếm ở step1 bị clear đi | High | ● | ●
Tìm kiếm theo [教科・学年] tag
FT_119 | UI | Kiểm tra UI khi click vào dropdown 学年・教科 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科 | 2. Hiển thị UI như design : https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_132#slide=id.g33b0341dd9c_0_132 | High | ● | ●
FT_120 | Kiểm tra đóng dropdown list tag | Khi chưa action gì trên list tag | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click lại vào dropdown 学年・教科
4. Click vào dropdown 学年・教科
5. Click ra ngoài vùng hiển thị list tag | 3. Đóng list tag
5. Đóng list tag | High | ● | ●
FT_121 | Đã thực hiện chọn các tag trên list tag | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Thực hiện các action chọn tag =>Click lại vào dropdown 学年・教科
4. Click vào dropdown 学年・教科
5. Thực hiện các action chọn tag =>Click ra ngoài vùng hiển thị list tag 
6. Click vào dropdown 学年・教科 | 3. Đóng list tag
5. Đóng list tag
6. Mở lại list tag như steps 2 | High | ● | ●
FT_122 | Kiểm tra list tag | Kiểm tra hiển thị tag level 1 | <=18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Kiểm tra hiển thị list tag level 1 | 3. Hiển thị tối đa 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Không có scroll | High | ● | ●
FT_123 | >18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Kiểm tra hiển thị list tag level 1 | 3. Hiển thị 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_124 | Kiểm tra click chọn tag level 1 | List tag level 2 của tag level 1 được chọn có <=18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào 1 tag level 1 ở pre-condition
4. Kiểm tra hiển thị list tag level 2 | 2. Tag level 1 hiển thị được chọn( hiển thị background #FFCC00)
3. List tag level 2 hiển thị ở phần ô vuông bên cạnh list tag level 1:  
Hiển thị tối đa 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Không có scroll | High | ● | ●
FT_125 | List tag level 2 của tag level 1 được chọn có >18 items | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào 1 tag level 1 ở pre-condition
4. Kiểm tra hiển thị list tag level 2 | 2. Tag level 1 hiển thị được chọn( hiển thị background #FFCC00)
3. List tag level 2 hiển thị ở phần ô vuông bên cạnh list tag level 1:  
Hiển thị 18 items với số lượng 3x6: theo thứ tự từ trên xuống, trái qua phải. 
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_126 | Kiểm tra click chọn 1 tag level 1 khác | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào 1 tag level 1 
4. Click vào 1 tag level 1 khác | 4. Tag level 1 ở step 3 bị bỏ chọn ( mất background #FFCC00)
    Tag level 1 ở step 4 hiển thị được chọn ( hiển thị background #FFCC00)
=> Hiển thị list tag level 2 tương ứng với tag level 1 được click ở step4 | High | ● | ●
FT_127 | Kiểm tra click vào thẻ tag level 1 đang được chọn | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào 1 tag level 1 
4. Click lại vào tag level 1 ở step3 | 4. Bỏ chọn tag level 1, list tag level 2 sẽ trống | High | ● | ●
FT_128 | Kiểm tra click chọn tag level 2 | Tag level 1 có tag level 2 và tag level 2 có <= 10 tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition-> Kiểm tra hiển thị tag level 3 | 4. Hiển thị tối đa 10 items với màu background là #D9D9D9
Không có scroll | High | ● | ●
FT_129 | Tag level 1 có tag level 2 và tag level 2 có > 10 tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition-> Kiểm tra hiển thị tag level 3 | 4. Hiển thị 10 items với màu background là #D9D9D9
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_130 | Kiểm tra hiển thị tên tag level 3 | Tag level 1 có tag level 2 và tag level 2 có tag level 3 với : Tên của  tag level 3 có số ký tự nhỏ hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Kiểm tra hiển thị tên tag level 3 | 5. Hiển thị đủ tên tag level 3 | High | ● | ●
FT_131 | Tag level 1 có tag level 2 và tag level 2 có tag level 3 với : Tên của tag level 3 có số ký tự dài hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition 
4. Click vào tag level 2 ở pre-condition
5. Kiểm tra hiển thị tên tag level 3 | 5. Hiển thị tên đến giới hạn của khung, các từ còn lại sẽ bị cắt đi | High | ● | ●
FT_132 | Kiểm tra click chọn 1 tag level 1 khác | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2
5. Click vào tag level 1 khác ở step 3=> Kiểm tra hiển thị tag level 3 | 5. Tag level 1 ở step 3 sẽ bị bỏ chọn , tag level 1 ở step 5 sẽ hiển thị đang được chọn( hiển thị background vàng)
    Hiển thị list tag level 2 thuộc về tag level 1 ở step 5 | High | ● | ●
FT_133 | Kiểm tra click chọn 1 tag level 2 khác | Tag level 1 có nhiều tag level 2 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 2 khác tag ở step 4=> Kiểm tra hiển thị tag level 2,3 | 5. Tag level 2 ở step 4 sẽ bị bỏ chọn , tag level 2 ở step 5 sẽ hiển thị đang được chọn( hiển thị background vàng)
    Hiển thị list tag level 3 thuộc về tag level 2 ở step 5 | High | ● | ●
FT_134 | Kiểm tra click vào thẻ tag level 2 đang được chọn | Tag level 1 có nhiều tag level 2 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click lại vào tag level 2 ở step 4=> Kiểm tra hiển thị tag level 2,3 | 5. Tag level 2 ở step 4 sẽ bị bỏ chọn
    List tag level 3 sẽ trống | High | ● | ●
FT_135 | Kiểm tra click vào lần 2 vào thẻ tag level 1 đang được chọn | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click lại vào tag level 1 ở step 3=> Kiểm tra hiển thị tag level 1,2, 3 | 5. Tag level 1 ở step3 sẽ bị bỏ chọn
    List tag level 2 và 3 sẽ bị trống | High | ● | ●
FT_136 | Kiểm tra click chọn tag level 3 | Tag level 1 có tag level 2 
Tag level 2 có tag level 3
Tag level 3 có <= 10 tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị list tag level 4 | 6. Hiển thị tất cả tag level 4 với màu background là #D9D9D9
Không có scroll | High | ● | ●
FT_137 | Tag level 1 có tag level 2 
Tag level 2 có có tag level 3
Tag level 3 có > 10 tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị list tag level 4 | 6. Hiển thị 10 items với màu background là #D9D9D9
Có scroll, có thể scroll để load thêm items | High | ● | ●
FT_138 | Kiểm tra hiển thị tên tag level 4 | Tag level 1 có tag level 2 
Tag level 2 có có tag level 3
Tag level 3 có tag level 4:  Tên của  tag level 4 có số ký tự nhỏ hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị tên tag level 4 | 6. Hiển thị đủ tên tag level 4 | High | ● | ●
FT_139 | Tag level 1 có tag level 2 
Tag level 2 có có tag level 3
Tag level 3 có tag level 4:  Tên của  tag level 4 có số ký tự dài hơn khung hiển thị | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 ở pre-condition
5. Click vào tag level 3 ở pre-condition
6. Kiểm tra hiển thị tên tag level 4 | 6. Hiển thị tên đến giới hạn của khung, các từ còn lại sẽ bị cắt đi | High | ● | ●
FT_140 | Kiểm tra click chọn 1 tag level 3 khác | Tag level 1 có tag level 2 và tag level 2 có nhiều tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 
5. Click vào tag level 3
6. Click vào 1 tag level 3 khác tag ở step 5=> Kiểm tra hiển thị list tag level 3,4 | 6. Tag level 3 ở step 5 sẽ bị bỏ chọn , tag level 3 ở step 6 sẽ hiển thị đang được chọn( hiển thị background #FFCC00)
   Hiển thị list tag level 4 thuộc về tag level 3 ở step 6 | High | ● | ●
FT_141 | Kiểm tra click vào thẻ tag level 3 đang được chọn | Tag level 1 có tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào tag level 2 
5. Click vào tag level 3 
6. Click lại vào tag level 3 ở step5 => Kiểm tra hiển thị list tag level 3,4 | 6. Tag level 3 ở step 5 sẽ bị bỏ chọn
    List tag level 4 sẽ trống | High | ● | ●
FT_142 | Kiểm tra click vào thẻ tag level 2 khác | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào tag level 2 khác step 4 => Kiểm tra hiển thị list tag level 2,3,4 | 6. Tag level 2 ở step 4 sẽ bị bỏ chọn, tag level 2 ở step 6 sẽ được chọn
    Hiển thị list tag level 3 của tag level 2 ở step 6 và list tag level 4 sẽ trống | High | ● | ●
FT_143 | Kiểm tra click vào lần 2 vào thẻ tag level 2 đang được chọn | Tag level 1 có nhiều tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click lại vào tag level 2 ở step 4 => Kiểm tra hiển thị list tag level 2,3,4 | 6. Tag level 2 ở step 4 sẽ bị bỏ chọn
    List tag level 3,4 sẽ trống | High | ● | ●
FT_144 | Kiểm tra click vào thẻ tag level 1 khác | Tag level 1 có tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào 1 tag level 1 khác tag ở step 3 => Kiểm tra hiển thị list tag level 1,2,3,4 | 6. Tag level 1 ở step 3 sẽ bị bỏ chọn, tag level 1 ở step 6 sẽ được chọn
    Hiển thị list tag level 2 của tag level 1 ở step 6 và list tag level 3,4 sẽ trống | High | ● | ●
FT_145 | Kiểm tra click lần 2 vào thẻ tag level 1 đang được chọn | Tag level 1 có tag level 2 và tag level 2 có tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click lại vào tag level 1 ở step 3 => Kiểm tra hiển thị list tag level 1,2,3,4 | 6. Tag level 1 ở step 3 sẽ bị bỏ chọn
    List tag level 2,3,4 sẽ trống | High | ● | ●
FT_146 | Kiểm tra click chọn tag level 4 | Tag level 1 có tag level 2
Tag level 2 có tag level 3
Tag level 3 có tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào 1 tag level 4 => Kiểm tra hiển thị | 6. Tag level 4 được chọn ( hiển thị background #FFCC00) | High | ● | ●
FT_147 | Kiểm tra click chọn tag level 4 đang được chọn | Tag level 1 có tag level 2
Tag level 2 có tag level 3
Tag level 3 có tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào tag level 1 ở pre-condition
4. Click vào 1 tag level 2
5. Click vào 1 tag level 3
6. Click vào 1 tag level 4
7. Click lại vào tag level 4 ở step 6 => Kiểm tra hiển thị | 7. Tag level 4 bị bỏ chọn ( mất background #FFCC00) | High | ● | ●
FT_148 | Kiểm tra tìm kiếm với không chọn thẻ tag | Kiểm tra tìm kiếm khi không chọn tag nào | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :学年・教科 không thể click
3. List data là tất cả digital tool thuộc [教科・学年] | High | ● | ●
FT_149 | Kiểm tra tìm kiếm với tag level 1 | Kiểm tra tìm kiếm với tag level 1 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn tag level 1 có ảnh digital tool
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 学年・教科 > [第1層タグ] 
Với 学年・教科 là link text và [第1層タグ]  là text
3. List data hiển thị tất cả digital tool thuộc thẻ tag level 1 | High | ● | ●
FT_150 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn tag level 1 không có ảnh digital tool
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 学年・教科 > [第1層タグ] 
Với 学年・教科 là link text và [第1層タグ]  là text
3. List data trống | High | ● | ●
FT_151 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn tag level 1 có tên <=10 ký tự
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 1 hiển thị đủ | High | ● | ●
FT_152 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn tag level 1 có tên >10 ký tự
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 1 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_153 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn tag level 1 có ảnh digital tool
4. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra khi click vào link 学年・教科 ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :学年・教科 không thể click
    List data là tất cả digital tool thuộc [教科・学年] | High | ● | ●
FT_154 | Kiểm tra tìm kiếm với tag level 2 | Kiểm tra tìm kiếm khi chọn tag level 2 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có digital tool
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ]  > [第2層タグ]
Với : 
     学年・教科,  [第1層タグ] là link text có thể click 
      [第2層タグ]  là text không thể click
3. List data hiển thị tất cả digital tool thuộc thẻ tag level 2 | High | ● | ●
FT_155 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 không có digital tool
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ]  > [第2層タグ]
Với : 
     学年・教科,  [第1層タグ] là link text có thể click 
      [第2層タグ]  là text không thể click
3. List data trống | High | ● | ●
FT_156 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tên <= 10 ký tự
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 2 hiển thị đủ | High | ● | ●
FT_157 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tên > 10 ký tự
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 2 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_158 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra khi click vào link  [第1層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ]  
Với : 
     学年・教科 là link text có thể click 
      [第1層タグ]  là text không thể click
- List data là tất cả digital tool thuộc tag level 1 | High | ● | ●
FT_159 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 
5. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra khi click vào link  学年・教科 ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :学年・教科 không thể click
    List data là tất cả digital tool thuộc [教科・学年] | High | ● | ●
FT_160 | Kiểm tra tìm kiếm với tag level 3 | Kiểm tra tìm kiếm với tag level 3 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có digital tool
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 学年・教科 > [第1層タグ] > [第2層タグ] > [第3層タグ]   
Với : 
     学年・教科,  [第1層タグ] , [第2層タグ]  là link text có thể click 
      [第3層タグ]  là text không thể click
3. List data hiển thị tất cả digital tool thuộc thẻ tag level 3 | High | ● | ●
FT_161 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 không có digital tool
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 学年・教科 > [第1層タグ] > [第2層タグ] > [第3層タグ]   
Với : 
     学年・教科,  [第1層タグ] , [第2層タグ]  là link text có thể click 
      [第3層タグ]  là text không thể click
3. List data trống | High | ● | ●
FT_162 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tên <=10 ký tự
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 3 hiển thị đủ | High | ● | ●
FT_163 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tên >10 ký tự
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 3 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_164 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第2層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ] > [第2層タグ] 
Với : 
     学年・教科,  [第1層タグ]  là link text có thể click 
      [第2層タグ]  là text không thể click
- List data là tất cả digital tool thuộc tag level 2 | High | ● | ●
FT_165 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第1層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ]  
Với : 
     学年・教科  là link text có thể click 
      [第1層タグ]  là text không thể click    
- List data là tất cả digital tool thuộc tag level 1 | High | ● | ●
FT_166 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 
6. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  学年・教科 ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :学年・教科 không thể click
    List data là tất cả digital tool thuộc [教科・学年] | High | ● | ●
FT_167 | Kiểm tra tìm kiếm với tag level 4 | Kiểm tra tìm kiếm với tag level 4 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có digital tool
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 学年・教科 > [第1層タグ] > [第2層タグ] > [第3層タグ]   > [第4層タグ]   
Với : 
     学年・教科,  [第1層タグ],  [第2層タグ] ,  [第3層タグ]   là link text có thể click 
      [第4層タグ]  là text không thể click
3.  List data hiển thị tất cả digital tool thuộc thẻ tag level 4 | High | ● | ●
FT_168 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có digital tool
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb
3. Kiểm tra list data hiển thị | 2. Hiển thị màn hình kết quả với breadscrumb : 学年・教科 > [第1層タグ] > [第2層タグ] > [第3層タグ]   > [第4層タグ]   
Với : 
     学年・教科,  [第1層タグ],  [第2層タグ] ,  [第3層タグ]   là link text có thể click 
      [第4層タグ]  là text không thể click
3.  List data trống | High | ● | ●
FT_169 | Kiểm tra hiển thị breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có tên <=10 ký tự
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 4 hiển thị đủ | High | ● | ●
FT_170 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4 có tên >10 ký tự
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra hiển thị breadscrumb | 2. Tên thẻ tag level 4 hiển thị 10 ký tự, từ ký tự thứ 11 thì bị cắt đi | High | ● | ●
FT_171 | Kiểm tra click vào breadscrumb | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第3層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ] > [第2層タグ] > [第3層タグ] 
Với: 
     学年・教科,  [第1層タグ], [第2層タグ]  là link text có thể click
     [第3層タグ]  không thể click
- List data là tất cả digital tool thuộc tag level 3 | High | ● | ●
FT_172 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第2層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ] > [第2層タグ] 
Với: 
     学年・教科,  [第1層タグ]  là link text có thể click
     [第2層タグ]  không thể click    
- List data là tất cả digital tool thuộc tag level 2 | High | ● | ●
FT_173 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  [第1層タグ] ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb :学年・教科 > [第1層タグ]  
Với: 
     学年・教科 là link text có thể click
     [第1層タグ]  không thể click       
- List data là tất cả digital tool thuộc tag level 1 | High | ● | ●
FT_174 | 1. Vào màn hình list digital tool
2. Click vào dropdown 学年・教科
3. Click chọn 1 thẻ tag level 1 có tag level 2
4. Click chọn thẻ tag level 2 có tag level 3
5. Click chọn thẻ tag level 3 có tag level 4
6. Click chọn thẻ tag level 4
7. Click vào button さがす | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click vào link  学年・教科 ở breadscrumb | 2. Hiển thị màn hình kết quả với breadscrumb chỉ có text :学年・教科 không thể click
    List data là tất cả digital tool thuộc [教科・学年] | High | ● | ●
FT_175 | Kiểm tra list data ở màn hình kết quả tìm kiếm | Kiểm tra các case FT_22 đến FT_45 | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra tương tự các case từ FT_22  đến FT_45 | 2. Kết quả các case test đều pass | High | ● | ●
FT_176 | Kiểm tra action khác sau khi tìm kiếm | Kiểm tra click vào biểu tượng emile | 1. Vào màn hình kết quả tìm kiếm
2. Kiểm tra click biểu tượng emile | 2. Điều hướng tới màn hình list digital tool | High | ● | ●
FT_177 | Kiểm tra khi search bằng keyword ở màn kết quả | 1. Vào màn hình kết quả tìm kiếm
2. Nhập text vào textbox search ở header 
3. Click vào button さがす | 3. Điều hướng về màn list digital tool với list data | High | ● | ●
Download
FT_178 | Download ở màn hình list digital tool | Kiểm tra hiển thị button download | Khi chưa chọn digital tool | 1. Vào màn hình list digital tool 
2. Kiểm tra hiển thị button ダウンロード | 2. Button download bị disable | High | ● | ●
FT_179 | Đã chọn digital tool | 1. Vào màn hình list digital tool 
2. Click chọn ít nhất 1 digital tool
3. Kiểm tra hiển thị button ダウンロード | 2. Button download enable | High | ● | ●
FT_180 | Kiểm tra download 1 ảnh | Device : ASUS, CHromebook | 1. Vào màn hình list digital tool 
2. Click chọn 1 digital tool
3. Click vào button ダウンロード | 3. Down ảnh digital tool vừa được chọn | High | ● | ●
FT_181 | Device :Ipad | 1. Vào màn hình list digital tool 
2. Click chọn 20 digital tool
3. Click vào button ダウンロード | 3. Down tất cả ảnh digital tool vừa được chọn | High | ● | ●
FT_182 | Kiểm tra download nhiều ảnh | Device : ASUS, CHromebook | 1. Vào màn hình list digital tool 
2. Click chọn 1 digital tool
3. Click vào button ダウンロード | 3. Down ảnh digital tool vừa được chọn vào file zip với tên :Emileのイラスト.zip
-> sau khi click vào file zip thì hiển thị file folder chứa các ảnh digital tool đã down | High | ● | ●
FT_183 | Device :Ipad | 1. Vào màn hình list digital tool 
2. Click chọn 20 digital tool
3. Click vào button ダウンロード | 3. Down tất cả ảnh digital tool vừa được chọn vào file zip với tên :Emileのイラスト.zip
-> sau khi click vào file zip thì hiển thị file folder chứa các ảnh digital tool đã down | High | ● | ●
FT_184 | Kiểm tra sau khi download xong | 1. Vào màn hình list digital tool 
2. Click chọn digital tool
3. Click vào button ダウンロード | 1. Kiểm tra các digital tool được chọn ở step 2 pre-condition
2. Click button  せんたく中のイラストを見る
3. Kiểm tra list danh sách digital tool đã được chọn | 4. Tất cả các ảnh digital tool ở step 2 pre-condition  đều bị bỏ chọn
6. List danh sách digital tool được chọn đều bị xóa hết | High | ● | ●
FT_185 | Kiểm tra tên ảnh tải xuống | 1. Vào màn hình list digital tool 
2. Click chọn digital tool
3. Click vào button ダウンロード | 1. Mở folder máy tính ở chỗ lưu ảnh digital tool đã down về 
2. Kiểm tra số lượng tệp được down về
3. Kiểm tra tên tệp down về và định dạng tệp | 2.Số lượng tệp được donw về tương ứng với số digital tool được chọn trên màn hình
3. Tên tệp sẽ là tên của ảnh digital tool 
ĐỊnh dạng ảnh tùy vào định dạng được upload ở màn hình admin: JPG/PNG/JPEG/JFIF) | High | ● | ●
FT_186 | Download ở màn hình kết quả tìm kiếm | Thực hiện tương tự các case FT_178 đến FT_185 | 1. Mở màn hình kết quả tìm kiếm
2. Thực hiện các case FT_178 đến FT_185 | 2. Các case test đều pass | High | ● | ●
FT_187 | Download chung | Kiểm tra khi download ảnh được chọn ở cả màn list digital tool và màn kết quả tìm kiếm | 1. Vào màn hình list digital tool , Click chọn digital tool
2. Vào màn hình kết quả tìm kiếm theo 絵の しゅるい ,  click chọn digital tool 
3. Vào màn hình kết quả tìm kiếm theo 教科・学年 ,  click chọn digital tool | 1. Click button download 
2. Vào màn hình list digital tool, kiểm tra các digital tool đã chọn 
3. Vào màn kết quả tìm kiếm theo 絵の しゅるい =>  kiểm tra các digital tool đã chọn 
4. Vào màn kết quả tìm kiếm theo 教科・学年 => kiểm tra các digital tool đã chọn 
5. Click button  せんたく中のイラストを見る=>  Kiểm tra list danh sách digital tool đã được chọn | 2. List digital tool đều bỏ chọn
3. List digital tool đều bỏ chọn
4. List digital tool đều bỏ chọn
5. List digital tool đều đã bị xóa | High | ● | ●
## Sheet: IT
Screen/function | IT
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
IT_1 | Chọn digital tool giữa các màn hình | Kiểm tra việc chọn digital tool giữa các màn hình | 1. Vào màn hình list digital tool
2. Chọn 3 digital tool từ page 1 
3. Click vào せんたく中のイラストを見る=> kiểm tra hiển thị
4. Click x ở màn hình せんたく中のイラスト
5. Chuyển qua page 2, chọn thêm 2 digital tool 
6. Click vào せんたく中のイラストを見る=> kiểm tra hiển thị
7. Xóa digital tool ở vị tri số 1 => Click x ở màn hình せんたく中のイラスト
8.  Click vào dropdown 絵の しゅるい, Chọn tag level 1 và Click button さがす
9. Chọn 10 digital tool từ list digital tool của category 
10. Click vào せんたく中のイラストを見る=> kiểm tra hiển thị
11. Xóa digital tool vị trí số 2 => Kiểm tra hiển thị
12. Click x ở màn hình せんたく中のイラスト, click vào biểu tượng emile -> Click vào dropdown 学年・教科
13. Click button さがす, chọn 7 digital tool từ [教科・学年] 
14. Click vào せんたく中のイラストを見る=> kiểm tra hiển thị
15. Xóa digital tool vị trí số 3 
16. Click x ở màn hình せんたく中のイラスト
17. Click vào biểu tượng Emile 
18. Kiểm tra list digital tool đã chọn
19. Click chuyển sang page 2, kiểm tra list digital tool đã chọn | 2. 3 digital tool được chọn hiển thị background #FFCC00 
3. Mở modal せんたく中のイラスト, 3 digital tool ở step 2 hiển thị ở 3 vị trí 1,2,3 tùy theo thứ tự click 
5. 2 digital tool được chọn hiển thị background #FFCC00 
6. Mở modal せんたく中のイラスト, 2 digital tool ở step 5 hiển thị ở 2 vị trí 4,5 tùy theo thứ tự click
7. Digital tool số 1 bị xóa , các digital tool phía sau sẽ dồn lên
8. Hiển thị màn hình search theo category : list digital tool thuộc tag level 1
 9. 10 digital tool được chọn hiển thị background #FFCC00 
10. Mở modal せんたく中のイラスト, 10 digital tool ở step 9 hiển thị ở các vị trí từ 5 tới 14 tùy theo thứ tự click 
11. Digital tool số 2 bị xóa , các digital tool phía sau sẽ dồn lên
13. Hiển thị màn hình search theo [教科・学年]: List tất cả digital tool thuộc [教科・学年]
      6 digital tool được chọn hiển thị background #FFCC00, digital tool thứ 7 sẽ không thể được chọn
14. Hiển thị đủ 20 digital tool 
15. Digital tool số 3 bị xóa , các digital tool phía sau sẽ dồn lên
17. Điều hướng về màn hình list digital tool 
18. Chỉ còn 1 digital tool được chọn 
19. Chỉ còn 1 digital tool được chọn | High | ● | ●
IT_2 | Search | Kiểm tra khi search theo keyword, category và [教科・学年] | 1. Vào màn hình list digital tool 
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1, Click button さがす
4. Nhập từ khóa vào textbox search, Click button さがす=> Kiểm tra hiển thị
5. Click vào dropdown 絵の しゅるい
6. Click chọn tag level 1,2,3,4 và Click button さがす=> Kiểm tra hiển thị | 3. Hiển thị màn hình kết quả search theo category : list digital tool thuộc về tag level 1
4. Clear điều kiện search theo category, hiển thị màn hình kết quả search theo keyword: list digital tool chứa từ khóa vừa search 
6. Clear điều kiện search theo keyword , Hiển thị màn hình kết quả search theo category : list digital tool thuộc về tag level 4 | High | ● | ●
IT_3 | 1. Vào màn hình list digital tool 
2. Click vào dropdown 学年・教科
3. Click chọn tag level 1, Click button さがす
4. Nhập từ khóa vào textbox search, Click button さがす=> Kiểm tra hiển thị
5. Click vào dropdown 学年・教科
6. Click chọn tag level 1,2 và Click button さがす=>  Kiểm tra hiển thị | 3. Hiển thị màn hình kết quả search theo [教科・学年] : list digital tool thuộc về tag level 1
4. Clear điều kiện search theo [教科・学年] , hiển thị màn hình kết quả search theo keyword: list digital tool chứa từ khóa vừa search 
6. Clear điều kiện search theo keyword , Hiển thị màn hình kết quả search theo [教科・学年] : list digital tool thuộc về tag level 2 | High | ● | ●
IT_4 | 1. Vào màn hình list digital tool 
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1,2 và Click button さがす
4. Đóng dropdown 絵の しゅるい, Click vào dropdown 学年・教科
5. Click chọn tag level 1,2,3 và Click button さがす
6. Click vào tên tag level 2 ở breadscrum 
7. Đóng dropdown 学年・教科, Click vào dropdown 絵の しゅるい và Click button さがす | 3. Hiển thị màn hình kết quả search theo category: list digital tool thuộc về tag level 2
5. Clear điều kiện search theo category, Hiển thị màn hình kết quả search theo [教科・学年]: list digital tool thuộc về tag level 3
6. Hiển thị màn hình kết quả search theo  [教科・学年] : list digital tool thuộc về tag level 2
7. Clear điều kiện search theo [教科・学年], Hiển thị màn hình kết quả search theo category: list tất cả digital tool của category | High | ● | ●
## Sheet: ST
Screen/function | ST
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
ST_1 | Login | Kiểm tra login | 1. Vào màn hình login
2. Click vào button google 
3. Chọn địa chỉ email chưa đăng ký trong hệ thống => Kiểm tra hiển thị 
4. Click vào button google 
5. Chọn địa chỉ email đã đăng ký trong hệ thống => Kiểm tra hiển thị
6. Click vào avatar => Click button logout 
7. Click vào button microsoft 
8. Chọn địa chỉ email chưa đăng ký trong hệ thống => Kiểm tra hiển thị 
9. Click vào button google 
10. Chọn địa chỉ email đã đăng ký trong hệ thống => Kiểm tra hiển thị | 2. 
3. Hiển thị message lỗi: 
ログインに失敗しました。 
再度ログインするか学校管理者にお問い合わせください
4. 
5. Login thành công vào màn hình list digital tool, hiển thị UI đúng design
6. Logout ra màn login
7.
8. Hiển thị message lỗi: 
ログインに失敗しました。 
再度ログインするか学校管理者にお問い合わせください
9. 
10. Login thành công vào màn hình list digital tool, hiển thị UI đúng design | High | ● | ●
UI | Kiểm tra khi thay đổi response | Thực hiện thu nhỏ response màn hình | 1. Vào màn hình list digital tool -> Kiểm tra hiển thị 
2. Click vào dropdown 絵の しゅるい -> Kiểm tra hiển thị 
3. Click chọn tag level 1,2,3,4=> kiểm tra hiển thị
4. Click lại vào dropdown 絵の しゅるい
5. Click vào dropdown 学年・教科=> Kiểm tra hiển thị
6. Click chọn tag level 1,2,3,4=> kiểm tra hiển thị
7. Click lại vào dropdown 学年・教科
8. Chọn phóng to digital tool -> Kiểm tra hiển thị 
9. Click thu nhỏ digital tool -> Kiểm tra hiển thị 
10. Click chọn digital tool 
11.  Click vào button せんたく中のイラストを見る=> Kiểm tra hiển thị
12. Click x ở màn hình せんたく中のイラスト
13. Click vào dropdown 絵の しゅるい,click button さがす=> Kiểm tra hiển thị | 1. Hiển thị list digital tool với số lượng : 6x3
2. Hiển thị list tag với 4 phần như design cũ và co chiều ngang 
3. Hiển thị đủ list tag tuong ứng với từng level 
5. Hiển thị list tag với 4 phần như design cũ và co chiều ngang 
6. Hiển thị đủ list tag tuong ứng với từng level 
8. Phóng to hình ảnh digital tool với hình chữ nhật đứng ( vì chiều ngang bị co ) 
9. Đóng phóng to digital tool 
10. Digital tool được chọn hiển thị background #FFCC00
11. Hiển thị list digital tool được chọn với 4 hàng : 5 items 1 hàng 
13. Hiển thị list digital tool với số lượng : 6x3 | High
ST_3 | Kiểm tra chọn digital tool | 1. Vào màn hình list digital tool
2. Kiểm tra hiển thị list digital tool
3. Click vào button phóng to digital tool => Kiểm tra hiển thị
4. Click button thu nhỏ digital tool => kiểm tra hiển thị
5. Click chọn 5 digital tool => kiểm tra hiển thị
6. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
7. Click x ở màn hình せんたく中のイラスト, Click lại vào 1 digital tool đã chọn ở step 5=> kiểm tra hiển thị
8. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
9. Click x ở màn hình せんたく中のイラスト, Click chọn thêm 17 digital tool => kiểm tra hiển thị
10. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
11. Click vào xóa digital tool ở vị trí số 20 => kiểm tra hiển thị
12. Click vào xóa digital tool ở vị trí số 4=> kiểm tra hiển thị
13. Click x ở màn hình せんたく中のイラスト, kiểm tra hiển thị 2 digital tool bị xóa ở step 11,12
14. Click chuyển sang page 2, chọn 1 digital tool => Kiểm tra hiển thị
15. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
16. Click x ở màn hình せんたく中のイラスト, chuyển về page 1=> Kiểm tra các digital tool đã chọn trước đó
17. Click chọn lại 1 digital tool đang được chọn => Kiểm tra hiển thị
18. Click button せんたく中のイラストを見る=> kiểm tra hiển thị | 2. Hiển thị số lượng tùy theo device :
Ipad/Asus/chromebook : 10x3
3. Phóng to ảnh digital tool
4. Thu nhỏ ảnh digital tool
5. 5 ảnh được chọn hiển thị background #FFCC00
6. Mở modal せんたく中のイラスト, Hiển thị 5 ảnh ở vị trí số 1 đến 5 theo thứ tự click ảnh
7. Digital tool được chọn lại sẽ bị bỏ chọn , mất background #FFCC00
8. Mở modal せんたく中のイラスト, hiển thị chỉ còn lại 4 ảnh digital tool ở 4 vị trí 1,2,3,4
9. 16 ảnh được chọn đầu tiên sẽ hiển thị background #FFCC00, ảnh thứ 17 sẽ không thể chọn
10. Mở modal せんたく中のイラスト, hiển thị đủ 20 ảnh digital tool ở 20 vị trí
11. Digital tool ở vị trí số 20 bị xóa
12. Digital tool ở vị trí số 4 bị xóa, các digital tool phía sau nó sẽ dồn lên
13. 2 digital tool bị bỏ chọn, mất background #FFCC00
14. Chuyển sang page 2, digital tool được chọn hiển thị background #FFCC00
15. Digital tool được chọn ở step 14 hiển thị ở vị trí số 19
16. Chuyển về page 1, 18 digital tool được chọn trước đó vẫn hiển thị đúng
17. Digital tool được chọn lại sẽ bị bỏ chọn , mất background #FFCC00
18. Mở modal せんたく中のイラスト, hiển thị 18 ảnh digital tool | High | ● | ●
ST_4 | Chọn tag theo category/教科・学年 | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click chọn tag level 1=> kiểm tra hiển thị
4. Click chọn tag level 2=> Kiểm tra hiển thị
5. Click chọn tag level 3 => kiểm tra hiển thị
6. Click chọn tag level 4 => Kiểm tra hiển thị
7. Click lại vào tag level 4 ở step 6=> Kiểm tra hiển thị
8. Click chọn tag level 2 khác ở step 4=> Kiểm tra hiển thị
9. Click chọn lại tag level 1 ở step 3=> Kiểm tra hiển thị
10. Click vào dropdown 絵の しゅるい=> Kiểm tra hiển thị
11. Click lại vào dropdown 絵の しゅるい=> Kiểm tra hiển thị
12. Click đóng dropdown 絵の しゅるい->  Click vào dropdown 学年・教科=> Kiểm tra hiển thị
13. Thực hiện lại step 3,4,5,6,7,8=> Kiểm tra hiển thị
14. Click ra ngoài vùng hiển thị list tag => Kiểm tra hiển thị
15. Click vào dropdown 学年・教科=> Kiểm tra hiển thịb | 2. Mở list tag theo category
3. Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 2 thuộc tag level 1 được chọn
4. Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 3 thuộc tag level 2 được chọn
5. Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 4 thuộc tag level 3 được chọn
6. Tag được chọn hiển thị background #FFCC00, hiển thị list tag level 4 thuộc tag level 3 được chọn
7. Tag level 4 bị bỏ chọn,hiển thị background trắng
8. Tag level 2 mới được chọn, hiển thị list tag level 3 thuộc tag level 2 vừa được chọn
9. Tag level 1 mới được chọn, hiển thị list tag level 2 thuộc tag level 1 vừa được chọn
10. Đóng list tag theo category
11. Mở lại list tag theo category, trở về trạng thái ban đầu lúc chưa chọn tag level 1
12. Mở list tag theo [教科・学年], đóng list tag category
13. Outout tương tự các case 3,4,5,6,7,8 đối với list tag của [教科・学年]
14. Đóng list tag của [教科・学年]
15. Mở lại list tag theo [教科・学年], trở về trạng thái ban đầu lúc chưa chọn tag level 1 | High | ● | ●
ST_5 | Search | Kiểm tra search theo keyword | 1. Tạo digital tool của category có tên là ゆきだま
2. Tạo digital tool của [教科・学年] có tên là ごむだま
3. Đăng ký keyword cho digital tool của category là 雪玉
4. Đăng ký keyword cho digital tool của [教科・学年] là ゴム玉" | 1. Vào màn hình list digital tool
2. Nhập vào từ khóa だま, click button さがす=> Kiểm tra kết quả search
3. Nhập vào text き vào trước từ khóa ở step 2, click button さがす=> Kiểm tra kết quả search
4. Thay text き bằng む, click button さがす=> Kiểm tra kết quả search
5. Thêm text ご trước từ khóa ở step 4, click button さがす=> Kiểm tra kết quả search
6. Xóa từ khóa vừa search ở step 5, click button さがす=> Kiểm tra kết quả search
7. Nhập vào từ khóa 玉, click button さがす=> Kiểm tra kết quả search
8. Nhập thêm text 雪 vào trước từ khóa ở step 7, Ấn enter ở bàn phím=> Kiểm tra action
9. Click vào button さがす=> Kiểm tra kết quả search
10. Click vào biểu tượng emile => Kiểm tra kết quả search | 2. Hiển thị digital tool của cả category và [教科・学年] 
3. Chỉ hiển thị digital tool của category 
4. Chỉ hiển thị digital tool của [教科・学年] 
5. Chỉ hiển thị digital tool của [教科・学年] 
6. Hiển thị tất cả digital tool như ban đầu 
7. Hiển thị digital tool của cả category và [教科・学年] 
8. Không có action gì, không thể search bằng enter
9. Chỉ hiển thị digital tool của category
10. Hiển thị màn hình list digital tool và textbox trống | High | ● | ●
ST_6 | Kiểm tra search theo category/ [教科・学年] | 1. Vào màn hình list digital tool
2. Click vào dropdown 絵の しゅるい
3. Click button さがす=> kiểm tra hiển thị
4. Click vào biểu tượng emile,Click vào dropdown 絵の しゅるい-> Chọn tag level 1=>Click button さがす, kiểm tra hiển thị
5. Click vào biểu tượng emile, Click vào dropdown 絵の しゅるい
6. Chọn tag level 1,2=> Click button さがす=> kiểm tra hiển thị
7. Click vào tên tag level 1 ở breadscrumb => kiểm tra hiển thị
8. Click vào biểu tượng emile,Click vào dropdown 絵の しゅるい
9. Chọn tag level 1,2,3=> Click button さがす=> kiểm tra hiển thị
10. Click vào tên tag level 2 ở breadscrumb
11. Click vào biểu tượng emile, Click vào dropdown 絵の しゅるい
12. Chọn tag level 1,2,3=> Click button さがす=> kiểm tra hiển thị
13. Click vào tên tag level 1 ở breadscrumb
14. Click vào biểu tượng emile, Click vào dropdown 絵の しゅるい
15. Chọn tag level 1,2,3,4=> Click button さがす=> kiểm tra hiển thị
16. Click vào tên tag level 3 ở breadscrumb => Kiểm tra hiển thị
17. Click button phóng to rồi click thu nhỏ digital tool => kiểm tra hiển thị
18. Click chọn 4 digital tool => kiểm tra hiển thị
19. Click chọn lại 1 digital tool đã chọn ở step 18=> kiểm tra hiển thị
20. Click button せんたく中のイラストを見る=> kiểm tra hiển thị
21. Click xóa 1 digital tool ở vị trí số 1=> kiểm tra hiển thị
22. Click x ở màn hình せんたく中のイラスト
23. Click button emile, click  vào dropdown 学年・教科
24. Thực hiện tương tự steps 3 đến step 22 với 学年・教科 | 3. Mở màn hình kết quả tìm kiếm với list data là tất cả digital tool thuộc category
4. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 1
6. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 2
7. Output giống step 1
9. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 3
10. Output giống step 6
12. Output giống step 9
13. Output giống step 4
15. Mở màn hình kết quả tìm kiếm với list data là các digital tool thuộc tag level 4
16. Output giống step 9
17. Phóng to hình ảnh digital tool => sau đó thu nhỏ hình ảnh về ban đầu
18. 4 digital tool được chọn, hiển thị background #FFCC00
19. Digital tool được chọn bị mất background #FFCC00
20. Mở modal せんたく中のイラスト, hiển thị 3 digital tool ở 3 vị trí 1,2,3
21. Digital tool ở vị trí 1 bị xóa, 2 digital tool sau sẽ dồn lên vị trí 1,2
22. Đóng modal せんたく中のイラスト
23. Mở màn hình kết quả tìm kiếm với list data là tất cả digital tool thuộc 学年・教科
24. Pass tất cả các case | High | ● | ●
ST_7 | Download | Kiểm tra download | 1. Vào màn hình list digital tool
2. Chưa chọn digital tool nào => Kiểm tra hiển thị button download
3. Click chọn 1 digital tool => Kiểm tra hiển thị button download
4. Click button download 1 digital tool đã chọn => Kiểm tra hiển thị digital tool sau khi down thành công
5. Mở folder, kiểm tra tên tệp và định dạng tệp
6. Mở lại hệ thống , click chọn 10 ảnh digital tool ở page 1 và 10 ảnh digital tool ở page 2, click button download
7. Kiểm tra digital tool đã chọn sau khi down thành công
8. Mở folder, kiểm tra số lượng ảnh down về, tên tệp và định dạng tệp
9. Mở lại hệ thống , click chọn 10 ảnh digital tool ở màn list digital tool
10. Click vào dropdown 絵の しゅるい, click button さがす
11. Chọn 5 ảnh digital tool từ category
12. Click vào dropdown 学年・教科, click button さがす
13. Chọn 5 ảnh digital tool từ category
14. Click button download => Kiểm tra hiển thị digital tool sau khi down thành công
15. Mở folder, kiểm tra tên tệp và định dạng tệp
16. Mở lại list digital tool, click chọn 1 digital tool 
17. Click button download nhanh và liên tục => Mở folder, kiểm tra tên tệp và định dạng tệp | 2. Button download bị disbale
3. Button download enble
4. Down digital đã chọn thành công, sau khi down thì bỏ chọn digital tool đo trên màn hình
5. Tên tệp là tên ảnh , định dạng tệp là định dạng tương ứng bên admin upload
6. Download 20 ảnh digital tool
7. Sau khi donwload thì bỏ chọn tất cả digital tool đã down
8. Down đủ 20 ảnh, tên và định dạng tương ứng với ảnh ở bên admin
14. Down 20 ảnh thành công , mở lần lượt list digital tool, list digital tool thuộc category và list digital tool thuộc [教科・学年] để check đã bỏ chọn tất cả digital tool được down về
15. Down đủ 20 ảnh, tên và định dạng tương ứng với ảnh ở bên admin
17. Chỉ down ảnh digital tool 1 lần | High | ● | ●
## Sheet: Data
No | Case data test | Steps đối với 絵の しゅるい hoặc 学年・教科 | Chọn tag trên màn hình
Tag lv1 | tag lv2 | tag lv3 | tag lv4
1.0 | Have 1 paging | 絵の しゅるい: Chọn tag 1,2,3 và click button search | きる・はる: tag 3 hàng 1 | きる・はる: tag 1 hàng 1 | tag đầu tiên
2.0 | 学年・教科: Chọn tag 1,2 và  click button search | 国語 : tag 2 hàng 1 | 3年生
3.0 | Have 5 paging | 絵の しゅるい: Chọn tag 1 và click button search | きる・はる: tag 1 hàng 2
4.0 | 学年・教科: Chọn tag 1 và click button search | 国語 : tag 3 hàng 1
5.0 | Có > 10 tag level 3,4 | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 1 hàng 1 | tag đầu tiên
6.0 | 学年・教科 | 国語 : tag 2 hàng 1 | 1年生 | Tag đầu tiên
7.0 | Số ký tự tag lv 3,4 < khung hiển thị | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 1 hàng 1 | tag đầu tiên
8.0 | 学年・教科 | 国語 : tag 2 hàng 1 | 1年生 | Tag đầu tiên
9.0 | Số ký tự tag lv3,4 > khung hiển thị | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 2 hàng 2 | tag đầu tiên
10.0 | 学年・教科 | 国語 : tag 2 hàng 1 | 3年生 | Tag đầu tiên
11.0 | > 18 items tag level 1,2 | 絵の しゅるい | Bên category là > 18 items (きる・はる: tag 3 hàng 1) , còn bên Subject là < 18 items
12.0 | < 18 items tag level 1,2 | 学年・教科
13.0 | Tag lv 1 không có digital tool | 絵の しゅるい | 文ぼうぐ: tag 2 hàng 6
14.0 | 学年・教科 | 国語 : tag 3 hàng 3
15.0 | Tag lv 2 không có digital tool | 絵の しゅるい | 文ぼうぐ: tag 1 hàng 6 | 文ぼうぐ
16.0 | 学年・教科 | 国語 : tag 3 hàng 3 | 国語
17.0 | Tag lv 3 không có digital tool | 絵の しゅるい | 文ぼうぐ: tag 1 hàng 6 | 文ぼうぐ | Tag đầu tiên
18.0 | 学年・教科 | 国語 : tag 3 hàng 3 | 国語 | tag đầu tiên
19.0 | Tag lv 4 không có digital tool | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 1 hàng 1 | tag đầu tiên | tag đầu tiên
20.0 | 学年・教科 | 国語 : tag 3 hàng 3 | 国語 | tag đầu tiên | tag đầu tiên
21.0 | Tag lv 1 có digital tool | 絵の しゅるい | きる・はる: tag 1 hàng 1
22.0 | 学年・教科 | 国語 : tag 2 hàng 1
23.0 | Tag lv 2 có digital tool | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 2 hàng 1
24.0 | 学年・教科 | 国語 : tag 2 hàng 1 | 1年生
25.0 | Tag lv 3 có digital tool | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 2 hàng 1 | tag đầu tiên
26.0 | 国語 : tag 2 hàng 1 | 1年生 | Tag đầu tiên
27.0 | Tag lv 4 có digital tool | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 2 hàng 1 | tag đầu tiên | tag đầu tiên
28.0 | 学年・教科 | 国語 : tag cuối cùng | 国語 : tag cuối cùng | Tag đầu tiên | tag đầu tiên
29.0 | Số ký tự của tag lv 1,2,3,4 > 10 ký tự | 絵の しゅるい | きる・はる: tag 3 hàng 1 | きる・はる: tag 1 hàng 1 | 第3層10文字以上のタグ | 第4層10文字以上のタグ | https://gyazo.com/d4481a49f030c9ccac05cf903e80944b
30.0 | 学年・教科 | Tag level 1 cuối cùng | 国語 : tag 1 hàng 3 | 第3層10文字以上のタグ | 第4層10文字以上のタグ | https://gyazo.com/1dd9ca0eaaafa161e00a3b942022ed53
## Sheet: Data_JA
No | テストケース | 絵のしゅるいまたは学年・教科 | 画面上のタグを選択します
タグLv1 | タグLv2 | タグLv3 | タグLv4
1.0 | 1ページあります | 絵のしゅるい: タグ1、2、3を選択して検索ボタンをクリックしてください | きる・はる: タグ 3 1行目 | きる・はる: タグ 1 1行目 | 最初のタグ
2.0 | 学年・教科：タグ1、2を選択して検索ボタンをクリックしてください | 国語 : タグ 2 1行目 | 3年生
3.0 | 5ページあります | 絵のしゅるい：タグ1を選択して検索ボタンをクリック | きる・はる: タグ 1 2行目
4.0 | 学年・教科：タグ1を選択して検索ボタンをクリックしてください | 国語 : タグ 3 1行目
5.0 | レベル 3、4 のタグが 10 個以上あります | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 1 1行目 | 最初のタグ
6.0 | 学年・教科 | 国語 : タグ 2 1行目 | 1年生 | 最初のタグ
7.0 | タグレベル3,4の文字数 < 表示フレーム | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 1 1行目 | 最初のタグ
8.0 | 学年・教科 | 国語 : タグ 2 1行目 | 1年生 | 最初のタグ
9.0 | タグレベル3,4の文字数 > 表示フレーム | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 2 2行目 | 最初のタグ
10.0 | 学年・教科 | 国語 : タグ 2 1行目 | 3年生 | 最初のタグ
11.0 | > 18 アイテムのタグ レベル 1、2 | 絵のしゅるい | カテゴリ側が 18 件以上 (きる・はる: タグ 3 1行目)、件名側が 18 件未満
12.0 | < 18 アイテムのタグ レベル 1、2 | 学年・教科
13.0 | タグレベル 1 にはデジタルツールがありません | 絵のしゅるい | 文ぼうぐ: タグ 26行目
14.0 | 学年・教科 | 国語 : タグ 3 3行目
15.0 | タグレベル 2 にはデジタルツールがありません | 絵のしゅるい | 文ぼうぐ: タグ 16行目 | 文ぼうぐ
16.0 | 学年・教科 | 国語 : タグ 3 3行目 | 国語
17.0 | タグレベル 3 にはデジタルツールがありません | 絵のしゅるい | 文ぼうぐ: タグ 16行目 | 文ぼうぐ | 最初のタグ
18.0 | 学年・教科 | 国語 : タグ 3 3行目 | 国語 | 最初のタグ
19.0 | タグレベル 4 にはデジタルツールがありません | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 1 1行目 | 最初のタグ | 最初のタグ
20.0 | 学年・教科 | 国語 : タグ 3 3行目 | 国語 | 最初のタグ | 最初のタグ
21.0 | タグレベル 1 にはデジタルツールがあります | 絵のしゅるい | きる・はる: タグ 1 1行目
22.0 | 学年・教科 | 国語 : タグ 2 1行目
23.0 | タグレベル 2 にはデジタルツールがあります | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 2 1行目
24.0 | 学年・教科 | 国語 : タグ 2 1行目 | 1年生
25.0 | タグレベル3にはデジタルツールがあります | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 2 1行目 | 最初のタグ
26.0 | 学年・教科 | 国語 : タグ 2 1行目 | 1年生 | 最初のタグ
27.0 | タグ レベル 4 にはデジタル ツールがあります | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 2 1行目 | 最初のタグ | 最初のタグ
28.0 | 学年・教科 | 国語 : 最後のタグ | 国語：最後のタグ | 最初のタグ | 最初のタグ
29.0 | レベル 1、2、3、4 タグの文字数 > 10 文字 | 絵のしゅるい | きる・はる: タグ 3 1行目 | きる・はる: タグ 1 1行目 | 第3層10文字以上のタグ | 第4層10文字以上のタグ | https://gyazo.com/d4481a49f030c9ccac05cf903e80944b
30.0 | 学年・教科 | タグ 1　一番最後 | 国語 : タグ 1 ３行目 | 第3層10文字以上のタグ | 第4層10文字以上のタグ | https://gyazo.com/1dd9ca0eaaafa161e00a3b942022ed53
## Sheet: Smoke test_JP
Screen/function | Smoke test
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
Smoke test_1 | Googleによる成功/失敗 | Googleに従ってログインの成功/失敗を確認する | 1. ログイン画面に移動します
2. Googleボタンをクリックします
3. 対象選択画面に進み、システムに登録されていないメールアドレスを選択
4. 結果を確認する 
5. もう一度 Google ボタンをクリックします
6. オブジェクト選択画面に移動し、システムに登録されている有効な電子メール アドレスを選択します
7. 結果を確認する
8.デジタルツール一覧画面のUIを確認する | 2. サードパーティのログイン画面を開き、アクセスする Web サイトの名前が表示されます。
4. エラー メッセージを表示します。 
ログインに失敗しました。 
もう一度ログインするか学校管理者にお問い合わせください
5. サードパーティのログイン画面を開き、アクセスする Web サイトの名前が表示されます。
7.デジタルツール一覧画面へのログインに成功しました
8. UI を歪めずに設計どおりに表示する | High | ● | ● | OK | OK | OK
Smoke test_2 | Microsoft による成功/失敗 | Microsoft に従ってログインの成功/失敗を確認する | 1. ログイン画面に移動します
2. Microsoft ボタンをクリックします
3. 対象選択画面に進み、システムに登録されていないメールアドレスを選択
4. 結果を確認する 
5. Microsoft ボタンをもう一度クリックします
6. オブジェクト選択画面に移動し、システムに登録されている有効な電子メール アドレスを選択します
7. 結果を確認する
8.デジタルツール一覧画面のUIを確認する | 2. サードパーティのログイン画面を開き、アクセスする Web サイトの名前が表示されます。
4. エラー メッセージを表示します。 
ログインに失敗しました。 
もう一度ログインするか学校管理者にお問い合わせください
5. サードパーティのログイン画面を開き、アクセスする Web サイトの名前が表示されます。
7.デジタルツール一覧画面へのログインに成功しました
8. UI を歪めずに設計どおりに表示する | High | ● | ● | OK | OK | NG
Smoke test_3 | ズームイン/アウト、デジタルツールを選択 | デジタルツールの選択を確認してください | 1.デジタルツール一覧画面へ 
2.デジタルツール一覧表示を確認する 
3. デジタルツールのズームボタンをクリック ⇒ 表示を確認
4. デジタルツールのサムネイルボタンをクリック ⇒ 表示を確認 
5. 5つのデジタルツールをクリック => 表示を確認  
6. せんたく中のイラストを見るボタンをクリック=> 表示を確認
7.せんたく中のイラスト画面で×をクリックし、さらに16個のデジタルツールをクリックして選択 => 表示を確認
8. せんたく中のイラストを見るボタンをクリック=> 表示を確認
9. 位置番号 20 のデジタルツールの削除をクリック => 表示を確認します
10. 位置 4 のデジタルツールの削除をクリック => 表示を確認します
11.せんたく中のイラスト画面で×をクリックし、手順9、10で削除した2つのデジタルツールの表示を確認します | 2. デバイスに応じた表示数量:
Asus/Chromebook/iPad : 10x3
iPad/Asus/Chromebook ミニチュア: 6x3
3. デジタルツールで画像を拡大する 
4. デジタル画像をズームアウトする
5. 選択した 5 枚の写真には背景 #FFCC00 が表示されます 
6. モーダルせんたく中のイラストを開き、写真をクリックした順に1～5の5枚の写真を表示します 
7. 選択した最初の 15 枚の写真には #FFCC00 の背景が表示され、16 枚目の写真は選択できません。
8. せんたく中のイラストモーダルを開き、20 個のデジタルツール画像をすべて 20 位置に表示します 
9. 位置 20 のデジタルツールが削除されます 
10. 位置 4 のデジタル ツールが削除され、その後ろにあるデジタル ツールが蓄積されます
11. 2 つのデジタル ツールの選択が解除され、背景 #FFCC00 が失われます | High | ● | ● | OK | OK | OK
Smoke test_4 | タグカテゴリ/教科書・学年を選択してください | タグの選択を確認する | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. タグレベル 1 をクリックして選択 => 表示を確認 
4. タグレベル 2 をクリックして選択 => 表示を確認 
5. タグレベル 3 をクリックして選択 => 表示を確認 
6. クリックしてタグレベル 4 を選択 => 表示を確認 
7. ドロップダウン「絵のしゅるい」をクリック=> 表示を確認 
8. ドロップダウン「絵のしゅるい」をもう一度クリック=> 表示を確認します 
9. タグ表示エリア外をクリック → ドロップダウンをクリック 学年・教科書 => 表示を確認 
10. 手順 3、4、5、6 を繰り返します => 表示を確認します 
11. リストタグ表示エリア外をクリック ⇒ 表示を確認 
12. ドロップダウン「学年・教科書」をクリック=> 表示を確認 | 2. カテゴリ別のタグのリストを開きます 
3. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 1 タグに属するレベル 2 タグのリストが表示されます。 
4. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 2 タグに属するレベル 3 タグのリストが表示されます
5. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 3 タグに属するレベル 4 タグのリストが表示されます。
6. 選択したタグには背景 #FFCC00 が表示されます
7. カテゴリ別のタグのリストを閉じます 
8. カテゴリ別タグのリストを再度開き、レベル 1 タグが選択されていなかった元の状態に戻します。
9. [教科書・学年]に従ってタグリストを開きます 
10. [教科書・学年]のタグリストの場合3,4,5,6と同様の出力 
11. [教科書・学年]のタグリストを閉じる 
12. [教科書・学年]に従ってタグリストを再度開き、レベル1タグが選択されていない状態に戻します。 | High | ● | ● | OK | OK | OK
Smoke test_5 | キーワードで探す | キーワード検索を確認する | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します
3. カテゴリのデジタルツールのキーワードを雪玉として登録します
4. [教科書・学年]のデジタルツールの登録キーワードはゴム玉です | 1.デジタルツール一覧画面へ
2. キーワード「だま」を入力し、「さがす」ボタンをクリック => 検索結果を確認する
3. 手順2のキーワードをキーワード「ゆきだま」に置き換え、「さがす」ボタンをクリック=> 検索結果を確認する
4. 手順4で検索したキーワードを削除し、さがすボタンをクリック ⇒ 検索結果を確認
5. キーワード「玉」を入力し、「さがす」ボタンをクリックします=> 検索結果を確認します
6. 手順 3 のキーワードをキーワード「ゴム玉」に置き換え、「さがす」ボタンをクリックします=> 検索結果を確認します | 2. カテゴリと[教科書・学年]の両方のデジタルツールを表示 
3. カテゴリデジタルツールのみを表示 
4.すべてのデジタルツールを元の状態で表示します 
5. カテゴリと[教科書・学年]の両方のデジタルツールを表示 
6. [教科書・学年]のデジタルツールのみを表示する | High | ● | ● | OK | OK | OK
Smoke test_6 | カテゴリから探す | カテゴリ別検索をチェック | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. ボタンをクリック⇒表示を確認 
4. emileアイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。
5.タグレベル1を選択⇒さがすボタンをクリックし、表示を確認 
6. emileアイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。
7. タグレベル1、2を選択 => ボタンをクリック => 表示を確認 
8. ブレッドクラムのレベル 1 タグ名をクリック => 表示を確認します
9. emileアイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。 
10. タグレベル1,2,3を選択=> ボタンがす=> 表示を確認 
11. ブレッドクラム内のレベル 2 タグ名をクリックします。 
12. emile アイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。 
13. タグレベル1,2,3,4を選択 => ボタンをクリック さがす => 表示を確認 
14. ブレッドクラムのレベル 3 タグ名をクリック => 表示を確認 | 3. 検索結果画面を開くと、カテゴリ内のすべてのデジタルツールのデータが一覧表示されます 
5. タグレベル1に属するデジタルツールのデータ一覧の検索結果画面を開く
7. タグレベル2に属するデジタルツールのデータ一覧の検索結果画面を開く
8. 出力はステップ 1 と同じです
10. タグレベル3に属するデジタルツールのデータ一覧の検索結果画面を開く
11. 出力はステップ 6 と同じです
13. タグレベル4に属するデジタルツールのデータ一覧の検索結果画面を開く
14. 出力はステップ 9 と同じです | High | ● | ● | OK | OK | OK
Smoke test_7 | [教科書・学年]から探す | [教科書・学年]で検索してみる | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. ボタンをクリック⇒表示を確認 
4. emile アイコンをクリックし、ドロップダウンの学年・教科書をクリックします。
5.タグレベル1を選択⇒さがすボタンをクリックし、表示を確認 
6. emile アイコンをクリックし、ドロップダウンの学年・教科書をクリックします。
7. タグレベル1、2を選択 => ボタンをクリック => 表示を確認 
8. emile アイコンをクリックし、ドロップダウンの学年・教科書をクリックします。 
9. タグレベル1,2,3,4を選択 => ボタンをクリック さがす => 表示を確認 
10. ブレッドクラムのレベル 3 タグ名をクリック => 表示を確認
11.パンくずリストのレベル1タグ名をクリック ⇒ 表示を確認
12. ズームインボタンをクリックし、デジタルツールをクリックしてズームアウト => 表示を確認します
13. 4 つのデジタル ツールをクリック => 表示を確認します
14. 手順13で選択したデジタルツールを再度クリックして選択 => 表示を確認
15. せんたく中のイラストを見るボタンをクリック=> 表示を確認
16. 位置番号 1 のデジタルツールをクリックして削除 => 表示を確認します
17.せんたく中のイラスト画面で×をクリック | 3. 検索結果画面を開くと、カテゴリ内のすべてのデジタルツールのデータが一覧表示されます 
5. タグレベル1に属するデジタルツールのデータ一覧の検索結果画面を開く
7. タグレベル2に属するデジタルツールのデータ一覧の検索結果画面を開く
9. タグレベル4に属するデジタルツールのデータ一覧の検索結果画面を開く
10. タグレベル3に属するデジタルツールのデータ一覧の検索結果画面を開く
11. 出力はステップ 5 と同じです
12. デジタル ツールの画像を拡大 => 画像を縮小して元のサイズに戻します 
13. 4 つのデジタル ツールが選択され、背景 #FFCC00 が表示されます 
14. 選択したデジタル ツールの背景 #FFCC00 が失われています 
15. モーダルせんたく中のイラストを開き、3つのデジタルツールを3つの位置1、2、3に表示します 
16. 位置 1 のデジタルツールが削除され、次の 2 つのデジタルツールが位置 1 と 2 に移動されます。
17. モーダルを閉じるせんたく中のイラスト | High | ● | ● | OK | OK | OK
Smoke test_8 | ダウンロード | 画像のダウンロードを確認する | 1.デジタルツール一覧画面へ
2. デジタルツールがまだ選択されていません => チェックを入れるとダウンロードボタンが表示されます 
3. デジタルツールをクリックして選択 => ダウンロードボタンの表示を確認 
4. 選択したデジタル ツールのダウンロード ボタンをクリックします => ダウンロードが成功した後、デジタル ツールの表示を確認します
5. フォルダーを開き、ファイル名とファイル形式を確認します
6. システムを再度開き、20 個のデジタル ツール イメージをクリックし、ダウンロード ボタンをクリックします。 
7.ダウンロードが成功したら、選択したデジタルツールを確認します 
8. フォルダーを開き、ダウンロードした画像の数、ファイル名、ファイル形式を確認します。 | 2. ダウンロードボタンが無効になっています 
3. ダウンロード有効ボタン
4. 選択したデジタル ツールが正常にダウンロードされました。ダウンロード後、画面上のそのデジタル ツールの選択を解除します。  
5. ファイル名は画像名、ファイル形式はアップロード管理側の対応する形式です。
6. 20 個のデジタル ツール イメージをダウンロードする 
7. ダウンロード後、ダウンロードしたすべてのデジタルツールの選択を解除します。 
8. 管理者側で、20 枚すべての写真、写真に対応する名前、形式をダウンロードします。 | High | ● | ● | OK | OK | OK
## Sheet: FT_JP
Screen/function | FT
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
ログイン
FT_1 | UI | UIを確認する | 1. ログイン画面に移動します
2. UIをテストする | 2. 設計どおりの画面表示: https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0c0e04ef_0_9#slide=id.g33b0c0e04ef_0_9 | High | ● | OK | ● | OK | OK | OK
FT_2 | ログインに失敗しました | 未登録のユーザーメールアドレスで Google を使用してログインする | 1.未登録のアカウント 
2. amdin で電子メールが削除/期限切れになりました (仕様はまだありません) | 1. ログイン画面に移動します
2. Googleボタンをクリックします 
3. 対象画面でシステムに登録されていないメールを選択 | 3. エラー メッセージを表示します。 
ログインに失敗しました。 
もう一度ログインするか学校管理者にお問い合わせください | High | ● | OK | ● | NA | OK | OK
FT_3 | Microsoft を使用して未登録ユーザーの電子メールでログインする | 1.未登録のアカウント 
2. amdin で電子メールが削除/期限切れになりました (仕様はまだありません) | 1. ログイン画面に移動します
2. Microsoft ボタンをクリックします
3. 対象画面でシステムに登録されていないメールを選択 | 3. エラー メッセージを表示します。 
ログインに失敗しました。 
もう一度ログインするか学校管理者にお問い合わせください | High | ● | OK | ● | OK | NA | NA
FT_4 | ログイン成功 | 登録ユーザーのメールアドレスでGoogleを使用してログインします | 1. ログイン画面に移動します
2. Googleボタンをクリック => 表示を確認
3. 対象画面でシステムに登録されているメールアドレスを選択 | 2. 画面には、アクセス中の Web サイトの名前と選択した電子メールが表示されます
3. ログインに成功し、デジタルツール一覧画面に移動します | High | ● | OK | ● | NA | OK | OK
FT_5 | 登録ユーザーの電子メールを使用して Microsoft を使用してログインする | c | 2. 画面には、アクセス中の Web サイトの名前と選択した電子メールが表示されます
3. ログインに成功し、デジタルツール一覧画面に移動します | High | ● | OK | ● | OK | NA | NA
FT_6 | 2 台のデバイスでアカウントのログインを確認する | 【Chromebookを使用する場合】
1. ログイン成功 
【ASUSを使用する場合】 
2.Chromebookにログインしているアカウントでログインに成功しました | 2. Chromebook ではログアウトされます。 | High | ● | OK | ● | OK | OK | NA
FT_7 | 同一端末上の2つのブラウザで1つのアカウントにログインする場合に確認します | 1. Chromeを開き、ログインに成功します
2. Microsoft Edgeを開き、手順1でChromeにログインしたアカウントで正常にログインします。 | 2. Chrome がログアウトされます | High | ● | OK | ● | OK | NA | NA
デジタルツール一覧一覧
FT_8 | UI | 画面表示を確認する | まだデジタルツールをクリックしていない場合 | 1.デジタルツール一覧画面へ
2. 画面表示を確認する | 2. 設計どおりに画面を表示します: https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_51#slide=id.g33b0341dd9c_0_51
ボタンのダウンロードを無効にする | High | ● | OK | ● | OK | OK | OK
FT_9 | 少なくとも 1 つのデジタル ツールを選択したら | 1.デジタルツール一覧画面へ
2. 画面表示を確認する | 2. 設計どおりに画面を表示します: https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_51#slide=id.g33b0341dd9c_0_51
ダウンロードを有効にするボタン | High | ● | OK | ● | OK | OK | OK
レスポンスを変えるとき | 1.デジタルツール一覧画面へ
2. 画面表示を確認する | 2. 設計どおりに画面を表示します: https://docs.google.com/presentation/d/1XpWbu-bA2yL_-K629zZp4dKmsWBh1WD2/edit?slide=id.p22#slide=id.p22 | High | ● | OK | ● | OK | OK | OK
FT_11 | せんたく中のボタンをチェック
イラストを見る | まだデジタルツールを選択していません | 1.デジタルツール一覧画面へ
2.「せんたく中の」ボタンをクリックします
イラストを見る | 2. 選択したデジタル ツールを含むモーダルを表示します。モーダルにはデジタル ツールが含まれていません。 | High | ● | OK | ● | OK | OK | OK
FT_12 | ドロップダウンをクリックしてチェックを入れます 絵のしゅるい | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。 | 2. カテゴリ別タグ一覧表示：Design as UI | High | ● | OK | ● | OK | OK | OK
FT_13 | ドロップダウンをクリックしてチェックを入れます 学年・教科書 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。 | 2. [教科書・学年]に従ってタグのリストを開きます: UI のようなデザイン | High | ● | OK | ● | OK | OK | OK
FT_14 | アバター情報 | ユーザー情報の表示を確認する | 表示できる最大文字数以下の名前のアカウントでログインしてください | 1.デジタルツール一覧画面へ
2. ユーザー情報の表示を確認する
3. ユーザー名の上にマウスを置く => ツールチップの表示を確認する | 2. アバターの表示 
    ユーザーのフルネーム
3. ユーザーのフルネーム+さんのツールチップを表示 | High | ● | OK | ● | OK | OK | OK
FT_15 | > という名前のアカウントでログインしてください > 表示できる最大文字数 | 1.デジタルツール一覧画面へ
2. ユーザー情報の表示を確認する
3. ユーザー名の上にマウスを置く => ツールチップの表示を確認する | 2. アバターの表示 
    ユーザー名: 最大文字数を表示し...
3. ユーザーのフルネームツールチップ+さんを表示 | Medium | ● | OK | ● | NG | OK | OK
FT_16 | アバターをクリックして確認してください | 1.デジタルツール一覧画面へ
2. アバターをクリックします
3. 表示確認 | 3. 表示メニュー: ユーザーの完全な電子メールとログアウト ボタン | High | ● | OK | ● | OK | OK | OK
FT_17 | 1.デジタルツール一覧画面へ
2. アバターをクリックします
3. アバターをもう一度クリックします | 3. 表示されたメニューを閉じる | High | ● | OK | ● | OK | OK | OK
FT_18 | 1.デジタルツール一覧画面へ
2. アバターをクリックします
3. メニュー表示領域外をクリック | 3. 表示されたメニューを閉じる | Medium | ● | OK | ● | OK | OK | OK
FT_19 | ログアウトボタンのクリックを確認してください | 1.デジタルツール一覧画面へ
2. アバターをクリックします
3. ログアウトボタンをクリックします。
4.「キャンセル」ボタンをクリックします。 | 3. 確認ポップアップを表示します。 
このアカウントからログアウト 
それでもよろしいでしょうか？
「キャンセル」と「はい」の2つのボタン
4. 確認ポップアップを閉じてもデジタルツール一覧画面を表示します | High | ● | OK | ● | OK | OK | OK
FT_20 | 1.デジタルツール一覧画面へ
2. アバターをクリックします
3. ログアウトボタンをクリックします。
4. メニュー領域の外側をクリックします | 3. 表示されたメニューを閉じる | Medium | ● | OK | ● | OK | OK | OK
FT_21 | 1.デジタルツール一覧画面へ
2. アバターをクリックします
3. ログアウトボタンをクリックします。
4.「はい」ボタンをクリックします | 3. 確認ポップアップを表示します。 
このアカウントからログアウト 
それでもよろしいでしょうか？
「キャンセル」と「はい」の2つのボタン
4. ログイン画面からログアウトします | High | ● | OK | ● | OK | OK | OK
FT_22 | リストデータ | 表示されたリストを確認する | 1.デジタルツール一覧画面へ
2. リストデータデジタルツールの表示を確認する | 2. 10x3個のリストデータを表示：カテゴリデジタルツールと[教科書・学年]を含む | High | ● | OK | ● | OK | OK | OK
FT_23 | 応答を最小限に抑える場合 | 1.デジタルツール一覧画面へ
2. 応答を最小限に抑える 
3. リストデータデジタルツールの表示を確認する | 3. 6x3数量のリストデータを表示：カテゴリデジタルツールと[教科書・学年]を含む | High | ● | OK | ● | OK | OK | OK
FT_24 | デジタルツール情報を確認する | 1.デジタルツール一覧画面へ
2. デジタルツール表示枠内にあるデジタルツールの情報を確認する | 2.画像​​枠内に収まる画像を表示限界まで表示する
    デジタルツールの完全名を表示します | High | ● | OK | ● | OK | OK | OK
FT_25 | 1.デジタルツール一覧画面へ
2. デジタルツール表示枠外に名前があるデジタルツールの情報を確認する | 2.画像​​枠内に収まる画像を表示限界まで表示する
    名称はデジタルツール枠の限界まで表示、それ以外は切り捨てる | High | ● | OK | ● | OK | OK | OK
FT_26 | ズームデジタルツールのクリックを確認してください | 1.デジタルツール一覧画面へ
2. デジタルツールのズームボタンをクリックします。 | 2. 拡大するために選択したデジタルツールを拡大するためのポップアップを表示します: フル画像とデジタルツール名を表示します | High | ● | OK | ● | OK | OK | OK
FT_27 | デジタルツールズームポップアップを確認して閉じます | 1.デジタルツール一覧画面へ
2. デジタルツールのズームボタンをクリックします。
3. デジタルツールポップアップのズームボタンをクリックします。 | 3. デジタルツールのズームポップアップを閉じます | High | ● | OK | ● | OK | OK | OK
FT_28 | 1.デジタルツール一覧画面へ
2. デジタルツールのズームボタンをクリックします。
3. デジタル ツール ポップアップの外側の領域をクリックします。 | 3. デジタルツールのズームポップアップを閉じます | Medium | ● | OK | ● | OK | OK | OK
FT_29 | デジタルツールのクリック時/選択解除時にチェックを入れる | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3. ステップ2でデジタルツールをクリックします | 2. 選択したデジタル ツールは、画像の周囲の背景に色 #FFCC00 を表示します。 
3. デジタル ツールは #FFCC00 の背景を失い、元の白い背景色が表示されます。 | High | ● | OK | ● | OK | OK | OK
FT_30 | リストデジタルが選択されました | デジタルツール選択時の確認 | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします | 2. 選択したデジタル ツールは、画像の周囲の背景に色 #FFCC00 を表示します。 
3. 選択したデジタル ツールを含むモーダルを表示します: 位置 1 に 1 つのデジタル ツール。 
選択したデジタルツールがモーダル下の画面に表示されている場合は、step2のようにデジタルツールも表示されます。 | High | ● | OK | ● | OK | OK | OK
FT_31 | 1.デジタルツール一覧画面へ
2. クリックして 20 個のデジタル ツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします | 2. 選択したデジタル ツールは、画像の周囲の背景に黄色で表示されます。 
3. 選択したデジタル ツールを含むモーダルを表示します。1 ～ 20 の位置に 20 個のデジタル ツールが表示されます。 
選択したデジタルツールがモーダル下の画面に表示されている場合は、step2のようにデジタルツールも表示されます。 | High | ● | OK | ● | OK | OK | OK
FT_32 | 1.デジタルツール一覧画面へ
2. クリックして 21 個のデジタル ツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします | 2. 21番目のデジタルツールは選択できません
3. 選択したデジタル ツールを含むモーダルを表示します。1 ～ 20 の位置に 20 個のデジタル ツールが表示されます。
選択したデジタルツールがモーダル下の画面に表示されている場合は、step2のようにデジタルツールも表示されます。 | High | ● | OK | ● | OK | OK | OK
FT_33 | デジタルツールを削除するクリック時にチェックを入れる | 現在 1 つのデジタル ツールが選択されています | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします
4. デジタルツール番号 1 の削除ボタンをクリックします。 | 4. 選択したデジタル ツールを含むモーダルには、デジタル ツールは残りません。
選択したデジタルツールがモーダルの下の画面に表示されている場合、背景の黄色が失われます | High | ● | OK | ● | OK | OK | OK
FT_34 | 20 個のデジタル ツールが選択されています | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします
4. デジタルツール番号 8 の削除ボタンをクリックします。 | 4. 選択したデジタル ツールを含むモーダル: デジタル ツールは 19 個だけ残っています。番号 9 から 20 までの古いデジタル ツールがマージされ、位置番号 20 は空になります。
選択したデジタルツールがモーダルの下の画面に表示されている場合、背景の黄色が失われます | High | ● | OK | ● | OK | OK | OK
FT_35 | 20 個のデジタル ツールが選択されています | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします
4. デジタルツール番号 20 の削除ボタンをクリックします。 | 4. 選択したデジタル ツールを含むモーダル上: デジタル ツールは 19 個だけ残っています。位置番号 20 は削除されているため空になります。
選択したデジタルツールがモーダルの下の画面に表示されている場合、背景の黄色が失われます | High | ● | OK | ● | OK | OK | OK
FT_36 | チェックボタン×モーダルをクリック | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします
4. モーダルの右隅にある [x] ボタンをクリックします。 | 4. モーダルを閉じます。選択したデジタルリストは変更されません。 | Medium | ● | OK | ● | OK | OK | OK
FT_37 | リスト表示領域外のクリックを確認する | 1.デジタルツール一覧画面へ
2. クリックしてデジタルツールを選択します
3.「せんたく中のイラストを見る」ボタンをクリックします
4. モーダル表示領域の外側をクリックします | 4. モーダルを閉じます。選択したデジタルリストは変更されません。 | Medium | ● | OK | ● | OK | OK | OK
FT_38 | ページングを確認する | 1ページの場合は確認してください | デジタル ツールの数は 30 個以下です
1行あたりのデジタルツールの数は10です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2.ページング表示を確認する | 2. デザインとして表示: << < 1 2 3 4 5 > >>
<<、<、2、3、4、5 、 > 、>> ボタンはすべて非アクティブです | High | ● | OK | ● | OK | OK | OK
FT_39 | デジタル ツールの数は 30 個以下です
1行あたりのデジタルツールの数は6です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2.ページング表示を確認する | 2. デザインとして表示: << < 1 2 3 4 5 > >>
<<、<、2、3、4、5 、 > 、>> ボタンはすべて非アクティブです
- 応答は 1 行あたり 6 桁に削減されるため、レコード数が 18 を超える場合は、十分に表示するために下にスクロールする必要があります。 | High | ● | OK | ● | OK | OK | OK
FT_40 | 5ページになったらチェック | デジタル ツールの数は 121< x <=150 の範囲内です
現在1ページ目です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2.ページング表示を確認する
3. クリックして5ページ目へ => ページング表示を確認する | 2. デザインとして表示: << < 1 2 3 4 5 > >>
そこには： 
- <<、< ボタンは無効になります
- 現在フォーカスされているページ 1 は白いボタンとして表示されます
- ボタン 2、3、4、5、>、>> 有効をクリック可能
3. 現在フォーカスされているページ 5 は白いボタンとして表示されます。
ボタン <<、<、1、2、3、4 はすべて有効でクリック可能です
>、>>ボタンが無効になります | High | ● | OK | ● | OK | OK | OK
FT_41 | 5ページ以上ある場合は確認してください | デジタル ツールの数は 121< x <=150 の範囲内です
現在5ページ目 | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2.ページング表示を確認する | 2. デザインとして表示: << < 1 2 3 4 5 > >>
そこには： 
- 現在フォーカスされているページ 5 は白いボタンとして表示されます
- すべてのボタンをクリック可能 | High | ● | OK | ● | OK | OK | OK
FT_42 | ページ切り替えのクリックを確認する | ページ数が 1 を超えています
現在1ページ目です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2. クリックして途中のページに遷移 => ページング表示を確認
3. クリックして最終ページへ移動 => ページング表示を確認 | 2. クリックしたページに素早く切り替え、データデジタルツールは正しいデータを表示します 
- すべてのボタンが有効になります 
3. クリックしたページに素早く切り替えると、データデジタルツールが正しいデータを表示します。           
- フォーカスされたページは白いボタンとして表示されます 
- 2 つのボタン >、>> が無効になります 
- <、<<、および最終ページより前のページのボタンが有効になります | High | ● | OK | ● | OK | OK | OK
FT_43 | チェックボタンをクリック <,> | ページ数が 1 を超えています
現在1ページ目です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2. ボタンをクリック > => ページング表示を確認する
3. < => ボタンをクリックしてページング表示を確認します | 2. 2 ページに移動します
3. 1 ページに移動します | High | ● | OK | ● | OK | OK | OK
FT_44 | チェックボタンクリック<<,>> | ページ数は5です
現在1ページ目です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2. ボタンをクリック >> => ページング表示を確認する
3. <<=> ボタンをクリックしてページング表示を確認します。 | 2. 5ページへ
3. 1 ページに移動します | High | ● | OK | ● | OK | OK | OK
FT_45 | ページ数が 5 を超えています
現在1ページ目です | 1. プリコンディショニング中のデータでデジタルツール一覧画面に移動します
2. ボタンをクリック >> => ページング表示を確認する
3. << => ボタンをクリックしてページング表示を確認します。 | 2. 最後のページに移動します 
3. 1 ページに移動します | High | ● | OK | ● | OK | OK | OK
FT_46 | キーワードで探す | 検索テキストボックスにテキストを入力することを確認します | 何も入力しない | 1.デジタルツール一覧画面へ
2. 検索テキストボックスにキーワードを入力しないでください。
3.「さがす」ボタンをクリック | 3. 同じデジタルツールのリストで表示: カテゴリリストと [教科書・学年] を含む | High | ● | OK | ● | OK | OK | OK
FT_47 | <=20 文字 | 1.デジタルツール一覧画面へ
2. テキストボックスに 20 文字以下のキーワードを入力します 
3.「さがす」ボタンをクリック | 3. 入力したキーワードに該当する結果を表示 | High | ● | OK | ● | OK | OK | OK
FT_48 | 20 文字以上 | 1.デジタルツール一覧画面へ
2. テキストボックスに 20 文字を超えるキーワードを入力します | 2.インポートできない | High | ● | OK | ● | OK | OK | OK
FT_49 | 1.デジタルツール一覧画面へ
2. すべてのデジタルツールの名前やキーワードに含まれていないキーワードをテキストボックスに入力します | 2. 白い画面を表示する | Medium | ● | OK | ● | OK | OK | OK
FT_50 | イメージ名で検索が成功したかどうかを確認します | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「だま」を入力します
3.「さがす」ボタンをクリック | 3. カテゴリデジタルツールと[教科書・学年]の両方が表示される | High | ● | OK | ● | OK | OK | OK
FT_51 | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「きだま」を入力します
3.「さがす」ボタンをクリック | 3. カテゴリのデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_52 | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「むだま」を入力します
3.「さがす」ボタンをクリック | 3. [教科書・学年]のデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_53 | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「ゆきだま」を入力します。
3.「さがす」ボタンをクリック | 3. カテゴリのデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_54 | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「ごむだま」を入力します
3.「さがす」ボタンをクリック | 3. [教科書・学年]のデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_55 | 写真に登録されているキーワードで検索が成功するか確認する | 1. カテゴリのデジタルツールのキーワードを雪玉として登録します
2. [教科書・学年]のデジタルツールに登録するキーワードはゴム玉です | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「玉」を入力します
3.「さがす」ボタンをクリック | 3. カテゴリデジタルツールと[教科書・学年]の両方が表示される | High | ● | OK | ● | OK | OK | OK
FT_56 | 1. カテゴリのデジタルツールのキーワードを雪玉として登録します
2. [教科書・学年]のデジタルツールに登録するキーワードはゴム玉です | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「雪」を入力します。
3.「さがす」ボタンをクリック | 3. カテゴリのデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_57 | 1. カテゴリのデジタルツールのキーワードを雪玉として登録します
2. [教科書・学年]のデジタルツールに登録するキーワードはゴム玉です | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「ゴム」を入力します
3.「さがす」ボタンをクリック | 3. [教科書・学年]のデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_58 | 1. カテゴリのデジタルツールのキーワードを雪玉として登録します
2. [教科書・学年]のデジタルツールに登録するキーワードはゴム玉です | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「雪玉」を入力します
3.「さがす」ボタンをクリック | 3. カテゴリのデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
FT_59 | 1. カテゴリのデジタルツールのキーワードを雪玉として登録します
2. [教科書・学年]のデジタルツールに登録するキーワードはゴム玉です | 1.デジタルツール一覧画面へ
2. テキストボックスにキーワード「ゴム玉」を入力します
3.「さがす」ボタンをクリック | 3. [教科書・学年]のデジタルツールのみが表示されます | High | ● | OK | ● | OK | OK | OK
s
FT_60 | UI | ドロップダウンをクリックした際のUIを確認する 絵のしゅるい | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。 | 2. 設計どおりに UI を表示します: https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_113#slide=id.g33b0341dd9c_0_113 | High | ● | OK | ● | OK | OK | OK
FT_61 | ドロップダウンリストタグを閉じるをチェックしてください | タグリストにアクションがない場合 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 絵のしゅるいドロップダウンを再度クリックします。
4.「絵のしゅるい」ドロップダウンをクリックします。
5. タグリスト表示エリア外をクリック | 3. タグリストを閉じる
5. タグリストを閉じる | High | ● | OK | ● | OK | OK | OK
FT_62 | タグリストで選択したタグ | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. タグを選択するアクションを実行します => ドロップダウンを再度クリックします 絵のしゅるい
4.「絵のしゅるい」ドロップダウンをクリックします。
5. タグ選択アクションを実行 => タグリスト表示領域の外側をクリック 
6.「絵のしゅるい」ドロップダウンをクリックします。 | 3. タグリストを閉じる
5. タグリストを閉じる
6. 手順 2 と同様にタグリストを再度開きます。 | High | ● | OK | ● | OK | OK | OK
FT_63 | タグ一覧を確認する | タグレベル1の表示を確認する | <=18 アイテム | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. リストタグレベル1の表示を確認する | 3. 上から下、左から右の順に、最大 18 個のアイテムを 3x6 個の数量で表示します。 
スクロールなし | High | ● | OK | ● | OK | OK | OK
FT_64 | 18 項目以上 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. リストタグレベル1の表示を確認する | 3. 上から下、左から右の順に 3x6 の数量で 18 個のアイテムを表示します。 
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | OK | ● | OK | OK | OK
FT_65 | クリックしてタグ レベル 1 を選択することにチェックを入れます | 選択したタグ レベル 1 のリスト タグ レベル 2 には 18 個以下の項目があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. リストタグレベル2の表示を確認する | 2. タグレベル 1 表示が選択されています (表示背景 #FFCC00)
3. リスト タグ レベル 2 は、リスト タグ レベル 1 の隣の四角形に表示されます。  
上から下、左から右の順に、最大 18 個のアイテムを 3x6 個の数量で表示します。 
スクロールなし | High | ● | OK | ● | OK | OK | OK
FT_66 | 選択したタグ レベル 1 のリスト タグ レベル 2 には 18 個を超える項目があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. リストタグレベル2の表示を確認する | 2. タグレベル 1 表示が選択されています (表示背景 #FFCC00)
3. リスト タグ レベル 2 は、リスト タグ レベル 1 の隣の四角形に表示されます。  
数量 3x6 の 18 個のアイテムを上から下、左から右の順に表示します。 
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | OK | ● | OK | OK | OK
FT_67 | 別のレベル 1 タグをクリックする場合にチェックを入れます | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 1 タグをクリックします 
4. 別のレベル 1 タグをクリックします | 4. ステップ 3 のタグ レベル 1 が選択解除されます (背景 #FFCC00 が失われます)。
    ステップ 4 のタグ レベル 1 が選択された状態で表示されます (背景 #FFCC00 を表示)
⇒手順4でクリックしたレベル1タグに対応するレベル2タグの一覧を表示 | High | ● | OK | ● | OK | OK | OK
FT_68 | 現在選択されているレベル 1 タグをクリックする場合にチェックを入れます。 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 1 タグをクリックします 
4. ステップ 3 のレベル 1 タグを再度クリックします。 | 4. レベル 1 タグのチェックを外すと、レベル 2 タグのリストが空になります。 | High | ● | OK | ● | OK | OK | OK
FT_69 | クリックしてタグ レベル 2 を選択することにチェックを入れます | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 には 10 以下のタグ レベル 3 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします | 4. 背景色 #D9D9D9 で最大 10 個の項目を表示します
スクロールなし | High | ● | OK | ● | OK | OK | OK
FT_70 | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 が 10 を超えています | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします | 4. 背景色 #D9D9D9 で 10 個のアイテムを表示します。
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | OK | ● | OK | OK | OK
FT_71 | タグ名レベル3の表示を確認する | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 タグ レベル 3 の名前の文字数は表示枠よりも少なくなります。 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. レベル3のタグ名の表示を確認する | 5. 完全なレベル 3 タグ名を表示する | High | ● | OK | ● | OK | OK | OK
FT_72 | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 タグ レベル 3 の名前の文字数が表示フレームより長くなります。 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。 
4. 前提条件でレベル 2 タグをクリックします
5. レベル3のタグ名の表示を確認する | 5.名前をフレームの限界まで表示し、残りの文字は切り取られます | High | ● | OK | ● | OK | OK | OK
FT_73 | クリックしてタグ レベル 1 を選択することにチェックを入れます | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします。
5. 手順3でタグレベル1を再度クリック => タグレベル3の表示を確認 | 5. ステップ 3 のタグ レベル 1 の選択が解除されます。
    リストタグのレベル 2、3 は空になります | High | ● | OK | ● | OK | OK | OK
FT_74 | 別のレベル 2 タグにチェックを入れてクリックします | タグ レベル 1 には多くのタグ レベル 2 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. 手順4のタグ以外のレベル2タグをクリック ⇒ レベル2タグ、レベル3タグの表示を確認 | 5. ステップ 4 のタグ レベル 2 の選択が解除され、ステップ 5 のタグ レベル 2 が選択されたものとして表示されます (黄色の背景が表示されます)。
    手順5でレベル2タグに属するレベル3タグのリストを表示します。 | High | ● | OK | ● | OK | OK | OK
FT_75 | チェックすると、現在選択されているレベル 2 タグをクリックします。 | タグ レベル 1 には多くのタグ レベル 2 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. 手順4で再度タグレベル2をクリック => タグレベル2,3の表示を確認 | 5. ステップ 4 のタグ レベル 2 の選択が解除されます。
    リストタグレベル3は空になります | High | ● | OK | ● | OK | OK | OK
FT_76 | 別のレベル 1 タグをクリックすることを確認します | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. 手順3以外のレベル1タグをクリック ⇒ レベル1、2、3タグの表示を確認 | 5. ステップ 3 のタグ レベル 1 は選択解除され、ステップ 5 のタグ レベル 1 が選択されたものとして表示されます (黄色の背景が表示されます)。
    手順5でレベル1タグに属するレベル2タグのリストを表示します。 | High | ● | OK | ● | OK | OK | OK
FT_77 | クリックしてタグ レベル 3 を選択することにチェックを入れます | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 があります
タグ レベル 3 には 10 個以下のタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4タグリストの表示を確認する | 6. レベル 4 のタグをすべて背景色 #D9D9D9 で表示します。
スクロールなし | High | ● | OK | ● | OK | OK | OK
FT_78 | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 が含まれます
タグ レベル 3 には 10 を超えるタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4タグリストの表示を確認する | 6. 背景色 #D9D9D9 で 10 個のアイテムを表示します。
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | OK | ● | OK | OK | OK
FT_79 | タグ名レベル4の表示を確認する | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 が含まれます
タグレベル3にタグレベル4がある：タグレベル4の名前の文字数が表示枠より少ない | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4のタグ名の表示を確認する | 5. 完全なレベル 4 タグ名を表示する | High | ● | OK | ● | OK | OK | OK
FT_80 | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 が含まれます
タグレベル3にタグレベル4がある：タグレベル3の名前の文字数が表示枠より長い | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4のタグ名の表示を確認する | 5.名前をフレームの限界まで表示し、残りの文字は切り取られます | High | ● | OK | ● | OK | OK | OK
FT_81 | 別のレベル 3 タグをチェックしてクリックします | タグ レベル 1 にはレベル 2 のタグがあり、タグ レベル 2 にはレベル 3 のタグが多数あります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします。 
5. タグレベル 3 をクリックします。
6. 手順5のタグ以外のレベル3タグをクリック ⇒ レベル3,4タグ一覧の表示を確認 | 6. ステップ 5 のタグ レベル 3 が選択解除され、ステップ 6 のタグ レベル 3 が選択された状態で表示されます (背景 #FFCC00 を表示)。
   手順6でレベル3タグに属するレベル4タグのリストを表示します。 | High | ● | OK | ● | OK | OK | OK
FT_82 | チェックすると、現在選択されているレベル 3 タグをクリックします。 | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします。 
5. タグレベル 3 をクリックします。 
6. 手順5で再度タグレベル3をクリック ⇒ タグリストレベル3、4の表示を確認 | 5. ステップ 5 のタグ レベル 3 の選択が解除されます。
    リストタグレベル 4 は空になります | High | ● | OK | ● | OK | OK | OK
FT_83 | 別のレベル 2 タグのクリックを確認します | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順4以外のレベル2タグをクリック ⇒ レベル2,3,4タグ一覧の表示を確認 | 5. ステップ 4 のタグ レベル 2 の選択が解除され、ステップ 6 のタグ レベル 2 が選択されます。
    手順6でレベル2タグのタグレベル3リストを表示すると、レベル4タグリストは空になります。 | High | ● | OK | ● | OK | OK | OK
FT_84 | 現在選択されているレベル 2 タグの 2 回目のクリックを確認します | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順4でタグレベル2を再度クリック ⇒ タグレベル2,3,4の一覧表示を確認します | 5. ステップ 4 のタグ レベル 2 の選択が解除されます。
    リストタグレベル 3、4 は空になります | High | ● | OK | ● | OK | OK | OK
FT_85 | 別のレベル 1 タグをクリックすることを確認します | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順3のタグ以外のレベル1タグをクリック ⇒ レベル1,2,3,4タグ一覧の表示を確認 | 5. ステップ 3 のタグ レベル 1 が選択解除され、ステップ 6 のタグ レベル 1 が選択されます。
    手順 6 でレベル 1 タグのタグ レベル 2 リストを表示すると、タグ レベル 3 と 4 のリストは空になります。 | High | ● | OK | ● | OK | OK | OK
FT_86 | 現在選択されているレベル 1 タグの 2 回目のクリックを確認します | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順3でタグレベル1を再度クリック ⇒ タグレベル1,2,3,4の一覧表示を確認します | 5. ステップ 3 のタグ レベル 1 の選択が解除されます。
    リストタグレベル 2、3、4 は空になります | High | ● | OK | ● | OK | OK | OK
FT_87 | クリックしてタグ レベル 4 を選択することを確認します。 | タグ レベル 1 にはタグ レベル 2 があります
タグ レベル 2 にはタグ レベル 3 があります
タグ レベル 3 にはタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. レベル4タグをクリック => 表示を確認 | 6. タグレベル 4 が選択されています (背景 #FFCC00 が表示されます)。 | High | ● | OK | ● | OK | OK | OK
FT_88 | レベル4のタグが選択されてクリックされていることを確認します | タグ レベル 1 にはタグ レベル 2 があります
タグ レベル 2 にはタグ レベル 3 があります
タグ レベル 3 にはタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. レベル 4 のタグをクリックします
7. 手順 6 のタグレベル 4 を再度クリック => 表示を確認します | 7. タグ レベル 4 の選択が解除されます (背景 #FFCC00 が失われます) | High | ● | OK | ● | OK | OK | OK
FT_89 | タグを選択せず​​に検索をテストします | タグを選択せず​​に検索を確認する | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面を「:絵のしゅるい」という文字だけのクリックできないパンくずリストで表示する
3. リストデータはカテゴリーに属する全てのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_90 | タグレベル 1 でのテスト検索 | タグレベル 1 でのテスト検索 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. デジタル ツール イメージを含むレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2.パンくずリストで結果画面を表示：絵のしゅるい > [第1層タグ] 
絵のしゅるいはリンクテキスト、[第1層タグ]はテキストです
3. リストデータには、タグレベル 1 に属するすべてのデジタルツールが表示されます | High | ● | OK | ● | OK | OK | OK
FT_91 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. デジタル ツール イメージのないレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2.パンくずリストで結果画面を表示：絵のしゅるい > [第1層タグ] 
絵のしゅるいはリンクテキスト、[第1層タグ]はテキストです
3. リストデータが空です | High | ● | OK | ● | OK | OK | OK
FT_92 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 名前が 10 文字以下のレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 1 のタグ名が完全に表示されます | High | ● | OK | ● | OK | OK | OK
FT_93 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. 10 文字を超える名前を持つレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル1タグ名は10文字表示、11文字目以降は切り捨て | High | ● | OK | ● | OK | OK | OK
FT_94 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. デジタル ツール イメージを含むレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの「絵のしゅるい」リンクをクリック時にチェック | 2. 結果画面を「:絵のしゅるい」という文字だけのクリックできないパンくずリストで表示する
    リストデータはカテゴリに属する​​すべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_95 | タグレベル 2 でのテスト検索 | タグレベル 2 を選択したときに検索をチェックする | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. デジタルツールでレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ] > [第2タグ層]
と ： 
     絵のしゅるい、[第1層タグ]はクリック可能なテキストリンクです 
      [第2層タグ]はクリックできないテキストです
3. リストデータには、タグレベル 2 に属するすべてのデジタルツールが表示されます | High | ● | OK | ● | OK | OK | OK
FT_96 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. デジタルツールを使用せずにレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ] > [第2タグ層]
と ： 
     絵のしゅるい、[第1層タグ]はクリック可能なテキストリンクです 
      [第2層タグ]はクリックできないテキストです
3. リストデータが空です | High | ● | OK | ● | OK | OK | OK
FT_97 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. 名前が 10 文字以下のレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 2 のタグ名が完全に表示されます | High | ● | OK | ● | OK | OK | OK
FT_98 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. 名前が 10 文字を超えるレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル2のタグ名は10文字表示され、11文字目以降が切り捨てられます。 | High | ● | OK | ● | OK | OK | OK
FT_99 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストのリンク「第1層タグ」をクリックした際にチェックを入れる | 2.パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ]  
と ： 
     絵のしゅるいはクリック可能なテキストリンクです 
      [第1層タグ]はクリックできないテキストです
- リストデータはタグレベル1に属するすべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_100 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 2 タグをクリックして選択します 
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの「絵のしゅるい」リンクをクリックしたときにチェックを入れます | 2. 結果画面を「:絵のしゅるい」という文字だけのクリックできないパンくずリストで表示する
    リストデータはカテゴリに属する​​すべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_101 | タグレベル 3 でのテスト検索 | タグレベル 3 でのテスト検索 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. デジタルツールでレベル 3 タグをクリックして選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示: 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ]   
と ： 
     絵のしゅるい、[第1層タグ]、[第2層タグ]はクリック可能なテキストリンクです 
      [第3層タグ]はクリックできないテキストです
3. リストデータには、タグレベル 3 に属するすべてのデジタルツールが表示されます | High | ● | OK | ● | OK | OK | OK
FT_102 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてデジタルツールなしのレベル 3 タグを選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示: 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ]   
と ： 
     絵のしゅるい、[第1層タグ]、[第2層タグ]はクリック可能なテキストリンクです 
      [第3層タグ]はクリックできないテキストです
3. リストデータが空です | High | ● | OK | ● | OK | OK | OK
FT_103 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. 名前が 10 文字以下のレベル 3 タグをクリックして選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 3 のタグ名が完全に表示されます | High | ● | OK | ● | OK | OK | OK
FT_104 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. 名前が 10 文字を超えるレベル 3 タグをクリックして選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 3 のタグ名は 10 文字表示され、11 文字目以降が切り捨てられます。 | High | ● | OK | ● | OK | OK | OK
FT_105 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてレベル 3 タグを選択します 
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストのリンク「第2層タグ」をクリックすることを確認します。 | 2. パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ] > [第2タグ層] 
と ： 
     絵のしゅるい、[第1層タグ]はクリック可能なテキストリンクです 
      [第2層タグ]はクリックできないテキストです
- リストデータはタグレベル2に属するすべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_106 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてレベル 3 タグを選択します 
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストのリンク「第1層タグ」をクリックすることを確認します。 | 2.パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ]  
と ： 
     絵のしゅるいはクリック可能なテキストリンクです 
      [第1層タグ]はクリックできないテキストです    
- リストデータはタグレベル1に属するすべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_107 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてレベル 3 タグを選択します 
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの「絵のしゅるい」リンクをクリックするためにチェックを入れます | 2. 結果画面を「:絵のしゅるい」という文字だけのクリックできないパンくずリストで表示する
    リストデータはカテゴリに属する​​すべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_108 | タグレベル 4 でのテスト検索 | タグレベル 4 でのテスト検索 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. デジタルツールでレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. パンくずリストで結果画面を表示します: 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ] > [第4層タグ]   
と ： 
     絵のしゅるい、[第1層タグ]、[第2層タグ]、[第3層タグ]はクリック可能なテキストリンクです 
      [第4層タグ]はクリックできないテキストです
3. リストデータには、タグレベル 4 に属するすべてのデジタルツールが表示されます | High | ● | OK | ● | OK | OK | OK
FT_109 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. デジタルツールでレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. パンくずリストで結果画面を表示します: 絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ] > [第4層タグ]   
と ： 
     絵のしゅるい、[第1層タグ]、[第2層タグ]、[第3層タグ]はクリック可能なテキストリンクです 
      [第4層タグ]はクリックできないテキストです
3. リストデータが空です | High | ● | OK | ● | OK | OK | OK
FT_110 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. 名前が 10 文字以下のレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 4 のタグ名が完全に表示されます | High | ● | OK | ● | OK | OK | OK
FT_111 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. 名前が 10 文字を超えるレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル4タグ名は10文字表示、11文字目以降は切り捨て | High | ● | OK | ● | OK | OK | OK
FT_112 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストのリンク「第3層タグ」をクリックすることを確認します。 | 2. パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ] > [第2層タグ] > [第3層タグ] 
と： 
     絵のしゅるい、[第1層タグ]、[第2層タグ]はクリック可能なテキストリンクです
     [第3層タグ]をクリックできない
- リストデータはタグレベル3に属するすべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_113 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストのリンク「第2層タグ」をクリックすることを確認します。 | 2. パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ] > [第2タグ層] 
と： 
     絵のしゅるい、[第1層タグ]はクリック可能なテキストリンクです
     [第2層タグ]をクリックできない    
- リストデータはタグレベル2に属するすべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_114 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストのリンク「第1層タグ」をクリックすることを確認します。 | 2.パンくずリストで結果画面を表示:絵のしゅるい > [第1層タグ]  
と： 
     絵のしゅるいはクリック可能なテキストリンクです
     [第1層タグ]をクリックできない       
- リストデータはタグレベル1に属するすべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_115 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの「絵のしゅるい」リンクをクリックするためにチェックを入れます | 2. 結果画面を「:絵のしゅるい」という文字だけのクリックできないパンくずリストで表示する
    リストデータはカテゴリに属する​​すべてのデジタルツールです | High | ● | OK | ● | OK | OK | OK
FT_116 | 検索結果画面で一覧データを確認する | ケース FT_22 から FT_45 をチェックしてください | 1. 検索結果画面へ
2.FT_22からFT_45まで同様に確認します。 | 2. すべてのテスト ケースの結果が合格する | High | ● | OK | ● | OK | OK | OK
FT_117 | 検索後に別のアクションを確認してください | エミールアイコンをクリックして確認してください | 1. 検索結果画面へ
2.エミールアイコンのクリックを確認します | 2.デジタルツール一覧画面に移動します | High | ● | OK | ● | OK | OK | OK
FT_118 | 結果画面でキーワード検索する場合に確認してください | 1. 検索結果画面へ
2. ヘッダーの検索テキストボックスにテキストを入力します。 
3.「さがす」ボタンをクリック | 3. 入力したテキストボックスに従ってリストデータが表示されたデジタルツール一覧画面に移動すると、手順1の検索条件がクリアされます。 | High | ● | OK | ● | OK | OK | OK
[教科書・学年]タグで探す
FT_119 | UI | 「学年・教科書」ドロップダウンをクリックした際のUIを確認してください | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。 | 2. 設計どおりに UI を表示します: https://docs.google.com/presentation/d/1uIXz_fgthWJZ-wI9hncMjBFuUkY5cvgzLVYgvmFzVv4/edit?slide=id.g33b0341dd9c_0_132#slide=id.g33b0341dd9c_0_132 | High | ● | OK | ● | OK | OK | OK
FT_120 | ドロップダウンリストタグを閉じるをチェックしてください | タグリストにアクションがない場合 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. もう一度「学年・教科書」ドロップダウンをクリックします。
4. 「学年・教科書」ドロップダウンをクリックします。
5. タグリスト表示エリア外をクリック | 3. タグリストを閉じる
5. タグリストを閉じる | High | ● | OK | ● | OK | OK | OK
FT_121 | タグリストで選択したタグ | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. アクションを実行してタグを選択 => ドロップダウンを再度クリック 学年・教科書
4. 「学年・教科書」ドロップダウンをクリックします。
5. タグ選択アクションを実行 => タグリスト表示領域の外側をクリック 
6. 「学年・教科書」ドロップダウンをクリックします。 | 3. タグリストを閉じる
5. タグリストを閉じる
6. 手順 2 と同様にタグリストを再度開きます。 | High | ● | ● | OK | OK | OK
FT_122 | タグ一覧を確認する | タグレベル1の表示を確認する | <=18 アイテム | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. リストタグレベル1の表示を確認する | 3. 上から下、左から右の順に、最大 18 個のアイテムを 3x6 個の数量で表示します。 
スクロールなし | High | ● | ● | OK | OK | OK
FT_123 | 18 項目以上 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. リストタグレベル1の表示を確認する | 3. 上から下、左から右の順に 3x6 の数量で 18 個のアイテムを表示します。 
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | ●
FT_124 | クリックしてタグ レベル 1 を選択することにチェックを入れます | 選択したタグ レベル 1 のリスト タグ レベル 2 には 18 個以下の項目があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. リストタグレベル2の表示を確認する | 2. タグレベル 1 表示が選択されています (表示背景 #FFCC00)
3. リスト タグ レベル 2 は、リスト タグ レベル 1 の隣の四角形に表示されます。  
上から下、左から右の順に、最大 18 個のアイテムを 3x6 個の数量で表示します。 
スクロールなし | High | ● | ● | OK | OK | OK
FT_125 | 選択したタグ レベル 1 のリスト タグ レベル 2 には 18 個を超える項目があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. リストタグレベル2の表示を確認する | 2. タグレベル 1 表示が選択されています (表示背景 #FFCC00)
3. リスト タグ レベル 2 は、リスト タグ レベル 1 の隣の四角形に表示されます。  
数量 3x6 の 18 個のアイテムを上から下、左から右の順に表示します。 
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | ● | OK | OK | OK
FT_126 | 別のレベル 1 タグをクリックする場合にチェックを入れます | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 1 タグをクリックします 
4. 別のレベル 1 タグをクリックします | 4. ステップ 3 のタグ レベル 1 が選択解除されます (背景 #FFCC00 が失われます)。
    ステップ 4 のタグ レベル 1 が選択された状態で表示されます (背景 #FFCC00 を表示)
⇒手順4でクリックしたレベル1タグに対応するレベル2タグの一覧を表示 | High | ● | ● | OK | OK | OK
FT_127 | 現在選択されているレベル 1 タグをクリックする場合にチェックを入れます。 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 1 タグをクリックします 
4. ステップ 3 のレベル 1 タグを再度クリックします。 | 4. レベル 1 タグのチェックを外すと、レベル 2 タグのリストが空になります。 | High | ● | ● | OK | OK | OK
FT_128 | クリックしてタグ レベル 2 を選択することにチェックを入れます | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 には 10 以下のタグ レベル 3 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件のタグレベル2をクリック→タグレベル3の表示を確認 | 4. 背景色 #D9D9D9 で最大 10 個の項目を表示します
スクロールなし | High | ● | ● | OK | OK | OK
FT_129 | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 が 10 を超えています | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件のタグレベル2をクリック→タグレベル3の表示を確認 | 4. 背景色 #D9D9D9 で 10 個のアイテムを表示します。
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | ● | OK | OK | OK
FT_130 | タグ名レベル3の表示を確認する | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 タグ レベル 3 の名前の文字数は表示枠よりも少なくなります。 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. レベル3のタグ名の表示を確認する | 5. 完全なレベル 3 タグ名を表示する | High | ● | ● | OK | OK | OK
FT_131 | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 タグ レベル 3 の名前の文字数が表示フレームより長くなります。 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。 
4. 前提条件でレベル 2 タグをクリックします
5. レベル3のタグ名の表示を確認する | 5.名前をフレームの限界まで表示し、残りの文字は切り取られます | High | ● | ● | OK | OK | OK
FT_132 | 別のレベル 1 タグをクリックする場合にチェックを入れます | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします。
5. 手順3で別のレベル1タグをクリック => レベル3タグの表示を確認 | 5. ステップ 3 のタグ レベル 1 は選択解除され、ステップ 5 のタグ レベル 1 が選択されたものとして表示されます (黄色の背景が表示されます)。
    手順5でレベル1タグに属するレベル2タグのリストを表示します。 | High | ● | ● | OK | OK | OK
FT_133 | 別のレベル 2 タグにチェックを入れてクリックします | タグ レベル 1 には多くのタグ レベル 2 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. 手順4のタグ以外のレベル2タグをクリック ⇒ レベル2タグ、レベル3タグの表示を確認 | 5. ステップ 4 のタグ レベル 2 の選択が解除され、ステップ 5 のタグ レベル 2 が選択されたものとして表示されます (黄色の背景が表示されます)。
    手順5でレベル2タグに属するレベル3タグのリストを表示します。 | High | ● | ● | OK | OK | OK
FT_134 | チェックすると、現在選択されているレベル 2 タグをクリックします。 | タグ レベル 1 には多くのタグ レベル 2 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. 手順4で再度タグレベル2をクリック => タグレベル2,3の表示を確認 | 5. ステップ 4 のタグ レベル 2 の選択が解除されます。
    リストタグレベル3は空になります | High | ● | ● | OK | OK | OK
FT_135 | 現在選択されているレベル 1 タグの 2 回目のクリックを確認します | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. 手順 3 でタグレベル 1 を再度クリック => タグレベル 1、2、3 の表示を確認します。 | 5. ステップ 3 のタグ レベル 1 の選択が解除されます。
    リストタグのレベル 2 と 3 は空になります | High | ● | ● | OK | OK | OK
FT_136 | クリックしてタグ レベル 3 を選択することにチェックを入れます | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 があります
タグ レベル 3 には 10 個以下のタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4タグリストの表示を確認する | 6. レベル 4 のタグをすべて背景色 #D9D9D9 で表示します。
スクロールなし | High | ● | ● | OK | OK | OK
FT_137 | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 が含まれます
タグ レベル 3 には 10 を超えるタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4タグリストの表示を確認する | 6. 背景色 #D9D9D9 で 10 個のアイテムを表示します。
スクロールがあり、スクロールしてさらにアイテムを読み込むことができます | High | ● | ● | OK | OK | OK
FT_138 | タグ名レベル4の表示を確認する | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 が含まれます
タグレベル3にタグレベル4がある：タグレベル4の名前の文字数が表示枠より少ない | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4のタグ名の表示を確認する | 6. 完全なレベル 4 タグ名を表示する | High | ● | ● | OK | OK | OK
FT_139 | タグ レベル 1 にはタグ レベル 2 があります 
タグ レベル 2 にはタグ レベル 3 が含まれます
タグレベル3にタグレベル4がある：タグレベル4の名前の文字数が表示枠より長い | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. 前提条件でレベル 2 タグをクリックします
5. 前提条件でレベル 3 タグをクリックします
6. レベル4のタグ名の表示を確認する | 6.名前をフレームの限界まで表示し、残りの文字は切り取られます | High | ● | ● | OK | OK | OK
FT_140 | 別のレベル 3 タグをチェックしてクリックします | タグ レベル 1 にはレベル 2 のタグがあり、タグ レベル 2 にはレベル 3 のタグが多数あります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします。 
5. タグレベル 3 をクリックします。
6. 手順5のタグ以外のレベル3タグをクリック ⇒ レベル3,4タグ一覧の表示を確認 | 6. ステップ 5 のタグ レベル 3 が選択解除され、ステップ 6 のタグ レベル 3 が選択された状態で表示されます (背景 #FFCC00 を表示)。
   手順6でレベル3タグに属するレベル4タグのリストを表示します。 | High | ● | ● | OK | OK | OK
FT_141 | チェックすると、現在選択されているレベル 3 タグをクリックします。 | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします。 
5. タグレベル 3 をクリックします。 
6. 手順5で再度タグレベル3をクリック ⇒ タグリストレベル3、4の表示を確認 | 6. ステップ 5 のタグ レベル 3 の選択が解除されます。
    リストタグレベル 4 は空になります | High | ● | ● | OK | OK | OK
FT_142 | 別のレベル 2 タグのクリックを確認します | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順4以外のレベル2タグをクリック ⇒ レベル2,3,4タグ一覧の表示を確認 | 6. ステップ 4 のタグ レベル 2 の選択が解除され、ステップ 6 のタグ レベル 2 が選択されます。
    手順6でレベル2タグのタグレベル3リストを表示すると、レベル4タグリストは空になります。 | High | ● | ● | OK | OK | OK
FT_143 | 現在選択されているレベル 2 タグの 2 回目のクリックを確認します | タグ レベル 1 には多数のレベル 2 タグがあり、タグ レベル 2 にはレベル 3 タグがあります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順4でタグレベル2を再度クリック ⇒ タグレベル2,3,4の一覧表示を確認します | 6. ステップ 4 のタグ レベル 2 の選択が解除されます。
    リストタグレベル 3、4 は空になります | High | ● | ● | OK | OK | OK
FT_144 | 別のレベル 1 タグをクリックすることを確認します | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順3のタグ以外のレベル1タグをクリック ⇒ レベル1,2,3,4タグ一覧の表示を確認 | 6. ステップ 3 のタグ レベル 1 が選択解除され、ステップ 6 のタグ レベル 1 が選択されます。
    手順 6 でレベル 1 タグのタグ レベル 2 リストを表示すると、タグ レベル 3 と 4 のリストは空になります。 | High | ● | ● | OK | OK | OK
FT_145 | 現在選択されているレベル 1 タグの 2 回目のクリックを確認します | タグ レベル 1 にはタグ レベル 2 があり、タグ レベル 2 にはタグ レベル 3 があります。 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. 手順3でタグレベル1を再度クリック ⇒ タグレベル1,2,3,4の一覧表示を確認します | 6. ステップ 3 のタグ レベル 1 の選択が解除されます。
    リストタグレベル 2、3、4 は空になります | High | ● | ● | OK | OK | OK
FT_146 | クリックしてタグ レベル 4 を選択することを確認します。 | タグ レベル 1 にはタグ レベル 2 があります
タグ レベル 2 にはタグ レベル 3 があります
タグ レベル 3 にはタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. レベル4タグをクリック => 表示を確認 | 6. タグレベル 4 が選択されています (背景 #FFCC00 が表示されます)。 | High | ● | ● | OK | OK | OK
FT_147 | レベル4のタグが選択されてクリックされていることを確認します | タグ レベル 1 にはタグ レベル 2 があります
タグ レベル 2 にはタグ レベル 3 があります
タグ レベル 3 にはタグ レベル 4 があります | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 前提条件のレベル 1 タグをクリックします。
4. レベル 2 タグをクリックします
5. レベル 3 タグをクリックします
6. レベル 4 のタグをクリックします
7. 手順 6 のタグレベル 4 を再度クリック => 表示を確認します | 7. タグ レベル 4 の選択が解除されます (背景 #FFCC00 が失われます) | High | ● | ● | OK | OK | OK
FT_148 | タグを選択せず​​に検索をテストします | タグを選択せず​​に検索を確認する | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面を「学年・教科書」の文字のみでクリックできないパンくずリストで表示する
3. リストデータは【教科書・学年】に属する全てのデジタルツールです | High | ● | ● | OK | OK | OK
FT_149 | タグレベル 1 でのテスト検索 | タグレベル 1 でのテスト検索 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. デジタル ツール イメージを含むレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をパンくずリストで表示：学年・教科書 > [第1層タグ] 
ここで、学年・教科書はリンクテキスト、[第1層タグ]はテキストです
3. リストデータには、タグレベル 1 に属するすべてのデジタルツールが表示されます | High | ● | ● | OK | OK | OK
FT_150 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. デジタル ツール イメージのないレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をパンくずリストで表示：学年・教科書 > [第1層タグ] 
ここで、学年・教科書はリンクテキスト、[第1層タグ]はテキストです
3. リストデータが空です | High | ● | ● | OK | OK | OK
FT_151 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 名前が 10 文字以下のレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 1 のタグ名が完全に表示されます | High | ● | ● | OK | OK | OK
FT_152 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. 名前が 10 文字を超えるレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル1タグ名は10文字表示、11文字目以降は切り捨て | High | ● | ● | OK | OK | OK
FT_153 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. デジタル ツール イメージを含むレベル 1 タグをクリックして選択します
4.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの学年・教科書リンクをクリックした際にチェックを入れます | 2. 結果画面を「学年・教科書」の文字のみでクリックできないパンくずリストで表示する
    リストデータは[教科書・学年]に属する全てのデジタルツールです | High | ● | ● | OK | OK | OK
FT_154 | タグレベル 2 でのテスト検索 | タグレベル 2 を選択したときに検索をチェックする | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. デジタルツールでレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ]
と ： 
     学年・教科書、[第1層タグ]はクリック可能なテキストリンクです 
      [第2層タグ]はクリックできないテキストです
3. リストデータには、タグレベル 2 に属するすべてのデジタルツールが表示されます | High | ● | ● | OK | OK | OK
FT_155 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. デジタルツールを使用せずにレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ]
と ： 
     学年・教科書、[第1層タグ]はクリック可能なテキストリンクです 
      [第2層タグ]はクリックできないテキストです
3. リストデータが空です | High | ● | ● | OK | OK | OK
FT_156 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. 名前が 10 文字以下のレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 2 のタグ名が完全に表示されます | High | ● | ● | OK | OK | OK
FT_157 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. 名前が 10 文字を超えるレベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル2のタグ名は10文字表示され、11文字目以降が切り捨てられます。 | High | ● | ● | OK | OK | OK
FT_158 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 2 タグをクリックして選択します
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストのリンク「第1層タグ」をクリックした際にチェックを入れる | 2. 結果画面をパンくずリストで表示：学年・教科書 > [第1層タグ]  
と ： 
     学年・教科書はクリック可能なテキストリンクです 
      [第1層タグ]はクリックできないテキストです
- リストデータはタグレベル1に属するすべてのデジタルツールです | High | ● | ● | OK | OK | OK
FT_159 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 2 タグをクリックして選択します 
5.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの学年・教科書リンクをクリックした際にチェックを入れます | 2. 結果画面を「学年・教科書」の文字のみでクリックできないパンくずリストで表示する
    リストデータは[教科書・学年]に属する全てのデジタルツールです | High | ● | ● | OK | OK | OK
FT_160 | タグレベル 3 でのテスト検索 | タグレベル 3 でのテスト検索 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. デジタルツールでレベル 3 タグをクリックして選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ] > [第3層タグ]   
と ： 
     学年・教科書、[第1層タグ]、[第2層タグ]はクリック可能なテキストリンクです 
      [第3層タグ]はクリックできないテキストです
3. リストデータには、タグレベル 3 に属するすべてのデジタルツールが表示されます | High | ● | ● | OK | OK | OK
FT_161 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてデジタルツールなしのレベル 3 タグを選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ] > [第3層タグ]   
と ： 
     学年・教科書、[第1層タグ]、[第2層タグ]はクリック可能なテキストリンクです 
      [第3層タグ]はクリックできないテキストです
3. リストデータが空です | High | ● | ● | OK | OK | OK
FT_162 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. 名前が 10 文字以下のレベル 3 タグをクリックして選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 3 のタグ名が完全に表示されます | High | ● | ● | OK | OK | OK
FT_163 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. 名前が 10 文字を超えるレベル 3 タグをクリックして選択します
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 3 のタグ名は 10 文字表示され、11 文字目以降が切り捨てられます。 | High | ● | ● | OK | OK | OK
FT_164 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてレベル 3 タグを選択します 
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストのリンク「第2層タグ」をクリックすることを確認します。 | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ] 
と ： 
     学年・教科書、[第1層タグ]はクリック可能なテキストリンクです 
      [第2層タグ]はクリックできないテキストです
- リストデータはタグレベル2に属するすべてのデジタルツールです | High | ● | ● | OK | OK | OK
FT_165 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてレベル 3 タグを選択します 
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. パンくずリストのリンク「第1層タグ」をクリックすることを確認します。 | 2. 結果画面をパンくずリストで表示：学年・教科書 > [第1層タグ]  
と ： 
     学年・教科書はクリック可能なテキストリンクです 
      [第1層タグ]はクリックできないテキストです    
- リストデータはタグレベル1に属するすべてのデジタルツールです | High | ● | ● | OK | OK | OK
FT_166 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. クリックしてレベル 3 タグを選択します 
6.「さがす」ボタンをクリック | 1. 検索結果画面へ
2. ブレッドクラムの「学年・教科書」リンクをクリックするためにチェックを入れます | 2. 結果画面を「学年・教科書」の文字のみでクリックできないパンくずリストで表示する
    リストデータは[教科書・学年]に属する全てのデジタルツールです | High | ● | ● | OK | OK | OK
FT_167 | タグレベル 4 でのテスト検索 | タグレベル 4 でのテスト検索 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. デジタルツールでレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示: 学年・教科書 > [第1層タグ] > [第2層タグ] > [第3層タグ] > [第4層タグ]   
と ： 
     学年・教科書、[第1層タグ]、[第2層タグ]、[第3タグ層]はクリック可能なテキストリンクです 
      [第4層タグ]はクリックできないテキストです
3. リストデータには、タグレベル 4 に属するすべてのデジタルツールが表示されます | High | ● | ● | OK | OK | OK
FT_168 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. デジタルツールでレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する
3. 表示されたデータ一覧を確認する | 2. 結果画面をブレッドクラムで表示: 学年・教科書 > [第1層タグ] > [第2層タグ] > [第3層タグ] > [第4層タグ]   
と ： 
     学年・教科書、[第1層タグ]、[第2層タグ]、[第3タグ層]はクリック可能なテキストリンクです 
      [第4層タグ]はクリックできないテキストです
3. リストデータが空です | High | ● | ● | OK | OK | OK
FT_169 | パンくずリストの表示を確認する | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. 名前が 10 文字以下のレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル 4 のタグ名が完全に表示されます | High | ● | ● | OK | OK | OK
FT_170 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. 名前が 10 文字を超えるレベル 4 タグをクリックして選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストの表示を確認する | 2. レベル4タグ名は10文字表示、11文字目以降は切り捨て | High | ● | ● | OK | OK | OK
FT_171 | パンくずリストをクリックして確認してください | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストのリンク「第3層タグ」をクリックすることを確認します。 | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ] > [第3層タグ] 
と： 
     学年・教科書、[第1層タグ]、[第2層タグ]はクリック可能なテキストリンクです
     [第3層タグ]をクリックできない
- リストデータはタグレベル3に属するすべてのデジタルツールです | High | ● | ● | OK | OK | OK
FT_172 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストのリンク「第2層タグ」をクリックすることを確認します。 | 2. 結果画面をブレッドクラムで表示：学年・教科書 > [第1層タグ] > [第2層タグ] 
と： 
     学年・教科書、[第1層タグ]はクリック可能なテキストリンクです
     [第2層タグ]をクリックできない    
- リストデータはタグレベル2に属するすべてのデジタルツールです | High | ● | ● | OK | OK | OK
FT_173 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. パンくずリストのリンク「第1層タグ」をクリックすることを確認します。 | 2. 結果画面をパンくずリストで表示：学年・教科書 > [第1層タグ]  
と： 
     学年・教科書はクリック可能なテキストリンクです
     [第1層タグ]をクリックできない       
- リストデータはタグレベル1に属するすべてのデジタルツールです | High | ● | ● | OK | OK | OK
FT_174 | 1.デジタルツール一覧画面へ
2. 「学年・教科書」ドロップダウンをクリックします。
3. レベル 2 タグを持つレベル 1 タグをクリックして選択します
4. レベル 3 タグを持つレベル 2 タグをクリックして選択します
5. レベル 4 タグを持つレベル 3 タグをクリックして選択します
6. クリックしてレベル 4 タグを選択します
7.「さがす」ボタンをクリックします | 1. 検索結果画面へ
2. ブレッドクラムの「学年・教科書」リンクをクリックするためにチェックを入れます | 2. 結果画面を「学年・教科書」の文字のみでクリックできないパンくずリストで表示する
    リストデータは[教科書・学年]に属する全てのデジタルツールです | High | ● | ● | OK | OK | OK
FT_175 | 検索結果画面で一覧データを確認する | ケース FT_22 から FT_45 をチェックしてください | 1. 検索結果画面へ
2.FT_22からFT_45まで同様に確認します。 | 2. すべてのテスト ケースの結果が合格する | High | ● | ● | OK | OK | OK
FT_176 | 検索後に別のアクションを確認してください | エミールアイコンをクリックして確認してください | 1. 検索結果画面へ
2.エミールアイコンのクリックを確認します | 2.デジタルツール一覧画面に移動します | High | ● | ● | OK | OK | OK
FT_177 | 結果画面でキーワード検索する場合に確認してください | 1. 検索結果画面へ
2. ヘッダーの検索テキストボックスにテキストを入力します。 
3.「さがす」ボタンをクリック | 3. リストデータのあるリストデジタルツール画面に移動します | High | ● | ● | OK | OK | OK
ダウンロード
FT_178 | デジタルツール一覧画面からダウンロード | ダウンロードボタンの表示を確認する | デジタルツールを選んでいない場合 | 1.デジタルツール一覧画面へ 
2.「ダウンロード」ボタンの表示を確認する | 2. ダウンロードボタンが無効になっています | High | ● | ● | OK | OK | OK
FT_179 | デジタルツールが選択されました | 1.デジタルツール一覧画面へ 
2. クリックして少なくとも 1 つのデジタル ツールを選択します
3. ダウンロードボタンの表示を確認する | 2. ボタンのダウンロードを有効にする | High | ● | ● | OK | OK | OK
FT_180 | 1枚の写真をテストダウンロード | デバイス: ASUS、CHrombook | 1.デジタルツール一覧画面へ 
2. クリックしてデジタルツールを選択します
3. 「ダウンロード」ボタンをクリックします | 3. 新しく選択したデジタルツールイメージをダウンロードします | High | ● | ● | OK | OK | OK
FT_181 | デバイス:iPad | 1.デジタルツール一覧画面へ 
2. クリックして 20 個のデジタル ツールを選択します
3. 「ダウンロード」ボタンをクリックします | 3. 新しく選択したすべてのデジタル ツール イメージをダウンロードします | High | ● | ● | NA | NA | OK
FT_182 | 複数の写真のダウンロードを確認する | デバイス: ASUS、CHrombook | 1.デジタルツール一覧画面へ 
2. クリックしてデジタルツールを選択します
3. 「ダウンロード」ボタンをクリックします | 3. 新しく選択したデジタル ツール イメージを、Emile のイラスト.zip という名前の zip ファイルにダウンロードします。
→ zipファイルをクリックすると、ダウンロードしたデジタルツール画像が含まれるフォルダーが表示されます | High | ● | ● | OK | OK | OK
FT_183 | デバイス:iPad | 1.デジタルツール一覧画面へ 
2. クリックして 20 個のデジタル ツールを選択します
3. 「ダウンロード」ボタンをクリックします | 3. 新しく選択したデジタル ツールの画像をすべて、Emile のイラスト.zip という名前の zip ファイルにダウンロードします。
→ zipファイルをクリックすると、ダウンロードしたデジタルツール画像が含まれるフォルダーが表示されます | High | ● | ● | NA | NA | OK
FT_184 | ダウンロードが完了したら確認してください | 1.デジタルツール一覧画面へ 
2. クリックしてデジタルツールを選択します
3. 「ダウンロード」ボタンをクリックします | 1. ステップ2の事前条件で選択したデジタルツールを確認します
2.「せんたく中のイラストを見る」ボタンをクリックします
3. 選択したデジタルツールのリストを確認します | 4. ステップ 2 の事前条件のすべてのデジタル ツール イメージの選択が解除されます。
6. 選択したデジタルツールのリストがすべて削除されます | High | ● | ● | OK | OK | OK
FT_185 | ダウンロードした画像の名前を確認する | 1.デジタルツール一覧画面へ 
2. クリックしてデジタルツールを選択します
3. 「ダウンロード」ボタンをクリックします | 1. ダウンロードしたデジタルツール画像が保存されているパソコンのフォルダーを開きます 
2. ダウンロードしたファイル数を確認する
3. ダウンロードしたファイル名とファイル形式を確認します。 | 2. ダウンロードされるファイルの数は、画面上で選択したデジタルツールの数に対応します
3. ファイル名はデジタルツールイメージの名前になります。 
画像形式は管理画面でアップロードした形式に依存します:JPG/PNG/JPEG/JFIF) | High | ● | ● | OK | OK | OK
FT_186 | 検索結果画面からダウンロード | FT_178 ～ FT_185 のケースでも同じことを行います。 | 1. 検索結果画面を開く
2. ケース FT_178 ～ FT_185 を実行します。 | 2. すべてのテスト ケースに合格する | High | ● | ● | OK | OK | OK
FT_187 | 一般ダウンロード | デジタルツール一覧画面と検索結果画面の両方で選択した画像をダウンロードする際にチェックを入れる | 1. デジタルツール一覧画面に移動し、クリックしてデジタルツールを選択します
2. 絵のしゅるいの検索結果画面に移動し、デジタルツールをクリックします 
3. 教科書・学年別の検索結果画面に移動し、デジタルツールをクリックします | 1. ダウンロードボタンをクリックします 
2.デジタルツール一覧画面に移動し、選択したデジタルツールを確認します 
3. 絵のしゅるいで検索結果画面へ ⇒ 選択したデジタルツールを確認 
4. 教科書・学年別の検索結果画面へ ⇒ 選択したデジタルツールを確認 
5. せんたく中のイラストを見るボタンをクリック=> 選択したデジタルツールの一覧を確認します | 2. デジタルツールのチェックが外されていることをリストします。
3. デジタルツールのチェックが外されていることをリストします。
4. デジタルツールのチェックが外されていることをリストします。
5. デジタルツールのリストはすべて削除されました | High | ● | ● | OK | OK | OK
## Sheet: IT_JP
Screen/function | IT
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
IT_1 | 画面間でデジタルツールを選択してください | 画面間でデジタルツールの選択を確認する | 1.デジタルツール一覧画面へ
2. 1 ページ目から 3 つのデジタル ツールを選択します 
3. せんたく中のイラストを見るをクリック=> 表示を確認
4.せんたく中のイラスト画面で×をクリック
5. ページ 2 に移動し、さらに 2 つのデジタル ツールを選択します 
6. せんたく中のイラストを見るをクリック=> 表示を確認
7. 1の位置のデジタルツールを削除 => せんたく中のイラスト画面で×をクリック
8. ドロップダウン「絵のしゅるい」をクリックし、タグレベル1を選択して「さがす」ボタンをクリックします。
9. カテゴリのデジタルツールリストから 10 個のデジタルツールを選択します 
10.「せんたく中のイラストを見る」をクリック=> 表示を確認
11. デジタルツール位置 2 を削除 => 表示を確認
12. せんたく中のイラスト画面で「×」をクリックし、「emile」アイコンをクリック -> ドロップダウン「学年・教科書」をクリックします。
13.さがすボタンをクリックし、[教科書・学年]から7つのデジタルツールを選択します 
14. せんたく中のイラストを見るをクリック=> 表示を確認
15. デジタルツール位置 3 を削除します。 
16.せんたく中のイラスト画面で×をクリック
17.「エミール」アイコンをクリックします。 
18. 選択したデジタルツールのリストを確認する
19. クリックしてページ 2 に移動し、選択したデジタル ツールのリストを確認します | 2. 背景 #FFCC00 を表示するために 3 つのデジタル ツールが選択されています 
3. モーダルせんたく中のイラストを開くと、ステップ2の3つのデジタルツールがクリック順に応じて1、2、3の3つの位置に表示されます。 
5. 選択した 2 つのデジタル ツールの背景 #FFCC00 が表示されます 
6.モーダルせんたく中のイラストを開くと、手順5の2つのデジタルツールがクリック順に応じて4,5の2箇所に表示されます
7. デジタルツール番号 1 を削除すると、次のデジタルツールが蓄積されます
8. カテゴリ別検索画面表示：タグレベル1以下のデジタルツール一覧
 9. 選ばれた10のデジタルツールの表示背景 #FFCC00 
10. モーダルせんたく中のイラストを開くと、クリック順に応じて手順9の10個のデジタルツールが5～14の位置に表示されます 
11. デジタルツール番号 2 を削除すると、次のデジタルツールが蓄積されます
13. [教科書・学年]で検索画面を表示：[教科書・学年]の全デジタルツール一覧
      選択された 6 つのデジタル ツールには背景 #FFCC00 が表示され、7 番目のデジタル ツールは選択できません
14. 20 個のデジタル ツールをすべて表示する 
15. デジタルツール番号 3 を削除すると、次のデジタルツールが蓄積されます
17.デジタルツール一覧画面に移動します 
18. 選択できるデジタル ツールは 1 つだけです 
19. 選択できるデジタル ツールは 1 つだけです | High | ● | ● | OK | OK | OK
IT_2 | 検索 | キーワード、カテゴリー、[教科書・学年]で探すときにチェックしてください | 1.デジタルツール一覧画面へ 
2.「絵のしゅるい」ドロップダウンをクリックします。
3.タグレベル1をクリックして選択し、ボタンをクリックします
4. 検索テキストボックスにキーワードを入力し、「さがす」ボタンをクリック=> 表示を確認
5.「絵のしゅるい」ドロップダウンをクリックします。
6. タグレベル 1、2、3、4 をクリックして選択し、「さがす=> 表示を確認」ボタンをクリックします | 3. カテゴリ別の検索結果画面を表示：タグレベル1に属するデジタルツールを一覧表示
4. カテゴリごとに検索条件をクリアし、キーワードごとに検索結果画面を表示：今検索したキーワードを含むリストデジタルツール 
6. キーワードで検索条件をクリア、カテゴリごとに検索結果画面を表示：リストデジタルツールはタグレベル4に属します | High | ● | ● | OK | OK | OK
IT_3 | 1.デジタルツール一覧画面へ 
2. 「学年・教科書」ドロップダウンをクリックします。
3.タグレベル1をクリックして選択し、ボタンをクリックします
4. 検索テキストボックスにキーワードを入力し、「さがす」ボタンをクリック=> 表示を確認
5. 「学年・教科書」ドロップダウンをクリックします。
6. タグレベル1、2をクリックして選択し、「さがす=>表示を確認」ボタンをクリック | 3. [教科書・学年]に応じて検索結果画面を表示：タグレベル1に属するデジタルツールの一覧
4. [教科書・学年]で検索条件をクリアし、キーワードによる検索結果画面を表示：今検索したキーワードを含むリストデジタルツール 
6. キーワードで検索条件をクリア、[教科書・学年]で検索結果画面を表示：タグレベル2に属するデジタルツールの一覧 | High | ● | ● | OK | OK | OK
IT_4 | 1.デジタルツール一覧画面へ 
2.「絵のしゅるい」ドロップダウンをクリックします。
3. タグレベル1、2をクリックして選択し、ボタンをクリックします
4.「絵のしゅるい」ドロップダウンを閉じ、「学年・教科書」ドロップダウンをクリックします。
5. タグレベル1、2、3をクリックして選択し、クリックボタンがす
6. ブレッドスクラム内のレベル 2 タグ名をクリックします。 
7. 「学年・教科書」ドロップダウンを閉じ、「絵のしゅるい」ドロップダウンをクリックして、「さがす」ボタンをクリックします。 | 3. 検索結果画面をカテゴリ別に表示：タグレベル2に属するデジタルツールを一覧表示
5. カテゴリ別に検索条件をクリア、[教科書・学年]別に検索結果画面を表示：タグレベル3に属するデジタルツールの一覧
6. [教科書・学年]による検索結果画面の表示：タグレベル2に属するデジタルツールの一覧
7. [教科書・学年]で検索条件をクリア、カテゴリ別の検索結果画面を表示：カテゴリの全デジタルツール一覧 | High | ● | ● | OK | OK | OK
## Sheet: ST_JP
Screen/function | ST
Testcase_ID | Testcase Title | Testcase Description | Testcase Pre-condition | Testcase Steps | Expected result | Priority | Role | Device | Bug ID
Teacher | Student
Y/N | Result | Y/N | Result | Microsoft Edge(ASUS) | Chrome(Chromebook) | Safari(iPad)
ST_1 | ログイン | ログインを確認する | 1. ログイン画面に移動します
2. Googleボタンをクリックします 
3. システムに未登録のメールアドレスを選択 ⇒ 表示を確認 
4. Googleボタンをクリックします 
5. システムに登録されているメールアドレスを選択 ⇒ 表示を確認
6. アバターをクリック => ログアウト ボタンをクリック 
7. Microsoft ボタンをクリックします 
8. システムに未登録のメールアドレスを選択 ⇒ 表示を確認 
9. Googleボタンをクリックします 
10. システムに登録されているメールアドレスを選択 ⇒ 表示を確認 | 2. 
3. エラー メッセージを表示します。 
ログインに失敗しました。 
もう一度ログインするか学校管理者にお問い合わせください
4. 
5. デジタルツール一覧画面へのログインに成功し、正しいUIデザインが表示されました
6. ログアウトするとログイン画面が表示されます
7.
8. エラー メッセージを表示します。 
ログインに失敗しました。 
もう一度ログインするか学校管理者にお問い合わせください
9. 
10. デジタルツール一覧画面へのログインに成功し、正しいUIデザインが表示されました | High | ● | ● | OK | OK | OK
ST_2 | UI | 応答が変化したときに確認する | 1.デジタルツール一覧画面へ → 表示確認 
2.ドロップダウン「絵のしゅるい」をクリック→表示を確認 
3. タグレベル 1、2、3、4 をクリックして選択 => 表示を確認
4.「絵のしゅるい」ドロップダウンを再度クリックします。
5. ドロップダウンの学年・教科書をクリック=> 表示を確認
6. クリックしてタグレベル 1、2、3、4 を選択 => 表示を確認
7. [学年・教科書] ドロップダウンをもう一度クリックします。
8. ズームデジタルツールを選択→表示確認 
9. クリックしてデジタルツールを最小化 -> 表示を確認 
10. クリックしてデジタルツールを選択します 
11. せんたく中のイラストを見るボタンをクリック=> 表示を確認
12.せんたく中のイラスト画面で×をクリック
13. ドロップダウン絵のしゅるいをクリックし、さがすボタンをクリック=> 表示を確認 | 1. 数量: 6x3 のデジタルツールのリストを表示します。
2. タグリストを旧デザインと同様に4分割で横に表示 
3. 各レベルに対応するタグの完全なリストを表示します 
5. タグリストを旧デザインと同様に4分割で横に表示 
6. 各レベルに対応するタグの完全なリストを表示します。 
8.デジタルツール画像を縦長の長方形で拡大します（横幅が縮むため） 
9. デジタルツールズームを閉じる 
10. 選択したデジタル ツールには背景 #FFCC00 が表示されます
11. 選択したデジタル ツールのリストを 4 行で表示します: 1 行あたり 5 項目 
13. 数量: 6x3 のデジタルツールのリストを表示します。 | High | OK | OK | OK
ST_3 | デジタルツールの選択を確認してください | 1.デジタルツール一覧画面へ
2.デジタルツール一覧表示を確認する
3. デジタルツールのズームボタンをクリック ⇒ 表示を確認
4. デジタルツールのサムネイルボタンをクリック ⇒ 表示を確認
5. 5つのデジタルツールをクリック => 表示を確認
6. せんたく中のイラストを見るボタンをクリック=> 表示を確認
7.せんたく中のイラスト画面で×をクリックし、手順5で選択したデジタルツールを再度クリック⇒表示を確認
8. せんたく中のイラストを見るボタンをクリック=> 表示を確認
9.せんたく中のイラスト画面で×をクリックし、さらに17個のデジタルツールをクリックして選択 => 表示を確認
10. せんたく中のイラストを見るボタンをクリック=> 表示を確認
11. 位置番号 20 のデジタルツールの削除をクリックします => 表示を確認します
12. 位置 4 のデジタルツールの削除をクリック => 表示を確認します
13.せんたく中のイラスト画面で×をクリックし、手順11、12で削除した2つのデジタルツールの表示を確認します
14. クリックして2ページ目に進み、デジタルツールを選択 => 表示を確認
15. せんたく中のイラストを見るボタンをクリック=> 表示を確認
16.せんたく中のイラスト画面で×をクリックすると1ページ目に戻ります=>前回選択したデジタルツールを確認します
17. 再度クリックして現在選択されているデジタルツールを選択 => 表示を確認
18. せんたく中のイラストを見るボタンをクリック=> 表示を確認 | 2. デバイスに応じた表示数量:
iPad/Asus/Chromebook : 10x3
3. デジタルツールで画像を拡大する
4. デジタル画像をズームアウトする
5. 選択した 5 枚の写真には背景 #FFCC00 が表示されます
6. モーダルせんたく中のイラストを開き、写真をクリックした順に1～5の5枚の写真を表示します
7. 再選択したデジタル ツールの選択が解除され、#FFCC00 の背景が失われます。
8. モーダルせんたく中のイラストを開き、4 つのデジタル ツール画像のみを 4 つの位置 1、2、3、4 に表示します。
9. 選択した最初の 16 枚の写真には背景 #FFCC00 が表示され、17 枚目の写真は選択できません。
10. せんたく中のイラスト モーダルを開き、20 個のデジタル ツール画像すべてを 20 位置に表示します
11. 位置 20 のデジタルツールが削除されます
12. 位置 4 のデジタルツールが削除され、その後ろのデジタルツールが積み重なっていきます
13. 2 つのデジタル ツールの選択が解除され、背景 #FFCC00 が失われます
14. ページ 2 に切り替えます。選択したデジタル ツールには背景 #FFCC00 が表示されます。
15. 手順 14 で選択したデジタルツールが 19 の位置に表示されます。
16. ページ 1 に戻ります。前に選択した 18 個のデジタル ツールは引き続き正しく表示されます。
17. 再選択したデジタル ツールの選択が解除され、#FFCC00 の背景が失われます。
18. モーダルせんたく中のイラストを開き、デジタルツール画像を18枚表示 | High | ● | ● | OK | OK | OK
ST_4 | カテゴリ別タグ選択／テキスト・学年 | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. タグレベル 1 をクリックして選択 => 表示を確認
4. タグレベル 2 をクリックして選択 => 表示を確認
5. タグレベル 3 をクリックして選択 => 表示を確認
6. クリックしてタグレベル 4 を選択 => 表示を確認
7. 手順 6 のタグレベル 4 を再度クリック => 表示を確認します
8. 手順 4 で別のレベル 2 タグをクリック => 表示を確認します
9. ステップ 3 で再度レベル 1 タグをクリックして選択 => 表示を確認
10. ドロップダウン「絵のしゅるい」をクリック=> 表示を確認
11. ドロップダウン「絵のしゅるい」を再度クリック=> 表示を確認
12. クリックしてドロップダウンを閉じます 絵のしゅるい-> ドロップダウンをクリック 学年・教科書=> 表示を確認
13. 手順 3、4、5、6、7、8 を繰り返します => 表示を確認します
14. リストタグ表示エリア外をクリック ⇒ 表示を確認
15. ドロップダウン「学年・教科書」をクリック=> 表示を確認b | 2. カテゴリ別のタグのリストを開きます
3. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 1 タグに属するレベル 2 タグのリストが表示されます。
4. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 2 タグに属するレベル 3 タグのリストが表示されます
5. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 3 タグに属するレベル 4 タグのリストが表示されます。
6. 選択したタグには背景 #FFCC00 が表示され、選択したレベル 3 タグに属するレベル 4 タグのリストが表示されます。
7. タグ レベル 4 の選択が解除され、白い背景が表示されます。
8. 新しいレベル 2 タグが選択され、新しく選択されたレベル 2 タグに属するレベル 3 タグのリストが表示されます。
9. 新しいレベル 1 タグが選択され、新しく選択されたレベル 1 タグに属するレベル 2 タグのリストが表示されます。
10. カテゴリ別のタグのリストを閉じます
11. カテゴリ別タグのリストを再度開き、レベル 1 タグが選択されていない元の状態に戻します。
12. [教科書・学年]でタグリストを開き、カテゴリタグリストを閉じる
13. アウトアウトは[教科書・学年]のタグリストのケース3,4,5,6,7,8と同様です。
14. [教科書・学年]のタグ一覧を閉じる
15. [教科書・学年]に従ってタグリストを再度開き、レベル1タグが選択されていない状態に戻します。 | High | ● | ● | OK | OK | OK
ST_5 | 検索 | キーワード検索を確認する | 1.「ゆきだま」というカテゴリーのデジタルツールを作成します。
2. ごむだまという[教科書・学年]のデジタルツールを作成します
3. カテゴリのデジタルツールのキーワードを雪玉として登録します
4. [教科書・学年]のデジタルツールのキーワードを「ゴム玉」に登録します | 1.デジタルツール一覧画面へ
2. キーワード「だま」を入力し、「さがす」ボタンをクリック => 検索結果を確認する
3. 手順2のキーワードの前に「き」という文字を入力し、「さがす」ボタンをクリック => 検索結果を確認する
4. テキスト「き」を「む」に置き換え、「さがす」ボタンをクリック => 検索結果を確認する
5. 手順4のキーワードの前にテキスト「ご」を追加し、「さがす」ボタンをクリック => 検索結果を確認
6. 手順5で検索したキーワードを削除し、さがすボタンをクリック ⇒ 検索結果を確認
7. キーワード「玉」を入力し、「さがす」ボタンをクリック=> 検索結果を確認
8. 手順 7 のキーワードの前にテキスト「雪」を入力し、キーボードの Enter キーを押します => アクションを確認します
9.「さがす」ボタンをクリック=>検索結果を確認
10. emile アイコンをクリック => 検索結果を確認 | 2. カテゴリと[教科書・学年]の両方のデジタルツールを表示 
3. カテゴリデジタルツールのみを表示 
4. [教科書・学年]のデジタルツールのみを表示する 
5. [教科書・学年]のデジタルツールのみを表示する 
6. すべてのデジタルツールを元の状態で表示します 
7. カテゴリと[教科書・学年]の両方のデジタルツールを表示します 
8. アクションがありません。Enter キーを押しても検索できません
9. カテゴリデジタルツールのみを表示
10. デジタルツール一覧画面と空のテキストボックスを表示します | High | ● | ● | OK | OK | OK
ST_6 | カテゴリーから探す/[教科書・学年] | 1.デジタルツール一覧画面へ
2.「絵のしゅるい」ドロップダウンをクリックします。
3. ボタンをクリック⇒表示を確認
4. emileアイコンをクリック、ドロップダウン絵のしゅるいをクリック→タグレベル1を選択=>ボタンがすをクリック、表示を確認
5. emileアイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。
6. タグレベル1、2を選択 => ボタンをクリック => 表示を確認
7. ブレッドクラムのレベル 1 タグ名をクリック => 表示を確認します
8. emile アイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。
9. タグレベル1,2,3を選択 => ボタンをクリック さがす => 表示を確認
10. ブレッドクラム内のレベル 2 タグ名をクリックします。
11. emileアイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。
12. タグレベル1,2,3を選択 => ボタンをクリック さがす => 表示を確認
13. ブレッドクラムのレベル 1 タグ名をクリックします。
14. emile アイコンをクリックし、ドロップダウン「絵のしゅるい」をクリックします。
15. タグレベル1,2,3,4を選択 => ボタンをクリック さがす => 表示を確認
16. ブレッドクラムのレベル 3 タグ名をクリック => 表示を確認
17. ズームインボタンをクリックし、デジタルツールをクリックしてズームアウト => 表示を確認します
18. 4つのデジタルツールをクリック => 表示を確認
19. 手順18で選択したデジタルツールを再度クリックして選択 => 表示を確認
20. せんたく中のイラストを見るボタンをクリック=> 表示を確認
21. 位置 1 のデジタルツールをクリックして削除 => 表示を確認します
22.せんたく中のイラスト画面で×をクリック
23. [emile] ボタンをクリックし、ドロップダウンの [学年・教科書] をクリックします。
24. 学年・教科書でも手順3～手順22と同様に行います。 | 3. 検索結果画面を開くと、カテゴリ内のすべてのデジタルツールのデータが一覧表示されます
4. タグレベル1に属するデジタルツールのデータ一覧の検索結果画面を開く
6. タグレベル2に属するデジタルツールのデータ一覧の検索結果画面を開く
7. 出力はステップ 1 と同じです
9. タグレベル3に属するデジタルツールのデータ一覧の検索結果画面を開く
10. 出力はステップ 6 と同じです
12. 出力はステップ 9 と同じです
13. 出力はステップ 4 と同じです
15. タグレベル4に属するデジタルツールのデータ一覧の検索結果画面を開く
16. 出力はステップ 9 と同じです
17. デジタル ツールの画像を拡大 => 画像を縮小して元のサイズに戻します
18. 4 つのデジタル ツールが選択され、背景 #FFCC00 が表示されます
19. 選択したデジタル ツールの背景 #FFCC00 が失われています
20. モーダルせんたく中のイラストを開き、3つのデジタルツールを3つの位置1、2、3に表示します
21. 位置 1 のデジタルツールが削除され、次の 2 つのデジタルツールが位置 1 と 2 に移動されます。
22. モーダルを閉じるせんたく中のイラスト
23. 学年・教科書に属する全デジタルツールの一覧データの検索結果画面を開く
24. すべてのケースに合格する | High | ● | ● | OK | OK | OK
ST_7 | ダウンロード | ダウンロードを確認する | 1.デジタルツール一覧画面へ
2. デジタルツールがまだ選択されていません => チェックを入れるとダウンロードボタンが表示されます
3. デジタルツールをクリックして選択 => ダウンロードボタンの表示を確認
4. 選択したデジタル ツールのダウンロード ボタンをクリックします => ダウンロードが成功した後、デジタル ツールの表示を確認します
5. フォルダーを開き、ファイル名とファイル形式を確認します
6. システムを再度開き、ページ 1 の 10 個のデジタル ツール画像とページ 2 の 10 個のデジタル ツール画像をクリックし、ダウンロード ボタンをクリックします。
7.ダウンロードが成功したら、選択したデジタルツールを確認します
8. フォルダーを開き、ダウンロードした画像の数、ファイル名、ファイル形式を確認します。
9. システムを再度開き、デジタルツール一覧画面で 10 個のデジタルツール画像をクリックします
10. ドロップダウン「絵のしゅるい」をクリックし、「さがす」ボタンをクリックします
11. カテゴリからデジタルツール画像を 5 つ選択します
12. ドロップダウンの学年・教科書をクリックし、「さがす」ボタンをクリックします
13. カテゴリからデジタルツール画像を 5 つ選択します
14. ダウンロードボタンをクリック => ダウンロード成功後、デジタルツールの表示を確認します
15. フォルダーを開き、ファイル名とファイル形式を確認します
16. デジタルツールリストを再度開き、クリックしてデジタルツールを選択します 
17. ダウンロードボタンを素早く連続してクリックします => フォルダーを開き、ファイル名とファイル形式を確認します | 2. ダウンロードボタンが無効になっています
3. ダウンロード有効ボタン
4. ダウンロードデジタルが選択されました。ダウンロード後、画面上のデジタル測定ツールの選択を解除します
5. ファイル名は画像名、ファイル形式はアップロード管理側の対応する形式です。
6. 20 個のデジタル ツール イメージをダウンロードする
7. ダウンロード後、ダウンロードしたすべてのデジタルツールの選択を解除します。
8. 管理者側で、20 枚すべての写真、写真に対応する名前、形式をダウンロードします。
14. 20枚の画像のダウンロードに成功したら、デジタルツール一覧、カテゴリのデジタルツール一覧、[教科書・学年]のデジタルツール一覧を開き、ダウンロードしたデジタルツールのチェックがすべて外れていることを確認します。
15. 管理者側の画像に対応する 20 個の画像、名前、形式をすべてダウンロードします。
17. デジタル画像のダウンロードは一度だけ行う | High | OK | OK | OK


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch và đọc hiểu yêu cầu công việc\AITeamに提供_監査ナレッジリスト.XLSX`

## Sheet: メイン
質問内容 | 回答および対応内容 | 回答＿英文原文 | 備考連結 | 証憑
会社のインフラに新しいコンピューター・システムが追加されましたか？ ある場合、どのようなシステムですか？ | ICT管轄のシステムとしてはありません。受託業務で使用するシステムで追加されているものがあるかは、部門側で確認ください。
すべてのシステム（レガシーシステムを含む）は、GxPおよび21 CFR Part11の適用可能性について評価されているか。 裏付けとなる文書は入手可能か？ | 規制要件対応に関する質問のため、部門側で確認をお願いします。
なお、BoxやFaxシステムなど、ICT管轄の全社共通ITインフラシステムについてはバリデーションされています。
前回の評価以降、引退したコンピュータシステムはありますか？ もしそうなら
どのシステムがリタイアされましたか？
リタイアは 21 CFR Part 11 に従って行われましたか？ | ICT管轄のシステムとしてはありません。受託業務で使用するシステムで該当するかは、部門側で確認をお願いします。
ソフトウェア保護プログラムはありますか?(例:V3、ノートンアンチウイルス) | Yes | Yes
■	「はい」の場合、プログラム/製品の名前とバージョンをお知らせください。 | Cybereason バージョン3.0 | Cybereason version3.0
ペネトレーションやDDoSなどのシステムセキュリティの定期的なテスト(セキュリティシミュレーションテスト)を実施していますか? | Yes | Yes
■	はいの場合、最終試験日を含めて詳細に記述してください。 | ・外部サーバへの脆弱性スキャン：2023年9～10月実施
・内部サーバへの脆弱性スキャン：2023年11月～12月実施
・CSIRTドライラン：2023年7月21日 | ・Scan for vulnerabilities to external servers: September-October 2023.
・Scan for vulnerabilities to internal servers: September-October 2023.
・CSIRT dry-run: july 21, 2023
通常、サーバーにはどのような情報が保存されますか?詳細を明記してください。 | ICT department does not know the project data to be saved, so please check with the projectside.
サーバ管理のための標準化された手順はありますか? | Yes | Yes
■	「はい」の場合、SOP番号を記載してください。 | IS-S09_サーバに関する標準 | IS-S09_Standards for Servers
サーバールームの入り口にセキュリティシステムはありますか? | Yes | Yes
サーバへのアクセス制御のためのセキュリティシステムはありますか?(例:UPN:個人の識別コードとパスワード) | Yes | Yes
サーバーへの許可リストはありますか? | Yes | Yes
非常用電源装置(UPS、発電機など)、温度計、サーバ用湿度計はありますか? | Yes | Yes
■	もしそうなら、詳細を教えてください。(無停電持続時間: ___________) | 自家発電装置持続時間　約48時間
停電時には発電機が自動的に作動し、継続的な電力供給が確保されます。 | Power generator sustain hours: About 48 hours
For a power outage, the power generators will automatically activate, ensuring continuous power supply.
サーバルームに煙/熱感知器、火災報知器、消火器(または類似の道具)が設置されていますか? | Yes | Yes
サーバの破壊/故障/損傷が発生した場合に、データ損失を回避するために定期的なバックアップが行われていますか? | Yes | Yes
■	はいの場合、バックアッププロセス(バックアップメディア、頻度:リアルタイムバックアップ、日単位、週単位、バックアップのタイプ:フル、増分バックアップなど)を記述してください。 | ・第二データセンターへオンラインレプリケーション

・電子ファイルを保管しているクラウドストレージBoxについてはBox社にてリアルタイムバックアップ取得 | Online Replication to a Secondary Data Center in Osaka.

The cloud storage "Box" that stores electronic files takes real-time back-up.
バックアップは別の物理的な場所に保管されていますか? | Yes | Yes
■	「はい」の場合、バックアップの場所を書いてください。 | ・大阪データセンター

・電子ファイルを保管しているクラウドストレージBoxについてはBox社側で北米3拠点に分散保管 | Osaka Data center

The data stored at cloud storage Box is stored at three locations in North America by Box.
*In CMIC Group, we store electronic files in Box.
■	「はい」の場合、復旧/復旧テストの頻度および最近のテスト日を含む詳細をお知らせください。 | ・毎年　2023/9/22

・電子ファイルを保管しているクラウドストレージBoxについてはBox社にて年に1度実施 | Test frequency: Annually, recent test date: 22 Sept 2023

Regarding the cloud storage Box that stores electronic files, recovery test is conducted annually by Box.
タイムスタンプ付きの監査証跡はサーバ用に集中管理されていますか? | Yes | Yes | Please check with the project side regarding systems owned by individual companies.
監査証跡(古いデータ、新規データ、変更者、変更日など)はサーバに保存されていますか? | Yes | Yes | Please check with the project side regarding systems owned by individual companies.
■	「はい」の場合、監査証跡の保存期間を明記してください。 | グループ共通インフラのログは保存期間1年間
Boxログの保存期間は無制限 | The common IT infrastructure of the group is stored for one year.
Logs of Box can be stored for an unlimited time. | Please check with the project side regarding systems owned by individual companies.
貴社が他のベンダーに下請けしている関連ITサービス(例:データセンター、PCメンテナンスなど)を提供してください。 | データセンター
ファイルサーバ（クラウドストレージ Box）
SOC（Security Operation Center） | Data Center
FileServer（Cloud Storage Box）
SOC（Security Operation Center） | Please check with the project side regarding systems owned by individual companies.
セキュリティシステムは定期的に監視されていますか? | Yes | Yes
■	「はい」の場合、詳細を明記してください。 | SOC（Security Operation Center）にて24時間365日の監視を行っている | SOC(Security Operation Center). monitors our network 24/365.
御社にはコンピュータシステムの在庫がありますか?「YES」、「NO」、または「N/A」で回答してください。 | YES
「はい」の場合、リストを提供してください。 | 機密情報となるためリストの提供はできません。
サーバーの所在地はP1記載の会社住所ですか? 「YES」、「NO」、または「N/A」でご回答ください。 | NO
NOの場合、サーバールームの物理的な住所を教えてください。 | 第一データセンター：東京
第二データセンター：大阪
サーバルームの物理サーバについて説明します。 | ・データセンターのサーバは、下記、物理的アクセス管理がされている
　・事前申請や本人確認を含む厳格な入退室管理
　・防犯カメラの設置
　・生体認証や1人ずつしか通れないセキュリティゲートの設置
コンピュータセンターの環境管理の概要を説明してください。 | シミック保有サーバの設置されているデータセンターでは、下記、災害対策が取られており、安全な環境が確保されている。
　・窒素ガスによる火災対策
　・免震構造による地震対策の実施
　・防波堤の設置や、機器の設置階を2階以上にするといった水害対策
　・自家発電設備の設置
サーバールームの温度は電子的に監視されていますか?「YES」、「NO」、または「N/A」で回答してください。 | YES
「はい」の場合、範囲外の温度に対する警報システムについて説明し、情報も提供する。 | 警報装置が設置されております
サーバは非常用電源(バックアップ発電機など)に接続されていますか? 「YES」、「NO」、または「N/A」で応答してください。 | YES
「はい」の場合、非常用電源はどのくらいの頻度でチェックされますか? | ベンダーによって定期的にメンテナンスされている
ウイルス対策のソリューションはありますか?「YES」、「NO」、または「N/A」で回答してください。 | YES
「はい」の場合は、以下の項目にご記入ください:
どのアンチウイルスが使用されていますか? | Cybereason
どのくらいの頻度で更新されますか? | 常に最新版に更新される
アップデートの責任者は誰ですか? | ICT Department
バックアップとリカバリ、およびコンピュータ化された体制が保守にアクセスする手順はあるか?「YES」、「NO」、または「N/A」で回答してください。 | YES
「はい」の場合、手順書の目次に記載されていることを確認するか、コピーを同封してください。 | SOP: Systems Backup and Restoration （GEN-GLSOP-IT06-00）
SOP: Account Creation/ Management and IT Network Access Control（GEN-GLSOP-IT01-00） | SOPの開示が必要な場合は、必要な手続き確認の上、ご対応をお願いします。
システム障害やデータ損失が発生した場合に、すべてのシステムまたは重要なシステムのみのデータがバックアップされているか(たとえば、サーバー上でのレプリケーション、CD/DVD/テープ上でのバックアップなど)。 | YES | データセンターとBoxについて回答しました。受託業務で使用するシステム基盤がクラウドの場合は、受託部門側で確認願います。
以下の質問にお答えください:
バックアップはどのくらいの頻度で実施されますか? | ITインフラ重要サーバー：オンラインレプリケーション
BOX：Box社でリアルタイムバックアップ
※シミックでは電子ファイルをBox社のクラウドストレージBoxに保管しています | データセンターとBoxについて回答しました。受託業務で使用するシステム基盤がクラウドの場合は、受託部門側で確認願います。

ICTで実施しているテープバックアップについてですが、近年クラウドサーバ（Microsoft Azure）への移行が進んでいることもあり、プロジェクトで使用するようなデータはほとんどテープバックアップ対象になっていません。（現在、AS400とType IIIがテープバックアップ対象ですが、Type IIIも現在クラウド移行中となります。ICT管理のITインフラ関連サーバもクラウド移行が進んでおり、テープバックアップ対象に重要なものは含まれていません。災害復旧時に必須となるようなログイン情報などは、テープバックアップではなく、オンラインで大阪にレプリケーションを実施しています。）

そのため、バックアップの頻度として、週に1度のフルバックアップと日毎の差分バックアップを取得という回答は、現状にマッチしていませんので、今後のバックアップに対する回答は左記の回答とさせていただきます。
なお、プロジェクトデータのバックアップの回答が必要な場合は、お手数ですが部門側でご確認をお願いします。
データバックアップはどこに保存されますか? | ＩＴインフラ重要サーバー：第二データセンター（大阪）
BOX（クラウドファイルストレージ）：北米3か所に分散保管
※シミックでは電子ファイルをBox社のクラウドストレージBoxに保管しています | データセンターとBoxについて回答しました。受託業務で使用するシステム基盤がクラウドの場合は、受託部門側で確認願います。
データバックアップを本番サーバーに復元できますか? | YES | データセンターとBoxについて回答しました。受託業務で使用するシステムについては、受託部門側で確認願います。
最後に復元テストを行ったのはいつですか? | シミックデータセンター：2023/9/30
Box：年に1度Box社側で実施
※シミックでは電子ファイルをBox社のクラウドストレージBoxに保管しています | データセンターのリストアテストの実績を記載しました。
受託業務で使用するシステムのリストアテスト実施状況については、部門側で確認ください。
体制がダウンしてデータが復旧しましたか? | ICTとしてはNoになります。
部門側でも受託業務で使用するシステムについてご確認ください。
「はい」の場合、その発生日と関連する状況の説明を提供してください。 | 同上
災害復旧のための手順(すなわち、コンピュータシステムの障害またはデータセンターの損失後に重要なデータを確実に復旧できる予定)がありますか?「YES」、「NO」、または「N/A」で回答してください。 | YES
「はい」の場合、手順書の目次に記載されていることを確認するか、コピーを同封してください。 | The document includes Table of Contents.
提供はできません。
ディザスタリカバリ用のセカンダリサイトはありますか?「YES」、「NO」、または「N/A」で回答してください。 | YES
「はい」の場合、この場所はどこですか? | 大阪
災害復旧手順は、すべてのコンピュータ/電子システム、または重要と考えられるシステムのみを対象としていますか?「YES」、「NO」、または「N/A」で回答してください。 | YES | ICT管轄のITインフラについて回答しました。
受託業務で使用するシステムについては、受託部門側で確認ください
説明をお願いします。 | 災害復旧計画に基づき、災害復旧手順を作成。年に1回ITインフラにおけるDRPテストを実施しています。 | 同上
物理的な場所(貴社のサイト)と災害復旧文書の可用性をクライアント監査チームに指示する。 | DRPはBox上に保管されている。
DRPは監査時に画面共有にて提示可能です。 | 同上
日常の保守、ハード・ソフトの制限等、アプリケーションに関するSOPはありますか?「YES」、「NO」、または「N/A」で回答してください。 | YES | GEN-GLSOP-IT02-00_コンピューターハードウェアおよびソフトウェアの資産管理
お客様のシステムのいずれかを使用して、規制データ(規制当局に送信される可能性のあるデータ)を捕捉、作成、変更、維持、アーカイブ、取得、または送信していますか?「YES」、「NO」、または「N/A」で回答してください。 | 以下、データの取り扱いや、業務で使用するコンピューターシステムに関する質問のため、部門側で回答をお願いします。
NOまたはN/Aの場合、次のセクションに進む。 | 同上
貴社のシステム(コンピュータ、電子)のうち、規制データ(すなわち、規制当局に送られる可能性のあるデータ)の捕捉に使用されているものはどれか。 | 同上
各システムについて、専有システムか商用オフザシェルフ(COTS)かを明記する。COTSについては、利用のためのカスタマイズの実施の有無を明記してください。 | 同上
これらの体制のどれかが電子署名をサポートしていますか? | 同上
これらのシステムは、21 CFR Part 11またはその他の適用される規制要件に従ってバリデーションされているか?「YES」、「NO」、または「N/A」で回答してください。 | 同上
「はい」の場合、どのようなキャパシティか? | 同上
御社の品質マネジメントシステムは、コンピュータ化/電子システムの品質をカバーしていますか?「YES」、「NO」、または「N/A」で回答してください。 | 同上
各システムの物理的な場所(貴社のサイト)とバリデーション文書の入手可能性を示す。 | 同上
御社が提供する製品やサービスの品質に影響を与えると考えられるコンピュータ化/電子化システムをどのように特定していますか? | 同上
これはどのように文書化されているか? | 同上
コンピュータ化/電子化システムのバリデーションのための手順はあるか?「YES」、「NO」、または「N/A」で回答してください。 | 同上
「はい」の場合、手順書の目次に記載されていることを確認するか、コピーを同封してください。 | 同上
コンピュータ化/電子化システムを含む変更管理の手順はあるか?「YES」、「NO」、または「N/A」で回答してください。 | 同上
「はい」の場合、手順書の目次に記載されていることを確認するか、コピーを同封してください。 | 同上
規制対象のコンピュータシステムをサポートするすべてのインフラストラクチャハードウェアおよびソフトウェアについて、設置適格性評価(IQ)、運用適格性評価(OQ)、および性能適格性評価(PQ)の文書がありますか?「YES」、「NO」、または「N/A」で回答してください。 | 同上
バックアップデータからのリストアテスト実施の有無 | あり　
直近のテスト実施日：2023年9月 | ITインフラに関して、ICTにて回答
BoxについてはBox社側でテスト実施
Box以外に使用しているシステムがあれば部門側で確認ください。
バックアップデータからの復旧に要する時間 | RTO（目標復旧時間）：24時間～1週間
RPO（目標復旧時点）：24時間 | あくまでITインフラに関する回答となります。受託業務で使用するシステムのRPO/RTOは異なる可能性がありますので、Box以外に使用しているシステムがあれば部門側で確認ください。
システム設計・開発を第三者委託業者に依頼している場合、業者の管理に関する規定／手順が定められている | 受託業務で使用するシステム設計などを第三者に委託している場合は回答くださいとのことですので、部門側で確認をお願いします。
・システム設計・開発を第三者委託業者に依頼している場合、業者に対する供給者監査を実施している。 | 受託業務で使用するシステム設計などを第三者に委託している場合は回答くださいとのことですので、部門側で確認をお願いします。
・システム設計・開発を第三者委託業者に依頼している場合、業者の品質システムに関する調査を実施している | 受託業務で使用するシステム設計などを第三者に委託している場合は回答くださいとのことですので、部門側で確認をお願いします。
・第三者委託業者からの製品の受入検査方法が定められている | 受託業務で使用するシステム設計などを第三者に委託している場合は回答くださいとのことですので、部門側で確認をお願いします。
御社において、データを送信する際に、非対称暗号化のご利用はございますか。ございましたら、容認されるアルゴリズムとキーの長さはRSA（2048ビット）でしょうか。

JnJのセキュリティ要件として、非対称暗号化の利用が必要で、なお、RSA（2048ビット）が非対称暗号アルゴリズムとキーの長さとしてすべての用途に容認されることです。もし、現在御社の管理体制がJnJの要件に満たしていない場合、Highレベルリスクとして管理されますので、１年以内に改善していただく必要がございますので、改善計画をG欄にご記入いただいて、対応期限をH欄にご記入ください。

また、すでに要件に満たしている場合、その旨をご教示いただけますと幸いです。 | 対応計画：We have used RSA 2048.
JnJのセキュリティ要件として、すべてのワイヤレスアクセス通信セッションは、転送中のすべてのデータの機密性と完全性を保護するため、AES 128, AES 256または3DES 112といったネットワークプロトコルを使用していただく必要がございます。

お手数おかけしますが、改善計画をG欄にご記入いただいて、対応期限をH欄にご記入ください。また、こちらはMediumレベルのリスクですので、対応期限は１年以上に設定していただいても問題ございません。 | 対応計画：VPN is encrypted by TLS-AES-128 or TLS-AES-256.
前回ご回答いただいた内容以外に、DLPツールのご利用はございますか。ご利用がない場合、DLPツールのご利用についてご検討いただけますか。もし、今後DLPツールをご利用いただける場合、改善計画をG欄にご記入いただいて、対応期限をH欄にご記入ください。また、こちらはMediumレベルのリスクですので、対応期限は１年以上に設定していただいても問題ございません。

仮に、ご検討の上、DLPツールの導入が難しい場合、その旨をご教示いただけますと幸いです。 | 対応計画：
We have considered to introduce a DLP tool. However, the exact schedule hasn't been decided yet.
JnJの要件として、以下のハッシュアルゴリズムとダイジェストの長さを使用するものとし、またそれらは指定された以下制限に限っていただく必要がございます。
・SHA-3（256、384、または512ビット）。パスワード以外のすべての暗号化の目的。
・SHA-2（256、384、または512ビット）。パスワード以外のすべての暗号化の目的。

現在御社の管理体制は上記の要件に満たしていますでしょうか。満たしていない場合、改善していただく必要がございます。改善計画をG欄にご記入いただいて、対応期限をH欄にご記入ください。また、こちらはMediumレベルのリスクですので、対応期限は１年以上に設定していただいても問題ございません。 | 改善計画：We have used SHA-2 or SHA-3. SHA-1 is unavailable.
1.1             サービスプロバイダーは、業界標準、もしくはそれ以上のサイバーセキュリティプログラムを作成、実装、維持し、その中に制限はなく、適切なポリシー、ガバナンス構造、人員配置、モニタリングおよび評価の手順を含みます。サービスプロバイダーの書面によるプログラムは、サービスプロバイダーの取締役会または同様の運営団体によって承認され、少なくとも毎年更新されるものとします。 | ○許諾 | グループにITインフラを提供しているCSOL ICT部ではISMSを取得しており、セキュリティに関する体制や内部外部を含めた審査機関の承認を年に1度受けております。
受託部門においてのガバナンスはわかりかねますので、最終回答については受託部門側で確認願います。
2.1             BMSは、サービスプロバイダーがBMSに提供するサービスに関するサイバーセキュリティ評価を、それ自体または認定代理人を通じて実行する権利を留保します。 | ○許諾 | -
2.2             BMSがサイバーセキュリティインシデントが発生した可能性があると適切に判断しない限り、BMSはサイバーセキュリティ評価を年に1回実施する権利を有します。 | ○許諾 | -
2.3             BMSは、サイバーセキュリティインシデントが発生した可能性があると適切に判断しない限り、サービスプロバイダーに対し、サイバーセキュリティ評価の通知を少なくとも10日前までに提供するものとします。 | ○許諾 | -
2.4             サービスプロバイダーは、サイバーセキュリティ評価を実施するために合理的に必要なすべての支援を提供するものとします。 | ○許諾 | -
2.5             BMSは、サイバーセキュリティ評価に関連するBMS側のコストを担当します。いかなる場合でも、BMSは評価に関連するサービスプロバイダー側のコストに対して責任を負いません。 | コストに関する条文なので、部門側で確認願います。
2.6             サービスプロバイダーは、BMSからの要請に応じて外部監査報告書(SOC2など)を提供するものとします。 | ICT部が提供しているITインフラ等においてSOC2レポート等を取得している対象は該当ありません。
2.7             サービスプロバイダーは、特定されたサイバーセキュリティの欠陥を適時に是正するものとします。 | ○許諾
3.1             サービスプロバイダーは、定義された役割と責任を含む包括的なインシデント対応プログラムを有し、潜在的な脅威やインシデントへの監視、検出、対応、および不審な活動や弱点の報告をカバーするものとします。 | ○許諾 | -
3.2             サービスプロバイダーは、適切に、疑われるすべてのサイバーセキュリティインシデントを、発見から24時間以内に BMSサイバーセキュリティオペレーション(cyber.operations@bms.com)に報告するものとします。サービスプロバイダーは、電子メールの通知に次の情報を含める必要がありますが、収集している間、通知を遅延しないようにしなければなりません。 | ○許諾 | セキュリティインシデントはICT部より各受託部門に連絡し、スポンサーへの連絡は受託部門から行っていただいています。
なお、ICTからの通知時間について、明確な定めはないものの、速やかに通知する体制は整えています。
指定連絡先への24時間以内の報告が問題ないかは、受託部門にて確認願います。
·        疑わしいサイバーセキュリティインシデントの性質と範囲の説明 | ○許諾 | -
·        BMSへの契約商品またはサービスの提供に及ぼす潜在的な影響 | 受託に関連する影響度の情報収集は受託部門にて確認願います。
·        影響を受けた対象者や記録の数を含む個人データへの潜在的な影響 | 受託に関連する影響度の情報収集は受託部門にて確認願います。
·        インシデントを軽減し、再発を最小限に抑えるための手順のステータス | ○許諾 | -
·        サイバーセキュリティリーダーおよびデータ保護担当者の氏名と連絡先の詳細 | データ保護責任者＝作成入手した部門の責任者との解釈です。受託部門にて確認願います。
定義：「サイバーセキュリティインシデント」とは、契約した商品やサービスをBMSに提供する能力に影響を及ぼすセキュリティの侵害を意味します。 または サービスプロバイダー、関連会社、およびそれぞれの取締役、役員、従業員、代理人、下請け業者および代表者の所持、保管または管理におけるBMSデータの偶発的または違法な破壊、損失、改ざん、不正な開示、またはアクセスを意味します。「サイバーセキュリティインシデント」には、ログイン試行の失敗、ping、ポートスキャン、最小限の停止によるサービス拒否攻撃、ファイアウォールやネットワークシステムに対するその他のネットワーク攻撃など、BMSデータのセキュリティや契約商品やサービスをBMSに提供する能力を損なわない試みや活動は含まれません。 | サイバーセキュリティインシデントが何を指すか定義したものになりますので、部門側でもご留意ください
3.3             サービスプロバイダーは、すべてのサイバーセキュリティインシデントを速やかに調査し、すべてのインシデントの内部フォレンジック分析と軽減を行うものとします。要請に応じて、サービスプロバイダーは、対応するフォレンジック調査および修復作業の結果に関するBMS中間報告書を提供するものとします | ○許諾 | -
4.1             サービスプロバイダーは、最小権限の原則に従って、適切な職務分掌を持つ権限のあるユーザーのみにシステム アクセスを制限します。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
4.2             サービスプロバイダーは、ユーザーアクセスがユーザーの役割と責任に見合っていることを確認するために、定期的にユーザーアクセスレビューを実行します。 | 棚卸については部門側でご確認ください。
4.3             サービスプロバイダーは、BMS データを保管、送信、アクセス、または処理するシステム、または BMS ネットワークへの直接接続を持つシステムに対して、ユーザーアクセス (特権と非特権) を付与および取消の正式な承認メカニズムを有するものとします。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
4.4             サービスプロバイダーは、IT システムの継続的なサポートと保守を担当する IT 部門内の適切なユーザーに対して特権的および管理者のアクセスを制限します。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
4.5             サービスプロバイダーは、業界の最も評価のある手法に沿ったパスワード管理ポリシーを使用して、強力なパスワード構成要件を適用します。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
4.6             サービスプロバイダーは、一般的なブルートフォース(総当たり)攻撃、パスワードクラッキングツール、デフォルトパスワード、辞書攻撃などの悪用によって、ユーザー アカウントが侵害されないように効果的に保護する強力な認証プロトコルを採用しています。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
5.1             サービスプロバイダーは、ファイアウォールおよびその他のネットワーク境界デバイスを構成して、内部ネットワークへのすべてのアクセスを拒否し、定義されたルールに基づいたトラフィックのみを許可します。 | ○許諾 | -
5.2             サービスプロバイダーは、ネットワーク侵入検知/防御技術を展開して、異常なネットワーク活動を監視および検出します。 | ○許諾 | -
5.3             サービスプロバイダーは、BMS に提供されるサービスをサポートするネットワーク上で外部ネットワークの脆弱性評価/侵入テストを実行し、外部ネットワーク脆弱性評価/侵入テストで特定されたすべての問題点と調査結果を完了まで追跡します。 | △一部許諾 | ICTでは年に1度、外部公開アプリケーションに対する脆弱性診断を実施し、発見された脆弱性（セキュリティ上の問題点）の是正措置を実施しています。
ただし、侵入テストは実施していません。どちらも実施されている必要があるということであれば、「侵入テスト」の文言は必要に応じて削除をご検討ください
5.4             サービスプロバイダーは、BMS データおよびシステムにリモートアクセスするすべてのユーザーに対して、VPN および多段階認証を実装し、保守します。 | ○許諾 | ICT部が提供しているリモートアクセス（Forticlient）については問題ありません。
それ以外に、クライアントデータおよびシステムに接続するためのリモートアクセス環境がある場合は、部門側でもご確認ください。
6.1             サービスプロバイダーは、BMSデータを保存、送信、アクセス、処理する第三者の完全なインベントリを保持します。このインベントリは、サード パーティが提供する各サービスセット、およびアクセスできるシステムとデータに固有のリスク評価を追跡します。 | 受託業務におけるベンダー管理に関する質問です。受託部門にて確認願います。
6.2             サービスプロバイダーは、第三者とサービスプロバイダーとの間の契約に記載されているセキュリティ要件を第三者が遵守し、BMSからの要請に応じてサブコントラクターの適正評価手続きへのコンプライアンスの書面による確認を提供するものとします。 | 受託業務におけるベンダー管理に関する質問です。受託部門にて確認願います。
6.3             サービスプロバイダーには、正式な第三者リスク管理ポリシー、またはサードパーティプロバイダーのオンボーディング、監視、および終了を含む同等のポリシー/手順があります。 | 受託業務におけるベンダー管理に関する質問です。受託部門にて確認願います。
7.1             サービスプロバイダーは、すべてのソフトウェアの正確かつ最新のインベントリを維持します。 | ○許諾 | ICT管轄のPC、サーバについては問題ありません。
それ以外の部門保有の資産がある場合は、部門側でご確認ください。
7.2             サービスプロバイダーは、再利用または廃棄の前に電子メディアの無害化のために、安全な廃棄手順を維持します。 | ○許諾 | ICT管轄のPC、サーバについては問題ありません。
部門管理の電子メディア（外部記憶媒体など）の廃棄手順については、受託部門側でご確認ください。
7.3             サービスプロバイダーは、すべてのサーバー、エンドポイントなどに関する文書化されたセキュリティ強化標準を維持します。 | ○許諾 | グループ共通インフラについては情報セキュリティ対策標準にてカバーされています。
それ以外の部門保有の資産がある場合は、部門側でご確認ください。
8.1             サービスプロバイダーは、BMS データが保管中および転送中に暗号化されたままであることを保証します。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
8.2             サービスプロバイダーは、パッチ管理ポリシーを維持し、パッチ管理ポリシーで確立された重要レベルとタイムラインに基づいてパッチを展開します。 | ○許諾 | グループ共通インフラに関しては問題ありません。
それ以外に受託業務で利用するシステムがある場合は、部門側でもご確認ください。
8.3             サービスプロバイダーは、すべてのエンドポイント (サーバー、ワークステーション、モバイル デバイスなど) にマルウェア対策/ウイルス対策 (AV) 保護を展開します。サービスプロバイダーは、マルウェアとウイルスのシグネチャが自動的に更新されるように AV ポリシーを構成し、リアルタイムの検出を有効にして、悪意のあるソフトウェアやファイルをできるだけ早く特定して検出できるようにします。また、ユーザーは、AV ソフトウェアのポリシー設定を無効にしたり調整したりすることはできません。 | ○許諾 | ICT管轄のPC、サーバはウイルス対策ソフトを導入しております。更新は自動適用され、ユーザーはポリシー設定の変更はできないため問題ありません。
それ以外の部門保有のPC、サーバがある場合は、部門側でご確認ください。
8.4             サービスプロバイダーは、BMS データの不正な送信または漏えいを防ぐためにデータ損失防止 (DLP) ソリューションを展開します。 | ○許諾 | 各種データ漏洩防止対策を講じているため問題ありません。
・外部記憶媒体の使用制限
・PCログの取得と監視（印刷、ファイルアップロードなど）
8.5             サービスプロバイダーは、インターネット コンテンツ フィルタリング ソリューションを展開して、業務に関連のないWeb サイト (ソーシャル ネットワーキング、個人用電子メール、データ共有など) へのアクセスを制限します。 | ○許諾 | 業務と関係の無いサイトの閲覧はシステムにより制限しているので問題ありません
8.6             サービスプロバイダーは、高リスクのファイルの種類 (実行可能ファイルなど) を含む受信メールを削除または検疫する電子メール コンテンツ フィルター メカニズムを実装および維持します。 | ○許諾 | メールフィルタ機能を導入しているので問題ありません
8.7             サービスプロバイダーは、BMS に提供されるサービスをサポートするすべてのシステムについて、ネットワークおよびホストレベルで活動をログに記録およびモニターします。 | ○許諾 | ICT管轄のサーバやネットワークのログを取得し、外部ベンダーにて24時間365日監視しているため、問題ありません。
それ以外の部門管理のPC、サーバがある場合は、部門側でご確認ください
9.1             安全なコーディング標準が文書化されており、すべての開発者は、安全なコーディングの手法とテクニックについて正式にトレーニングを受けています。これには、コメント/ヘッダー情報に機密性の高いアーキテクチャの秘密の公開を禁止、暗号化キーとアクセス資格情報のハードコーディング、既知の脆弱性を持つサードパーティのコード フレームワークとリポジトリの使用を回避する、適切なセキュリティ テストの実施と承認などのコーディング標準が含まれます。 | ICT部自体がシステムの開発行為を行うことはありませんので、受託部門にて確認願います。
9.2             サービスプロバイダーは、アプリケーション侵入テストまたは脆弱性スキャンを実行して、BMS に提供されるサービスのスコープ内で、アプリケーションの一般的な脆弱性またはセキュリティ上の欠陥を特定します。サービスプロバイダーは、修復計画を策定し、外部ネットワークの脆弱性評価/侵入テストで特定されたすべての問題と調査結果を完了まで追跡します。 | ○許諾 | Boxについては、Box社にて侵入テストが実施されています。（https://www.box.com/ja-jp/trust）
それ以外の部門で利用するアプリケーションに関しては部門側でご確認ください。
9.3             サービスプロバイダーは、低い開発およびテスト環境での本番データの使用を禁止し、最小限の特権の原則に従って、データを効果的に知る必要のある基準で管理し、不適切な情報開示から保護します。 | ICT部自体がシステムの開発行為を行うことはありませんので、受託部門にて確認願います。
9.4             サービスプロバイダーは、脆弱性を制限し、一般的な攻撃や攻撃に対するセキュリティを強化するために、アプリケーションを安全に開発、実装、および保守します。 | ICT部自体がシステムの開発行為を行うことはありませんので、受託部門にて確認願います。
10.1          サービスプロバイダーには、組織の物理的なセキュリティと、さまざまな施設関連のログの保存期間を制御する物理的なセキュリティ ポリシーがあります。 | ○許諾 | データセンターについては入退室管理があり、記録されています。
オフィスなどの施設のログ取得状況については、部門側で確認願います。
10.2          サービスプロバイダーは、施設全体の重要なエントリポイントとチェックポイントにCCTVカメラを配備し、少なくとも30日間映像を保持しています。 | ○許諾 | データセンターについてはカメラが設置されています。（保存期間は90日間）
オフィスなどの施設のカメラ設置状況については、部門側で確認願います
10.3          サービスプロバイダーは、施設への無人の物理的アクセスを許可されているすべてのスタッフに対して、物理的 ID (バッジまたはスマート カード) を発行します。サービスプロバイダーの物理的なセキュリティチームは、スタッフの部門と職務に従って最低限の特権の原則に基づいて、組織の施設の指定された領域へのアクセスを規定します。物理的なセキュリティのチームは、人事 (HR) (またはコントラクターの仕入先管理オフィス )からの承認を受けた後、バッジを発行し、物理的なアクセスを支給するだけです。さらに、組織は、必要に応じてアクセスを厳しく取消します。 | ○許諾 | データセンターについては問題ありません。（ICTの中でも限られたスタッフしかアクセス権を持っていません。データセンターの入館には、事前申請が必要で本人確認後入室可能なICカードが貸与される）
オフィスなどの施設のアクセス権については、部門側で確認願います。
11.1          サービスプロバイダーは、組織の情報セキュリティ ポリシー、手順、および標準に関する内部および外部の関係者を教育する正式な情報セキュリティトレーニングおよび意識向上プログラムを維持します。トレーニングと意識向上プログラムは、(a) 一般的なユーザートレーニングと(b) デリケートなビジネスおよび IT の役割 (たとえば、エグゼクティブ リーダー、IT システムおよびデータベース管理者、開発者など) の利害関係者のための役割ごとのセキュリティ トレーニングで構成されます。 | ○許諾 | IS-S04_情報セキュリティ教育に関する標準にセキュリティ教育について定めているが、具体的な教育プログラムおよび実施については各部門にて管理している為、受託部門にて確認願います。
（ユーザートレーニングは、情報セキュリティ研修が該当するかと思います
12.1          サービスプロバイダーは、ガバナンス機能を確立して、効果的で持続可能なクラウド管理プロセスを確保し、業界標準に沿った情報セキュリティの決定、責任、運用の透明性を確保するものとします。 | ○許諾 | ICT部管轄のクラウド(Azure)を含むシステム導入の際はセキュリティに関するチェックシートを用いて、承認を経て導入しています。
それ以外のベンダー提供のクラウド環境を利用される場合は部門側で確認願います。
12.2          サービスプロバイダーは、クラウド内の残りのデータおよび転送中のすべての BMS データを暗号化します。 | ○許諾 | ICT管轄のBoxについては問題ありません。
それ以外のベンダー提供のクラウド環境を利用される場合は部門側で確認願います。
12.3          サービスプロバイダーは、クラウドで BMS データを暗号化するために使用される暗号化キーにアクセス、保存、または破棄するための正式なメカニズムを確立しています。 | ○許諾 | ICT管轄のBoxについては問題ありません。
それ以外のベンダー提供のクラウド環境を利用される場合は部門側で確認願います。
12.4          サービスプロバイダーは、クラウド サービスとインフラストラクチャを通じて保存、処理、および送信されるシステムとデータを保護します。 | ○許諾 | ICT管轄のBoxについては問題ありません。
それ以外のベンダー提供のクラウド環境を利用される場合は部門側で確認願います。
個人情報が記録された端末、サーバ機器等の設置場所について、以下の物理的セキュリティ対策を講じているか。
①サーバ室等設置場所に対する入退室管理
②盗難対策
③情報漏洩対策 | YES
サーバ機器：データセンターは事前申請によるカード認証、生体認証、サークルゲートにより1人ずつ入退室を電子的に管理・記録します。
端末：執務室内はクリアデスクを徹底し、PC（従業員1人　1台）は退社時、個人ロッカーに入れて施錠します。
下記により個人情報に対するアクセス権限を制限しているか
①必要最低限のアクセス権限付与
②アクセス権限見直し
③ID・パスワードの不正利用防止策整備 | YES
IS-S06_セキュリティ機能に関する標準にて定めている | Boxのアクセス権や個社部門保有システムのアカウント管理・アクセス管理手順について問われた場合は、部門側で確認ください。
個人情報を取り扱う情報システムを使用する従業者が正当なアクセス権を有する者であることを、ユーザーID、パスワード、磁気・ICカード等により識別した結果に基づき認証しているか | YES
BoxについてはSSOによる認証 | Boxについて回答しました。
その他、受託業務で使用するシステムの認証方法については、部門側で確認ください
個人情報・特定個人情報等が記録された端末、サーバ機器等に対して、ウイルス等の不正なソフトウェアから保護対策を講じているか。 | ウイルス対策ソフトのパターンファイルの適宜更新、Windows Updateの自動適用
外部からネットワークへの不正アクセスを防止するために下記の対策等を講じているか。
①外部ネットワークとの接続箇所にファイアウォール等を設置している
②端末等にセキュリティ対策ソフトウェア等を導入している
③ソフトウェアを常に最新状態に更新している | ・ファイアーウォール、IPS/IDSの導入
・Webフィルタリング、メールフィルタリングの導入
・SOCによる24時間365日の監視
・PC/サーバへのウイルス対策ソフト・EDRの導入および適宜アップデート
個人情報を含む情報の通信を行う場合は、暗号化やパスワード等で通信経路における情報漏洩対策を講じているか。 | リモートアクセス時はVPN接続による暗号化を実施
Boxについては、転送中はTLS1.2以上、保存時はAES256方式で暗号化されています。 | Box、VPN接続時の暗号化について回答
その他、受託業務で使用するシステムの暗号化状況については、部門側で確認ください
下記の要件に基づき、オンサイト施設およびGCP契約サービスをサポートするローカルなコンピューターシステムの全ての現行版のビジネス継続計画と/または災害復旧計画を提供してください。 
以下の内容を含めてください：
 ・前述の計画をサポートするために過去2年間に実施されたテストに関する文書 | 以下文書がありますが、事前の提供は不可となります。監査当日に投影は可能です。
・災害復旧計画
・DC切り替えテスト結果記録 | ・左記文書は、ITインフラに関する復旧計画です。業務システムを含めたBCPおよび復旧計画は受託部門側でご回答お願いします
・また、ファイルサーバはクラウド移行しているためICTでは現在切替テスト等実施していません
・ITインフラストラクチャとデスクサイドサポートを提供している企業または組織の明示 | シミックソリューションズ ICT部（サポート範囲はITインフラ関連） | ・受託業務システムのサポート組織・窓口については受託部門側でご回答お願いします
企業および個々の従業員レベルでのITセキュリティの維持方法について、データの不正アクセスを防止するための概要をお知らせください。たとえば、個々のパスワード保護、バックアップ手順、バックアップサーバーの場所、ファイアウォールやウイルス対策などが挙げられます。 | ・ファイアーウォール、IPS/IDSの導入
・Webフィルタリング、メールフィルタリングの導入
・SOCによる24時間365日の監視
・全てのPC/サーバにウイルス対策ソフトとEDRを導入 | ・Firewall, IPS/IDS
・Installation of Web filtering and e-mail filtering
・24/7 monitoring by SOC
・Anti-virus software and EDR installed on all PCs and servers | ICTにて回答
施設内でのITサーバーの配置場所と、セキュリティとアクセスに関する手順について詳細を提供してください。 | シミックグループで電子ファイル保管に使用しているファイルストレージBoxは、Box社提供のクラウドサービスです。 | File storage Box, used by CMIC Group for electronic file storage, is a cloud service provided by Box, Inc. | タイトルがComputerized Systemとなっており、シミックDC内のサーバはスコープ外かと思いましたので、左記回答としています。
サードパーティのベンダー施設にサーバーを保管している場合は、これらの施設の評価プロセスの詳細を提供してください。最終監査の頻度と日付も含めてください。 | Box
Box側でSOC2を取得している | Box has obtained SOC2 report. | ICTにてBoxについて回答
シミックからの評価という意味では、丸紅ITソリューションズに対しての5年に1度ベンダー評価を実施しています。（直近：2020年5月）

コールセンターについてはCHI側で確認ください。
システム内のデータのバックアップと復元に関するポリシーの概要を提供してください。このデータがアーカイブされている場合、現場に保存されていますか、それとも別の場所に保存されていますか？ | Box
Box側でバックアップと復元を実施 | Backup and restore are implemented by Box | ICTにてBoxについて回答

コールセンターについてはCHI側で確認ください。
テスト復元はどのくらいの頻度で実施されますか？ | Box
Box側で年に1度実施 | Implemented by Box annually | 同上
最後のテスト復元はいつ行われましたか？ 成功しましたか？ | Box
Box側で実施 | Implemented by Box | 同上
EUデータ保護指令、GDPR、その他の適用される国家法規、プライバシー規則、規制および法的遵守に従うためのポリシーとプロセスを保護するために、どのようなポリシーとプロセスを導入していますか？ | 規制要件への対応については、部門側で確認ください。
お使いのシステムはGDPRに準拠していますか | 同上
Box自体には、GDPRに準拠した機能が存在します。https://support.box.com/hc/ja/articles/360043692094-%E4%B8%80%E8%88%AC%E3%83%87%E3%83%BC%E3%82%BF%E4%BF%9D%E8%AD%B7%E8%A6%8F%E5%89%87-GDPR-%E3%81%B8%E3%81%AE%E6%BA%96%E6%8B%A0
IT接続ソリューションの詳細を提供してください。 （電子商取引、安全な情報交換などを考慮し、オプションでカバーされていない場合は、その他の詳細も記載してください。） | シミック各拠点のネットワークは、第1データセンターに接続されています。
社外からリモートアクセスする場合は、VPN接続により安全性を確保しています。 | The network of each CMIC office is connected to the 1st Data Center.
Remote access from outside the company is secured by a VPN connection. | シミックネットワークという観点でICTで回答しましたが、今回の業務には該当しないと思われる場合は回答削除ください。
これらの電子システムのいずれかでレコードが効果的に署名されていますか？
 もし「はい」の場合、署名が関連する人物によってのみ追加され、文書と本質的に関連付けられることを確認するために署名が制御される方法、および21 CFR Part 11に準拠する方法についての詳細を提供してください。 | Part 11への対応については、部門側で確認ください。
コンピューターシステムの検証（CSV）プロセスの概要を提供してください。これにはシステム開発ライフサイクルが含まれます。 | CHIで該当する手順を確認ください。
システム/バージョンの更新の検証とドキュメント化のプロセスの詳細を提供してください。 | 同上
21 CFR Part 11への準拠が必要なシステムの検証文書を生成していますか？ 0 はい もし「はい」の場合、コピーを提供してください | Part 11への対応については、部門側で確認ください。
各システムのCSV文書はどこに保存されていますか？ | CHIで該当する手順を確認の上、回答ください。
文書は通常どのくらいの期間保持され、アーカイブに移された後はどのようになりますか？ | 同上
CSV文書はリモートでレビューできますか？ | はい
監査時の画面提示であれば可能です。 | Yes
We'll share the documents on a screen during an audit. | Boxについて回答
サードパーティー/サプライヤーは、機密性、制限された情報、または所有情報をどのようにアクセス、保存、転送、または処理しますか？ | 選択肢：
Offsite via Labcorp VPN (Labcorp Desktop/Laptop)
Onsite at Labcorp (Non-Labcorp issued computer)
Onsite via Labcorp Desktop/Laptop
Via Third Party Supplier Network/Systems/Facilities
File Transfer (SFTP, etc.)
Web Portal
Other (Describe)
If other, please describe further: | どのように受託データを扱うかはICTではわからないため、業務実施部門にて確認ください
9.	受領者は、開示者が要求した場合は、特段の協議がない限り、開示者の秘密情報が記録された有体物（複製物又は複写物を含む。）を遅滞なく開示者に返還する。ただし、受領者は、適用される法令の遵守のために保有する秘密情報及びコンピュータシステム上 のバックアップデバイスに残存する秘密情報については、本条に基づく義務を遵守した上で保有することができる。 | 法務コメント
【社内メモ】20240319
通常、バックアップ情報は消すことができないので義務遵守の上、保有できるとすることが多いです。ICT部に削除が可能か確認し、不可能な場合、先方に復活を提案してみてください。

【ICTコメント】
全社共通ITインフラ前提（Azure環境やテープバックアップも含む）とした場合、特定クライアントのデータ削除は不可となります。また、実際の業務で使用するシステムも未定ということですので、法務コメントの通り「コンピュータシステム上 のバックアップデバイスに残存する秘密情報について」は、残していただいた方が良いかと思います。 | 田所さんに確認

バックアップですが、Azureバックアップはサーバ全体を取得するので、そのバックアップデータの中から特定のファイルだけ削除することはできないです。

※バックアップ世代の保持
サーバによるが、だいたい1週間ぐらい
21CFR Part 11 に遵守するためのアプローチを説明してください。 | 受託部門にてご確認ください
顧客のネットワークと内部ネットワーク間の物理的な接続性と、その維持方法について説明する。 | シミックグループのネットワークとクライアントのネットワークは物理的に分離されている
ユーザー(従業員、請負業者、コンサルタント)にネットワークへのリモートアクセスを許可していますか? | はい | Yes
「はい」の場合、システムセキュリティがどのように維持されているかを説明してください | ・社外から社内ネットワークへ接続する際は、VPN接続が必要である。
・社内ネットワーク接続時は,ID/PWの他,主体認証による複数要素認証を実施している
・VPN接続による暗号化で、通信が保護されている。 | ・When connecting from outside the company to the internal network, a VPN connection is required.
・When connecting to the internal network, in addition to ID/PW, we implement multi-factor authentication using identity authentication.
・Communications are protected through encryption provided by the VPN connection.
自動化されたデータ収集システムはありますか? | 受託部門にてご確認ください
はいの場合、体制を一覧表示します。体制のバリデーション状況、および体制が21 CFR Part 11に準拠しているかどうかを示す。 | 受託部門にてご確認ください
データのバックアッププロセスはありますか? | はい | Yes | ICTで管轄するBoxに関して回答しました。
受託業務で使用するデータのバックアッププロセスについては、受託部門側で確認願います。
「はい」の場合、そのプロセスとバックアップの実施頻度を説明する。 | クラウドストレージBox：
・北米3か所のサーバーで分散保管
・リアルタイムバックアップ | Cloud storage Box:
・Data is stored in three locations in North America for redundancy.
・Real-time backups are performed. | ICTで管轄するBoxに関して回答しました。
受託業務で使用するデータのバックアッププロセスについては、受託部門側で確認願います。
復元機能をテストしていますか? | はい | Yes | 受託業務で使用するシステムのリストアテストについては、受託部門側で確認願います。
「はい」の場合、そのプロセスとテストリストアを実行する頻度を説明してください。 | ・ITインフラのリストアテストは年に一度実施
・BoxのリストアテストはBox社にて年に一度実施 | ・The IT infrastructure restore test is conducted once a year.
・The Box restore test is conducted once a year at Box Inc. | 受託業務で使用するシステムのリストアテストについては、受託部門側で確認願います。
御社が過去3年間に行ったテクノロジーへの投資は何ですか？
また、それらは御社の業績にどのような付加価値をもたらしましたか？ | 弊社では、1)サーバーのクラウド移行、2)サイバーセキュリティ対策強化、3)RPA/生成AIへリソースを投資しました。
 
1)クラウドインフラの活用により、柔軟性の向上、拡張性の向上、対応スピードが向上しました。
2)セキュリティ強化によるリスクの軽減により、信頼性の向上、競争力の向上に貢献することができました。
3)RPA/生成AIの活用により、業務の自動化や効率化により、工数削減、人的エラーの低減、業務プロセス改善の効果を得ることができました。 | In our company, we have invested resources in 1) server cloud migration, 2) strengthening cybersecurity measures, and 3) RPA/Generative AI.


1) By leveraging cloud infrastructure, we were able to improve flexibility, scalability, and response speed.
2) By strengthening security measures, we were able to reduce risks, enhance reliability, and improve competitiveness.
3) By utilizing RPA/Generative AI, we were able to automate and streamline tasks, resulting in reduced man-hours, decreased human errors, and improvements in business processes. | あくまでICT部としての回答になりますので、受託個社としてテクノロジーへの投資は受託部門側でご回答お願いします
9.	受領者は、開示者が要求した場合は、特段の協議がない限り、開示者の秘密情報が記録された有体物（複製物又は複写物を含む。）を遅滞なく開示者に返還する。ただし、受領者は、適用される法令の遵守のために保有する秘密情報及びコンピュータシステム上 のバックアップデバイスに残存する秘密情報については、本条に基づく義務を遵守した上で保有することができる。 | 法務コメント
【社内メモ】20240319
通常、バックアップ情報は消すことができないので義務遵守の上、保有できるとすることが多いです。ICT部に削除が可能か確認し、不可能な場合、先方に復活を提案してみてください。

【ICTコメント】
全社共通ITインフラ前提（Azure環境やテープバックアップも含む）とした場合、特定クライアントのデータ削除は不可となります。また、実際の業務で使用するシステムも未定ということですので、法務コメントの通り「コンピュータシステム上 のバックアップデバイスに残存する秘密情報について」は、残していただいた方が良いかと思います。 | 田所さんに確認

バックアップですが、Azureバックアップはサーバ全体を取得するので、そのバックアップデータの中から特定のファイルだけ削除することはできないです。

※バックアップ世代の保持
サーバによるが、だいたい1週間ぐらい
災害の場合、データをどのように再構築することができますか？ | クラウドストレージのBoxは、リアルタイムバックアップで北米3か所に分散保管されています。災害時はBox社にて復旧対応をおこないます | Box, the cloud storage service, is distributed across three locations in North America with real-time backups. In case of a disaster, Box company will handle the recovery process. | Boxについて記載しました。Box以外の災害時のデータ再構築に関しては受託部門にてご確認をお願いします。
過去2年間で貴社は何回のダウンタイムを経験しましたか？ | 過去2年間、ダウンタイムは発生していません | The organization has not suffered downtime in the last 2 years. | ICT管轄では該当する事象は発生していません。
受託業務におけるシステムにおいて、サービス提供できなくなった事例がないかは、受託部門側で確認願います。
ビジネス継続計画は定期的にテストされていますか？

最後の復旧対応はいつ行われ、その結果は何でしたか？ | はい

毎年　2023/9/30 | Yes

Test frequency: Annually, recent test date: 30 Sept 2023 | ・ITインフラ基盤はICT部にて、年に1回、第一データセンターから第二データセンターへの切り替えテストを実施しており、その実施日を記載しました
・BoxはBox社にて、年に1回復旧テストを実施

それ以外の業務システムを含めたBCPの定期テストに関しては受託部門ご確認お願いします。
IT System Name
情報システム名 | Box
Company Name who built this IT system
情報システムを構築した会社名 | Box, Inc.
Company Name who serves this system, if applicable
（該当する場合）サービスベンダー名 | 丸紅ITソリューションズ
The company contracted with the service vendor, if applicable. (your company or another?)
当該ベンダーとの契約は貴社とですか？ | Yes
How and when did you assess this vendor(s)?
この（これらの）ベンダーをいつ、どのように評価しましたか？ | 2020年9月11日
ベンダーの記入したVendor Qualification Formを評価することにより | CMIC株SOPに基づき評価
Has your company assessed this system and this vendor(s) as per your applicable procedure(s)?
Is the procedure to assess a vendor/an IT vendor in your company? 
この（これらの）ベンダーは、貴社内の手順に従い、評価しましたか？（ベンダー評価の手順はありますか？） | Yes | 同上
Do your company have an Information Security Policy?
Could you please explain or provide the outline of your security policy?
貴社は、情報セキュリティポリシーを定めていますか？
セキュリティポリシーの概略を説明又は提供いただけますか？ | Yes

シミックグループ情報セキュリティ方針は下記より確認ください
https://www.cmicgroup.com/files/user/policy/Information-Security-Policy.pdf
Do your company or the applicable IT vendor(s) have any currently valid authentication/certificate by third party(ies)?
貴社及び/又は当該ベンダーは、第三者による評価や情報セキュリティに関する現在有効な認証を取得していますか？ | Yes
BoxはISO27001を取得している | ICTも取得しているが、貴社＝CHIは取得していないので、ここでは記載しない
Please explain the required IT environment to use this IT system, e.g., conditions for browser (including version), OS (version), protocol, and port(s), if applicable.
当該情報システムを利用するためのIT環境について説明してください。
例）ブラウザ、OSの条件、プロトコルやポートの条件 | OSは、Windows, Windows Server, macOS, Android, iOS, iPadOSの直近2つのリリースバージョンに対応しています。
ブラウザは、Microsoft Edge, Safari, Firefox, Chromeの直近2つのリリースバージョンに対応しています。
https://support.box.com/hc/ja/articles/360043696234-%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6%E3%81%A8OS%E3%81%AE%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88%E3%81%AB%E5%AF%BE%E3%81%99%E3%82%8BBox%E3%81%AE%E3%83%9D%E3%83%AA%E3%82%B7%E3%83%BC%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6
May this IT system (server) ONLY use a secure way for sharing files with encryption technology (e.g. https)? 

当該情報システムへのアクセスは、セキュアな方法（https等の暗号化）でのみを利用可能ですか。 | はい、ただし、安全性が低下したと見なされる従来のSSL暗号は廃止しています。
https://support.box.com/hc/ja/articles/14648229890195-%E5%BE%93%E6%9D%A5%E3%81%AESSL%E6%9A%97%E5%8F%B7%E3%81%AE%E5%85%AC%E5%BC%8F%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88%E7%B5%82%E4%BA%86%E3%81%AE%E3%81%94%E6%A1%88%E5%86%85
Do you manage and control user access to this IT system used for file sharing with SMP to prevent unauthorized access by other than relevant people? 

（SMPとの共用する）当該情報システムへのアクセスは、関係者以外がアクセスできないように、アクセス制御されますか。 | 運用に関する質問のため、部門側で確認ください
Is this IT system managed, especially for management of user ID and access rights, by your company?

当該情報システムのID及びアクセス権の管理は、貴社が行いますか。 | 運用に関する質問のため、部門側で確認ください
Please explain any compliance rules or relevant requirements on the network for SMP to access this IT system. 
SMPが当該情報システムへアクセスするためのネットワーク上の順守事項・要求事項があれば、説明ください。 | もしファイアウォールで特定のドメインへのhttpsアクセスを制限している場合は、許可いただく必要があります。
https://support.box.com/hc/ja/articles/360043696434-Box%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E7%94%A8%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%82%A2%E3%82%A6%E3%82%A9%E3%83%BC%E3%83%AB%E3%81%AE%E8%A8%AD%E5%AE%9A
Please explain the Authentication method of this IT system for SMP staff to sign in, e.g. multi-factor authentication.
SMP が当該情報システムにサインインする際の認証方式（例えば、多要素認証）を説明ください。 | SMP側でもBoxを使用している場合、その認証方式が優先されます。
そうでない場合、SMS/メールで認証コードを送付
Please explain a procedure to prevent any cyber-attack or vulnerability of security for this IT system.
当該情報システムに対するサイバー攻撃対策やセキュリティの脆弱性対策について説明ください。 | 以下をBox側で実施
-脆弱性検査の年次実施
-脆弱性パッチのタイムリーな適用
-SOCによる24/365監視
-公開用サーバとストレージの物理分離
Will you NOT request SMP staff to entry SMP’s information or upload any file via this IT system?
当該情報システムを用いて、SMPの情報を登録又はファイルのアップロードを要求しないですか。 | 運用に関する質問のため、部門側で確認ください
Has this IT system been validated (CSVed) ?

当該情報システムは、検証（CSV）された。 | Yes | CMIC株SOPに基づきバリデーション実施済み
Is this IT system maintained to keep the validated state?

当該情報システムは、検証状態の維持管理がされている。 | Yes | 同上
Are the files/data sharing with SMP a part of your deliverables as original copy or certified copy?

利用するシステムは、貴社のoriginal 文書を管理するシステムであり、貴社の成果物としてOriginal copy、true copy （又はcertified copy）である。 | 運用に関する質問のため、部門側で確認ください
Are the files/data providing to SMP your original copies, true copy/certified copies?

利用するシステムを介して、SMPへ提供される電子ファイル又はデータは、Original copy、true copy （又はcertified copy）である。 | 運用に関する質問のため、部門側で確認ください
