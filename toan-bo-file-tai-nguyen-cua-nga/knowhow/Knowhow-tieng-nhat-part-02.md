# Knowhow-tieng-nhat (part 02)



---
**Nguồn:** `Kinh nghiệm PM\[Edu] バグ報告シートオータケ・テスト確認用_bug report sample.xlsx`

## Sheet: UAT
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Tạo set Cuộc sống thường ngày | Otake | 22/7 | Closed | Trên môi trường production, khách thực hiện đăng lý Set cuộc sống thường ngày, và có up file PDF 100 MB tại step Up tài liệu giải thích thêm.
Khách thấy phát sinh lỗi bên dưới. Mọi người xem trường hợp này thì xử lý như nào nha.
Thiết bị phát sinh:
iMac với acc là
t_ohtake@ohtake-edu.com  nhé.
Ảnh tham khảo
https://drive.google.com/drive/u/0/folders/1XWaiFZozKk5JITH3Va3jFLkXToCaC50z | OK
2.0 | Phát video trong Set cuộc sống thường ngày | Otake | 22/7 | Closed | Tiếp theo lại có thêm một tình trạng nữa liên quan đến dung lượng như sau:
Khi tạo mới set cuộc sống thường ngày với data video gần 100Mb, sau đó gọi set từ list digital tool thì trên ASUS sẽ có thể phát được, nhưng chrome thì không thể phát.
Môi trường thật tôi đã tạo sẵn set có tên 「動画100MB」rồi, bạn thử luôn giúp tôi nhé | OK
3.0 | Không filter item nhỏ trong CUộc sống thường ngày | Otake | 23/7 | High | Closed | Khi thực hiện theo bước sau thì bị lỗi. Nhờ mn fix gấp
Màn hình quản lý→Digital tool→Chức năng search bên phải phía trên→Cuộc sống thường ngày→sau khi chọn item lớn thì chức năng filter item nhỏ không hoạt động
Video tham khảo:
https://drive.google.com/file/d/16oFKHnAKrH3mNRvlyJPmdA2gjt_LKuch/view?usp=drive_link | OK
4.0 | Bug hình đã vẽ bị biến mất | No 55
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=68:68 | Otake | 28/8 | High | 24.9.25 Fujihara
Tôi pending bug này vì độ ưu tiên của CRt/No,3 4 5 cao hơn.
Chưa quyết định khi nào sẽ open lại bug này.
-----------------
※Bug này không phải bug phát hiện khi thực hiện theo check list nên tôi sẽ liệt kê step cụ thể bên dưới.
Nội dung bug
5.0 | Setting ký tự nhập bị reset | Line 97
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=97:97 | Otake | 30/10 | High | Closed | Xem sheet "No7"
（障害状況報告書(スペースを押したあとに色々変換すると文字表示がバグる）再検証）
-------
2024/11/6: Khách confirm OK | 11/1 Fujihara
Đã xác nhận việc fix bug trên môi trường phát triển.
Tôi sẽ xác nhận liên lạc từ Nga san.
＊Nếu hoàn thành việc fix xong thì tôi sẽ xác nhận trên môi trường STG.
---------------------------
GiangPT 10/30: 
- Bug này bên mình đã tái hiện được. 
- Bên mình nhận định bug này không thuộc UAT của CR 7 No 3 4 5, nên nhờ khách hàng move ra khỏi sheet UAT CR & No  3 4 5
- Tuy nhiên, để cho sản phẩm tốt hơn, bên mình sẽ vẫn fix bug này trong giai đoạn này. | OK | Là bug https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=550362903#gid=550362903&range=8:8

[CR7 No 3 4 5」Otake test Dev No 7
6.0 | Lỗi vô hạn khi sử dụng ghi chú | No 78
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=99:99 | Otake | 2024-07-11 00:00:00 | Medium | Closed | Lỗi ghi chú bị mất
Chọn ghi chú -> không nhập gì -> trỏ chuột vào sau đó tap ra ngoài -> ghi chú bị biến mất | ThuyNTP 11/11 : 
Bên Scuti đã test done, Nhờ KH test trên dev nhé. | OK | https://jira.scuti.works/browse/ED-905
7.0 | Add tag mới cho "Bộ môn" | https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=102:102 | Otake | 2024-11-06 00:00:00 | Low | Closed | UAT-Bug add tag Bộ môn | OK | https://jira.scuti.works/browse/ED-909 | ThuyNTp 29/11 : Test done
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet: CR13 No,6 Dev
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Vị trí hiển thị khi thu nhỏ Timer | No78 | Otake | 2024-12-06 00:00:00 | High | Closed | CR13-No6_Cải thiện vị trí hiển thị | Khách xác nhận bug đã được fix.
2.0 | Khi di chuyển Timer thì màn hình cũng bị di chuyển | No79 | Otake | 2024-12-06 00:00:00 | Pending | Closed | CR13-No6_Cải thiện di chuyển màn hình | 24,12,9　Fujihara
Pending vì ưu tiên CR13_No,9.
Khi nào cần re-open thì Otake sẽ báo lại.
## Sheet: CR13 No,9 Dev
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Bug hiển thị số lượng Slide khi đăng ký Set | No 80:
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=107:107 | Fujiwara - Otake | 2025-01-07 00:00:00 | High | Scuti Closed | CR13No9Dev-Bug số lượng Slide | Đã tái hiện được, bên mình sẽ bắt đầu fix. | GiángPT | 2025-01-08 00:00:00 | OK | https://jira.scuti.works/browse/ED-919 | Phạm Minh Hiếu trả lời: bug này làm hết 1h
2.0 | Mong muốn cải thiện trên màn hình Danh sách ảnh - Edit | No 81:
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=108:108 | Fujiwara - Otake | 2025-01-07 00:00:00 | High | Closed | CR13No9Dev-Mong muốn cải thiện | Dự kiến cách tiến hành: 
- TaiC phía Scuti sẽ trao đổi với bên bạn để lấy specs chi tiết. 
- Phía Scuti estimate
- Triển khai coding & testing. | GiángPT | 2025-01-08 00:00:00 | Scuti 8/1: 
Taishi sẽ nói chuyện với khách về cải thiện này
Phạm Minh Hiếu trả lời: cải thiện này làm hết 2h

Reject vì sau khi TaiC trao đổi với khách hàng thì không cần làm nữa.
## Sheet: CR15 Dev
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Video đã insert hiển thị không bình thường, không có âm thanh | No 82: https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=111:111 | Otake - Fujiwara | 2025-01-17 00:00:00 | High | Scuti Check | CR15DEV-Video insert hiển thị sai, không âm thanh | Vấn đề 1: Đây là file mà trên Ipad âm thanh không được play.
- Specs tự đầu dự án khi phát triển đều không thể mở âm thanh trên Ipad. (Các bạn test lại trên STG và Pro đều đang như thế) 
- Hiện tại, các bạn mong muốn sẽ có thêm button mở/tắt âm thanh trên Ipad đúng không? 

Trả lời của Fujiwara
Sau khi xác nhận vấn đề 1 và kiểm tra trên iPad, tôi nhận thấy đúng là âm thanh không được phát.
(Tôi đã kiểm tra với video do người dùng tải lên)
Khi phát video giới thiệu ứng dụng, âm thanh lại được phát, vì vậy tôi nghĩ đây là lỗi.
Mong muốn của Otake: Implement button play âm thanh, design giống với ASUS・Chrome

GiangPT: 
Nút play âm thanh của Asus và Chorme hiện nay có 2 chức năng: 
- Bật/ tắt âm thanh. 
- Điều chỉnh âm lượng của âm thanh. 

Theo chính sách của Apple thì không cho phép implement tính năng điều chỉnh âm lượng, nên phía mình chỉ có thể implement tính năng bật tắt âm thanh thôi. 
Tham khảo mô tả trong link bên dưới:
"Multiple Simultaneous Audio or Video Streams
Currently, all devices running iOS are limited to playback of a single audio or video stream at any time. Playing more than one video—side by side, partly overlapping, or completely overlaid—is not currently supported on iOS devices. Playing multiple simultaneous audio streams is also not supported. You can change the audio or video source dynamically, however. See Replacing a Media Source Sequentially for details."

https://developer.apple.com/library/archive/documentation/AudioVideo/Conceptual/Using_HTML5_Audio_Video/Device-SpecificConsiderations/Device-SpecificConsiderations.html
Nhờ khách hàng xác nhận. 

20/1 Fujiwara trả lời
Tôi đã xem phần các bạn giải thích và dự kiến implement rồi. 
Hãy làm như các bạn đề xuất nhé. 
＊Tôi xác nhận specs như dưới đây:
1, Implement chức năng play âm thanh video ở Ipad. 
2, Button âm thanh hiển thị trên Ipad thì chỉ có thể ON/OFF.
3, Khi điều chỉnh âm lượng trên iPad thì thao tác điều chỉnh trực tiếp trên thiết bị.
Specs này Fujiwara và Sasaki san đều đã xác nhận nên các bạn hãy implement lên môi trường phát triển nhé. 

----------------------------------------------------------
Vấn đề 2: Đây là file mà trên Chrome và ASUS hiển thị không bình thường
- Nhờ khách hàng gửi cho phía Scuti cách quay ra được video bị lỗi (Trên thiết bị nào? Version bao nhiêu) 
- Phía Scuti đang nghi ngờ lỗi này giống 1 lỗi trước kia bên mình đã báo cáo, do video mã hóa khiến cho thiết bị Asuz và Chorme không đọc được.

Trả lời của Fujiwara
Về video trong vấn đề 2, tôi đã sử dụng tính năng ghi màn hình của iPad để ghi lại và xuất ra định dạng MP4 bằng Final Cut Pro.
Nếu không phải là định dạng video được hỗ trợ, việc không thể tải lên là điều hợp lý.
Tạm thời, cũng có thể ghi lại màn hình trên iPad version hiện tại, xuất ra MP4 và thực hiện kiểm tra bằng cái này.

GiangPT: 
- Theo như  mình điều tra thì đúng lỗi là do việc trình mã hóa video không support trên Chorme và Asuz.
- Hướng giải quyết triện để vấn đề này thì cần convert video lúc đẩy lên hệ thống, phần này mất khá nhiều thời gian và cần tìm hiểu công nghệ. Nên tạm thời các bạn làm theo hướng "ghi lại màn hình trên iPad version hiện tại, xuất ra MP4 và thực hiện kiểm tra bằng cái này" như bạn nói ở trên , và bên Scuti không làm gì vấn đề này nhé, nhờ khách hàng xác nhận. 

20/1 Fujiwara trả lời
Tôi đã record màn hình trên Ipad version hiện tại, rồi chuyển sang MP4 và insert video trên môi trường Dev thì hiển thị bình thường rồi.
Tôi quay video bằng chức năng camera tích hợp trong ASUS và Chrome và hiển thị bình thường.
Vậy Closed vấn đề này nhé. | GiangPT | 2025-01-17 00:00:00 | Other | Phạm Minh Hiếu ngày 17/01:
Máy tính không hỗ trợ giải mã video nên video không hoạt động được

Về việc bật âm thanh video trên ipad, em đề xuất thêm một button bật tắt âm thanh ở cạnh thanh time và button phóng to, button này chỉ sử dụng để bật tắt âm thanh.
2.0 | Trên Ipad, hiển thị video từ phóng to sang thu nhỏ thì bị tạm dừng play | No 83:https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=112:112 | Otake - Fujiwara | 2025-01-17 00:00:00 | High | Closed | CR15DEV-Tạm dừng hiển thị video trên Ipad | - Khách hàng đang thực hiện đúng thao tác phóng to - thu nhỏ chứ không phải thao tác sai. 
- Việc phóng to thu nhỏ mà video bị dừng là policy của Apple trên IPad, phía Scuti không thể can thiệp được.

Fujiwara trả lời
Tôi đã xác nhận đây là specs của Ipad, nên closed bug này nhé. | GiangPT | 2025-01-17 00:00:00 | OK | Phạm Minh Hiếu ngày 17/01:
Do hệ điều hành tự động pause khi chuyển từ phóng to qua thu nhỏ, nhờ khách check trên staging cũng sẽ có hiện tượng tương tự
## Sheet: CR 17 User
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
## Sheet: CR15DEV-Video insert hiển thị s
緊急度 | 大
Ngày phát sinh | 2025-01-16 00:00:00
Step tái hiện-Evidence | Test case | ft_6 ft_29
Account sử dụng | edutest1@edu.jp/edutest3@edu.jp
Hãy download file video tôi đính kèm, rồi insert lên màn hình app để check nhé.
Đây là file mà trên Ipad âm thanh không được play.
音声入り動画MP4.mp4
Đây là file mà trên Chrome và ASUS hiển thị không bình thường
ScreenRecording_10-16-2024 14-40-30_1のコピー10.MP4
File video của Ipad thì tôi đã thử cả MOV cả MP4 nhưng đều không output âm thanh.
Tôi thử insert video trên Chrome và ASUS, thì video được hiển thị rất bé.
Video tham khảo trên chrome
chrome:ASUSで動画が表示されない.mp4
前提条件
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | Loại máy | OS version | Browser version | App version
iPad Air 第５世代 | 18.2.1 | 1.0.2(76)
Loại máy | OS version | Browser version | App version
Chromebook(Lenovo)) | 131.0.6778.241 | 131.0.6778.241
Loại máy | OS version | Browser version | App version
Windows(ASUS) | 22h2 | 132.0.6834.84
外部連携システムバージョン
対応期限
Mục tiêu cần làm | Video được hiển thị và play có âm thanh bình thường
Scuti đề xuất | Vấn đề 1: trên Ipad âm thanh không được play.

Chúng tôi đề xuất thêm chức năng ON OFF âm lượng thay vì thêm button play âm thanh.
Do chính sách của Apple nên chỉ có thể ON OFF âm thanh video trên Ipad, nếu muốn điều chỉnh âm lượng thì điều chỉnh trực tiếp trên thiết bị.
Nhờ bạn xác nhận thống nhất với Otake san và Sasaki san để cho chúng tôi phương án.
Hiện nay ko có icon ON OFF | Đề xuất: Thêm icon ON OFF như khung đỏ trong ảnh trên
Chỉ ON OFF, không thể điều chỉnh âm lượng
## Sheet: CR15DEV-Tạm dừng hiển thị video
あ
緊急度 | 大
Ngày phát sinh | 2025-01-16 00:00:00
Step tái hiện-Evidence | Test case | FT_19
Account sử dụng | edutest1@edu.jp
1. Insert một video tùy ý lên digital board và play video.
2. Khi đang play video thì cho hiển thị phóng to bằng cách nhấn nút phóng to/thu nhỏ.
3. Kiểm tra video được hiển thị ở trạng thái phóng to và đã được play, sau đó thực hiện thu nhỏ video.
4. Theo test result, dù phóng to hay thu nhỏ thì video vẫn được play, không bị dừng, nhưng trên Ipad khi thu nhỏ thì video bị dừng play.
Video tham khảo
CR15/iPadで動画を再生中に拡大から縮小すると再生が停止する.mp4
Lưu ý: Nếu đây là trường hợp do tôi thực hiện sai thao tác thu nhỏ video thì tôi sẽ rút lại bug này, 
nhờ các bạn kiểm tra và liên lạc cho tôi xem có phải là do tôi thao tác sai không nhé.
前提条件
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | Loại máy | OS version | Browser version | App version
iPad Air 第５世代 | 18.2.1 | 1.0.2(76)
Loại máy | OS version | Browser version | App version
Loại máy | OS version | Browser version | App version
外部連携システムバージョン
対応期限
Mục tiêu cần làm | Kể cả thu nhỏ video thì cũng không dừng play.
## Sheet: CR13No9Dev-Bug số lượng Slide
あ
Độ ưu tiên | 大
Thời điểm phát sinh | 2025-01-07 00:00:00
Step tái hiện-Evidence | Test case | FT_71/72
Account sử dụng | otakeT10@gmail.com
otake2001@gmail.com
1. Login bằng quyền Admin, vào "màn hình đăng ký Set cuộc sống thường ngày・Bộ môn/教科・カテゴリーセット登録画面"
2. Tạo 5 slides, rồi nhấn button "Edit tên ảnh và tag/教具名とタグを編集"
3. Xác nhận 5 slide đã được hiển thị, sau đó nhấn button "back/戻る"
4. Xóa đi 1 slide, sau đó lại nhấn button "Edit tên ảnh và tag/教具名とタグを編集"
5. Nhấn button "Edit keyword search/検索キーワード編集", sau đó check ở popup thì lại thấy hiển thị slide bị xóa.
Video tham khảo
CR13:No,9:セット登録するときのスライド表示バグ.mp4
Step | 手順 | バグ
1.0
2.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
前提条件
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | Loại máy | OS version | Browser version | App version
IMac | バージョン15.1.1（24B91） | バージョン: 131.0.6778.205（Official Build） （x86_64）
Loại máy | OS version | Browser version | App version
Windows(ASUS) | 22h2 | 131.0.6778.205（Official Build） （64ビット）
Loại máy | OS version | Browser version | App version
外部連携システムバージョン
対応期限
Mục tiêu cần làm | Sửa để cả trên màn hình edit word search cũng hiển thị slide list mới nhất
## Sheet: CR13No9Dev-Mong muốn cải thiện
あ
緊急度 | 大
発生日時 | 2025-01-07 00:00:00
再現手順・エビデンス | バグメニュー：
Account sử dụng | otakeT10@gmail.com
otake2001@gmail.com
Trên màn hình Edit danh sách ảnh hiện tại, nếu không chuyển đổi tag thì button "tạo/作成する" không được active.
Tôi muốn cải thiện để khi edit 1 cái gì đó thì button "tạo/作成する" phải được active.
Ở màn hình ảnh bên dưới, cần thay đổi timing active button "Tạo/作成する"
Nếu button Tạo được enable ở đây thì thao tác về sau sẽ dễ hơn.
Trong video khách gửi, khách không có ý định edit tag, nhưng vì muốn cho active button tạo mà bạn ấy phải edit đổi tag từ tag 1 sang tag 2
Spec hiện tại mặc dù là chỉ với mục đích edit word search thôi, nhưng nếu không edit/thay đổi tag thì button tạo không được active. 
Khách muốn cải thiện là: Sau khi edit một cái gì đó thì button "Tạo" được active.
Video tham khảo
CR13:No,9そざい・教科一覧画面の改善.jpg
Video tham khảo
CR13:No,9そざい・教科一覧画面の改善.mp4
ステップ | 手順 | バグ
1.0
2.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
前提条件
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | Loại máy | OS version | Browser version | App version
IMac | バージョン15.1.1（24B91） | バージョン: 131.0.6778.205（Official Build） （x86_64）
Loại máy | OS version | Browser version | App version
Windows(ASUS) | 22h2 | 131.0.6778.205（Official Build） （64ビット）
Loại máy | OS version | Browser version | App version
外部連携システムバージョン
対応期限
Mục tiêu cần làm | Thực hiện edit một cái gì đó, khi edit xong, button "tạo/作成する" được active.
## Sheet: CR13-No6_Cải thiện vị trí hiển 
あ
緊急度 | 大
発生日時 | 2024-12-06 00:00:00
再現手順・エビデンス
CR13_No,6(Timer): Set Timer và thay đổi vị trí cố định khi thu nhỏ timer và để ở góc trên cùng bên phải, trên cùng bên trái màn hình.
Vị trí hiển thị thì các bạn check link dưới đây.
・Đây là ảnh khi để timer ở góc trên bên phải
Bố trí để sao cho nó không bị chồng lên icon
右上隅.JPG
・Đây là ảnh khi để timer ở góc trên bên trái
左上隅.JPG
前提条件
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | 機種 | OSバージョン | ブラウザバージョン | アプリバージョン
iPad Air 第５世代 | 18,1,1 | TestFlight Ver,1,0,2(73)
機種 | OSバージョン | ブラウザバージョン | アプリバージョン
Windows(ASUS) | 22h2 | 131.0.6778.86
機種 | OSバージョン | ブラウザバージョン | アプリバージョン
Chromebook(Lenovo)) | 130.0.6723.126 | 130.0.6723.126
外部連携システムバージョン
対応期限
Goal | ＊Hiện tại khi chuyển Timer lên góc phía trên thì icon dấu 3 chấm và ảnh Digital tool bị timer che đi nên tôi muốn nhờ các bạn sửa vị trí 
ảnh trên sang vị trí cố định mới.
## Sheet: CR13-No6_Cải thiện di chuyển mà
あ
緊急度 | 中
発生日時 | 2024-12-06 00:00:00
再現手順・エビデンス | バグメニュー： | Cải thiện việc khi di chuyển timer thì màn hình cũng bị di chuyển
Account sử dụng | ASUS,CHROME tất cả（Account giáo viên）（Account Hiệu trưởng/Admin trường）
Điều kiện tiền đề | Hãy tái hiện bằng tay, thao tác chạm tay
Từ bên phải hay từ bên trái thì đều phát sinh hiện tượng giống nhau
Video tham khảo
タイマー画面遷移の修正依頼動画.mp4
Step | Cách làm | Bug
1.0 | Insert timer và thu nhỏ nó lại
2.0 | Di chuyển xuống dưới cùng bên trái hoặc trên cùng bên trái
3.0 | Di chuyển timer sang bên phải | Bị timer kéo lệch và xuất hiện mũi tên
4.0 | Cứ thế di chuyển sang phải | Chuyển sang màn hình URL hiển thị trước đó
5.0
6.0
7.0
8.0
9.0
前提条件 | Tôi đã check được trên ASUS.CHROME.
Nhất thiết các bạn phải tái hiện bằng cách chạm tay/thao tác touch
Nó xảy ra thông qua Monitoring, Thời khóa biểu, Học nhóm.
Hãy kiểm tra nhiều lần vì hiện tượng không phải lần nào cũng giống nhau.
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | 機種 | OSバージョン | ブラウザバージョン | アプリバージョン
Windows(ASUS) | 22h2 | 131.0.6778.109 | Ver.1.0.0
機種 | OSバージョン | ブラウザバージョン | アプリバージョン
Chromebook(Lenovo)) | 130.0.6723.126 | 130.0.6723.126 | Ver.1.0.0
機種 | OSバージョン | ブラウザバージョン | アプリバージョン
外部連携システムバージョン
対応期限
Goal | Kể cả di chuyển timer bằng tay thì cũng không được chuyển màn hình.
## Sheet: CR13-12345-Dev
No. | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời | Ngày trả lời | Tái hiện được không? | Ticket Jira | Nội bộ Scuti trao đổi
1.0 | Bug hiển thị font size | https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=96:96 | Fujihara | 26/11 | High | Closed | [CR13-12345-Dev][No 1] Bug fontsize | Nga 11/27 
Scuti đã tái hiện được và đã fix bug, nhờ các bạn check.

Fujihara　11/28
Tôi đã check được trên môi trường Dev phần Stuti sửa rồi. | OK | https://jira.scuti.works/browse/ED-907 | ThuyNTP 27/11: Test done
2.0 | Màu nền trắng không mất đi | https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=97:97 | Ujiie | 26/11 | High | Closed | [CR13-12345-Dev][No 2] Màu nền trắng không mất đi | GiangPT 11/27: 
Chúng tôi đã test và làm theo step của các bạn nhưng không thể tái hiện được bug. 
Nhờ các bạn test lại giúp chúng tôi. 
Nếu còn bị thì giúp chúng tôi quay lại video và step cụ thể nhé. 

Video evidence: 
Asus: https://drive.google.com/file/d/1h8ZI_RDXqrFLg7t0ptqy03zUhc-q32cR/view
Chromebook: https://drive.google.com/file/d/17wDoj6yporpMZRncA3AbsHDzI2cPALq_/view | GiangPT | 2024-11-27 00:00:00 | NG | Asus: https://drive.google.com/file/d/1h8ZI_RDXqrFLg7t0ptqy03zUhc-q32cR/view
Chromebook: https://drive.google.com/file/d/17wDoj6yporpMZRncA3AbsHDzI2cPALq_/view

Bug này có thể là do môi trường dev có lỗi và tôi có thể đã fix rồi, hiện giờ tôi không tái hiện được khi tạo text mới, những text cũ bị lỗi bạn hãy xóa đi và sử dụng text mới nhé
`
## Sheet: CR13-12345-DevNo 1 Bug fontsize
あ
Liên quan đến testcase: CR13_Smoke_test9 10/FT_51~55
緊急度 | 大
発生日時 | 2024-11-26 00:00:00
Step tái hiện, Evidence | Bug menu： | FT_52~55/Smoketest_9~10
Account sử dụng | 学校責任者1（Dev）
学校責任者2（Dev）
学校責任者3（Dev）
先生1
先生2
先生3
児童2
児童10
児童15 | edutest01@edu.jp        demo1234
edutest02@edu.jp        demo1234
edutest03@edu.jp        demo1234
edutest1@edu.jp        demo1234
edutest2@edu.jp        demo1234
edutest3@edu.jp        demo1234
UC19T1ZSP137830        demo1234
UC19PCOYC137838        demo1234
UC19WBQOA137843	demo1234
Testcase | 1, Trên màn hình học nhóm, học sinh insert text sau đó kéo textbox lên 740.
2, Học sinh nhấn pulldown fonsize và kiểm tra xem có hiển thị fontsize mặc định 28 (là size lần này mới đổi sang) không.
3, Trên màn hình học nhóm, đang hiển thị fontsize. 8
4, Sau khi kiểm tra nội dung trên bằng account Giáo viên hoặc Hiệu trưởng, thì chuyển sang bảng của chính mình.
5, Nhấn pulldown fontsize, check size hiển thị mặc định.
Kết quả kỳ vọng | Dù có chuyển màn hình thì cũng không ảnh hưởng gì đến hiển thị fontsize mặc định
Kết quả thực tế | Chuyển màn hình sang học nhóm thì fontsize mặc định hiển thị là 8
Video | Tôi chỉ chụp trên iPad, bạn có thể kiểm tra trên 3 thiết bị.
障害状況報告書 CR13_Smoke_test9 10:FT_51~55（フォントサイズの表示バグ）.mp4
Step | Thao tác của giáo viên | Thao tác của học sinh
1.0 | Sau khi chuyển từ thời khóa biểu sang lớp, nhập văn bản và kiểm tra kích thước phông chữ hiển thị. | Sau khi chuyển từ thời khóa biểu sang lớp, nhập văn bản và kiểm tra kích thước phông chữ hiển thị.
2.0 | Chuyển sang màn hình học nhóm và kiểm tra input của học sinh. | Chuyển sang sổ ghi chép học nhóm, nhập văn bản và tăng kích thước lên 740.
3.0 | Chuyển từ màn hình học nhóm sang bảng của riêng bạn và kiểm tra hiển thị cỡ chữ cho văn bản ở bước 1. | Kiểm tra kích thước phông chữ ở bước 2 trên pulldown
↓
Font size được hiển thị từ 8
4.0
5.0
6.0
7.0
8.0
9.0
前提条件 | Môi trường phát triển
Điều kiện nhập data | ・Text sẽ tăng đến mức tối đa nên tôi chỉ nhập một ký tự.
・Không tăng đến 740 cũng được???
動作環境 | 開発間環境
対象端末情報 | Loại máy | OS version | Browser Version | App Version
iPad Air 第５世代 | 18,1,1 | TestFlight Ver,1,0,2(66)
Loại máy | OS version | Browser Version | App Version
Windows(ASUS) | 22h2 | 131.0.6778.86
Loại máy | OS version | Browser Version | App Version
Chromebook(Lenovo)) | 130.0.6723.126 | 130.0.6723.126
外部連携システムバージョン
対応期限
Mục tiêu | Kể cả có chuyển màn hình thì fontsize cũng không bị ảnh hưởng, vẫn hiển thị mặc định là 28
## Sheet: CR13-12345-DevNo 2 Màu nền trắn
あ
緊急度 | 大
発生日時 | 2024-11-26 00:00:00
再現手順・エビデンス | バグメニュー： | Lỗi màu nền trắng không mất đi
Account sử dụng | Tất cả thiết bị ASUS,CHROME (bao gồm cả Hiệu trưởng)
Video
背景が白のままバグ.mp4
Step | Các bước | Bug
1.0 | Chọn sử dụng 1 ảnh nào đó
2.0 | Chèn text lên ảnh đó
3.0 | Focus ra ngoài text, lúc này trạng thái là có thể edit lại text đó được
4.0 | Chọn "Monitoring"  hoặc "Quay lại Thời khóa biểu"
5.0 | Quay trở lại bảng của mình | Dù đang không focus nhưng màu nền của text vẫn là màu trắng
6.0
7.0
8.0
9.0
Điều kiện tiền đề | Đã check được trên ASUS.CHROME.
Phát sinh khi nhấn "Monitoring", "Quay lại Thời khóa biểu"
Hãy test nhiều lần vì hiện tượng có thể không giống nhau ở mỗi lần.
データ入力条件等
動作環境 | 開発間環境
対象端末情報 | Loại máy | OS version | Browser Version | App Version
Windows(ASUS) | 22h2 | 131.0.6778.86 | Ver.1.0.0
Loại máy | OS version | Browser Version | App Version
Chromebook(Lenovo)) | 130.0.6723.126 | 130.0.6723.126 | Ver.1.0.0
Loại máy | OS version | Browser Version | App Version
外部連携システムバージョン
対応期限
Mục tiêu | Khi không focus thì nền phải là màu trong suốt.
## Sheet: UATNo 7-Bug add tag Bộ môn
あ
緊急度 | 小
発生日時 | 2024-11-06 00:00:00
Step tái hiện, Evidence | バグメニュー： | なし
Account sử dụng | Account Admin Otake
Test case
1. Từ màn hình quản lý, vào màn hình edit tag.
2. Chuyển sang Bộ môn, và thêm mới tag "漢字" vào Bộ môn.
Kết quả mong muốn | _x0010_
・Tag "漢字" được thêm vào Bộ môn
Kết quả thực tế
・Không liên quan có hay không có 漢字 trong Bộ môn, việc đăng ký bị thất bại, 
hiển thị message lỗi「タグの名前が既に登録されている/tên tag đã được 
đăng ký trước đó」.
Video
スクリーンショット 2024-11-06 14.11.25.png
ステップ | 先生の操作 | 生徒の操作
1.0
2.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
前提条件
データ入力条件等
動作環境 | 本番環境
対象端末情報 | Loại máy | OS version | Browser Version | App Version
Windows(ASUS) | Microsoft Windows 10 Pro Education64ビット10.0.19045 | 130.0.6723.92（Official Build） （x86_64）
Loại máy | OS version | Browser Version | App Version
IMac | sequoia 15.0.1 | 130.0.6723.92（Official Build） （x86_64）
Loại máy | OS version | Browser Version | App Version
外部連携システムバージョン
対応期限
Mục tiêu | Thêm mới tag không bị trùng với tag nào thì phải thêm được bình thường.
## Sheet: Lỗi ghi chú bị mất
Mức độ khẩn cấp | Middle
Ngày giờ phát sinh | 2024-11-06 00:00:00
Các bước tái hiện, evidence | Bug menu: | Lỗi mất ghi chú nếu không nhập ký tự vào ghi chú
Account sử dụng: | Tất cả các thiết bị (bao gồm cả quản lý)
Hình ảnh tham khảo
付箋が消えるバグ.mp4
Step | Trình tự các bước | Bug
1.0 | Đưa con trỏ vào ghi chú (không nhập ký tự)
2.0 | Tap vào bên ngoài ghi chú | Ghi chú biến mất
3.0 | Đưa con trỏ vào ghi chú (không nhập ký tự)
4.0 | Nhấn "Lật" hoặc "Lật toàn bộ" menu bar của ghi chú | Ghi chú biến mất
5.0
6.0
7.0
8.0
9.0
Điều kiện tiền đề | Xảy ra sau khi fix bug về text của CR7
Có lẽ là có liên quan đến việc sửa text. Nhờ các bạn check lại.
Có thể dù nó biến mất trên bảng nhưng vẫn còn trong Slide. Nhờ các bạn check cả Slide để sửa.
Ví dụ như điều kiện nhập dữ liệu
Môi trường hoạt động | Môi trường thật/product
Thông tin thiết bị đối tượng | Model | OS version | Browser Version | App Version
Windows(ASUS) | 22h2 | 129.0.6668.101 | Ver.1.0.0
Model | OS version | Browser Version | App Version
Chromebook(Lenovo)) | 129.0.6668.110 | 129.0.6668.110 | Ver.1.0.0
Model | OS version | Browser Version | App Version
iPad | iPad OS 18.1 | testflight | 1.0.31
Version hệ thống liên kết ngoài
Hạn xử lý
Goal (Điều kiện hoàn thành) | Đang phát sinh bug mà ở specs cũ không xảy ra. Hãy cho về trạng thái trước đây.
Ở trạng thái không nhập ký tự và bỏ trỏ chuột ra khỏi ghi chú thì ghi chú bị biến mất.
Ở trạng thái không nhập ký tự và bỏ trỏ chuột ra khỏi ghi chú, nhấn vàp menu bar của ghi chú, "Lật" hoặc "Lật toàn bộ", thì ghi chú biến mất.
Nhờ các bạn sửa để ghi chú không bị mất, kể cả tap vào chỗ khác khi đang nhập ký tự.
Cũng có lúc ghi chú đã biến mất lại được hiển thị trên Slide. Nhờ các bạn check lại.
## Sheet: No7
Line 97 trong file khách: https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=97:97
Độ khẩn cấp | 大 | High
Ngày phát sinh | 2024-08-02 00:00:00
Trình tự tái hiện・Evidence | Menu cải thiện： | Fix bug specs của ký tự bị reset
Account sử dụng：Check bằng tất cả các account có quyền Admin
*Video tham khảo
テキスト文字の設定がリセットされるバグ.mp4
Step | Tất cả thiết bị
1.0 | Text ngang, Character 44, nền đỏ, text màu vàng
2.0 | Nhập ký tự vào dòng 1 | vâng a
3.0 | Dòng 2: xuống dòng
4.0 | Dòng 3: Space
5.0 | Dòng 4: Xuống dòng
6.0 | Dòng 5: nhập ký tự
7.0 | Xóa ký tự đầu tiên ở dòng thứ 5 và xóa xuống dòng ở dòng thứ 4 | Setting cho các ký tự còn lại ở dòng 5 bị reset
8.0 | Xóa space đầu tiên ở dòng 3 và xóa xuống dòng ở dòng 2 | Setting cho space còn lại ở dòng 3 bị reset
9.0
前提条件
データ入力条件等
動作環境 | ステージング
Thông tin terminal r | 機種 | OS ver | Browser Version | App ver.
Chromebook(Lenovo)) | 129.0.668.110 | 129.0.6668.110 | Ver.1.0.0
機種 | OS ver | App ver.
Windows(ASUS) | 22h2 | 129.0.6668.101 | Ver.1.0.0
機種 | OS ver | App ver.
iPad Air 第５世代 | iPad OS 18.0.1 | testflight | 1.0.2(45)
対応期限
Mục tiêu (điều kiện hoàn thành) | Hãy xử lý để: với điều kiện nào đi nữa cũng vẫn có thể giữ được setting của ký tự và space đã nhập
## Sheet: No8
No 74 trong file khách: https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=93:93
緊急度 | 大 | High
発生日時 | 2024-08-02 00:00:00
再現手順・エビデンス | Menu cải thiện | Đây là bug: xóa ký tự trong text thì sẽ không hoạt động bình thường
Account sử dụng：Check bằng tất cả các account có quyền admin
*Video tham khảo
Chrome： | クロームテキストフリーズバグ.mp4
ASUS： | ASUSテキストフリーズバグ.mp4
iPad： | テキストの文字を消すとフリーズするバグ（iPad）.mp4 | テキストの文字を消すとフリーズするバグ（iPad）（横書き）.mp4
Các bước thực hiện
１、Text　Chữ đậm　Underline　Nền：青/blue　màu chữ：緑/green
２、Trong 1 nội dung text, nhập khoảng 30-40 line, bao gồm ký tự/characters, xuống dòng, space
３、Xóa character, xuống dòng, space từ giữa đoạn text cho đến khi còn lại 4 dòng
４、Khi focus vào text thì focus không bị mất đi, và không tiếp nhận các hoạt động khác. Chưa được đồng bộ với màn hình phía mornitoring. Khi back về Thời gian biểu (時間割) thì lại phản ánh màn hình trước khi xóa.
５、Làm tương tự với kiểu viết dọc, màn hình sẽ bị lỗi và đơ khi đang xóa.
ステップ
1.0
2.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
前提条件 | Hãy thử lại nhiều lần vì không phải lúc nào cũng phát sinh.
Nếu không tái hiện được thì hãy tăng số lượng dòng văn bản lên.
Thời điểm xảy ra lỗi khác nhau tùy thuộc vào thiết bị và thời gian trong ngày.
Lỗi có cùng triệu chứng không phải lúc nào cũng xảy ra. Nhờ các bạn xử lý tình huống linh hoạt.
データ入力条件等
動作環境 | ステージング
Thông tin thiết bị | Thiết bị | OS version | Browser Version | App ver.
Chromebook(Lenovo)) | 129.0.668.110 | 129.0.6668.110 | Ver.1.0.0
Thiết bị | OS version | App ver.
Windows(ASUS) | 22h2 | 129.0.6668.101 | Ver.1.0.0
Thiết bị | OS version | App ver.
iPad Air 第５世代 | iPad OS 18.0.1 | testflight | 1.0.2(45)
対応期限
Mục tiêu (điều kiện hoàn thành) | Nhờ các bạn cải thiện những chỗ màu đỏ trong mục "Các bước thực hiện".  。 Focus không bị mất đi, à không tiếp nhận các hoạt động khác. Chưa được đồng bộ với màn hình phía mornitoring. Khi back về Thời gian biểu (時間割) thì lại phản ánh màn hình trước khi xóa.
Làm tương tự với kiểu viết dọc, màn hình sẽ bị lỗi và đơ khi đang xóa.
## Sheet:  CR7 No 3 4 5」Otake UAT
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0
2.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet: CR7 No 3 4 5」Otake test Dev
No | Function | Mapping with JP file | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Xuống dòng ở textbox | Otakee | 17/10 | High | Closed | 23/10: Khách confirm sau khi fix OK
Acc test: GV：（edutest1@edu.jp：edutest2@edu.jp：edutest3@edu.jp）        
Test item :FT_CR7_No,345_19（teacher/board của mình：Monitoring）        
*Phát hiện ở tất cả các chức vụ/monitoring, học nhóm, nhưng lấy đại diện là acc GV/monitoring để báo bug này
1, Add thêm text dọc vào board
2,Sau khi add thì xuống dòng bằng phím Enter
3,Text box không mở rộng theo dòng đã xuống, mà lại bị bé lại（video từ giây 14〜）        
        
・kết quả kì vọng
textbox sẽ được phóng to thu nhỏ tùy vào text đã nhập
・Kết quả thực tế
Phần xuống dòng không được mở rộng, mà lại bị thu nhỏ lại
        
*Video tham khảo :iPAD        *Phát hiện ở cả 3 thiết bị
https://drive.google.com/file/d/1ut0HJyf8M4xsvMZ7UCc1nEiYbeEq3TSD/view | 2024-10-17 00:00:00 | OK | https://jira.scuti.works/browse/ED-889
2.0 | Copy paste con số trong textbox | Otakee | 17/10 | High | Closed | 24/10: Khách confirm sau khi fix OK
Acc sử dụng：先生：（edutest1@edu.jp）
nội dung test: FT_CR7_No,345_56（teacher/board của mình: monitoring）

1,Sau khi insert textbox, input font size có hiệu lực rồi copy
2,Có thể paste vào trong textbox
3,Không thể paste vào box có fontsize

・Kết quả kì vọng
Có thể paste con số normal  vào textbox fontsize.
・Kết quả thực tế
Không liên quan gì tới việc valid hay không valid, tất cả đều ko thể paste

*Video;iPAD
https://drive.google.com/file/d/1VDeCanyfUjlBHthRLXT4jNZ1-miOk1L8/view | 2024-10-17 00:00:00 | OK | https://jira.scuti.works/browse/ED-898 | 22/10 Hiếu trl: 
Anh ơi, cái bug khách báo là khi em paste trên máy tính thì bình thường. Nhưng trên iPad, nếu làm theo video của khách thì không paste được. Tuy nhiên, nếu giữ vào ô input để nó hiển thị tùy chọn ‘Paste’ thì lại paste được, như trong video bên dưới.,
Ô input này em cũng không chặn việc paste, nên em nghĩ đây ko phải là bug, mà là do bàn phím của ipad có vấn đề, mà bàn phím ipad thì không thế can thiệp được, em nghĩ cần message lại khách hàng ạ
https://eduamobileapp.slack.com/files/U02MRELPGK1/F07SNRA7DR7/screenrecording_10-17-2024_16-39-55_1.mp4

10/24 Hiếu fix No 5 là fix luôn cái này.
3.0 | Button làm lại/やり直し | Otake | 21/10 | High | Closed | 24/10: Khách closed sau khi fix OK
Khách note: Sẽ làm cùng đợt fix bug Undo redo (22/10)
Acc /sử dụng：GV（edutest1@edu.jp）        
Test item/FT_CR7_No,345_27(thực hiện các step ngoài menu test)（teacher/board của mình：Monitoring）        
1, Insert text ngang
2,Nhập chữ: test rồi xóa đi
3,Click Back/元に戻す
4,Click Làm lạiやり直し        
5,Click back cho đến khi gray out
6,Click làm lại/やり直し cho đến khi Grayout
7,Làm lại/やり直し không bị gray out
Video tham khảo:
https://drive.google.com/file/d/1-uC8Bf0K7ygeph8Di_8Bsp85vXchc3zQ/view | 2024-10-21 00:00:00 | OK | https://jira.scuti.works/browse/ED-894
4.0 | Thực hiện nhấn button Back Next trong board | Otake | 21/10 | High | Closed | 23/10: Khách confirm sau khi fix OK
Khách note: Sẽ làm cùng đợt fix bug Undo redo (22/10)
Acc sử dụng：GV（edutest1@edu.jp）
Nội dung test:        IT_CR7_10
1,Insert text viết ngang (nhập luôn text)
2,Từ góc bên trái phía trên, thực hiên kéo dãn ra, thu hẹp vào theo chiều kim đồng hồ
3, Làm lại thao tác trên lần nữa
4, Sử dụng handle Xoay chiều để quay (hướng nào cũng dc)
5,Click Back đến khi icon thành gray out
6, Confirm board (không làm gì cả)
7, Click Next cho đến khi icon thành gray out
8, Icon Next vẫn ở trạng thái active, text cũng không hiển thị ra. Khi chọn phạm vi bằng ngón tay thì hoạt động cũng không bình thường (video từ giây 41 trở đi)
        
・Kết quả kì vọng
Text đã nhập sẽ được hiển thị ra khi nhấn button Next
・Kết quả thực tế
Text vẫn không hiển thị ra, và textbox cũng không được next đến thao tác xoay chiều
        
*Video tham khảo;iPad        
https://drive.google.com/file/d/1DADPN8JhcONeMIWnQdQ5MMXJWvtWdpC9/view | 2024-10-21 00:00:00 | OK | https://jira.scuti.works/browse/ED-894
5.0 | Cải thiện thêm cho dễ sử dụng | Otake | 22/10 | High | Closed | 24/10: Khách confirm sau khi fix OK
Acc sử dụng：toàn bộ device
Không phải là bug nhưng có chỗ khó sử dụng nên nhờ các bạn cải thiện giúp tôi
Nhờ các bạn chỉnh sửa phần vòng tròn màu đỏ trong video
 Cụ thể:               
１.Xóa con trỏ chuột (handle giữa cạnh) không thể sử dụng 
２.Support input fullsize khi input trực tiếp fontsize                
                
*Video tham khảo
https://drive.google.com/file/d/187o0UsU0kmcBMegeuqfYHtjc4_VjPJHt/view?usp=sharing | 2024-10-22 00:00:00 | Other | https://jira.scuti.works/browse/ED-898 | GiangPT 22/10 : Đây là CR, cần Hiếu estimate. 
HieuPM 22/10: Est 4h
6.0 | Max fonsize | Otake | 22/10 | High | Rejected | 23/10: Khách ko tái hiện được nữa nên reject
Khách note: Có thể không phải là bug, nhờ các bạn check giúp .(22/10)
Test item: SmokeTest_CR7_No345_9) Fontsize khi phóng to ở Ipad（teacher/board của mình）                
Acc sử dụng：GV（edutest1@edu.jp)                
1, Insert textbox viết dọc, nhập từ :test
2, Thay đổi fontsize thành min 8
3,Phóng to sử dụng handle 4 góc của textbox
（Khi này sẽ thu nhỏ khoảng trắng hướng dọc để đảm bảo tính dễ thao tác và dễ nhìn)
4, Phóng to được đến khoảng fonsize là 〜130, và ko thể to hơn được nữa
※ASUS/Chrome thì lại có thể phóng to max 740 | HieuPM 22/10: Tôi không tái hiện được, nếu được hãy cho tôi video tái hiện | 2024-10-22 00:00:00 | NG | HieuPM 22/10: Tôi không tái hiện được, nếu được hãy cho tôi video tái hiện
Thúy
7.0 | Nhấn space key khi nhập text giữa chừng | No70 và line 97
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=89:89

 https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=97:97 | Otake | 24/10 | High | Closed | 11/6: Khách confirm trên STG OK
11/1: Test thêm theo sheet "No7"
29/10: Vẫn còn hiện tượng:
Video: https://drive.google.com/file/d/1YgKhqkX-V0ZxYUmIegRqXt-57AljP_Ob/view?usp=sharing 
Đoạn văn trong video: https://drive.google.com/file/d/1SguKfuDNKo5BzreJPj6sMJL5B7SsStt-/view?usp=sharing
thiết bị: Chromebook  version 129.0.6668.99
Acc sử dụng: HS：UC19T1ZSP137830  Pass: rwfWVB94                
TKB        24日　/　Tiết 1　/　Môn: 算数脱線テスト2　/　Đã lưu y nguyên ở slide thứ 1 nên các bạn hãy confirm nhé.                
TKB       24日　/　Tiết 1　/　Môn : 算数脱線テスト3　/　Đã lưu y nguyên ở slide thứ 1 nên các bạn hãy confirm nhé.                   
Test item       Test kết hợp  CR7-(thu nhỏ tự động khung obj) và 5 (tự động xóa khung)                
                        
1. Font chữ 教科書体, fonsize 92　chữ đậm, gạch chân, màu nền là: Green, màu ký tự là Blue, viết ngang                        
2. Nhập ký tự, giữa chùng là nhấn liên tục space key
3. Sau khi nhấn liên tục space key thì bắt đầu nhập ký tự lần nữa, thực hiện convert                        
 Lưu ý:  nhấn liên tục space key thì sẽ dễ tái hiện bug hơn                       
Kết quả kì vọng
Thực hiện convert bình thường, chữ đậm hay màu nền đều được phản ánh chính xác.
                        
Kết quả thực tế:
Khi đang convert thì màu nền hay fontsize bị gỡ bỏ.
                        
*Video tham khảo:
TKB        24日　/　Tiết 1　/　Môn: 算数脱線テスト2　/　Đã lưu y nguyên ở slide thứ 1 nên các bạn hãy confirm nhé.                         
https://drive.google.com/file/d/1Oa-jSbzlTVJO3CUTxtDL-B3JUQgawVzp/view                         
TKB       24日　/　Tiết 1　/　Môn : 算数脱線テスト3　/　Đã lưu y nguyên ở slide thứ 1 nên các bạn hãy confirm nhé.       
https://drive.google.com/file/d/1Oa-jSbzlTVJO3CUTxtDL-B3JUQgawVzp/view?usp=sharing       \ | 11/1　Fujihara
Tôi đã xác nhận bản sửa trên 3 thiết bị, ở môi trường dev.
Tôi sẽ xác nhận lại lần nữa sau khi phản ánh lên STG.
※Cũng đã xác nhận theo các bước trong line 97.
-------------------------------------------
ThuyNTP 1/11: Chúng tôi đã fix lại, vui lòng check lại nếu vẫn có lỗi thì hãy check bằng 2,3 device và quay video gửi lại 
----------------------------------------
ThuyNTP 31/10: Tôi đã tái hiện theo text feedback nhưng không tái hiện được, tuy nhiên bên tôi lại bị mất style với 1 text nhưng có chromebook bị, có chromeboook không bị, nhờ KH thử dùng chromebook khác test lại giúp em và quay video nhé | ThuyNTP | 2024-10-24 00:00:00 | OK | https://jira.scuti.works/browse/ED-900 | ThuyNTP 31/10: Tôi đã tái hiện theo text feedback nhưng không tái hiện được, tuy nhiên bên tôi lại bị mất style với 1 text nhưng có chromebook bị, có chromeboook không bị, nhờ KH thử dùng chromebook khác test lại giúp em và quay video nhé 
ThuyNTP 1/11: Chúng tôi đã fix lại, vui lòng check lại nếu vẫn có lỗi thì hãy check bằng 2,3 device và quay video gửi lại
8.0 | Edit lại obj text sau khi đã tap ra ngoài board | No 71 và No74
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=90:90


https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=93:93 | Otake | 24/10 | High | Closed | 11/6: Khách confirm trên STG OK
11/1: Test thêm theo sheet "No8"
29/10: vẫn còn hiện tượng trên （ASUS）edutest2@edu.jp　pass：zdaFST94
Video:                                 バグ修正後の再確認CR7-345障害状況報告書(入力した文字が編集できず挙動がおかしい）.mp4
ĐOạn văn:スクリーンショット 2024-10-29 11.48.27.png
Thiết bị: Chromebook version 129.0.6668.99
Acc：        edutest1@edu.jp　Pass：ncvWRC46                
TKB: 24日　/　朝課外　/　算数脱線テスト　/　Đã lưu y nguyên ở slide thứ 1 nên các bạn hãy confirm nhé.                 
Item test: Kết hợp CR7 và 5
                        
1. Font: 角ゴシック　fontsize: 92　Không set chữ đậm　Không gạch chân　màu nề: green　màu ký tự: blue　viết dọc                        
2. Nhập ký tự, kết hợp cả space và Enter để thực hiện input cho tới khi kín board
3. tap vào khoảng trống của board, gỡ focus ra khỏi chỗ input text
4. Sau đó lại chọn lại obj ký tự vừa nãy đã nhập, chuẩn bị nhập ký tự tiếp
                        
Kết quả kì vọng
Hiển thị ra con trỏ thể hiện rằng có thể nhập ký tự
                        
Kết quả thực tế                      
Không hiển thị ra con trỏ nhập text, cũng không thể chọn được chính xác obj ký tự. Nếu tap vào khoảng trắng trên board thì obj text lại di chuyển đến chỗ đó.
                        
*Video tham khảo
 https://drive.google.com/file/d/11rZvrKTHDbePWQMwzgjC7pEEdzIz8nZe/view                       
ASUS cũng gặp tình trạng này. Setting lần lượt: 丸ゴシック　96　Chữ đậm　Gạch chân　Màu nền: Pink　Màu chữ: Đỏ                        
https://drive.google.com/file/d/1eIj_SLgIXbwtWUW7kN2-O8FcXgq2LCyj/view?usp=sharing | 10/31
Đã test Ok sheet No 8 trên môi trường dev.
-----------------------------------------

ThuyNTP 30/10: Không thể tái hiện được, đã làm theo giống với video feedback của KH và không thấy lỗi 
https://drive.google.com/file/d/1_wWWdi9q1-SixriFcowH72xzV4F9j2Yv/view?usp=drive_link | ThuyNTP | 2024-10-24 00:00:00 | OK | https://jira.scuti.works/browse/ED-901 | ThuyNTP 30/10: Không thể tái hiện được, đã làm theo giống với video feedback của KH và không thấy lỗi 
https://drive.google.com/file/d/1_wWWdi9q1-SixriFcowH72xzV4F9j2Yv/view?usp=drive_link
9.0 | Xuống dòng nhiều lần trong textbox
(No 69 trrong file khách) | No 69
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=88:88 | Otake | 25/10 | High | Closed | 29/10: kHách confirm sau khi fix: OK
Thiết bị: iPad OS 18.0.1 testflight 1.0.2(49)Dev
Acc sử dụng：GV：（edutest1@edu.jp)                
test item: Kết hợp CR7 và 5
1, Ở board của mình, insert text (text dọc hay ngang, font đều tùy ý), fonz site là 8 cho dễ confirm.        
2, Nhập nhiều dòng text, có chứa cả xuống dòng bằng space hay Enter (ít nhất cũng phải xuống dòng 4 lần)
3, hãy confirm size của text đã nhập ở bước 2, fontsize cả beakline cũng là 8.
4, Gỡ bỏ focus ra khỏi textbox, rồi lại focus vào textbox lần nữa.
5, Fontsize của chỗ breakline đang lớn hơn 8 (từ khi step 3 là textbox bị hiển thị to hơn)        
6, nếu nhập thử text vào chỗ breakline đang bị hiển thị lớn hơn đó thì text size lại là 8.
                        
                        
Kết quả kì vọng                        
・text (bao gồm cả breakline) sẽ hiển thị giống như text size đã set.
                        
Kết quả thực tế                
・nếu gỡ focus ra khỏi text thì những chỗ breakline với font size là 8 lại bị biển thị lớn hơn.
（textsize đang bị apply tự động default là 44 ?)
                        
                        
*Video tham khảo:
https://drive.google.com/file/d/1Qa0xI-VBn9K5B14TT7LcBva9mK8BXwxV/view | 2024-10-25 00:00:00 | OK | https://jira.scuti.works/browse/ED-902
10.0 | Phóng to thu nhỏ text box khi box vừa khít với text | No 72
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=91:91 | Otake | 25/10 | High | Closed | 11/6: Khách confirm trên STG OK
31/10: Fujihara 
24,10,31 Fujihara
Tôi đã tái hiện trên môi trường phát triển（TestFlight1.0.2(57)）nhưng không tái hiện được.
Tôi sẽ check lại sau khi phản ánh lên môi trường STG.
----------------------------------------

Thiết bị sử dụng:iPad OS 18.0.1 testflight 1.0.2(50)Dev
1,　Insert 2 từ viết ngang （ví dụ：学校）
2, Set Chữ đậm, gạch chân. Thay đổi màu chữ, màu nền
3, Chỉnh chiều rộng textbox cho vừa đủ với text（video từ 21s〜
4, Check hoạt động của textbox khi phóng to bằng handle 4 góc（video từ 38s〜
5,Check hoạt động của textbox khi thu nhỏ bằng handle 4 góc。←Chỗ thấy có vẻ như là Bug (video từ 40s~)
Kết quả kì vọng
・Sử dụng handle ở 4 góc để phòng to thu nhỏ, thì size ký tự sẽ thay đổi theo thao tác của user.
　
Kết quả thực tế
・Khi thu nhỏ thì text bị lệch thành hàng dọc
*Video 
https://drive.google.com/file/d/1iCQ-CyoTVTWqiDkQN0INajcsnjpXmTiL/view | OK | https://jira.scuti.works/browse/ED-903
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet: CR7_No2_Chỉnh sửa text Otake UA
Anh | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容 | Anh | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | nhập ký hiệu ? ' | Otake | 2024-09-20 00:00:00 | High | Closed | Tham khảo nội dung bên dưới
Nội dung bug | Lỗi do ký tự '?' là bug UAT
fix 30p
2.0 | Khi phóng to thu nhỏ textbox có chứa ? bằng handle | Otake | 2024-09-20 00:00:00 | High | Closed | Tham khảo nội dung bên dưới
Nội dung bug | Lỗi do ký tự '?' là bug UAT
fix 30p
3.0 | Thay đổi màu chữ chứa ký hiệu ? ' | Otake | 2024-09-20 00:00:00 | High | Closed | Tham khảo nội dung bên dưới
Nội dung bug | Lỗi do ký tự '?' là bug UAT
fix 30p | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
3.0 | 3.0
4.0 | 4.0
5.0 | 5.0
6.0 | 6.0
7.0 | 7.0
8.0 | 8.0
9.0 | 9.0
10.0 | 10.0
11.0 | 11.0
12.0 | 12.0
13.0 | 13.0
14.0 | 14.0
15.0 | 15.0
16.0 | 16.0
17.0 | 17.0
18.0 | 18.0
19.0 | 19.0
20.0 | 20.0
21.0 | 21.0
22.0 | 22.0
23.0 | 23.0
24.0 | 24.0
25.0 | 25.0
26.0 | 26.0
27.0 | 27.0
28.0 | 28.0
29.0 | 29.0
30.0 | 30.0
31.0 | 31.0
32.0 | 32.0
33.0 | 33.0
34.0 | 34.0
35.0 | 35.0
36.0 | 36.0
37.0 | 37.0
38.0 | 38.0
39.0 | 39.0
## Sheet:  CR4_Phát bài Otake test Dev 72
Anh | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | HS nhận slide đã được phát | Otake | 16/7 | Closed | Acc sử dụng
HS：（UC19NDVER137831）HS：（UC19KG78N137837）
Nội dung test ID:(FT_CR4_64):Student(Digital board)

1. Hs nhận slide đã được phát
2. Nhấn Get/受け取る giống như popup viết.
3. Ngắt wifi trước khi kết thúc hiển thị bar thể hiện tiến độ nhận
4. Tiến độ của bar không dừng lại, bar vẫn tiếp túc hiển thị với trạng thái stop giữa chừng khoảng 15 phút.

*参考動画;Lenovo
CR4_64（スライド受信失敗）ポップアップバグ.mp4 | HuongDT | 2024-08-17 00:00:00 | OK | https://jira.scuti.works/browse/ED-872
2.0 | Hiển thị list slide | Otake | 17/7 | Closed | Acc sử dụng
GV：（edutest1@edu.jp）
Nội dung test ID:(Smoke_test_CR4_9):teacher(Digital board)

1. Chuẩn bị 5 slide (Không nhất thiết phải có obj)
2.Nhấn vào Phát bài, rồi di chuyển tới màn hình hiển thị list slide.
3. Khung màu da cam hiển thị đè lên mã số slide
（Nếu chỉ có 4 slide thì không bị hiển thị đè như trên)


Bug này chỉ bị ở iPad.
18/7 Thúy bổ sung thêm:
Khách vẫn phát hiện ra hiện tượng này trên Chrome book
23/7:
Sau khi check lại thì vẫn thấy bị ở Chrome và Asus
Video:        
 7.23　スライド一覧表示バグ.mp4  Chrome               
7.23　スライド一覧表示バグ（ASUS）.mp4        ASUS        
Sau khi update môi trường phát triển thì trên ipad bị nữa | Khách tái hiện lại không được -> closed bug
18/7 Thúy. Khách vẫn tái hiện được với tt bổ sung như sau:
iPad（version ９）, size màn hình là 10.2 inch, iPad os 17.5.1.
Video tham khảo:
https://drive.google.com/file/d/1OYRc8WtT_5luTKzoOiYFK9fGJAyHzcoy/view
Trong video trên, ngoài việc hiển thị kiểu 4.5 *4 ra, khách cũng không hiểu tại sao cứ bị hiển thị Loading khi nhấn vào slide 2 lần rồi mới hiển thị. | HuongDT | 2024-08-17 00:00:00 | https://jira.scuti.works/browse/ED-874
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet:  CR6_Edit and Delete Tag Otake 
Anh | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Add thêm tag cấp 1 Bộ môn | Otake | 2024-10-06 00:00:00 | High | Otake Check | Acc sử dụng:
otake2001@gmail.com         fvmWNM58

1.Sử dụng chức năng Edit tag để edit tên và icon Tag cấp 1 Bộ môn ("Môn học" bên trái) (= add thêm ảnh và tên rồi upload)
2.Sau đó quay về màn hình quản lý Digital tool, đi tới màn hình Edit/List Ảnh, rồi chọn ảnh Bộ môn gì cũng được(viền xanh).
3.Nhấn「Edit Digitool và tag/教具名とタグを編集」, rồi confirm xem tag cấp 1 vừa add lúc nãy đã thực sự được add vào hay chưa.

Kết quả kì vọng
Tag cấp 1 được add thêm.

Kết quả thực tế
Tag cấp 1 không được add thêm.

Video

FT_CR6_138.mov | Hiện tại Scuti không tái hiện được
Nhờ khách hàng check lại xem còn không? | HuongDT | 2024-06-10 00:00:00 | NG | Không tái hiện được. Nhờ khách hàng tái hiện lại giúp xem còn bị không. Hiện tại đang có lỗi không có scroll nếu list tag cấp 1 dài quá tầm 22 data, Scuti đã log bug
2.0 | Xóa tag cấp tùy ý | Otake | 2024-10-06 00:00:00 | High | Rejected | test ID:(ST_CR6_10)        
1.Chuẩn bị Ảnh Bộ môn đã gắn  tag đến cấp 4.        
2.Xóa tag cấp 2 theo chỉ thị test.        
3.Theo chỉ thị test thì sẽ cần chọn tag cấp 3, nhưng thực tế là không thể access được do đã xóa tag cấp 2        
        
Kết quả kì vọng        
Có thể xóa, edit tag cấp 3, tag cấp 4        
        
Kết quả thực tế        
Nếu tag cấp 1, tag cấp 2 biến mất thì không thể đến được tag cấp 3, tag cấp 4, cũng không thể xóa và edit được.        
Nói 1 cách cụ thể hơn, thì nếu xóa tag cấp 1 hoặc tag cấp 2, hoặc cả 2 thì về mặt specs  sẽ không thể đi tới tag cấp 3        
không thể đi tới tag cấp 3, nên cũng ko thể tới tag cấp 4, nên nhờ các bạn confirm xem làm thế nào để có thể xóa tag nhỉ | HuongDT | 2024-06-10 00:00:00 | Other | Khách hàng hiểu lầm checklist. 
Nhờ chị Thúy confirm lại với Khách như e đã trao đổi với chị nhé.
3.0 | Xóa tag cấp 1 hoặc cấp 2 | Otake | 2024-11-06 00:00:00 | High | Not Bug | 1.Tới màn hình của Bộ môn
2.（Điều kiện là đã setting xong tag cấp 1 A đến tag cấp 4 D xong xuôi) Khi có điều kiện như này, xóa tag cấp 1 A hoặc tag cấp 2 B, cố tình để không thể access được tới tag cấp 3 C
3.Nhấn Quay lại, đi tới màn hình List Ảnh (hoặc Set), nhấn button Tìm kiếm
4. Switch sang「Bộ môn/教科」(khi này, không chọn icon tag cấp 1 A và tag cấp 2 B).
5.Sau khi chuyển sang Bộ môn, confirm list các tag bằng 「search từ Keyword/キーワードから探す」.

Kết quả kì vọng
Tôi muốn không hiển thị tag cấp 3 C mà đã cố tình không thể access phía trên trong list tag nữa.
nếu tag cấp 1 A hoặc là tag cấp 2 biến mất thì không thể access tới tag cấp 3 C lần nào nữa.
Tức là, không sử sụng nó thêm lần nào nữa nên tôi muốn nó không được hiển thị ra nữa

Kết quả thực tế

Tag này hiển thị lộn xộn cùng các tag khác | Đã chuyển thành CR, xử lý cùng CR 6 | GiangPT | Other | Đã chuyển thành CR, xử lý cùng CR 6
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet:   CR6_Edit and Delete Tag UAT 6
Anh | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Không hiển thị tag cấp 3 | Otake | 24/6 | High | Closed | 1.Đăng ký Ảnh bộ môn đến tag level 4 (gọi là obj A)
2.Vào list edit Ảnh, sử dụng chức năng search để confirm xem tag cấp 3, tag cấp 4 của Ảnh Bộ môn có valid hay không.
3.Xóa obj A
4. Sau đó lại sử dụng chức năng search lần nữa, rồi confirm xem tag cấp 3 và tag cấp 4 của ảnh Bộ môn có không hiển thị hay không.

Kết quả kì vọng
Tag không gắn với bất cứ digital tool nào thì không hiển thị

Kết quả thực tế
Nếu không chọn  tag cấp 1 và tag cấp 2 thì không hiển thị trong list Tìm từ keyword, nhưng
nếu chọn tag cấp 1 và tag cấp 2 thì tag cấp 3 vừa nãy không hiển thị phía trên lại bị hiển thị ra.

Video
第三層のタグが消えたようで実は残る.mp4 | HuongDT | 2024-06-24 00:00:00 | OK | https://jira.scuti.works/browse/ED-864
2.0 | Obj tìm được lại ko gắn tag cấp 3 ban đầu | Otake | 24/6 | High | Closed | 1. Vào List edit Ảnh, nhấn chức năng tìm kiếm        
2. Chọn (nhấn) tag cấp 3, sau đó confirm xem những obj liên quan có được hiển thị chính xác không?        
        
Kết quả kì vọng        
1.Chọn tag cấp 3 bất kỳ (giả sử là A)        
2.Các obj sẽ được filter và hiển thị phía sau phía sau popup của chức năng tìm kiếm        
3. Những obj được hiển thị theo filter sẽ có gắn tag A ở bước A.        
        
Kết quả thực tế        
Mặc dù đã chọn tag A để filter obj , nhưng tag A lại không gắn trong obj        
→Thế là đã filter obj theo cái gì vậy?        
Nếu đã filter obj theo tag, mà tag đã chọn để filter lại không gắn vào obj kết quả hiển thị thì hơi buồn cười.        
Video:
https://drive.google.com/file/d/1ilXqguTOkcyEUSYS0OmzVo3BmiyrTBx0/view | Trong video thấy khách chọn tag cấp 1 + tag cấp 3 khi filter -> Vì vậy sẽ khi filter sẽ hiển thị all những object có gắn tag 1 và tag 3
-> Không phải là bug | HuongDT | 2024-06-24 00:00:00 | Other | https://jira.scuti.works/browse/ED-865
3.0
4.0
5.0
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet: CR 2, CR3 UAT 52024
No | Category | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | CR 3 (Change UI) | Lock/Monitoring | Otake | 2024-02-05 00:00:00 | High | Rejected | Sử dụng acc:
GV: (example1695612269124795@example.com) 
HS : (UC1UXGHX1679405) 
Môi trưởng : STG
Device tái hiện (Chỉ khi mà dùng 2 máy khác nhau mới tái hiện được):
・Windows(ASUS)       
win 10 pro education     Chorme : 123.0.6312.59        Ver.1.0.0
・Chromebook(Lenovo))         
Google ChormeOS 122.0.6261.137        Chorme : 122.0.6261.137        Ver.1.0.0

----------

1. Giáo viên mở màn monitoring của học sinh.
2. HS lock object A
3. GV chọn object A và xác nhận obj đó không thể lock hoặc unlock

Expect
Giáo viên không thể lock/unlock obj của HS

Actual
GVcó thể lock/unlock object của học sinh.

Video
https://drive.google.com/file/d/1I6I_JhZ0HefFSxaQg9CyU0KTrshDai5a/view?usp=sharing | Hiện tại Scuti không tái hiện được
Nhờ khách hàng check lại xem còn không? | GiangPT | 2024-05-02 00:00:00 | NG | https://jira.scuti.works/browse/ED-854 | Hiện tại chưa tái hiện được ở trên môi trường dev : https://drive.google.com/file/d/1-0xqRbEnAIk2vyskRO--oVTS2_bkSXoo/view?usp=drive_link
2.0 | CR 2 (Change Search) | Edit Digital tool | Otake | 2024-02-05 00:00:00 | High | Closed | 1. Từ màn hình Quản lý, nhấn vào button Edit Set, sau đó Edit thêm Slide mới.                        
2. Hoàn thành edit                        
                        
Kết quả kì vọng                        
Hiển thị slide đã add thêm mới                        
                        
Kết quả thực tế                        
Không hiển thị slide đã add thêm mới                        
                        
Video                        
https://drive.google.com/file/d/1qOD1YXG-eSbilOzB_E6ZpCWeLrJ16saU/view | Hiện tại Scuti không tái hiện được
Nhờ khách hàng check lại xem còn không? | GiagnPT | 2024-05-02 00:00:00 | OK | https://jira.scuti.works/browse/ED-855
3.0 | CR 3 (Change UI) | Học nhóm | Otake | 2024-08-05 00:00:00 | High | Closed | 1. GV start Học nhóm.
2. Ở màn hình Học nhóm, HS nhấn icon Digital tool

Kết quả kì vọng
HS nhấn button Digital tool thì se di chuyển màn hình

Kết quả thực tế
HS nhấn button Digital tool thì màn hình không thay đổi
HS mà nhấn button Note của mình thì di chuyển sang màn hình Digital tool
Acc sử dụng:
先生アカウント        Teacher_4        
sensei4@otake.com                Otake12345
                
生徒アカウント        Student_4        
UC18XU7S10                Otake12345

Video
https://drive.google.com/file/d/1nS7UA7DimNn_wjHrImZPHxRiruVXrtnx/view | Hiện tại Scuti cũng không tái hiện được | NG | Hiện tại chưa tái hiện được ở trên môi trường thật trên Testflight
Evidence: https://drive.google.com/file/d/1RTF78yDZIl8cN_eekeivicoA8vmtTo0e/view?usp=drive_link
4.0 | CR 2 (Change Search) | Tạo mới Set digital tool | Otake | 14/5 | High | Acc sử dụng        
Quyền Otake：t_ohtake@ohtake-edu.com:iMac        
        
1,Thực hiện đăng ký Set ở màn hình Đăng ký digital tool        
2,Add thêm obj hay text bất kỳ        
3,Nếu double click vào text thì 1 phần màn hình thành trắng xóa        
4,Nếu click vào chỗ đó thì lại quay về lúc đầu        
        
*Video tham khảo: imac
  デジタル教具登録画面バグ？.mp4 | Hiện tại tái hiện được trên môi trường dev nhưng xác xuất xảy ra thấp, cần thêm thời gian
5.0 | CR 2 (Change Search) | Tạo mới Set digital tool | Otake | 15/5 | High | 1.Tạo Set Cuộc sống thường ngày
2. Khi đang tạo Set, thực hiện Copy paste slide

Kết quả kì vọng:
Slide có thể copy paste bình thường, slide đã được paste có thể load chính xác

Kết quả thực tế
Có thể copy và paste, nhưng slide đã paste lại ko load được, thành màu trắng
Nếu từ màn hình Edit Set, rồi confirm lại slide đó lần nữa thì việc copy paste slide đang không được phản ánh

Video

https://drive.google.com/file/d/14bID0S1TbQaUY0ZLWCiB4qZBE7ezfd7t/view | Hiện tại tái hiện trên môi trường dev
6.0
7.0
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet: Change UI CR 3 Otake test Dev 4
No | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Change screen layout | Otake | 2024-08-04 00:00:00 | High | Closed | ＞Acc sử dụng
GV（gv2@gmail.com）HS（UC93WGN9T111907）"                                        
1.GV bắt đầu tiết học monitoring (HS không làm gì cả)
2. Làm theo các step của item test, confirm hiển thị UI menu"                                        
3.GV sẽ confirm hiển thị của UI menu khi chọn OBJ                                        
4.Nếu không có chỗ có thể hiển thị UI menu ở phía trên board
　thì nó sẽ được hiển thị ở bên dưới obj"                                        
5.Di chuyển obj xuống phía dưới giống như thế
　rồi confirm hiển thị UI menu"                                        
6.Phát hiện thấy ở bên dưới có chỗ Ui được hiển thị ra và có những chỗ ko hiển thị ra                                        
・Video quay khi đã start monitoring                                        
・Video tham khảo
（FT_CR3_44）UIメニュー表示バグ.mp4 | OK | https://jira.scuti.works/browse/ED-634
2.0 | Change screen layout | Otake | 15/4 | High | Closed | Acc sử dụng                        
GV：（gv2@gmail.com）HS：（UC93UDVXC111902）                        
test ID:(FT_CR3_57):teacher(Monitoring - List Note student)                        
                        
1,GV thực hiện start tiết học monitoring với HS.                        
"2,Du chuyển obj HS đã add thêm tới vị trí đè lên text editer bên dưới Note học sinh (Tên học sinh thuộc đối tượng monitoring)
"                        
3,Điều chỉnh vị trí obj để Submenu trong dấu 3 chấm sẽ đè lên                        
"4,Submenu không lệch sang chỗ khác để hiển thị, mà lại  hiển thị đè lên text editer (tên học sinh thuộc đối tượng monitoring)
　（Icon Back lại List bên trái phía đưới Note học sinh cũng bị đè lên tương tự."                        
*Video tham khảo: ASUS                        
FT_CR3_57　サブメニューが、テキストエディタに重なるバグ（ASUS）.mp4                          
"Video tham khảo;Lenovo
FT_CR3_57　サブメニューが、テキストエディタに重なるバグ（Lenovo）.mp4 | OK | https://jira.scuti.works/browse/ED-662
3.0 | Change screen layout | Otake | 15/4 | High | Pendding | Acc sử dụng                                                
GV：（gv2@gmail.com）HS：（UC93UDVXC111902）                                                
test ID:(FT_CR3_57):student(Student group note)                                                
                                                
1, GV start Học nhóm với HS                                                
2,HS add thêm obj ở Note học nhóm, và cho di chuyển tới gần Pulldown List Học nhóm ở phía trên của màn hình.                                                
3,Điều chỉnh vị trí obj để UI menu chèn lên nó                                                
4,Khi mở pulldown List Học nhóm của mình, UI menu bị hiển thị chèn vào                                                
                                                
Video tham khảo(Ipad)                                                
FT_CR3_57　iPAD　グループ学習　サブメニューの重なりバグ？.mp4 | Taishi | 22/04 | OK | VanTT:Theo spec: Menu không được đè lên menu hiển thị và các button trong học nhóm => tức là vẫn ưu tiên hiển thị các button trong học nhóm và các button được phép hiển thị đè lên menu, sub menu

Taishi 22/04 : Taishi trao đổi với khách

Taishi : 
Đã trao đổi và thống nhất với khách hàng như sau :
Vì chỗ này không ghi trong spec + ưu tiên thấp nên bên mình sẽ nói chuyện với khách sau khi làm xong CR 2, 3.
4.0 | IT check list_9 | Otake | 19/4 | High | Rejected | Sử dụng acc:                                        
GV2：（gv2@gmail.com）HS1：（UC93UDVXC111902）HS6:（UC93WGN9T111907）                                        
est ID:（IT_CR3_9）：student(Student group note)                                        
                                        
1,GV２ sử dụng nhóm cũ, start Học nhóm với HS 1 và HS 6                                        
2, HS1 và HS 6 di chuyển đến Note học nhóm                                        
3, HS 1 và HS 6 cùng insert obj                                        
4, GV kết thúc Học nhóm, rồi tạo Học nhóm mới                                        
5,HS sẽ thấy hiển thị ra Menu chỉ thị để quay về note của mình khi kết thúc Học nhóm, nên sẽ quay về Note của mình.                                        
6,HS 1 sẽ di chuyển tới Note của nhóm mới tạo, insert obj mới                                        
7,GV On chức năng để HS có thể nhìn được group khác                                        
8,HS 6 sẽ copy obj mà HS 1 đã add, rồi paste vào Note học nhóm ở step 2                                        
9,Kết quả kì vọng＞Obj được paste thành công                                        
　Kết quả thực tế＞Nhấn giữ màn hình không phản úng. Click chuột phải cũng ko phản ứng                                        
                                        
・Video tham khảo                                        
Video tái hiện | Taishi | 22/04 | OK | Taishi 22/04 : Taishi trao đổi với khách

Taishi 22/04: Nguyên nhân là do Checklist tiếng Nhật dùng Google dịch nên dễ hiểu nhầm.
Đã trao đổi và thống nhất với khách hàng là đây không phải là bug,
5.0 | ST_CR3_2 | Otake | 22/4 | High | Closed | Sử dụng acc:
GV: (gv2@gmail.com) 
HS 6: (UC93WGN9T111907)

--
1, Thêm obj theo hướng dẫn của test

2.Đã xác nhận rằng việc xóa các slide bằng bàn phím không được thực hiện.

3. Khi tôi xóa một obj bằng bàn phím trên chromebook/Lenovo, phím xóa không phản hồi ngay sau khi bỏ focus slide và focus lại obj. 
Đã quan sát thấy phản hồi kém của phím xóa. 

Windows(ASUS)        win 10 pro education        
Chorme : 123.0.6312.59        Ver.1.0.0

Chromebook(Lenovo)
Google ChormeOS 122.0.6261.137        
Chorme : 122.0.6261.137        Ver.1.0.0

・Video tham khảo                                        
Video tái hiện         
Video tái hiện 2 | OK | https://jira.scuti.works/browse/ED-799 | Taishi 25/04:　
Khách hàng đã check và close bug rồi
6.0 | ST_CR3_5 | Otake | 22/4 | High | Not Bug | Sử dụng acc:
GV: (gv2@gmail.com) 
Học sinh 1: (UC93UDVXC111902) 
Học sinh 6: (UC93WGN9T111907)

1.Giáo viên bắt đầu học nhóm ( Nhóm có Học sinh 1 & Học sinh 6 và bắt đầu học nhóm)
2.Học sinh 1 di chuyển đến note học nhóm và insert obj
3.Học sinh 6 xoay, thay đổi kích thước và di chuyển obj của Học sinh 1, sau đó giữ focus.
4.Học sinh 1 xác nhận đang là status focus và nhấn nút quay lại.
5. Hành động trước đó của Học sinh 1 là trước khi có obj nên đồ vật đó biến mất.
6. Obj không biến mất và vẫn còn nhìn thấy được.
Có video tham khảo. (Đay là video trên Windows nhưng obj tương tự xảy ra trên 3 thiết bị.)

1. Windows(ASUS)        win 10 pro education        Chorme : 123.0.6312.59        Ver.1.0.0

2. Chromebook(Lenovo))         Google ChormeOS 122.0.6261.137        Chorme : 122.0.6261.137        Ver.1.0.0

3.iPad Air 17.4.1                
TestFlight “Dev Edua Cloud”  (1.0.2 (5))

Actual:
HS 6 thao tác với object của HS 1 (đang focus hoặc k focus obj này)
HS 1 click button Back
=> Khi HS6 k focus vào obj thì back về trạng thái trước đó, tức là object bị biến mất 
Khi HS6 focus vào obj thì không back về trạng thái trước đó, tức là object không bị biến mất 


Expect:
HS 6 thao tác với object của HS 1 (đang focus hoặc k focus obj này)
HS 1 click button Back
=> back về trạng thái trước đó, tức là object bị biến mất 


Video bug

Nếu không focus thì không sao như video này | Taishi | 45405.0 | OK | VanTT: HS 1 insert object
HS 6 thao tác với object của HS 1
HS 1 click button Back
=> back về trạng thái trước đó, tức là object bị biến mất là đúng rồi
===========================
HuongDT 23/04: 
TH1:
HS 1 insert object, không focus object
HS 6 thao tác với object của HS1, focus object
HS 1 Click button Back 
=> không có action gì xảy ra
TH2: 
HS1 insert object, không focus object
HS 6 thao tác với object của HS1, không focus object
HS 1 Click button Back
=> Mất object 
Hiện tại logic đang như cũ, đã tái hiện trên STG nên không phải là bug

Taishi 23/04:
Đã trao đổi và thống nhất với khách hàng là đây không phải là bug.( Hệ thống cũ cũng là như vậy nên đây không phải là bug)
7.0 | ST_CR3_2 | Otake | 30/4 | High | Closed | Khách lại báo là  Không được xoá slide bắng phím tắt trên bàn phím

Lý do: User có thể xoá nhầm slide bằng bàn phím

Phần sửa : Không được xoá slide bắng phím tắt trên bàn phím (key delete) | Taishi | https://jira.scuti.works/browse/ED-799 | 02/05 Taishi: Bên Scuti nhờ Otake test và close bug rồi
07/05 Taishi:
Khách hàng đã check và close bug rồi
8.0
9.0
10.0
11.0
12.0
13.0
14.0
15.0
16.0
17.0
18.0
19.0
20.0
21.0
22.0
23.0
24.0
25.0
26.0
27.0
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
## Sheet: Search CR 2 Otake test Dev 4202
No | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Quyền Admin_Nhầm Hán tự | Otake | 2024-04-19 00:00:00 | High | Closed | 1．Tại màn hình Danh sách, chọn 1 obj tùy ý
2.　Tại màn hình Edit, confirm title 第一層（選択）

 Kết quả kì vọng
Hiển thị đúng text của title

Kết quả thực tế
Chữ「層」lại bị sai thành chữ 「届」.

Ảnh
FT_CR2_62.png | Otake check lại và OK, chuyển Close (24/4) Thúy note | Thuy | OK | Đã fix
VanTT: đã fix
2.0 | Quyền Admin_search | Otake | 2024-04-19 00:00:00 | High | Pendding | 1. Dùng acc Admin 
2504otake@gmail.com        fvmWNM58
2. Tại màn hình Quản lý, nhấn button List Ảnh- Edit
3. tại màn hình Danh sách, nhấn button Search
4.Trong cửa sổ tìm kiếm, tìm bằng text ドリンク
5.Confirm kết quả tìm kiếm

Kết quả thực tế:
Khống hiện kết quả search là Ảnh có chứa chữ ドリンク
Kết quả mong muốn:
hiện kết quả search là Ảnh có chứa chữ ドリンク

Dự đoán: Đối với những tên có chứa ký tự có gắn Âm đục trong tiếng NHật ('', ・), và là tên sẵn khi upload (không phải là edit tên bằng tay) thì sẽ không thể search được bằng Free word ở cửa sổ tìm kiếm | Thúy (25/4): Chốt với khách.Là bug phụ thuộc thiết bị (iOS ) nên sẽ điều tra và fix sau tháng 4.
Khách sẽ thử upload Digital tool bằng máy Window xem có hiện tượng giống này không. | Thuy | OK | https://jira.scuti.works/browse/ED-741
3.0 | Quyền Admin_search Cuộc sống thường ngày | Otake | 2024-04-19 00:00:00 | High | Scuti Closed | 1.　Tại màn hình List Ảnh, nhấn button Search
2.　Nhán Cuộc sống thường ngày
3.　Nhấn Item lớn (VD「学校」）
4.　Nhấn Item nhỏ (VD「授業」）

 Kết quả kì vọng
Filter theo 学校ー授業

Kết quả thực tế
Không filter kết quả (màn hình bên dưới ko thay đổi gì)

Video
FT_CR2_82.mp4
https://drive.google.com/file/d/1kyMVFze_naKuYNHFohpBBbUD-0G8r2-p/view | OK | https://jira.scuti.works/browse/ED-818 | Lỗi BE, nhờ BE check lại
Hương check 24/4: Xác nhận đúng là bug, đã log bug ED-818
4.0 | Quyền Admin_Gắn tag Bộ môn khi Edit | Otake | 2024-04-19 00:00:00 | High | Closed | 1.　Tại màn hình Danh sách ẢNh, chọn Ảnh Bộ môn (coi là ảnh A)                        
2.　Nhấn button 教具名とタグを編集する                        
3.　Gắn tag mới (giả sử là đã gắn tag lần 1, lần này gắn tag lần 2)                        
4.　Tại tag cấp 4, nhập tag mới                        
5.　Nhấn 編集完了, nhấn Tạo                        
6.　Từ màn hình List, lại chọn lại A, confirm xem nội dung tag lần 2 mà mình vừa tạo xem tag cấp 3 hoặc tag cấp 4 đã được tạo chưa                        
                        
 Kết quả kì vọng                        
Có thể gắn tag cấp 3 và tag cấp 4 mới từ màn hình Edit                        
                        
Kết quả thực tế                        
Từ màn hình Edit, không thể gắn mới tag cấp 3 hoặc tag cấp 4
動画        
Video 2
FT_CR2_145（1）.mp4 | Otake check lại và OK, chuyển Close (24/4) Thúy note | Thuy | OK | Đã fix
VanTT: đã fix
5.0 | Quyền Admin_Gắn tag Bộ môn khi Edit | Otake | 2024-04-19 00:00:00 | High | Closed | 1.　Ở màn hình Danh sách Ảnh, chọn Ảnh Bộ môn (coi là ảnh A)        
2.　Nhấn butoon 教具名とタグを編集する        
3.　Gắn tag mới (Đang được gắn 1 lần tag rồi, và lần này gắn tag lần 2)        
4.　Tag cấp 3 thì tạo tag mới (nhập mới)        
5.　Tag cấp 4 cũng là nội dung tag mới (nhập mới)        
        
        
Kết quả kì vọng        
tag Cấp 4 sẽ không có nội dung suggest (do tag caaspc 3 là nội dung mới nhập)
        
Kết quả thực tế        
Nội dung suggest hiển thị ra ở tag cấp 4 đang không phải con của nội dung tag cấp 3        
Video 
     FT_CR2_145（3）.mp4 | Otake check lại và OK, chuyển Close (24/4) Thúy note | Thuy | OK | Đã fix
VanTT: đã fix
6.0 | Quyền Admin_edit Bộ môn | Otake | 2024-04-22 00:00:00 | High | Rejected | 1.　Ở màn hình Danh sách Ảnh, chọn Ảnh Bộ môn (coi là ảnh A)                        
2.　Nhấn butoon 教具名とタグを編集する                        
3.　Gắn tag mới (Đang được gắn 1 lần tag rồi, và lần này gắn tag lần 2)                        
4.　Tag cấp 3 thì tạo tag mới (nhập mới)                        
5.　Tag cấp 4 cũng là nội dung tag mới (nhập mới)
                                                                        
Kết quả kì vọng                        
Cả tag cấp 3, tag 4 đều gắn tag với nội dung mới tinh                        
                        
Kết quả thực tế                        
Nội dung tag của lần gắn thứ 2 đang giống y hệt nội dung của lần thứ 1 (mặc dù đã edit rồi)    
Video        
FT_CR2_145（3）.mp4 | Hiện tại phía Scuti đang không tái hiện được bug. 
Nhờ khách hàng check lại giúp. 
Evidence: https://drive.google.com/file/d/1ZxYrNtdwP5xVSfqn4U_nwNIp9a04vLZN/view?usp=drive_link

Otake check và thấy ko còn lỗi nữa, chuyển Reject (24/4 Thúy note) | GiangPT
Thuy | 22/04/2024 | NG | VanTT: không tái hiện được bug, evidence: https://drive.google.com/file/d/1ZxYrNtdwP5xVSfqn4U_nwNIp9a04vLZN/view?usp=drive_link
Tuy nhiên phát hiện ra bug khác trong quá trình verify
7.0 | Quyền Admin_Hiển thị tên ảnh | Otake | 2024-04-19 00:00:00 | High | Closed | 1.　Tạo obj có tên nhiều hơn 21 ký tự. Ví dụ 「かぶとむし2_昆虫_堅牢_昆虫学_昆虫コレクション」（25 ký tự）        
2.　Nhấn button そざい一覧・編集        
3.　Count số lượng ký tự hiển thị của obj かぶとむし2_昆虫_堅牢_昆虫学_昆虫コレクションのオブジェクト        
　　confirm xem có đang hiển thị max 20 ký tự không        
        
 Kết quả kì vọng        
Tên obj hiển thị max 20 ký tự        
        
kết quả thực tế        
Trong 25 ký tự tên ảnh, đang hiển thị 19 ký tự        
※Khách dự đoán: Đối với chữ ぶ」, thì hệ thống đang count 「゛」là 1 ký tự        
tức là đang count theo kiểu: 1「か」　2「ふ」　3「゛」　4「と」　5「む」　6「し」        
Video        
FT_CR2_164.mov | Otake check lại và OK, chuyển Close (24/4) Thúy note | Thuy | OK | Đã fix
VanTT: đã fix
8.0 | Quyền Admin_Hiển thị tên ảnh | Otake | 2024-04-19 00:00:00 | High | Closed | 1.　Chuẩn bị obj có tên >=21 ký tự VD「かぶとむし2_昆虫_堅牢_昆虫学_昆虫コレクション」（25 ký tự）        
2.　Nhấn button そざいの登録, add thêm ảnh đã chuẩn bị         
3.　Count số lượng ký tự của ảnh có tên「かぶとむし2_昆虫_堅牢_昆虫学_昆虫コレクション」        
4.　Nhấn button 画像の読み込み        
5.　Ở màn hình tiếp thep, Count số lượng ký tự hiển thị ra ở phần tên của ảnh đó        
        
 Kết quả kì vọng        
Ở màn hình này, tên ảnh hiển thị max 10 ký tự, sau đó hiển thị 3 chấm ở cuối        
        
Kết quả thực tế        
Ở màn hình ngay sau khi upload Ảnh xong, tên obj đang được hiển thị dài (34 ký tự, và 3 chấm từ ký tự thứ 35)        
Tên ảnh có lúc hiển thị 16/17 ký tự (không ổn định)+…        
Tùy vào độ lớn màn hình mà số lượng ký tự hiển thị sẽ thay đổi theo        
        
Video        
FT-CR2_13        
Ảnh        
 FT_CR2_13（1）.png       FT_CR2_13(2).png | Otake check lại và OK, chuyển Close (24/4) Thúy note | Thuy | OK | - Em đã sửa fix cứng 10 kí tự
- Case KH muốn responsive bé lại mà vẫn giữ được ít nhất 10 kí tự là không thể vì layout spect 1 màn hình  4 hàng mỗi hàng 8 item.
VanTT: case fix cứng 10 kí tự => đã fix
9.0 | Quyền Admin_Tạo mới Set Bộ môn hoặc Cuộc sông thường ngày | Otake | 2024-04-22 00:00:00 | High | Closed | 1．Nhấn butoon Tạo Set Cuộc sống thường ngày hoặc Tạo Set Bộ môn                
2.　Nhấn 教具名・タグ付けへ                
3.　Confirm design Ui màn hình                
                
kết quả kì vọng                
Hiển thị của ký tự Tag cấp 2 phải đúng chính tả                
                
Kết quả thực tế                
Đang là 第二層（選択）1. Không cần「１」                
                
Ảnh                
FT_CR2_262.png | OK | https://jira.scuti.works/browse/ED-792 | Vụ check: Trùng ticker 792
10.0 | Quyền Admin_Gắn tag cấp 4 Bộ môn | Otake | 2024-04-23 00:00:00 | High | Closed | 1. Nhấn button Tạo Set Bộ môn/教科のセットの登録                
2.　Nhấn button Gắn tên và tag/教具名・タグ付けへ                
3.　Gắn tag đến cấp 3                
4.　Khi gắn tag cấp 4, thì nhập nội dung đúng 30 ký tự bên dưới                
テキストボックスに入力された文字数をリアルタイムにカウン11（Tên tag có đúng 30 ký tự)                
                
 Kết quả mong muốn                
Gắn được nội dung tag 4                
                
Kết quả thực tế                
Không gắn được tag cấp 4.                
Khi nhấn lại lần nữa vào chỗ tag cấp 4, thì có dấu tích là đang gắn tag (có tag nhưng không có nội dung)                
Ngoài ra, nếu điều tra tag bằng chức năng Search ở màn hình List digital tool màn hình Quản lý thì đang có tag mà không thể gắn ở tag cấp 4 lúc nãy                
                
動画                
FT_CR2_279.mp4 | OK | https://jira.scuti.works/browse/ED-796 | Vụ check: Trùng ticker 796
Hương check: Là bug, nhưng trùng ticket 796
Sau khi tạo mới tag cấp 4 30 ký tự -> enter -> Click button Hoàn thành ở popup chọn tag cấp 4 (完了)
=> Insert tag cấp 4 mới thêm vào textbox
Sau đó click button Chỉnh sửa đã hoàn thành (編集完了) -> Mất tag cấp 4
Kết quả: Vẫn không lưu được tag cấp 4
11.0 | Quyền Admin_Gắn tag Set Bộ môn | Otake | 2024-04-23 00:00:00 | High | Closed | 1.　Nhấn Tạo Set Bộ môn/教科のセットの登録                        
2.　Nhấn button Gắn tên và tag/教具名・タグ付けへ                        
3.　Gắn tag cáp 3 (trong video là nhập 「算数」）                        
                        
Kết quả kì vọng                        
Gắn được tag cấp 3                        
                        
Kết quả thực tế                        
Không gắn được tag cấp 3                        
Tuy nhiên, ở tag cấp 4, lại có thể nhập 「お金」và gắn được tag.                        
Sau đó, tạm thời tiến tới  bước Tạo, sau đó muốn edit lần nữa, nên lại chọn lại Set đó từ màn hình List, và thử nhập lại 「算数」vào cấp 3 để gắn tag.                        
Tuy nhiên, lại không gắn được tag cấp 3, mà tag cấp 4「お金」 cũng biến mất luôn.                        
                        
Video:                        
FT_CR2_285.mp4 | OK | https://jira.scuti.works/browse/ED-796 | Vụ check: Đã fix
Hương check: Là bug
- Dev đã fix: Gắn được tag cấp 3
- Tuy nhiên còn bug: Không gắn được tag cấp 4 -> Close bug 796 thì close bug này
12.0 | Giáo viên thực hiện Monitoring với HS | Otake | 2024-04-23 00:00:00 | High | Rejected | Acc sử dụng
GV：（gv1@gmail.com）HS8：（UC93FQMR2111909）teacher(Monitoring - List Note student)

1,GV start tiết học mornitoring với HS 8.
2, HS mở Digital tool, insert  video và ảnh
3, Ở note cá nhân của Gv, nếu không load lại thì sẽ không phản ánh ảnh, video đã insert

Video tham khảo
https://drive.google.com/file/d/1Q1UH2mYZdyYWMaUgxsJ6GcO_3xBgPKO-/view?usp=drive_link | Hiện tại phía Scuti đang không tái hiện được bug

Otake check và thấy ko còn lỗi nữa, chuyển Reject (24/4 Thúy note) | HuongDT
Thuy | 23/04/2024 | NG | Hương check: Không tái hiện được bug.
- HS insert ảnh/video -> GV vẫn thấy luôn mà k cần load sang slide khác -> KHông tái hiện được bug
13.0 | Edit Set | Otake | 2024-04-23 00:00:00 | High | Closed | 1.　Nhấn List, edit Set/セットの一覧・編集
2.　Chọn 1 Set tùy ý
3.　Confirm button  màu xanh ở bên dưới phía phải: 教具名・タグ付けへ

 Kết quả kì vọng
Button màu xanh phải là「教具名とタグを編集」

Kết quả thực tế
Button màu xanh đang là「教具名・タグ付けへ」

Ảnh
FT_CR2_303.png
https://drive.google.com/file/d/12-fdN9b0WbinrG2Uc_FMS0BUWCLJRMNy/view | OK | https://jira.scuti.works/browse/ED-813 | Hương check:
Là bug-> Đã log
14.0 | Edit Set | Otake | 2024-04-23 00:00:00 | High | Closed | 1.　Nhấn Edit, list Set/セットの一覧・編集        
2.　Chọn 1 Set bất kỳ        
3.　Nhấn button màu xanh Găn tên và tag/教具名・タグ付けへ, để di chuyển tới màn hình Edit tag, nhấn button Edit tên và tag 教具名とタグを編集する        
4.　Gắn đến tag cấp 4        
5.　Nhấn button Hoàn thành edit/編集完了        
        
Kết quả kì vọng        
Gắn được tag cấp 4        
        
Kết quả thực tế        
Khi nhấn button Hoàn thành edit/編集完了, thì tag cấp 4 biến mất        
        
Video        
FT_CR2_314.mp4        
https://drive.google.com/file/d/1bOgcseRXoTzJqv4ppb1eQrS4l7GckU13/view | OK | https://jira.scuti.works/browse/ED-796 | Vụ check: Trùng ticker 796
Hương check: Đúng là bug và đã được Scuti log trước đó.
Trùng ticket 796
15.0 | Edit Set | Otake | 2024-04-23 00:00:00 | High | Closed | 1.　Nhấn Edit, list Set/セットの一覧・編集
2.　Chọn 1 Set bất kỳ
3.　Nhấn button màu xanh Găn tên và tag/教具名・タグ付けへ, để di chuyển đến màn hình Edit tag, sau đó nhấn button Edit tên và tag 教具名とタグを編集する
4.　Chọn ô số 2 (ô ở trạng thái chưa được gắn tag nào), gắn tag từ cấp 1 đến cấp 4.
5.　Nhấn button Hoàn thành edit/編集完了

 Kết quả kì vọng
Gắn được tag từ cấp 1 đến cấp 4

Kết quả thực tế
Nếu nhấn button Hoàn thành edit thì tag cấp 4 biến mất

Video
FT_CR2_315.mp4
https://drive.google.com/file/d/1WOUrPP_3EbjS77UX4Rko-QVaCnOubQ2J/view | OK | https://jira.scuti.works/browse/ED-796 | Vụ check: Trùng ticker 796
Hương check: Đúng là bug và đã được Scuti log trước đó.
Trùng ticket 796
16.0 | Hiển thị tooltip tag cấp 3 và tag cấp 4, bên User | Otake | 2024-04-24 00:00:00 | High | Closed | 1.　Ở màn hình gọi Digital tool, chọn  Môn học và Năm học        
2.　Đối với nội dung tag cấp 3 mà có nhiều hơn 12 ký tự (trong ảnh là 「漢字カード 1年2 塩ビ2mm 塩2」）, cho hiển thị tooltip        
3.　Cho hiển thị tooltip tag cấp 4 (trong ảnh là「アリ_昆虫_社会性_働き者_生態系_デフォルメ」）        
        
Kết quả mong muốn        
Ui của tooltip tag cấp 3 và tag cấp 4 (cái khung) phải giống nhau. Ui của tag cấp 4 đang đúng        
        
Kết quả thực tế        
UI của tooltip tag cấp 3 và cấp 4 đang khác nhau        
        
Ảnh         
Tag cấp 3
https://drive.google.com/file/d/1zfqu3ZeH6Fs4-8lOWos4A8QVBoa-4eAE/view  

Tag cấp 4
https://drive.google.com/file/d/19RZzQXAbLiqmDiQYhQWnZxKCz6OmLIqz/view | OK | https://jira.scuti.works/browse/ED-822 | Hương check 24/4: Đúng là bug
Tuy nhiên UI tooltip của tag cấp 3 mới đúng-> sẽ fix ui tooltip tag cấp 3 và tag cấp giống nhau và giống với tag cấp 3 
BD: https://docs.google.com/presentation/d/1SEl5JsXoxjOqhMLR1UhKnaQ6L54ktrhW/edit#slide=id.p164
17.0 | Nội dung Set ko hiển thị (Bên Giáo viên) | Otake | 2024-04-24 00:00:00 | High | Closed | 1.　Ở màn hình gọi Digital tool, chọn 1 Set bất kỳ, rồi nhấn button Use
2.　Di chuyển tới màn hình Digital board, slide đã được add mới. Confirm hoạt động khi đã add thêm slide

Kết quả mong muốn:
Slide cuối cùng của set đã add sẽ tự động được hiển thị to sang bên phải

Kết quả thực tế
Slide cuối cùng của sẻ đã được add thêm không tự động hiển thị, slide phóng to bên phải trắng xóa

Video (xuất hiện ở cả Ipad, Chromebook, ASUS)
FT_CR2_503.mp4
https://drive.google.com/file/d/1rEZTF84dNXV0yCVGIVK-IaNCmSK2WGaX/view | VanTT: Hiện tại đang không tái hiện được, link evidence https://drive.google.com/file/d/1mj5p5GrI5HRYY-UP1OE4zJsBRIrrmiKA/view?usp=drive_link
=> nhờ bên otake với app: download bản mới nhất trên testflight, trên web: thực hiện F5 lại trang => rồi tái hiện lại
=> nếu vẫn bị lỗi, nhờ bên otake nêu rõ step dẫn đến bị lỗi

Thúy 4/25:Khách hàng bổ sung như sau e nhé:
1. Gọi Set ở board của mình →OK
2. Gọi Set ở board monitoring →OK
3. Back về board của mình, sau đó gọi Set → Có bug
4. Nếu back về TKB, rồi lại confirm slide lại lần nữa thì lại thấy slide của set không được add vào luôn.
動画
https://drive.google.com/file/d/1AfsCD-HEn06-K7F3SSKtOmD9J0P05Xue/view?usp=sharing 
VanTT: đã tái hiện được bug | Vân | 23/04/2024 | OK | https://jira.scuti.works/browse/ED-826
18.0 | Số lượng Favorite tối đa | Otake | 2024-04-24 00:00:00 | High | Closed | 1.　ở màn hình Gọi digital tool, nhấn mark Ngôi sao (Favourite)        
2.　CHọn để thành 90 cái, nên nhấn cái thứ ｎ        
        
Kết quả kì vọng        
Popup sẽ không hiển thị cho đến cái 90, chỉ hiển thị từ cái 91        
        
Kết quả thực tế        
        
Chromebook thì hiển thị popup ở cái 84        
iPad và ASUS thì hiển thị popup ở cái 90.        
Video        
FT_CR2_506.mp4  
https://drive.google.com/file/d/1fJPz6OT1EgHSQtPYVi879XPFxGUpcRq4/view | VanTT: Scuti đã log bug trước đó, chờ dev fix | OK | https://jira.scuti.works/browse/ED-767
19.0 | Ảnh thumbnail của Set | Otake | 2024-04-24 00:00:00 | High | Closed | 1.　ở màn hình gọi Digital tool, nhấn Set
2.　Chọn Set tùy ý
3.　Confirm xem slide 1 có phải là ảnh thumbnail không
　　

Kết quả mong muốn
Ảnh thubnail là slide 1

Kết quả thực tế (trên cả 3 thiết bị)
Ảnh thubnail là slide 2

動画
IT_CR2_9.mp4
https://drive.google.com/file/d/1XEVRAcpr0v-20omHqSjqfYEuGqHwvbqM/view | HuongDT: Hiện tại không tái hiện được với data mới 
Evidence: Link | Hương | 24/04/2024 | NG | Hương check 24/4:
Trường hợp tạo mới set và edit set vừa tạo không bị lỗi
=> Chị Thúy nhờ Khách check lại xem còn bị lỗi không nhé, có thể bug đã được fix rồi. Báo khách tạo mới rồi check nha chị
20.0 | Hiển thị tooltip tag cấp 3 và tag cấp 4 | Otake | 2024-04-25 00:00:00 | Medium | Closed | 1.　Trên iPad, vào màn hình gọi Digital tool, nhấn Icon switch sang Bộ môn, chọn Môn học và Khối lớp        
2.　Sau khi chuyển sang màn hình Tag cấp 3, chạm vào ký tự để hiển thị tooltip        
3.　Sau khi chuyển sang Tag cấp 4, cho hiển thị tooltip        
        
Kết quả mong muốn        
Nếu tap vào ký tự thì cho hiển thị tooltip        
        
Kết quả thực tế        
Tooltip hiển thị khó khăn        
Ví dụ, nếu tap vào ký tự cấp 3 thì không hiển thị tooltip, mà lại chuyển sang cấp 4        
iPadOS 17.4.1     trên testflight  (1.0.2 (17)        
Không có ảnh đính kèm | Cái này không nằm trong BD, nhưng bên mình vẫn fix cho khách hàng vì không mất quá nhiều thời gian. | GiangPT | 25/04 | OK | https://jira.scuti.works/browse/ED-840 | Vân check 25/04: Không có trong DB
21.0 | Hiển thị Tên của Digital tool | Otake | 2024-04-25 00:00:00 | High | Closed | 1. Trên Ipad Nhấn icon Digital tool, để hiển thị obj         
2. Confirm tên hiển thị của obj        
        
Kết quả mong muốn        
Tên của digital tool max 20 ký tự        
        
Kết quả thực tế        
Đuôi của Tên digital tool bị xuống dòng        
        
Ảnh (chữ 「会」 bị nhảy xuống dưới        
https://drive.google.com/file/d/127qFOpuLigjpGqDluLB_zKdJpoKG2l-u/view | OK | https://jira.scuti.works/browse/ED-841 | Vân check 25/04: Khách báo bug bên phía phần khách
22.0 | Add được Set mới | Otake | 2024-04-25 00:00:00 | High | Closed | ST_CR2_6 và 7

1. từ TKB vào màn hình board của mình
2. Gọi Set
3. Add set thành công
4.Chuyển sang chế độ monitoring
5. Gọi Set
6. Add set thành công
7.Từ chế đố monitoring, chuyển sang board của mình
8.Gọi Set 
9. Add set thất bại
10. Back về TKB
11. Lại vào board của mình từ TKB lần nữa
12.Confirm xem slide ở bước 8 có được add chưa

 Kết quả kì vọng
Phải dc add bình thường

Kết quả thực tế
Khi đến bước 8, không thể add thêm được set

Video　Đang quay video trên toàn bộ thiết bị
https://drive.google.com/file/d/1qLIFDMpx2hIFIMdEGPGIn-u-b9seVGNX/view 
Acc:
gvhuong1@gmail.com
gv2@gmail.com
gv1@gmail.com | OK | https://jira.scuti.works/browse/ED-826 | Vân check 25/04: Log trùng bug No17 => dev đang fix https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1160057171&range=18:18
23.0 | Hiển thị màn hình khi Flick | Otake | 2024-04-25 00:00:00 | High | Pendding | 1.Trên iPad, vào màn hình Board
2.Flick từ trái sang phải màn hình

1. Vào màn hình board trên Chromebook
2.Flick trái phải màn hình

 Kết quả kì vọng
Không xảy ra hiện tượng gì

Kết quả thực tế
Màn hình tự di chuyển

Video. (Acc nào cũng bị)

https://drive.google.com/file/d/1Mq-iE6mYLrYME9PDbl2h0c5-b8o7WB2H/view | Đây là tính năng của thiết bị, không phải là bug. 
Khách hàng muốn chặn tính năng này cần có tài liệu cụ thể, và làm cho tất cả action khác của thiết bị (VD: Dùng 2 ngón tay để zoom) 
Nên đây sẽ là 1 CR khá lớn, chứ không phải là bug -> Sẽ chuyển sang giai đoạn sau. | GiangPT | 25/04 | OK
24.0 | Hiển thị tag cấp 3, cấp 4 bên user | Otake | 2024-04-25 00:00:00 | High | Pendding | 1. Đăng ký Ảnh Bộ môn từ màn hình Quản lý. Gắn đến tag cấp 4 (Gọi là A)
2. Ở màn hình gọi Digital tool, sử dụng nội dung Môn học, khối lớp, nội dung tag 3, tag 4 để tìm ảnh A, xem là tag đã valid hay chưa
3. Ở màn hình quản lý, xóa A
4. Từ màn hình Gọi digital tool, một lần nữa sử dụng môn học, khối lớp, tag cấp 3, tag cấp 4 để tìm ảnh A, confirm xem tag có bị xóa hay không.

Kết quả mong muốn
Tag của obj đã xóa ở màn hình quản lý sẽ biến mất khỏi màn hình tag cấp 3 và cấp 4

Kết quả thực tế
Tag của obj đã xóa ở màn hình quản lý không bị biến mất khỏi màn hình tag cấp 3 , tag cấp 4. Nếu không biến mất thì sẽ bị tăng lên ngày càng nhiều

Video
https://drive.google.com/file/d/1xVm2QGpwDxAm2hAX5FnW4BLbtjFRy_VB/view | 1. Lý do tại sao khi xoá Set thì không xoá Tag cấp 4 theo
- Set và Tag là hai đối tượng hoàn toàn độc lập. Chúng chỉ có ràng buộc quan hệ với nhau thôi. 
- 1 Tag cấp 4 có thể gắn với nhiều Set, nhưng 1 Set chỉ có thể gắn với 1 Tag cấp 4. 
- Do vậy khi xoá Tag cấp 4 theo Set thì có thể có những Set khác đang gắn với Tag cấp 4 cũng sẽ bị mất Tag cấp 4 => phải gắn lại Tag cấp 4 cho những Set đó. 
2. Việc xoá hay edit Tag chưa được đề cập trong BD, cần làm BD cụ thể để tính toán tới các trường hợp khác. 
3. Các phương án giải quyết
- Cách 1: Khi xoá Set, cần kiểm tra Tag cấp 4, nếu không còn set nào gắn với Tag cấp 4 này thì xoá luôn Tag cấp 4 đó. 
- Cách 2: Làm hẳn màn hình quản lý (Thêm, sửa, xoá, search) các loại Tag trong hệ thống (Cả cấp 1, 2, 3, 4) 
- Cách 3: Kết hợp giữa hai cách 1, 2.
4. Đề xuất Scuti
- Đây là CR, sẽ làm ở giai đoạn sau tháng 4. Tránh trường hợp phát sinh bug degrate không mong muốn và phát sinh công số. 
 Pending: Do sửa thì risk rất lớn, nên đề xuất khách theo hướng làm hẳn 1 màn hình Quản lý tag. Khách cần xem xét thêm nên để làm sau. Hiện tại chấp nhận hiện tượng này. | GiangPT | 25/04 | OK | https://jira.scuti.works/browse/ED-849 | GiangPT: CR cơ mà vẫn chiều khách để làm.
25.0 | Re Open No3.
Search Digital tool bên Admin | Otake | 2024-04-25 00:00:00 | High | Closed | Refer vào sheet này | OK | https://jira.scuti.works/browse/ED-844 | Nhờ Vân check lại cho ăn chắc.
26.0 | Hiển thị favourite | Otake | 2024-04-25 00:00:00 | High | Closed | *Trên cả 3 loại thiết bị
1, Không quan trọng là Set, hay ảnh, cứ thực hiện đăng ký favourite đến max 90 cái
2,Sau khi favourite xong, tap vào mark Sao vàng để gỡ favourite
3,  Gỡ favourite khoảng tầm 20 cái 
4, Nếu hết Digital tool có thể gỡ favourite thì hiển thị là 「データがありません」
（Số lượng đăng ký vẫn đang còn）
5, Nếu ra khỏi màn hình Favourite, rồi lại di chuyển tới màn hình Favourite 1 lần nữa thì Digital tool đã đăng ký favourite lại hiển thị ra.

Video
https://drive.google.com/file/d/1N7dMCr1f0VEwVGg37UQjKMAW-urAJ07a/view | 1. Bên mình vẫn sẽ chỉnh sửa issuse (Thuý không dùng từ BUG) này cho khách hàng. 
2. Tuy nhiên, khách hàng cần hiểu rõ vấn đề sau
- Đây không phải là bug. 
- Ly do phát sinh ra issuse này do bên mình đang sử dụng phân trang (1 trang có 20 bản ghi) để cải thiện performance. 
- Do vậy, khách hàng ấn Unfavourite thì chỉ tác động đc tới cùng lúc 20 item, nếu muốn tác động tiếp tới 20 item khác thì cần scoll để hiển thị tiếp. 
3. Cách fix 
- Tổng số lượng favourite đang để là 90 item, việc này nếu load hết 1 lần 90 item cũng không quá lâu, nên phía Scuti sẽ bỏ phân trang, luôn luôn hiển thị hết số lượng Favourite. | GiangPT | 25/04 | OK | https://jira.scuti.works/browse/ED-843
27.0 | Hiển thị favourite | Otake | 2024-04-26 00:00:00 | High | Closed | ・Đã tái hiện và confirm trên 3 loại thiết bị

1, Thực hiện favourite 90 cái
2,Di chuyển đến màn hình favourite, thực hiện unfavourite
（Khi này, do tap nhầm, hoặc tap nhạy quá, nên thực hiện unfavourite những item bên phải, phía trên)
3,Khi  tap vào Icon Ngôi sao thì sẽ unfavourite, nhưng trước khi item đăng ký biến mất, phải tap vào Ngôi sao nhiều lần
4, Phát sinh bug số lượng favourite và item đăng ký hiển thị
5, Ở trạng thái đang hiển thị số lượng favourite vượt số lượng max, vẫn tiếp tục unfavourite thì không còn item nào nữa, mặc dù hiển thị số lượng vẫn còn
　(Có thông báo là データがありません, nhưng hiển thị số lượng đăng ký không phải 0)
6, Nếu di chuyển từ màn hình favourite sang màn hình khác, rồi quay lại, thì lại thấy item đăng ký hiển thị đúng số lượng.

Video tham khảo
お気に入り登録数のカウントバグ（No,1）.mp4
https://drive.google.com/file/d/1H17nxZeaLN2Y6Y55hw0lcNyxjAHfVRmD/view 
Video tham khảo (tiếp video trên)
お気に入り登録数のカウントバグ（No,2）.mp4
https://drive.google.com/file/d/1ntlzsT8X3gDb4tzt8Qd719v52h6dxWwW/view | OK | https://jira.scuti.works/browse/ED-848
28.0
29.0
30.0
31.0
32.0
33.0
34.0
35.0
36.0
37.0
38.0
39.0
40.0
## Sheet: List bug cần đối ứng gấp 2024.8
Thứ tự điều tra | 8/23 BUg do Otake log | video tham khảo | Độ ưu tiên | Nguyên nhân
no,1 | Lock It test No 16 | ・Bug Back, Next khi đang học nhóm | グループ学習の戻る進むバグ.mp4 | Cao | - bug xảy ra khi sử dụng group monitoring, sử dụng lock object, undo redo
- nguyên nhân là do dev chưa check việc sử dụng lock undo redo khi người khác click vào object đó
- để xử lý bug này em cần spec cũ trường hợp mornitoring khi người dùng A click chọn object, người dùng B click undo redo object
no,2 | Monitoring  Bug Unlock khi Back | ・Bug Back Next Unlock khi đang Monitoring | モニタリング学習「もどる」「ロック解除」バグ.mp4 | Cao | - bug xảy ra khi sử dụng group monitoring và sử dụng lock object, undo redo
- nguyên nhân giống bug 1
no,3 | Học nhóm Bug di chuyển màn hình | ・Bug di chuyển màn hình (Học nhóm) | モニタリング経由バグ.mp4 | Cao | - bug xảy ra khi 2 digital board giống hệt nhau, không chọn được object
- bug này nguyên nhân là vì 2 digital board giống nhau nên có 1 số điều kiện không được chạy, nên object không thể chọn
- bug này em sửa hết 30p

Đã sửa
no,4 | Hiển thị 2 obj ở màn hình GV | ・Bug Back Next khi đang Monitoring | モニタリング中の戻る・進むボタンバグ.mp4 | Cao | - bug này là bug undo redo
- bug này em cần 1 người dịch nội dung trong video
- bug này có thể gần giống bug 1, 2
no,5 | Handle Có thể nhấn vô hạn button Back | ・Bug Back vô hạn khi đang monitoring | 戻るボタンが無限に押せる.mp4 | Cao | - bug này là bug undo redo
- bug này em cần 1 người dịch nội dung trong video
- bug này có thể gần giống bug 1, 2
no,6 | Vận hành No4 | ・Bug Copy paste khi đang monitoring | オータケ独自テスト運用No.4.mp4 | Cao | - bug này là bug paste object
- nguyên nhân là do không chặn việc paste object khi slide bị xóa và slide mới chưa load xong
- em estimate khoảng 1h ạ

Đã sửa
## Sheet: Handle CR 1 UAT 32024
No | Function | Creator bug | Report date | Priority | Status | Content | Answers | Người trả lời
返信者 | Ngày trả lời
返信日 | Tái hiện được không?

再現できた？ | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | Handle | Otake | 2024-04-01 00:00:00 | High | Not Bug | 1.Thực hiện Học nhóm giữa GV và 2 HS                        
（teacher:UC1HBT419）(student1:UC18XU7S10)(student2:UC1JLP1S1689235)                        
"2.student1 cho hiển thị vài obj trong slide
Chuẩn bị cả obj đang lock và đang không lock
Chuẩn bị 2 slide (phía dưới sẽ gọi là slide 1 và slide 2)"                        
"3.student2 sẽ gỡ lock ở slide 1
　thực hiện thay đổi hướng hoặc thao tác tùy ý"                        
4.student1 copy và paste slide 1 và 2                        
（copy ở trạng thái đã phản ánh obj do student2 thay đổi)                        
＞Theo tôi hiểu thì tại đây nội dung được copy đã xác định.                        
"5.student2 lại thao tác obj ở slide 1 một lần nữa (slide gốc mà student1 đã copy)
"                        
6.student1 thực hiện paste lại lần nữa                        
7. Đã paste ở trạng thái obj đã được student2 thay đổi.                        
"＞Tôi thấy băn khoăn điểm sau: Tôi không nhấn copy slide lại lần nữa, nhưng tình trạng của slide được copy lại thay đổi
Video tham khảo:

ITs Handle UI_4 　質問.mp4 
 Câu hỏi thêm: tại 3:02s, specs Lật trên dưới như vậy đúng chưa? | Other | Otake và Scuti đã thống nhất không phải là bug.
2.0 | Handle | Otake | 2024-01-04 00:00:00 | High | Not Bug | 1. Acc
　teacher(UC1HBT419)
   student1(UC18XU7S10)student2(UC1JLP1S1689235)"                        
2. Thực hiện theo các bước của Its Handle UI_5
3.Khi đến step 10 thì chỉ redo về đến trạng thái 1 slide được gỡ lock.  
Sau đó thấy tình trạng như trong video                     
                      
https://drive.google.com/file/d/17kXTyV45oqVUUlrIPVWrnXvyKpRJ0azD/view                      
Câu hỏi: mn xem đến tận cuối video xem việc paste video như vậy đúng chưa nhé? | Other | Otake và Scuti đã thống nhất không phải là bug.
3.0 | Not Bug
4.0 | Not Bug
5.0 | Not Bug
6.0 | Not Bug
7.0 | Not Bug
8.0 | Not Bug
9.0 | Not Bug
10.0 | Not Bug
11.0 | Not Bug
12.0 | Not Bug
13.0 | Not Bug
14.0 | Not Bug
## Sheet:  UAT-OLD
NO | Chức năng
機能 | Người báo cáo
報告者 | Ngày báo cáo
日付 | Scuti Plan Fix | Độ ưu tiên
優先順位 | Category | Status | 内容
日本語 | オータケ様・タノシー
QA
（翻訳不要） | Nội dung
ベトナム語 | 回答
日本語訳 | Trả lời
ベトナム語回答 | Người trả lời
返信者 | Ngày trả lời
返信日 | Milestone bug
Scuti đánh giá | Tái hiện được không?

再現できた？ | Thuộc ST đã gửi không? | Fix or Not fix? | Ticket Jira | Nội bộ Scuti trao đổi
Sctuti内部相談内容
1.0 | 最後の一枚 | 佐々木 | 2022-10-11 00:00:00 | Medium | Non-fun Bug | Rejected | 内容：動画を移動させると何枚もサムネイルが重複する
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A35:AO35
前提：生徒操作画面
端末：生徒（iPad 15.7)

ステップ
1.生徒は動画を挿入する
2.生徒は動画をスライド上で動かす

期待する結果
動かした動画は任意の場所に移動できる

実際の動き
動かした動画が連続複写される

参考動画
URL：
https://drive.google.com/file/d/1PB_tFGSXtC6Q0z-U7kcys8JUITH2EQfQ/view?usp=sharing

＿＿＿
佐藤メモ
これは非機能要件に関する不具合のようです。非機能要件実装で、解消されますか？ | 依頼（10/17佐藤）
・１つスライドでどのぐらい動画を挿入しましたか？
・ご利用になった全ての動画を送っていただけませんか？
（難しい場合、挿入した動画の容量は何MBを教えてください。）

＿＿＿
調査中
非機能要件が原因の不具合と思われます。非機能要件の改善後に、動きを確認いたします。 | Nội dung: Nếu cho video di chuyển thì sẽ xếp chồng nhiều thumnail
Case: https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A35:AO35
Tiền đề: Màn hình thao tác của học sinh
Thiết bị: Học sinh （iPad 15.7)

Step
1. Học sinh insert video
2. Học sinh xê dịch video trên slide 

Kết quả mong muốn
Có thể di chuyển video vào nơi tùy ý

Action thực tế
Video đã xê dịch được sao chép liên tục

Video tham khảo
URL：
https://drive.google.com/file/d/1PB_tFGSXtC6Q0z-U7kcys8JUITH2EQfQ/view?usp=sharing

＿＿＿
Memo của Sato-san
Có vẻ đây là bug liên quan đến Non-funtional. Có thể được giải quyết bằng việc implement Non-funtional không? | １０月１３日　Giangさん

いくつ疑問を確認させてください。
・１つスライドでどのぐらい動画を挿入しましたか？
・挿入した動画の容量は何MBでしょうか？
・可能ならば、全ての動画を送っていただけませんか？
10/19 佐藤
動画はこちらの3種です。

https://drive.google.com/drive/u/0/folders/134bqcv4lrMefwofJIMrlg5wep42hl0ei 

どのくらいの数を挿入したかは不明ですが、こちらのケースを実施中にバグが出ました。

https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=35:35 | GiangPT 10/13: 
Confirm giúp anh là: 
- Các bạn upload bao nhiêu video/ 1 slide? 
- 1 video của các bạn nặng bao nhiêu MBs? 
- Nếu được thì gửi luôn toàn bộ video của các bạn cho mình? 

Sato san 10/19

Có 3 loại video như sau


https://drive.google.com/drive/u/0/folders/134bqcv4lrMefwofJIMrlg5wep42hl0ei 

Không rõ là đã insert số lượng bao nhiêu, nhưng đã phát sinh bug khi thực hiện case dưới đây
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=35:35 

GiangPT 30/01: 
Reject do Khách hàng không yêu cầu fix, nội dung trong ticket jira | Giảng PT | 2022-10-13 00:00:00 | Nonfunction common | https://jira.scuti.works/browse/ED-73 | VanTT (13/10): Lỗi do tràn memory
-> Sau này sẽ giới hạn số lượng cho 1 slide là 1GB nên không thể tràn được.
2.0 | 最後の一枚 | 佐々木 | 2022-10-11 00:00:00 | 2022-12-01 00:00:00 | Medium | Non-fun Bug | Scuti Closed | 内容：文字を大量に書くとメモリー不足エラーがでて、スライドを選択しても白紙のまま
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A74:AO74
前提：グループ学習中
端末：生徒（iPad 15.7)

ステップ
1.生徒は画面に指で文字や図を書く
2.生徒は表示したいスライドを選択する

期待する結果
・思い通りに字や図が書ける
・スライドが正しく表示される

実際の動き
・メモリー不足という警告が出る
・スライドが白紙のままになる

参考動画
URL：
スライドにはサムネイルが表示されているのに、選択してもスライドが白紙のまま
https://drive.google.com/file/d/1pigLL3FoLJgR3XnbyYMGd3VRBLby4dew/view?usp=sharing

40秒あたりにメモリー不足が出る
https://drive.google.com/file/d/1pigLL3FoLJgR3XnbyYMGd3VRBLby4dew/view?usp=sharing

ーーーーー
佐藤メモ
これは非機能要件に関する不具合のようです。非機能要件実装で、解消されますか？ | 10/19
非機能要件が原因の不具合です。非機能要件の改善後に、動きを確認いたします。 | Nội dung：Khi viết lượng lớn ký tự thì sẽ xuất hiện lỗi không đủ bộ nhớ và cho dù có chọn slide đi nữa thì vẫn là trang trắng
Case：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A74:AO74
Tiền đề：Trong khi học nhóm
Thiết bị：Học sinh（iPad 15.7)

Step
1. Học sinh vẽ ký tự hoặc hình vẽ bằng ngón tay 
2. Học sinh chọn slide muốn hiển thị

Kết quả mong muốn
・Có thể vẽ được ký tự và hình vẽ như ý muốn
・Slide được hiển thị đúng

Action thực tế
・Xuất hiện cảnh báo là không đủ bộ nhớ
・Slide thì vẫn là trang trắng

Video tham khảo
URL：
Trên slide đang hiện thumnail nhưng slide vẫn là trang trắng mặc dù đã được chọn
https://drive.google.com/file/d/1pigLL3FoLJgR3XnbyYMGd3VRBLby4dew/view?usp=sharing
 
Xuất hiện cảnh báo không đủ bộ nhớ ở giây thứ 40 của video 
https://drive.google.com/file/d/1pigLL3FoLJgR3XnbyYMGd3VRBLby4dew/view?usp=sharing

ーーーーー
Memo của Sato-san
Có vẻ đây là bug liên quan đến Non-funtional. Có thể được giải quyết bằng việc implement Non-funtional không? | １０月１３日　Giangさん
・非機能要件のバグです。優先度４を対応した段階で連絡したバグです。
・非機能要件を対応する工程でそのバグを解決します。

ご確認をお願い致します。 | GiangPT 10/13: 
- Bug này thuộc phần Non Function đã báo trước giai đoạn làm P4. 
- Trong quá trình làm Non Function sẽ cải thiện bug này. 

Nhờ khách hàng xác nhận. 

GiangPT 30/01: 
Scuti đã fix, nhờ khách hàng test lại. | Giảng PT | 2022-10-13 00:00:00 | Nonfunction common | https://jira.scuti.works/browse/ED-75 | VanTT (13/10): Lỗi do tràn bộ nhớ
3.0 | 最後の一枚 | 佐々木 | 2022-10-11 00:00:00 | Medium | P4Bug | Closed | 内容：スライドの自動生成がされず、スライドが消える
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A82:AO82
前提：先生と生徒は別の端末を使用
端末：生徒と生徒ともに（iPad 15.7)

ステップ
1.生徒Aが任意のスライドを掴んで順序入れ替え動作をする
2.生徒Bが生徒Aが動かしている最中の全てのスライドを消す
3.スライドの自動生成がされない
4.スライドが自動生成されない状態でスライド追加のプラスボタンを押すとスライド番号がデタラメに表示される

期待する結果
・スライドが自動生成される
・スライドが番号順に正しく追加される

実際の動き
・スライドが自動生成されない
・スライド追加の番号がおかしい
・スライドが時間差で一気に表示される

参考動画
URL：
スライドが自動生成されない動画
https://drive.google.com/file/d/1J3k0fJCi10sYIwHckA1nBk1pk5yQ70be/view?usp=sharing

スライドが自動生成されない状態で、スライドの追加と削除を繰り返すとスライド番号が正しくなく、しばらくすると一気にスライドが追加表示される
https://drive.google.com/file/d/1HTv3yTW7f-G6pE9abV23IecEUe1KrwIU/view?usp=sharing

10月14日追記　Chromebookでも同様の現象を確認しました（佐々木）。
https://drive.google.com/file/d/1v1yDkvLbxBnbjWC7BiQv9071WVbprDke/view?usp=sharing

ーーーーーー
佐藤メモ
これは非機能要件に関する不具合のようです。非機能要件実装で、解消されますか？ | Nội dung：Slide không được tạo tự động, slide biến mất
Case：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A82:AO82
Tiền đề：Gíao viên và học sinh dùng riêng thiết bị
Thiết bị：Học sinh với học sinh（iPad 15.7)

Step
1. Học sinh A lấy slide ngẫu nhiên và thay đổi thứ tự
2. Học sinh B xóa tất cả slide trong khi học sinh A đang thay đổi thứ tự
3. Slide không được tạo tự động
4. Khi ấn button Plus (+) thêm slide trong trạng thái Slide không được tạo tự động thì số trang slide bị hiển thị không theo thứ tự nào cả.

Kết quả mong muốn
・Slide được tạo tự động
・Slide được thêm đúng theo thứ tự số trang

Action thực tế
・Slide không được tạo tự động
・Thứ tự slide thêm vào bị sai sai
・Slide được hiển thị toàn bộ sau một khoảng thời gian

Video tham khảo
URL：
Video slide không được tạo tự động
https://drive.google.com/file/d/1J3k0fJCi10sYIwHckA1nBk1pk5yQ70be/view?usp=sharing

Khi lặp lại việc thêm và xóa slide trong trạng thái Slide không được tạo tự động thì số thứ tự slide không đúng, sau 1 lúc bỗng hiển thị toàn bộ slide
https://drive.google.com/file/d/1HTv3yTW7f-G6pE9abV23IecEUe1KrwIU/view?usp=sharing

ーーーーーー
Memo của Sato-san
Có vẻ đây là bug liên quan đến Non-funtional. Có thể được giải quyết bằng việc implement Non-funtional không? | OK | OK | https://jira.scuti.works/browse/ED-847 | VanTT: 13/10: Có tái hiện được : Chỉ bị lỗi khi 1 HS cùng nhóm kéo thả liên tục slide ở slide con, HS cùng nhóm khác thực hiện xóa slide đồng thời
- Trường hợp thao tác bình thường, HS xóa hết slide -> vẫn tạo ra slide mới
4.0 | ツールバー | 中田 | 2022-10-12 00:00:00 | Medium | Other | Rejected | 内容：生徒画面で「もどる」と「すすむ」が１回ずつしか実行できません。
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1169027452&range=E15
前提：モニタリング中、先生と生徒は別端末を利用
端末：生徒（iPadバージョン不明）、先生（iPadバージョン不明）

ステップ
1.先生は、生徒のノートに入る
2.先生は、生徒のノート上でWeb検索画像を挿入する
3.生徒は、生徒のノート上でWeb検索画像を挿入する
4.先生は、ステップ2.3のオブジェクトをコピーし、5回ペーストする
5.生徒は、「もどる」5回「すすむ」5回を実行する

期待する結果
・生徒が「もどる」「すすむ」を５回押して、先生が挿入したオブジェクトを消したり戻したりすることができる。

実際の動き
・生徒は「もどる」「すすむ」が１回ずつしか押せないため、オブジェクトが編集できない。

参考動画：
https://drive.google.com/file/d/1yupUuZ9spw5CxCOqV_CnZxTQZ3vSGWhR/view?usp=sharing

10月14日追記　佐々木
lenovoChromebookにて、上記のバグ動作確認中、別の現象が生じました。
1.先生は、生徒のノートに入る
2.先生は、生徒のノート上でWeb検索画像を挿入する
3.生徒は、生徒のノート上でWeb検索画像を挿入する
4.生徒は、ステップ2.3のオブジェクトをコピーするために、選択する

期待する結果
・生徒は、先生が挿入したWEB検索画像を選択できる。

実際の動き
・生徒は、先生が挿入したWEB検索画像を選択できない。

参考動画
https://drive.google.com/file/d/1J4DxE6Mw2FRSnMvcLJdk1wfItN3qVoYN/view?usp=sharing
ーーー
佐藤メモ
これはバグだと思います。ご確認をお願いいたします。 | こちらは、テストケースが間違いでした。

現状の仕様では、生徒が自分で挿入したオブジェクトに対してのみ、Back／Nextの操作が可能です。先生が挿入したオブジェクトに対し、生徒はBack／Nextの操作を出来ません。 | Nội dung：もどる」- Backと「すすむ」- Next trên màn học sinh chỉ có thể thực hiện 1 lần 
Case：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1169027452&range=E15
Tiền đề：Trong khi monitoring, giáo viên và học sinh dùng riêng thiết bị 
Thiết bị：Học sinh （iPad không rõ version）、Gíao viên（iPad không rõ version）

Step
1. Gíao viên vào Note của học sinh
2. Giaó viên insert ảnh search web vào Note của học sinh 
3. Giaó viên insert ảnh search web vào Note của học sinh 
4. Gíao viên copy object ở step 2, 3 và paste 5 lần 
5. Học sinh thực hiện「もどる」- Back 5 lần, 「すすむ」- Next 5 lần

Kết quả mong muốn
・ Học sinh ấn 「もどる」-Back「すすむ」- Next 5 lần, có thể xóa hay back lại OBJ mà giáo viên đã chèn

Action thực tế
・Do học sinh chỉ ấn được 1 lần「もどる」- Back「すすむ」- Next nên không thể edit object 

Video tham khảo：
https://drive.google.com/file/d/1yupUuZ9spw5CxCOqV_CnZxTQZ3vSGWhR/view?usp=sharing

ーーー
Memo của Sato-san
Đây là bug. Nhờ bên bạn xác nhận lại. | １０月１７日　Giangさん

・現状の仕様書：生徒が自分で挿入したオブジェクトのみに操作する可能となっています。先生が挿入したオブジェクトをBack／Nextの操作を出来ません。
　→実際にそのように動いているのがバグではないと認識しています。廃棄してもらえないでしょうか？
　※参照ヒアリングシートのQA：https://docs.google.com/spreadsheets/d/1PGHs2jBV72Xd5-HAeKof6YF77p82jg5wmgMCEv-G52k/edit#gid=0&range=367:367 | GiangPT 10/17:
- Specs hiện tại: Học sinh chỉ có thể thao tác Back/Next với object của mình đã insert, không Back/Next với object của Giáo viên insert
-> Actual như hiện tại đang đúng, do vậy ko phải là bug. Nhờ khách hàng reject. 

Q&A xác nhận: https://docs.google.com/spreadsheets/d/1-CbrnZmgbAuOjc2A9sj5XfZIx6eGC2YiNY8T8-qU8n4/edit#gid=1751213500&range=92:92 | Giảng PT | 2022-10-17 00:00:00 | VanTT: 13/10: Học sinh chỉ có thể thao tác Back/Next với object của mình đã insert, không Back/Next với object của Giáo viên insert
-> Actual như hiện tại đang đúng

GiangPT: Cần có link specs hoặc câu Q&A

Quyền: 
https://docs.google.com/spreadsheets/d/1-CbrnZmgbAuOjc2A9sj5XfZIx6eGC2YiNY8T8-qU8n4/edit#gid=1751213500&range=92:92 
Về đặc thù play video thì Q&A này không hỏi cụ thể đến mức như vậy.
5.0 | ツールバー | 中田 | 2022-10-12 00:00:00 | Medium | Other | Rejected | 内容：生徒画面で先生が貼り付けた動画を再生することができない。
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1169027452&range=E15
前提：モニタリング中、先生と生徒は別端末を利用
端末：生徒（iPadバージョン不明）、先生（iPadバージョン不明）

ステップ
1.先生は、生徒のノートに入る
2.先生は、生徒のノート上で動画を挿入する
3.生徒は、生徒のノート上で動画を挿入する
4.生徒は、ステップ2.3のスライドをコピーし、5回ペーストする
5.生徒は、全てのスライドの動画を再生し、動作を調べる

期待する結果
・生徒が全てのスライドの動画を再生することができる。

実際の動き
・生徒は、自分で挿入した動画を再生することはできるが、先生が挿入した動画を再生することができない。

参考動画：
https://drive.google.com/file/d/1tW68dg8I8RyGck3qdSBSLpQVCupH0Gab/view?usp=sharing

10月14日追記　Chromebookでも同様の現象を確認しました（佐々木）。

ーーーー
佐藤メモ
こちらは、仕様で未定義の部分だと思われます。しかし、生徒のノートの上に再生できない動画があるのは変だと思います。スクーティさんの見解をお聞かせください。 | こちらは、テストケースが間違いでした。

現状の仕様では、生徒が自分で挿入したオブジェクトに対してのみ、再生の操作が可能です。先生が挿入したオブジェクトに対し、生徒は再生の操作が出来ません。 | Nội dung：Trên màn của học sinh không thể play được video mà giáo viên đã paste vào

Case：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1169027452&range=E15

Tiền đề：Khi đang monitor, học sinh và giáo viên sử dụng thiết bị khác nhau

Thiết bị：Học sinh (iPad - không rõ version), Giáo viên (iPad - không rõ version)

Step:
1. Giáo viên vào note học sinh
2. Giáo viên chèn video lên trên note của học sinh
3. Học sinh chèn video lên trên note của học sinh
4. Học sinh copy slide của bước 2, 3 và thực hiện paste 5 lần
5. Học sinh thực hiện play toàn bộ các video của tất cả các slide, check action

Kết quả mong muốn:
・Học sinh có thể play được  toàn bộ các video ở tất cả các slide

Action thực tế
・Học sinh chỉ có thể play được các video mà tự mình chèn vào. Còn với các video mà giáo viên đã chèn thì không play được.

Video tham khảo：
https://drive.google.com/file/d/1tW68dg8I8RyGck3qdSBSLpQVCupH0Gab/view?usp=sharing

ーーーー
Ms.Satou memo:
Tôi nghĩa đây là phần chưa được define trong spec. Tuy nhiên việc không thể play các video trên note của học sinh là không hợp lý. Nhờ phía Scuti đưa ra ý kiến. | １０月１７日　Giangさん

・現在の仕様書：生徒が自分で挿入した動画のみに再生する可能となっています。先生が挿入した動画を再生を出来ません。
　→実際にそのように動いているのがバグではないと認識しています。廃棄してもらえないでしょうか？
　※参照ヒアリングシートのQA：https://docs.google.com/spreadsheets/d/1PGHs2jBV72Xd5-HAeKof6YF77p82jg5wmgMCEv-G52k/edit#gid=0&range=367:367 | GiangPT 10/17:
- Specs hiện tại: Học sinh chỉ có thể play với video của mình đã insert, không play với video của Giáo viên insert
-> Actual như hiện tại đang đúng, do vậy ko phải là bug. Nhờ khách hàng reject. 

Q&A xác nhận: https://docs.google.com/spreadsheets/d/1-CbrnZmgbAuOjc2A9sj5XfZIx6eGC2YiNY8T8-qU8n4/edit#gid=1751213500&range=92:92 | Giảng PT | 2022-10-17 00:00:00 | VanTT: 13/10: Học sinh không được quyền làm gì với object của giáo viên
- > Actual như hiện tại đang đúng

GiangPT: Nhờ vân note specs hoặc Q&A cụ thể nhé. 
- Link Q&A  90: Trong monitoring học sinh không được quyền thao tác gì với object của giáo viên: https://docs.google.com/spreadsheets/d/1-CbrnZmgbAuOjc2A9sj5XfZIx6eGC2YiNY8T8-qU8n4/edit#gid=1751213500&range=92:92
6.0 | ツールバー | 中田 | 2022-10-12 00:00:00 | Medium | Other | Rejected | 内容：ペーストされたオブジェクトが、生徒画面では一部表示されないときがあります。
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1169027452&range=E29
前提：先生と生徒は別端末を利用
端末：生徒（iPadバージョン不明）、先生（iPadバージョン不明）

ステップ
1.先生は、オブジェクトをコピーし、30回ペーストし続ける
2.生徒はステップ1の動作中にこの授業に開く
3.生徒は素早く授業TOPにもどる
4.生徒は再びこの授業を開く（繰り返す）

期待する結果
・生徒は、先生がペーストしたオブジェクトを見ることができる。

実際の動き
・先生がペーストしたオブジェクトが、生徒画面では一部表示されないときがある。
（再度、授業を開き直すと表示されます。）

参考動画：
https://drive.google.com/file/d/16bgnPR7JXpF4zZGCme3BoCOr-8uEE5oq/view?usp=sharing

ーーーーーー
佐藤メモ
これは非機能要件に関する不具合のようです。非機能要件実装で、解消されますか？ | 10/19
非機能要件に関する不具合です。
非機能要件を改善後に、動きを確認いたします。 | Nội dung：Có lúc một phần object đã được paste không hiển thị trên màn hình học sinh

Case：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1169027452&range=E29

Tiền đề：Giáo viên và học sinh sử dụng thiết bị khác nhau

Thiết bị：Học sinh (iPad - không rõ version), Giáo viên (iPad - không rõ version)

Step:
1. Giáo viên copy object, paste liên tục 30 lần
2. Học sinh mở tiết học này trong khi step 1 đang được thao tác
3. Học sinh nhanh chóng trở lại TOP tiết học
4. Học sinh mở lại tiết học (lặp lại)

Kết quả mong muốn:
・Học sinh có thể nhìn thấy / xem các object mà giáo viên đã paste.

Action thực tế:
・Có lúc một phần của object mà giáo viên đã paste không được hiển thị trên màn hình của học sinh.
(Nếu thực hiện mở lại tiết học một lần nữa thì các object đó lại hiển thị ra)

Video tham khảo：
https://drive.google.com/file/d/16bgnPR7JXpF4zZGCme3BoCOr-8uEE5oq/view?usp=sharing

ーーーーーー
Ms.Satou memo:
Đây có vẻ là bug liên quan đến yêu cầu non-function. Khi implement non-fuction thì bug này sẽ được giải quyết đúng không? | １０月１７日　Giangさん

・先生が３０回目を次々にオブジェクトをコーピーペーストする場合はシステムが先生と生徒の間に同期する時間が必要になります。同期が終わったら、オブジェクトが全て表示されます。
　→バグではないと認識しております。ご確認をお願い致します。
・Scutiが実装した動画：https://drive.google.com/file/d/1wvaqWQcDlFtXOv46wuHdJqxBZJVeVCNn/view?usp=sharing
※非機能要件の実装が完了した後でも、同期時間を短くするだけです。徹底的に解決できません。 | GiangPT 10/17: 
- Trường hợp GV copy và paste liên tục 30 lần object do hệ thống cần thời gian để đồng bộ dữ liệu giữa GV và Học sinh nê sẽ cần có 1 khoảng thời gian đồng bộ. 
- Sau khi đồng bộ xong thì số lượng object sẽ hiển thị đầy đủ. 

=> Trường hợp này không phải là bug, nhờ khách hàng xác nhận. 

Video Scuti thực hiện: https://drive.google.com/file/d/1wvaqWQcDlFtXOv46wuHdJqxBZJVeVCNn/view?usp=sharing

Note: Kể cả thực hiện Non Function thì cũng chỉ rút ngắn thời gian đồng bộ xuống, chứ không giải quyết được triệt để vấn đề này. | Giảng PT | 2022-10-17 00:00:00 | NG | VanTT: 13/10: Vì cần thời gian loading do có nhiều object . Sau thời gian loading vẫn hiển thị đủ object

GiangPT: Nhờ vân quay video để minh chứng nhé. 
- Link evidence: https://drive.google.com/file/d/1wvaqWQcDlFtXOv46wuHdJqxBZJVeVCNn/view?usp=sharing
7.0 | 最後の一枚 | 佐々木 | 2022-10-12 00:00:00 | Medium | P1~3Bug | Rejected | 内容：拡張機能で画面キャプチャをしたあと、画像をクリックしてもWEB画面にならない
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A43:AO43
前提：先生と生徒は別の端末を使用
端末：生徒（lenovo Chromebook,)　先生（Mac High Sierra バージョン10.13.6）※Chromebookが一台なので会社のPCでブラウザChromeにて実施

ステップ
1.生徒/先生は拡張機能で画面キャプチャをする
2.生徒/先生はEduαcloudの操作画面に戻ると、画面キャプチャが表示される
3.生徒/先生は画面キャプチャされた画像をクリックする

期待する結果
画面キャプチャしたリンクに遷移する

実際の動き
画面キャプチャしたリンクに遷移しない
ただ、画像をクリックしている感じ

参考動画
URL：
https://drive.google.com/file/d/1hpJU1hNTJ0R-gL7HD1JCmvD0J0SuoXil/view?usp=sharing

ーーーーー
佐藤メモ
不具合が生じたWeb画面は、Googleの検索画面です。そのほかの一般的な画面（YouTube、Wikipedia、Google Drive）だと成功しました。こちらは、どのような理由からでしょうか？ | 10/12佐藤
こちら、グーグルの検索画面以外のページにて、WebキャプチャとUARを開く操作ができるか、お試しいただけませんか？（Youtubeや、Wikipediaなど）

10/12佐々木
YouTubeとwikiとGoogleDriveだと成功しました。
ーーーーーーーー
10/19
優先度１〜３のバグです。現在は優先度４のバグ修正期間のため、こちらのバグの修正ができません。1月以降の保守期間に対応いたします。 | Nội dung: Ở chức năng Mở rộng, sau khi đã capture màn hình, mặc dù đã click image nhưng lại không thành màn hình WEB
Case：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=A43:AO43
Tiền đề: Giáo viên và học sinh sử dụng device khác nhau
Device：Học sinh（lenovo Chromebook), Giáo viên（Mac High Sierra version 10.13.6）※Chromebook chỉ có 1 cái nên đã thực hiện tại Chrome browser ở PC công ty

Step
1. Học sinh / Giáo viên capture màn hình bằng chức năng Mở rộng
2. Khi học sinh / giáo viên quay lại màn hình hoạt động của Eduαcloud,  ảnh chụp màn hình sẽ được hiển thị
3. Học sinh / giáo viên click vào hình ảnh được chụp màn hình

Kết quả mong đợi
Chuyển sang link đã capture màn hình

Hoạt động thực tế
Không di chuyển sang link đã chụp màn hình
Cảm giác như kiểu đang click vào image thôi

Video tham khảo
URL：
https://drive.google.com/file/d/1hpJU1hNTJ0R-gL7HD1JCmvD0J0SuoXil/view?usp=sharing

ーーーーー
Sato san memo
Màn hình Web đã phát sinh lỗi là màn hình search của Google. Những màn hình thông thường khác （YouTube、Wikipedia、Google Drive）thì đã không có vấn đề gì. Vì sao lại có bug như này nhỉ？ | １０月１８日　Giangさん
優先度４のバグではないと認識しておりますので、合意したように、他のファイルに移動をお願いいたします | GiangPT 10/18: 
Bug không thuộc giai đoạn P4. Nhờ khách hàng chuyển sang file khác như đã thống nhất. 

GiangPT 30/01: 
Sau khi xem video , em đang thấy người dùng đang mở tab mới của google chrome , lúc này thanh url đang là trống , nên khi chụp màn hình bằng web search thì sẽ không có link trang web đi kèm với ảnh => khi click vào ảnh để chuyển trang sẽ không có thay đổi truyển tới trang trống vì url trống | Giảng PT | 2022-10-18 00:00:00 | other | OK | NG | https://jira.scuti.works/browse/ED-47 | VanTT: 13/10: Web search không nằm trong UAT lần này

GiangPT: 
- Chưa cần nói là thuộc giai đoạn nào. Nhưng giúp anh xem có đúng là lỗi thế không nhé
VanTT: có tái hiện được
8.0 | 共有 | 笠 | 2022-10-12 00:00:00 | Medium | P1~3Bug | Scuti Closed | 内容：コピーした板書にある表が編集できないバグ
ケース：
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1211035026&range=A31:F31

前提：板書の編集中
端末：先生（iPad 15.6.1)
動画のアカウント：otake102@gmail.com、arbPTU78（先生B）
授業：10/14 2時間目　音楽

ステップ
1.先生B〜先生Eは板書共有フォルダより、先生Aの該当のデジタル板書を観覧開始する
2.先生Aは、4x4の表を作成し、全てのマスに文字を入力する
3.先生Aは、ステップ2の表の全てのマスのスタイルを変更する（色、フォントなど）
4.先生Aは、ステップ3の表をカットし、3回ペーストする
5.先生B〜先生Eは、同時に「時間割にコピーする」ボタンを押下する
6.先生B〜先生Eは、同時に任意の時間割へのコピーを実行する
7.先生Bは、コピーした板書の表に任意の編集を加える
8.先生Bは、「もどる」を実行する

期待する結果
7.ステップ4の表の編集が可能なこと
8.「もどる」の動作は、表に対して行われること


実際の動き
7.表の編集は可能だが、文字の書き換えだけができない。
8.「もどる」の動作が、表全体ではなく、表の1つのセルに対して実行される（佐藤追記）


参考動画
https://drive.google.com/file/d/1RI1pr8clw03jyAwa7My67sag8TExwOIA/view?usp=sharing

10月14日追記　Chromebookでも同様の現象を確認しました（佐々木）
ーーー
佐藤メモ
これはバグだと思います。ご確認をお願いいたします。 | 10/12佐藤
こちら、動画のアカウントを教えていただけませんか？（メールアドレス・パスワード）私の方でも操作を試してみます。

10/12笠
使用したのは以下のアカウントになります。
先生A：otake101@gmail.com　dmhTCS64
先生B：otake102@gmail.com　arbPTU78

－－－－－－
10/19
優先度１〜３のバグです。現在は優先度４のバグ修正期間のため、こちらのバグの修正ができません。1月以降の保守期間に対応いたします。 | Nội dung: Bug không thể edit bảng ở board đã copy
Case:
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1211035026&range=A31:F31

Tiền đề: Đang edit board
Device: Giáo viên（iPad 15.6.1)
Acount của video：otake102@gmail.com、arbPTU78（GV B）
Giờ học：10/14Tiết thứ 2　Nhạc/音楽

Step
1. Giáo viên B ~ Giáo viên E bắt đầu xem digital board tương ứng của Giáo viên A từ thư mục share board
2. Giáo viên A tạo một bảng 4x4 và điền ký tự vào tất cả các ô
3. Giáo viên A thay đổi style của tất cả các ô vuông trong bảng từ bước 2 (màu sắc, phông chữ, v.v.)
4. Giáo viên A cắt bảng từ bước 3 và paste ba lần.
5. Giáo viên từ B ~ GVE nhấn nút "Sao chép vào thời khóa biểu/時間割にコピーする" cùng một lúc
6. Giáo viên B ~Giáo viên E đồng thời thực hiện copy vào thời khóa biểu tùy ý
7. Giáo viên B thực hiện các chỉnh sửa tùy ý đối với board đã sao chép
8. Giáo viên B thực hiện "quay lại/もどる"

Kết quả mong đợi
7. Có thể chỉnh sửa bảng ở bước 4
8. Action 「もどる」[Back] phải được thực hiện đối với bảng

Action thực tế
7.Có thể edit bảng, nhưng chỉ việc viết lại ký tự thì không thể thực hiện được。
8.Hoạt động「Back/もどる」được thực hiện đối với 1 cell trong bảng, chứ không phải với toàn bộ bảng（Sato san mô tả thêm）


Video tham khảo
https://drive.google.com/file/d/1RI1pr8clw03jyAwa7My67sag8TExwOIA/view?usp=sharing

ーーー
Sato san memo
Tôi nghĩ đây là bug, nhờ các bạn confirm nhé. | １０月１８日　Giangさん
優先度４のバグではないと認識しておりますので、合意したように、他のファイルに移動をお願いいたします | GiangPT 10/18: 
Bug không thuộc giai đoạn P4. Nhờ khách hàng chuyển sang file khác như đã thống nhất. 

GiangPT 30/01: 
Scuti đã fix, nhờ khách hàng test lại. | Giảng PT | 2022-10-18 00:00:00 | other | OK | NG | https://jira.scuti.works/browse/ED-48 | VanTT: 13/10: Chức năng copy board không nằm trong UAT lần này (có tái hiện được bug)

GiangPT: 
- Chưa cần nói là thuộc giai đoạn nào. Nhưng giúp anh xem có đúng là lỗi thế không nhé
VanTT: có tái hiện được
9.0 | ハイライト | 佐々木 | 2022-10-13 00:00:00 | Medium | Non-fun Bug | Tanosy | 内容：スライドのサムネイルが実際のスライドと異なっている
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1019325366&range=17:17
前提：先生と生徒は別の端末を使用
端末：
先生（Mac High Sierra バージョン10.13.6）※Chromebookが一台なので会社のPCでブラウザChromeにて実施
生徒（lenovoのChromebook）

ステップ
1.先生は、モニタリングで、生徒の画面に入る
2.先生・生徒は、それぞれノート上にハイライトのオブジェクトを５つずつ作成する。すべてのオブジェクトを重ねる。
3.生徒は、任意の罫線マス目を設定する
4.先生は、付箋を挿入する。この際、ステップ２のオブジェクトに重なるように配置する。
5.先生は、全てのオブジェクトをコピーし、3回ペーストする
6.生徒は、ステップ3のスライドをカットし、3回ペーストする
7.先生は、授業を終了する
8.生徒は、授業終了後に自身のノートにて、「先生の書き込みを表示」ボタンをオフにする
9.先生、生徒は、それぞれ生徒のノート上にて、オブジェクトの重なり順を調べる

期待する結果
9.スライドのサムネイルが先生の書き込みをも含めたものになる

実際の動き
9.サムネイルが先生の書き込みを反映していない

参考画像
生徒用と先生用スクショ
https://drive.google.com/file/d/1Rzc4upRtMsJIJv7WhIqiYk2V0Klml5mt/view?usp=sharing
https://drive.google.com/file/d/1NgxwdjeZru3dZFmpfTh4XDPHd-51fcxS/view?usp=sharing | 10/19

Lỗi do Non-funtion. Sẽ xác nhận hoạt động sau khi cải thiện Non-Funtion
10.0 | 消しゴム | 中田 | 2022-10-13 00:00:00 | Medium | Non-fun Bug | Tanosy | 内容：ペンで塗りつぶしたスライドに各オブジェクトを挿入すると、不具合が発生する
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=D12:F12
前提：先生と生徒は別の端末を使用、グループ学習中（生徒A〜Cは同じグループ）
端末：先生、生徒A〜C（いずれもiPad 15.7）

ステップ
1.先生はグループ学習を開始する
2.先生はグループ学習ノートに入る
3.生徒A〜生徒Cは、任意の色・一番太いペンを設定する
5.生徒A〜生徒Cは、1枚目のスライドを隅々まで塗りつぶす
6.生徒Aは、1枚目のスライドに、デジタル教具を挿入する
7.生徒Bは、1枚目のスライドに、罫線マス目を設定する
8.生徒Cは、付箋を挿入する
9.生徒A〜生徒Cは、それぞれ大・中・小の消しゴムを設定して、同時に1枚目のスライドのペンを消していく

期待する結果
6.生徒Aは正常にデジタル教具を挿入することができる
8.生徒Cは正常に付箋を挿入することができる
9.生徒A〜Cは消しゴムでペンを消すことができる

実際の動き
6.デジタル教具挿入後、教具の位置を動かすと「メモリ不足」と表示される。以後、一時的に教具の位置が動かせなくなる
8.付箋２枚目挿入後、画面表示に異変が起きる
9.消しゴムで画面を押している間は消えた状態になるが、画面から離れると元に戻ってしまい、消すことができない

参考動画：
・生徒Aの画面
https://drive.google.com/file/d/1Kc95SSqR-zItYFove1ZbC2S7FVVXMjfd/view?usp=sharing
・生徒Bの画面
https://drive.google.com/file/d/1qZZWnSy5gdtRb8rCScS9FIyoIU9WrNO0/view?usp=sharing
・生徒Cの画面
https://drive.google.com/file/d/1T2UYaJUhpQWmHQZmmUGYVMh15jGcu4Y3/view?usp=sharing | 10/19

Lỗi do Non-funtion. Sẽ xác nhận hoạt động sau khi cải thiện Non-Funtion
11.0 | ハイライト | 佐々木 | 2022-10-13 00:00:00 | Medium | Non-fun Bug | Scuti Closed | 内容：先生と児童の画面が異なっている
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1019325366&range=A23:F23
前提：先生と生徒は別の端末を使用
端末：生徒（lenovo Chromebook,)　先生（Mac High Sierra バージョン10.13.6）※Chromebookが一台なので会社のPCでブラウザChromeにて実施

ステップ
当該ケースステップ6まで実施

期待する結果
生徒Eがペーストを10回した状態がグループ学習に参加しているメンバーに正しく表示される

実際の動き
生徒Eがペーストを10回した状態がグループ学習メンバーと生徒Kの画面に正しく表示されない
※先生の画面には正しく表示されている
また、先生のモニタリング画面でも拡大と縮小の動作がカクつく（重い）

注意！実施PCが2台なので、生徒役A~EはChromebookの1台で、（ログインとログアウトを繰り返して）アカウントを切り替えながら実施しています。
つまり、生徒Eのアカウントでペーストを10回実施後、ログアウトして、生徒Aでログインした結果が添付画像のような状態です。

画像
生徒Aの画面（生徒Kも同様の画面です）
https://drive.google.com/file/d/1AIyFWAwqxiQhBfT7EtlwEtVC6-NDNJL6/view?usp=sharing

先生用画面
https://drive.google.com/file/d/1Gwl35ncHLIas5vCJHHtPhAKcQDD8Z_V9/view?usp=sharing

2つの画面を見比べてください。先生の画面では数えると10個以上ペーストされていますが、生徒の画面では10回のペーストが反映されていません。 | Đang điều tra

Có thể là lỗi do Non-funtion. Sẽ xác nhận hoạt động sau khi cải thiện Non-Funtion | "Nội dung: Màn hình giáo viên và học sinh khác nhau
Case: https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1019325366&range=A23:F23
Tiền đề: Giáo viên và học sinh sử dụng các thiết bị khác nhau
Thiết bị: Học sinh (lenovo Chromebook,) Giáo viên (Mac High Sierra version 10.13.6)

Step
Thực hiện đến step 6 của case tương ứng

Kết quả mong đợi
Trạng thái HS E đã paste 10 lần được hiển thị chính xác cho các thành viên tham gia học nhóm

Hoạt động thực tế
Trạng thái HS E paste 10 lần không được hiển thị chính xác cho các thành viên học nhóm và màn hình của HS K
* Hiển thị chính xác trên màn hình của giáo viên
Ngoài ra, trên màn hình Monitoring của giáo viên, thao tác phóng to và thu nhỏ bị lag (nặng)

Chú ý! Vì thực hiện trên 2 PC, nên học sinh A đến E là 1 máy Chromebook và họ vừa chuyển đổi tài khoản vừa làm (lặp đi lặp lại đăng nhập và đăng xuất).
Tức là, trạng thái như ảnh đính kèm là kết quả sau khi paste 10 lần với tài khoản của HS E, đăng xuất rồi HS A đăng nhập.

image:
Màn hình của HS A (HS K có màn hình tương tự)
https://drive.google.com/file/d/1AIyFWAwqxiQhBfT7EtlwEtVC6-NDNJL6/view?usp=sharing

màn hình giáo viên
https://drive.google.com/file/d/1Gwl35ncHLIas5vCJHHtPhAKcQDD8Z_V9/view?usp=sharing

Hãy so sánh hai màn hình. Nếu đếm ở màn hình của GV thì đang được paste hơn 10 lần, nhưng ở màn hình của HS thì đang không được phản ánh là 10 lần paste | １０月１８日　Giangさん
バグの再現できなかった
➡エビデンス用リンク：
・１ステップ～６ステップ：https://drive.google.com/file/d/1ElbM1lp-VR0Jq7J7G8KBoQ_kmmabwlQU/view?usp=sharing
・生徒Ａがグループノートを閲覧する再度ログイン：https://drive.google.com/file/d/1zF7b2DStpC6sctjcjhWGRYfS43RNEOTi/view?usp=sharing

もっと情報を頂きたいです。

-------------------------------
10/19　佐藤
私の方で３パターンで試したところ、「メモリ不足」が原因のようでした。
①生徒のノートで生徒が実施
②モニタリング中に、先生が生徒のノートで実施
③グループ学習中に、生徒が実施

ステップ
1.【マークペン】のオブジェクトを作成する（重ねる）
2.【ハイライトペン】のオブジェクトを作成する（重ねる）
3.【定規】のオブジェクトを作成する（重ねる）
4.消しゴムでステップ3のオブジェクトの一部を削除する
5.ステップ4のオブジェクトをカットし、10回コピーする
6.「消しゴム」機能の「全消去」を実行する
7.「もどる」を1回押す

非機能要件の実装で、改善されますか？
▼参考動画
https://drive.google.com/drive/u/0/folders/17BXynhEykQMlmepG4bRL-d8_DKR-2pW2 | GiangPT 10/18: 
Không tái hiện được bug
- Link evidence:
Link từ step 1 đến step 6 của case: https://drive.google.com/file/d/1ElbM1lp-VR0Jq7J7G8KBoQ_kmmabwlQU/view?usp=sharing
Link account HS A login lại để xem note học nhóm: https://drive.google.com/file/d/1zF7b2DStpC6sctjcjhWGRYfS43RNEOTi/view?usp=sharing

Nhờ khách hàng cung cấp thêm thông tin

-------------------------------

10/19 Sato san
Tôi đã thử 3 pattern, có vẻ như nguyên nhân là 「Thiếu memory」.
①HS thực hiện trên note của học sinh
②Trong khi đang monitoring, GV thực hiện trên note của HS
③Trong khi đang học nhóm, HS thực hiện

Step  
1. Tạo OBJ 【Mark pen】(chồng lên nhau)
2. Tạo OBJ 【Highlight pen】(chồng lên nhau)
3. Tạo OBJ  【Thước kẻ】(chồng lên nhau)
4. Xóa 1 phần OBJ ở step 3 bằng Tẩy
5.Cut OBJ ở step 4, copy 10 lần
6. Thực hiện「Xóa all全消去」ở chức năng「Tẩy」
7.Nhấn 1 lần「back/もどる」

Thực hiện implement non function thì có được cải thiện không nhỉ?
▼Video tham khảo
https://drive.google.com/drive/u/0/folders/17BXynhEykQMlmepG4bRL-d8_DKR-2pW2 

GiangPT 30/01: 
Scuti đã fix, nhờ khách hàng test lại. | Giảng PT | 2022-10-18 00:00:00 | NG | - Van TT: Không tái hiện được bug
- Link evidence:
Link từ step 1 đến step 6 của case: https://drive.google.com/file/d/1ElbM1lp-VR0Jq7J7G8KBoQ_kmmabwlQU/view?usp=sharing
Link account HS A login lại để xem note học nhóm: https://drive.google.com/file/d/1zF7b2DStpC6sctjcjhWGRYfS43RNEOTi/view?usp=sharing

Xin hãy cấp quyền cho tôi link video.
Nếu đúng như những steps bạn mô tả thì rất khả năng nó là non-function, thiếu memories vì chúng tôi đã thông báo cho các bạn 1 lần vào đợt release 10/03 rồi.
ThoNQ 21.10 
Lỗi tràn bộ nhớ, đã hiển thị thông báo trong video
11.5 | ハイライト | 佐々木 | 2022-10-13 00:00:00 | Medium | Non-fun Bug | Closed | 内容：スライドサムネイルと実際のスライド全画面の画像が違う
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1019325366&range=AJ23
前提：先生と生徒は別の端末を使用
端末：生徒（lenovo Chromebook,)　先生（Mac High Sierra バージョン10.13.6）※Chromebookが一台なので会社のPCでブラウザChromeにて実施
　　　生徒K（Mac High Sierra バージョン10.13.6）

ステップ
当該ケースステップ8まで実施

期待する結果
生徒Aが消しゴムで全消去したあと、「もどる」を実行すると変更が反映される

実際の動き
生徒Aが消しゴムで全消去したあと、「もどる」を実行すると、生徒Aの画面だけ「もどる」の操作が反映されたが、
先生と生徒Kの画面では、左上の小さいスライドのサムネにのみ「もどる」の変更、つまり、もとのオブジェクトが表示されて、スライド全画面は白紙のままである

注意！実施PCは3台。生徒役A~EはChromebookの1台で、（ログインとログアウトを繰り返して）アカウントを切り替えながら実施しています。
先生と生徒KはMacのハイシエラのやつです。

画像
生徒Aの画面
https://drive.google.com/file/d/13xdOj9kJUk_fe8riqCYIQJcY_g6hyi8Q/view?usp=sharing
先生用画面
https://drive.google.com/file/d/1MMgx7ShT-9UX1tBF4LBEAFwydqanyyOG/view?usp=sharing
生徒Kの画面
https://drive.google.com/file/d/1MMgx7ShT-9UX1tBF4LBEAFwydqanyyOG/view?usp=sharing | 10/19
Là lỗi liên quan đến No.11.  Sẽ tổng hợp và đối ứng tại No.11 | "Nội dung: Image của toàn bộ màn hình slide thực tế khác với slide thumbnail
Case:
 https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1019325366&range=AJ23

Tiền đề: Giáo viên và học sinh sử dụng các thiết bị khác nhau
Thiết bị: Học sinh (lenovo Chromebook,) Giáo viên (Mac High Sierra phiên bản 10.13.6)
Student K (Mac High Sierra phiên bản 10.13.6)

Step
Thực hiện đến bước 8 của case tương ứng

kết quả mong đợi
Sau khi học sinh A xóa all bằng Tẩy, nếu thực hiện Quay lại thì thay đổi được phản ánh

Hoạt động thực tế
Sau khi học sinh A xóa all bằng Tẩy, khi thực hiện  「もどる」[Back] , thao tác 「もどる」[Back] chỉ được phản ánh trên màn hình của học sinh A, nhưng
Trên màn hình của giáo viên và HS K, chỉ có thumbnail của slide nhỏ bên trái phía trên có thay đổi 「もどる」[Back], tức là OBJ ban đầu được hiển thị, còn toàn bộ màn hình slide vẫn là trang trắng.

Chú ý! Thực hiện trên 3 PC. HS A ~E là 1 máy Chromebook và họ vừa chuyển đổi giữa các tài khoản vừa thực hiện  (đăng nhập và đăng xuất liên tục).
Giáo viên và học sinh K là Mac High Sierra.

Image
Màn hình của HS A
https://drive.google.com/file/d/13xdOj9kJUk_fe8riqCYIQJcY_g6hyi8Q/view?usp=sharing
màn hình giáo viên
https://drive.google.com/file/d/1MMgx7ShT-9UX1tBF4LBEAFwydqanyyOG/view?usp=sharing
Màn hình của HS K
https://drive.google.com/file/d/1MMgx7ShT-9UX1tBF4LBEAFwydqanyyOG/view?usp=sharing " | １０月１８日　Giangさん
バグの再現できなかった
➡エビデンス用リンク：
・生徒で見る動画：https://drive.google.com/file/d/1MSgXZwEH8fiSlyPVknhkS6BdGRpiteWl/view?usp=sharing
・先生で見る動画：https://drive.google.com/file/d/1u5oPDIDLA8eKNmb0csxufyMTBrh2jbun/view?usp=sharing
・他生徒で見る動画：https://drive.google.com/file/d/1k5i6mkszIGSm3msYxE9XhEdhX4SaWMhS/view?usp=sharing

もっと情報を頂きたいです。

----------------
10/19 佐藤
本件は、No.11の関連事項です。No.11で対応するため、このNo.11.5の項目はCloseします | GiangPT 10/18: 
không tái hiện được
- Link evidence:
Video với view của HS: https://drive.google.com/file/d/1MSgXZwEH8fiSlyPVknhkS6BdGRpiteWl/view?usp=sharing
Video với view của GV: https://drive.google.com/file/d/1u5oPDIDLA8eKNmb0csxufyMTBrh2jbun/view?usp=sharing
Video với view của HS khác: https://drive.google.com/file/d/1k5i6mkszIGSm3msYxE9XhEdhX4SaWMhS/view?usp=sharing

Nhờ khách hàng cung cấp thêm thông tin

10/19 Sato

Bug này là mục liên quan đến No.11. Mục này sẽ colose vì sẽ đối ứng tại No.11 | Giảng PT | 2022-10-18 00:00:00 | NG | VanTT: không tái hiện được
- Link evidence:
Video với view của HS: https://drive.google.com/file/d/1MSgXZwEH8fiSlyPVknhkS6BdGRpiteWl/view?usp=sharing
Video với view của GV: https://drive.google.com/file/d/1u5oPDIDLA8eKNmb0csxufyMTBrh2jbun/view?usp=sharing
Video với view của HS khác: https://drive.google.com/file/d/1k5i6mkszIGSm3msYxE9XhEdhX4SaWMhS/view?usp=sharing
12.0 | 消しゴム | 中田 | 2022-10-13 00:00:00 | Medium | Non-fun Bug | Scuti Closed | 内容：ペンで塗りつぶすと「メモリ不足」になりやすく、その後の動作に不具合が生じる
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=D13:F13
前提：先生と生徒は別の端末を使用、グループ学習中（生徒A〜Cは同じグループ）
端末：先生、生徒A~C（いずれもiPad 15.7）

ステップ
1.先生はグループ学習を開始する
2.先生はグループ学習ノートに入る
3.生徒A〜生徒Cは、任意の色・一番太いペンを設定する
5.生徒A〜生徒Cは、1枚目のスライドを隅々まで塗りつぶす
6.生徒Aは、1枚目のスライドに、Web検索画面を挿入する。
7.ステップ6の画像をノートの記入可能部分の最大限まで拡大する
8.生徒A〜生徒Cは、ステップ７の画像の上から再び、ペンを使ってスライドを隅々まで塗りつぶす
9.生徒Bは、画像を挿入する

期待する結果
8.生徒A~Cは、１枚目のスライドをペンで塗りつぶすことができる
9.生徒Bは画像を挿入することができる

実際の動き
8.
・生徒Aは塗りつぶしをしている途中で「メモリ不足」になり、画面表示に異変が起こる。その後、生徒Aの画面のみずっと固まり、他の生徒が書き込んだものも反映されなくなる。
・生徒Bも塗りつぶし後、「メモリ不足」が表示される。
・生徒Cも塗りつぶしている途中で「メモリ不足」が表示され、その後書き込んでいるにもかかわらずペンが消えるなど異変が起きる。
9.画像を挿入することができない。

参考動画：
・生徒Aの画面
https://drive.google.com/file/d/1cDu9XZRK1wtCJj9mVFv-n4DbDuC1ZLgB/view?usp=sharing
・生徒Bの画面
https://drive.google.com/file/d/1SD8YD6FT7krbe2Qe_wMnYufGAv7nINBB/view?usp=sharing
・生徒Cの画面
https://drive.google.com/file/d/1vBthwFjEcmnnoiTzKWKBa6Woil9FHsLz/view?usp=sharing | 10/19
Lỗi do Non-funtion. Sẽ xác nhận hoạt động sau khi cải tiến non-funtion | “Nội dung: Khi tô bằng Pen thì dễ bị“ thiếu memory ”, và xảy ra lỗi trong thao tác sau đó.
Case:
 https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=D13:F13

Tiền đề: Giáo viên và học sinh đang sử dụng các thiết bị khác nhau, học theo nhóm (Học sinh A ~C học cùng một nhóm)
Thiết bị: Giáo viên, học sinh A ~ C (đều là iPad 15.7)

Step:
1. Giáo viên bắt đầu học nhóm
2. Giáo viên vào note học nhóm.
3. Học sinh A ~ C set màu bất kỳ và pen đậm nhất
5. Học sinh từ A ~ C tô đến mọi góc của slide đầu tiên.
6. Học sinh A chèn màn hình tìm kiếm web vào slide đầu tiên.
7. Phóng to image ở bước 6 đến max của phần có thể viết của Note
8. Học sinh A~Học sinh C sẽ sử dụng pen để tô đến các góc của slide một lần nữa từ phía trên image ở bước 7.
9. HS B chèn một hình ảnh

kết quả mong đợi
8. Học sinh từ A ~C có thể tô vào slide đầu tiên bằng Pen.
9. HS B có thể chèn image

Hoạt động thực tế
 8.
・ Khi học sinh A đang tô thì thành "không đủ bộ nhớ" và xảy ra hiển thị kỳ lạ trên màn hình. Sau đó, chỉ có màn hình của học sinh A bị chững lại và các bài viết của các học sinh khác không được phản ánh nữa.
・ HS B cũng hiển thị "không đủ bộ nhớ" sau khi tô.
・ Học sinh C cũng hiển thị "không đủ bộ nhớ" khi đang tô và sau đó xảy ra hiển thị kỳ lạ như Pen biến mất mặc dù đang viết.
9. Không thể chèn image.

Video tham khảo:
・ Màn hình của học sinh A
https://drive.google.com/file/d/1cDu9XZRK1wtCJj9mVFv-n4DbDuC1ZLgB/view?usp=sharing
・ Màn hình của học sinh B
https://drive.google.com/file/d/1SD8YD6FT7krbe2Qe_wMnYufGAv7nINBB/view?usp=sharing
・ Màn hình của HS C
https://drive.google.com/file/d/1vBthwFjEcmnnoiTzKWKBa6Woil9FHsLz/view?usp=sharing " | １０月１８日　Giangさん

メモリーが溢れちゃったのためのエラー
非機能要件の実装工程で対応します。

優先度4のUATに依属されません。
➡確認してもらって、他のファイルに分けてもらえないでしょうか？ | GiangPT 10/18: 
Lỗi do tràn bộ nhớ. 
Scuti sẽ giải quyết trong quá trình làm Non Function. 

Không thuộc trong UAT P4. 

Nhờ khách hàng xác nhận và tách ra 1 file khác. 

GiangPT 30/01: 
Scuti đã fix, nhờ khách hàng test lại. | Giảng PT | 2022-10-18 00:00:00 | Nonfunction common | OK | Other | VanTT: Lỗi tràn bộ nhớ (đã có toast msg tràn bộ nhớ nhưng vẫn cố insert object)
13.0 | 消しゴム | 中田 | 2022-10-14 00:00:00 | Medium | Change request | Closed | 内容：生徒A・Bが授業TOP画面に戻っても、生徒Cの画面ではオブジェクトが選択中になってしまっている
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=D23:F23
前提：先生と生徒は別の端末を使用、グループ学習中（生徒A〜Cは同じグループ）
端末：先生、生徒A~C（いずれもiPad 15.7）

※テスト時間短縮のため、生徒の人数を減らしてテストしました（５人→３人）

ステップ
1.生徒A・Bはペンのオブジェクトを１つずつ作成する
2.生徒A・Bは、他人が作成したオブジェクトを１つずつ選び、選択状態にする
（２つのペンのオブジェクトが、全て他人によって選択されている状態）
3.生徒Cはステップ2のペンのオブジェクトに消しゴムを利用する
4.生徒A・Bは、ステップ2の状態のまま（オブジェクトを選択状態にしたまま）授業TOP画面へ遷移する
5.生徒Cは、再び消しゴムを利用する

期待される結果
5.生徒Cは消しゴムでオブジェクトを消すことができる

実際の動き
5.オブジェクトが選択中になってしまっているため、消しゴムで消すことができない

参考動画：
https://drive.google.com/file/d/1iRz1d3Qlu8BOubr0ddLhOSDo14YPugQ2/view?usp=sharing

10月14日追記　Chromebookでも同様の現象を確認しました（佐々木）

ーー
佐藤メモ
オレンジ枠に関する不具合は、バグではなく、仕様変更となります。 | 10/19

Là CR. Tôi đã ghi thêm vào list yêu cầu
14.0 | 消しゴム | 中田 | 2022-10-14 00:00:00 | Medium | Change request | Closed | 内容：生徒A・Bが授業TOP画面に戻っても、生徒Cの画面ではオブジェクトが選択中になってしまっている
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=D24:F24
前提：先生と生徒は別の端末を使用、グループ学習中（生徒A〜Cは同じグループ）
端末：先生、生徒A~C（いずれもiPad 15.7）

※テスト時間短縮のため、生徒の人数を減らしてテストしました（５人→３人）

ステップ
1.生徒A・Bはペンのオブジェクトを１つずつ作成する
2.生徒A・Bは、他人が作成したオブジェクトを１つずつ選び、選択状態にする
（２つのペンのオブジェクトが、全て他人によって選択されている状態）
3.生徒Cはステップ2のペンのオブジェクトに全消去を実施する
4.生徒Cは、新規スライドを作成する
5.生徒A・Bは、ステップ2の状態のまま（オブジェクトを選択状態にしたまま）ステップ4の新規スライドへ遷移する
6.生徒Cは、再び全消去を実施する

期待される結果
6.生徒Cは全消去をすることができる

実際の動き
6.オブジェクトが選択中になってしまっているため、全消去することができない

参考動画：
・生徒Aの画面
（新規スライドに一度遷移しても、１枚目のスライドに再び戻ると選択中のままになっている）
https://drive.google.com/file/d/13zPitLrJWvv1sid2bgG2ZKnW90GHL5Rz/view?usp=sharing
・生徒Cの画面
（生徒A・Bが新規スライドに遷移しても、生徒Cの画面ではオブジェクト選択中のままになっている）
https://drive.google.com/file/d/10vlrUVvdrJhL5WSfbVGagAAwVNut6nWr/view?usp=sharing

10月14日追記　Chromebookでも同様の現象を確認しました（佐々木）

ーー
佐藤メモ
オレンジ枠に関する不具合は、バグではなく、仕様変更となります。 | 10/19

Là CR. Tôi đã ghi thêm vào list yêu cầu
15.0 | ピンチインピンチアウト | 笠・中田 | 2022-10-14 00:00:00 | Medium | Other | Closed | 内容：生徒Bが「時計のはり」を動作することができない
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=D35:F35
前提：生徒Aはグループ１、生徒Bはグループ２に所属している
　　（※生徒人数を４人から2人に減らしてテストを実施）
端末：先生、生徒A・B（いずれもiPad15.7）

ステップ
1.先生はグループ学習を開始する。「生徒の画面で他のグループを見られるようにする」をオンにする
2.先生は、グループ１のノートに入る
3.生徒Aは、「時計」「時計のはり（連動）」「時計のはり（非連動）」を挿入する
4.生徒Aは、最大限までピンチインする
5.生徒Bは、最大限までピンチアウトする
6.生徒Aはステップ４の状態のまま、「時計のはり（連動）」を動作させる
7.生徒Bはステップ５の状態のまま、「時計のはり（非連動）」を動作させる

期待される結果
7.生徒Bは「時計のはり」を動かすことができる

実際の動き
7.生徒Bは「時計のはり」を選択することはできるが、動かすことができない

参考動画：
・生徒Bの画面
https://drive.google.com/file/d/1xDdpeUudi4EXPHNGHTsRnSTbX9JFJnV1/view?usp=sharing

10月14日追記　Chromebookでも同様の現象を確認しました（佐々木） | こちら、該当のアカウントと、授業をご共有いただけませんか？私の方で動作を試します。

なお、私がこちらのケースを実行したところ、問題なく動作しました。

ちなみに、「時計のはりを動作させる」とは、URLのような操作を指します。「時計のはり（連動）」と、「時計のはり（非連動）」は、特殊な動作をします。

https://drive.google.com/file/d/1zTF0l19ETkZxGqoF0qone069y4yruyHK/view?usp=sharing


10/17中田
使用アカウントと授業は以下になります。
・先生：otaketeacher-b40@gmail.com　gqsSBL48
・生徒A：UC32JS1870　ldm2AQ63
・生徒B：UC32WSI871　lus2HZ84
授業…10月13日(木) ２時間目 書写

––––––––––-
10/19
バグを再現できませんでした。非機能要件に関わる不具合だと思われます。非機能要件改善後、再度試します。 | まだ翻訳しないでください（佐藤） | 佐藤にて2度試しましたが、再現できませんでした
非機能要件改善後、再度試します | Sato đã thử hai lần, nhưng tôi không thể tái hiện được.
Tôi sẽ  thử lại sau khi cải thiện Non-funtion
16.0 | ピンチインピンチアウト | 笠・中田 | 2022-10-14 00:00:00 | Medium | P4Bug | Closed | 内容：生徒がピンチアウトした後、文字の大きさが元に戻ってしまうバグ
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=D36:G36
前提：前提：先生、生徒は別の端末を利用している
端末：先生、生徒（いずれもiPad15.7）

1.先生はモニタリングを開始し、生徒のノートに入る
2.生徒は、自身の画面上にて、最大限までピンチアウトする
3.生徒は、テキストボックスを挿入する。（この際、テキストボックスが挿入された部分に、スクロールバーを移動させない。テキストボックスが、画面上から見切れた状態で操作を行う）
4.生徒は、テキストボックスに任意の文字50文字程度を入力する
5.先生は、ステップ５のオブジェクトの文字を8ptに変更する
6.生徒は、「もどる」1回、「すすむ」1回押下する
7.生徒は、最大限までピンチインする

期待される結果
7.ピンチイン後、生徒の画面には8ptのテキストが表示される

実際の動き
7.生徒の画面には、文字の大きさを小さく(8pt)する前のテキストが表示される

参考動画：
・先生の画面
https://drive.google.com/file/d/101V2maf3Cij8BwlyIPXskB_O6iaYh46X/view?usp=sharing
・生徒の画面
https://drive.google.com/file/d/196DnpLi_nTPLwmVxJr2XraOdFa9pJguS/view?usp=sharing

ーーーー
佐藤メモ
非機能要件に関する不具合のように思いますが、こちらはいかがでしょうか？ | "Nội dung: Bug size ký tự trở về ban đầu sau khi HS pinch out.
Case: 
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=D36:G36
Tiền đề: Giáo viên và học sinh đang sử dụng các thiết bị khác nhau
Device: Giáo viên, học sinh (đều là iPad15.7)

1. Giáo viên bắt đầu monitoring và vào note học sinh
2. Học sinh pinch out màn hình của mình đến tối đa
3. Học sinh chèn text box. (Tại thời điểm này, không di chuyển thanh cuộn đến phần mà text box được chèn. Thao tác với trạng thái textbox bị khuất ra khỏi màn hình)
4. Học sinh nhập khoảng 50 ký tự tùy ý vào text box
5. Giáo viên thay đổi ký tự của OBJ ở bước 5 thành 8pt
6. Học sinh nhấn 「もどる」[Back] một lần và 「すすむ」[Next] một lần
7. Học sinh pinch in đến tối đa

Kết quả mong đợi
7. Sau khi pinch in, text 8pt được hiển thị trên màn hình của học sinh

Hoạt động thực tế
7. Trên màn hình của học sinh hiển thị text trước khi cho nhỏ size ký tự (8 pt)

Video tham khảo:
・ Màn hình giáo viên
https://drive.google.com/file/d/101V2maf3Cij8BwlyIPXskB_O6iaYh46X/view?usp=sharing

・ Màn hình học sinh
https://drive.google.com/file/d/196DnpLi_nTPLwmVxJr2XraOdFa9pJguS/view?usp=sharing

ー ー ー ー ー
Sato san memo
Nó có vẻ là một bug liên quan đến non funtion, bạn nghĩ sao về bug này?
" | １０月１８日　Giangさん
・再現できました。実施したSTに依属されないバグです。
・以前に佐藤さんと合意したように、Scutiが作成したSTでUATを実装してもらうとなっています。
佐藤さんに確認してもらえないでしょうか？
※Scutiが作成したSTファイル：https://docs.google.com/spreadsheets/d/1XPG6ID7CPMbYXG4nAtihfVq8WunN18rS/edit#gid=1383053975 | GiangPT 10/18: 
- Scuti có tái hiện được, tuy nhiên bug không thuộc ST bên mình đã test. 

Như trước mình và bạn Sato thống nhất sẽ dùng file ST bên mình đã test để UAT> 

Nhờ Sato xác nhận. 

https://docs.google.com/spreadsheets/d/1XPG6ID7CPMbYXG4nAtihfVq8WunN18rS/edit#gid=1383053975 
 
Sato: Vẫn nhờ bạn sửa nhé. | Giảng PT | 2022-10-18 00:00:00 | OK | NG | OK | https://jira.scuti.works/browse/ED-849 | VanTT: có tái hiện được
Tuy nhiên case này không có trong file ST gửi cho khách: https://docs.google.com/spreadsheets/d/1XPG6ID7CPMbYXG4nAtihfVq8WunN18rS/edit#gid=1383053975
17.0 | ピンチインピンチアウト | 笠・中田 | 2022-10-14 00:00:00 | Medium | P1~3Bug | Scuti Closed | 内容：管理画面内・時間割初期設定画面にて「登録」ボタンが押せないバグ
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=F40:G40

前提：学校責任者A・Bは別の端末を利用している
端末：いずれもiPad15.7

1.学校責任者Aは水曜日の時間割に授業を登録する
2.学校責任者Aは、ステップ1の授業にWeb検索画像を挿入する
3.学校責任者Aは、ピンチインピンチアウトを実行する
4.学校責任者Bは、管理画面を開く
5.学校責任者Bは、「時間割初期設定」を開く
6.学校責任者Bは、「授業のある曜日を選択してください」の項目において、水曜日のチェックマークを外す
7.学校責任者Aは、ログアウトし、再びログインする

期待される結果
6.学校責任者Bは、「授業のある曜日を選択してください」の項目において、水曜日のチェックマークを外す
チェックを外した後「登録」ボタンを押すことができる

実際の動き
6.水曜日のチェックマークを外した後「登録」ボタンを押すことができない
授業の開始時間・終了時間・コマの名称を追加すれば押せる
追加した授業の開始時間・終了時間・コマの名称は削除できない(「登録」が押せない)

⇨10/17
佐藤さんよりバグではないか、という旨のご連絡があったので録画のため管理画面を開いたところ
チェックマークを外した後「登録」が押せるようになっていた
(なお、追加した授業は未だ削除できません)

参考画像・動画：
・https://drive.google.com/file/d/1IN2JH0_NMhTLytSDM200q-7CTSDDSMZl/view?usp=sharing 
・https://drive.google.com/file/d/1QJe32n7FP3-jbQ6tucSo2qjMQyteSKNX/view?usp=sharing | 10/19  
Là bug P1~P3. Hiện tại đang là thời gian fix bug P4 nên không fix được bug này. Sẽ đối ứng ở khoảng thời gian bảo trì từ tháng 1 trở đi | 10/19  
Là bug P1~P3. Hiện tại đang là thời gian fix bug P4 nên không fix được bug này. Sẽ đối ứng ở khoảng thời gian bảo trì từ tháng 1 trở đi | https://jira.scuti.works/browse/ED-49
18.0 | ピンチインピンチアウト | 笠・中田 | 2022-10-17 00:00:00 | Other | Medium | P1~3Bug | Scuti Closed | 内容：PDF内の文字が表示されない
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=D41:G41
前提：グループ学習中、生徒A〜生徒Cはグループ１、生徒Dはグループ２に所属している
端末：いずれもiPad15.7

1.先生はグループ学習を開始する。「生徒の画面で他のグループを見られるようにする」をオンにする
2.先生、生徒D、生徒Eは、グループ１のノートに入る
3.生徒Aは、20枚程度の枚数があるPDFを挿入する
4.生徒Bは、ステップ３の動作中、20枚程度の枚数があるPDFを挿入する
5.生徒C〜生徒E、先生は、ステップ３・４の動作中、1枚目のスライド上でピンチインピンチアウトの動作を繰り返す

期待される結果
・正常にPDFが表示される

実際の動き
・PDF内の文字が表示されない
（※他にもいくつかPDFを挿入しましたが、文字が表示されるものと表示されないものがありました）

参考動画：
https://drive.google.com/file/d/1ammp9rXu3IEUjKvf9G603q4lT9Jau_yT/view?usp=sharing

元のPDF：
https://drive.google.com/file/d/1xqwK_iEdp2mx05unVbr2UO_Gtcq77xII/view?usp=sharing

ーーー
佐藤メモ：こちらは、非機能要件の不具合ですが？PDF機能の不具合ですか？ | Nội dung: Các ký tự trong PDF không được hiển thị
Case: https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=D41:G41
Tiền đề: Đang học nhóm, học sinh A đến C thuộc nhóm 1, và học sinh D thuộc nhóm 2.
Thiết bị : Cả hai đều là iPad15.7

1. Giáo viên bắt đầu học nhóm. ON 「生徒の画面で他のグループを見られるようにする」 [Cho phép xem các nhóm khác trên màn hình của học sinh]
2. Giáo viên, học sinh D, học sinh E làm vào note của group 1.
3. Học viên A chèn một tệp PDF với khoảng 20 trang
4. Học viên B chèn một tệp PDF với khoảng 20 trang trong lúc đang thao tác Bước 3
5. Học sinh từ C đến E, giáo viên lặp lại thao tác pinch in pinch out  trên slide đầu tiên trong lúc đang thực hiện các thao tác ở bước 3 và 4.

Kết quả mong đợi
・ PDF được hiển thị bình thường

Hoạt động thực tế
・ Văn bản trong PDF không được hiển thị
(※Tôi đã chèn một số tệp PDF khác, nhưng một số ký tự được hiển thị và một số thì không)

Video tham khảo:
https://drive.google.com/file/d/1ammp9rXu3IEUjKvf9G603q4lT9Jau_yT/view?usp=sharing

Bản PDF gốc:
https://drive.google.com/file/d/1xqwK_iEdp2mx05unVbr2UO_Gtcq77xII/view?usp=sharing

ー ー
Sato Memo: Đây là lỗi của non funtion phải không? Nó có phải là lỗi của chức năng PDF không? | GiangPT 30/01: 
Scuti đã fix, nhờ khách hàng test lại. | Nonfunction common | OK | NG | https://jira.scuti.works/browse/ED-50 | File của khách thì bị ở tất cả các board.
PDF khác mình thử thì không vấn đề gì.
==> Đang nhờ dev điều tra nguyên nhân:
Do font text tiếng Nhật của PDF
Các file font tiếng anh/ romaji thì không vấn đề
19.0 | 罫線マス目 | 笠・中田 | 2022-10-17 00:00:00 | High | P4Bug | Rejected | 内容：罫線マス目を挿入するとき、間隔を変えないまま決定を押すと、罫線マス目の表示に不具合が起きる
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=888479351&range=A21:G21
前提：先生と生徒は別端末を使用
端末：いずれもiPad15.7

ステップ
1.先生／生徒は、端末Aにログインする
2.先生／生徒は、授業TOP画面より自身の板書／ノートを開く
3.先生／生徒は任意の罫線・マス目を、任意のサイズに設定する

参考画像：
https://drive.google.com/drive/folders/1E8UXWagRWKwB9CCRWEnwhqJ53g4ntUms?usp=sharing
・縦線…ランダムに線が太くなってしまう（拡大表示の画像を見るとわかりやすいと思います）
・斜眼…一部点線になってしまう

＿＿＿
佐藤メモ
優先度４のバグ
▼再現動画・画像（iPadでのみ、不具合が出ました。Macbookは問題ありませんでした）
https://drive.google.com/drive/u/0/folders/1-6gQQ21V2uoa0TSAA-P7XiCkCIwEjbB2
▼10/24　新しい再現動画です
https://drive.google.com/file/d/1Ndvi8pTulU7xrbNnCJhD9kkF-FrSH1Xk/view?usp=sharing 
https://drive.google.com/file/d/1QDE6wPtcnR8x7As9WmhiTY-nWyjbH_nz/view?usp=sharing | Nội dung: Khi insert template, khi nhấn決定/Quyết định mà không thay đổi khoảng cách sẽ gây ra lỗi với việc hiển thị của các template.
Case: https://docs.google.com/spreadsheets/d/1Zcd8OZzd-p4JKAIDbbyU1to1BZCPc7uf/edit#gid=1046465959&range=21:21
Tiền đề: Giáo viên và học sinh sử dụng các thiết bị khác nhau
Thiết bị : Cả hai đều là iPad15.7

Step
1. Giáo viên / học sinh đăng nhập vào TB A
2. Giáo viên / học sinh mở board/ note của mình từ màn hình TOP tiết học
3.Giáo viên / học sinh thiết lập template bất kỳ theo kích thước tùy ý

Hình ảnh tham khảo:
https://drive.google.com/drive/folders/1E8UXWagRWKwB9CCRWEnwhqJ53g4ntUms?usp=sharing
・ Đường dọc: Các nét bị dày lên một cách ngẫu nhiên (tôi nghĩ sẽ dễ hiểu hơn nếu nhìn vào hình ảnh phóng to)
・ Kể xiên:Bị ... ở 1 phần các nét 

____
 Sato Memo
Bug của độ ưu tiên 4
▼Video và image tái hiện (Chỉ iPad có lỗi. Trên Macbook thì không có vấn đề gì)

https://drive.google.com/drive/u/0/folders/1-6gQQ21V2uoa0TSAA-P7XiCkCIwEjbB2 | Sato 24/10: 私は、バージョン 1.0.0(45)を利用しています.
Quy


25/10 ThanhPT
この問題は、端末のアンチエイリアス (anti-aliasing) (参照：https://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%B3%E3%83%81%E3%82%A8%E3%82%A4%E3%83%AA%E3%82%A2%E3%82%B9) が原因で発生しています。
iPad 9thでは、「Liquid Retina」ディスプレイを使用しているため、上記の不具合が発生する原因になります。 iPad 7thでは、Retinaディスプレイを利用しているため、上記の不具合が発生しません。こちらは
端末のレンダリングエンジン (rendering engine)のため、この不具合を対応できません。

10/26佐藤
上記バグはappleが端末のレンダリングエンジンを修正しないと直らないものですか？

10/26　ThanhPT

そうです。appleが端末のレンダリングエンジンを修正しないと直らないになります。

10/26　佐藤
Okです。オータケ様にそのように説明いたします。 | Sato 24/10:

Tôi đã tái hiện trên version  1.0.0(45). 
Đây có phải version mới nhất không?

Video tá hiện mới nhất của Sato:
https://drive.google.com/file/d/1Ndvi8pTulU7xrbNnCJhD9kkF-FrSH1Xk/view?usp=sharing 
https://drive.google.com/file/d/1QDE6wPtcnR8x7As9WmhiTY-nWyjbH_nz/view?usp=sharing 

ThanhPT 25/10
Vấn đề này xảy ra do cơ chế Anti-aliasing(https://en.wikipedia.org/wiki/Anti-aliasing) của thiết bị, trên thiết bị iPad 9th sử dụng công nghệ màn hình Liquid Retina thì bị lỗi như trên, iPad 7th dùng công nghệ màn hinh Retina display thì không bị. Chúng tôi không thể can thiệt vào cơ chế render của device.

10/26

Bug ghi trên là bug mà nếu apple không sửa cơ chế render của thiết bị thì sẽ không fix được à?

ThanhPT 26/10
Đúng vậy, chúng tôi không thể can thiệt vào sửa được.

Sato 26/10

OK. Tôi sẽ giải thích với otake như thế | NG | Không thể tái hiện được 
Khách có thể cho chúng tôi xin 1 video cụ thể toàn bộ quá trình xảy ra lỗi được không? Scuti tester đã làm theo mô tả nhưng không tái hiện được
ThoNQ 21.10: không tái hiện được lỗi 
Họ có dùng chính xác bản build mới nhất không?
Link evidence: https://drive.google.com/drive/folders/1mUDYYHZkujUQ8gdW3yhiIoP_P9KY6cqJ
ThoNQ 24.10: Đã tái hiện được lỗi hiển thị .. trên template kẻ xiên (chỉ ở trên Ipad khác trên EDu001 không bị)
20.0 | 罫線マス目 | 笠・中田 | 2022-10-17 00:00:00 | High | P4Bug | Closed | 内容：生徒Cが罫線の間隔を設定中に、生徒Bが別の罫線を挿入すると、生徒Cの罫線設定画面に生徒Bが挿入した罫線が表示されてしまう
ケース：
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=888479351&range=D27:G27 
前提：グループ学習中（生徒B・Cは同じグループ）
端末：いずれもiPad15.7

ステップ
1.生徒Bはグループノートにて、「国語マス目（十字リーダー入り）」のプレビュー画面を開く
2.生徒Cはステップ1の操作中、「斜眼　等角投影」のプレビュー画面を開く
3.生徒Bはグループノートにて、「国語マス目（十字リーダー入り）」のプレビュー画面にて、「決定」を押下する

期待される結果
2.生徒Bのプレビュー画面では、「国語マス目（十字リーダー入り）」が表示される

実際の動き
2.生徒Bのプレビュー画面は、「国語マス目（十字リーダー入り）」が、途中から生徒Cのプレビュー画面「斜眼　等角投影」になってしまう。(添付動画の0:05頃参照)
3.この状態で生徒Bが「決定」を押すと（添付動画0:09頃）、生徒Bが元々選択していた「国語マス目（十字リーダー入り）」が挿入される。

参考動画：
https://drive.google.com/file/d/1-g68fQtOz5AgAt5YPz7wpckTpKZR4xVl/view?usp=sharing | Nội dung: Nếu học sinh B chèn một đường kẻ khác trong khi học sinh C đang thiết lập khoảng cách giữa các đường kẻ, thì đường kẻ do học sinh B chèn sẽ được hiển thị trên màn hình thiết lập đường kẻ của học sinh C.
Case: https://docs.google.com/spreadsheets/d/1Zcd8OZzd-p4JKAIDbbyU1to1BZCPc7uf/edit#gid=1046465959&range=27:27
Tiền đề: Học nhóm (HS B và C cùng nhóm)
Thiết bị : Cả hai đều là iPad15.7

Step
1. Học sinh B mở màn hình preview 「国語マス目（十字リーダー入り）」[Ô vuông viết chữ quốc ngữ (có đường guide chữ thập)] trong group note.
2. Học viên C mở màn hình preview 「斜眼　等角投影」[Kẻ xiên (chiếu các góc) ]trong khi đang thao tác Bước 1
3. Học sinh B nhấn 「決定」"Quyết định" trên màn hình preview của 「国語マス目（十字リーダー入り）」[Ô vuông viết chữ quốc ngữ (có đường guide chữ thập)] trong group note.

Kết quả mong đợi
2. Trên màn hình preview của Học sinh B, 「国語マス目（十字リーダー入り）」[Ô vuông viết chữ quốc ngữ (có đường guide chữ thập)] được hiển thị.

Hoạt động thực tế
2. Màn hình preview của Học sinh B là 「国語マス目（十字リーダー入り）」[Ô vuông viết chữ quốc ngữ (có đường guide chữ thập)] từ giữa chừng, lại thành màn hình preview của Học sinh C là「斜眼　等角投影」[Kẻ xiên (chiếu các góc) ]. (Xem từ giây 0:05 trong video đính kèm)
3. Ở trạng thái này, khi học sinh B nhấn 「決定」"Quyết định" (khoảng 0:09 trong video đính kèm),「国語マス目（十字リーダー入り）」[Ô vuông viết chữ quốc ngữ (có đường guide chữ thập)]  mà học sinh B đã chọn ban đầu sẽ được chèn vào.

Video tham khảo:
https://drive.google.com/file/d/1-g68fQtOz5AgAt5YPz7wpckTpKZR4xVl/view?usp=sharing | Priority4 | OK | NG | https://jira.scuti.works/browse/ED-852 | Quyền - 20/10: Có tái hiện được
21.0 | ハイライトペン | 笠・中田 | 2022-10-17 00:00:00 | Medium | Non-fun Bug | Scuti | 内容：先生の板書サムネイルに、生徒の板書が反映されてしまう
ケース：
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1019325366&range=D17:F17
前提：先生と生徒は別端末を使用、モニタリング中
端末：いずれもiPad15.7

ステップ
1.先生は、生徒の画面に入る
2.先生・生徒は、それぞれノート上にハイライトのオブジェクトを５つずつ作成する。すべてのオブジェクトを重ねる。
3.生徒は、任意の罫線マス目を設定する
4.先生は、付箋を挿入する。この際、ステップ２のオブジェクトに重なるように配置する。
5.先生は、全てのオブジェクトをコピーし、3回ペーストする
6.生徒は、ステップ3のスライドをカットし、3回ペーストする
7.先生は、授業を終了する
8.生徒は、授業終了後に自身のノートにて、「先生の書き込みを表示」ボタンをオフにする
9.先生、生徒は、それぞれ生徒のノート上にて、オブジェクトの重なり順を調べる

期待される結果
8.先生の画面には「先生の書き込み表示」オンオフの効果は反映されない

実際の動き
8.生徒が「先生の書き込み表示」ボタンをオフにすると、先生の板書サムネイルにも反映されてしまう

参考画像：
・１枚目…生徒の画面
https://drive.google.com/file/d/1Rsg_2eyWGynBTkC7DjElm77iLhQLUwCF/view?usp=sharing
・２枚目…先生の画面（画像左の板書サムネイルに、生徒の画面が反映されてしまっている）
https://drive.google.com/file/d/1gALimHFBzBbHK8PJqdLFgHAXlQV0IDdd/view?usp=sharing | 10/19
非機能要件が原因の不具合です。非機能要件の改善後に、動きを確認いたします。
Lỗi do Non-Funtion. Sẽ xác nhận hoạt động sau khi cải thiện non-funtion | https://jira.scuti.works/browse/ED-76
22.0 | テキストボックス | 笠・中田 | 2022-10-18 00:00:00 | High | P4Bug | Closed | 内容：テキストボックス内の文字をカットしても、文字が消えないバグ
ケース：
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1589795614&range=A26:F26
前提：先生と生徒は別端末を使用、モニタリング中
端末：先生（iPad15.7）、生徒（lenovoのChrome book）

ステップ
1.先生は生徒の画面に入る
2.生徒は「丸ゴシック」で100文字のテキストを作成する
3.生徒は「サイズ」変更を20回行う
4.先生は、ステップ３のテキストのフォントを「教科書体」に変更する
5.先生は、ステップ４のテキストの文字数を0文字になるまで消す
6.生徒は、ステップ５のテキストの枠に、10文字入力する
7.先生は、ステップ６のテキスト枠の中で、10文字のうち5文字をカットし、枠内で5回ペーストする

期待される結果
7.文字をカットすると消える

実際の動き
7.文字をカットしても消えない

参考動画：
https://drive.google.com/file/d/1mRaQLkBIvluZhHAwqwtBBW018BKGc6e2/view?usp=sharing | Nội dung: Bug cut ký tự trong text box nhưng ký tự đó không biến mất
Case:
https://docs.google.com/spreadsheets/d/1Zcd8OZzd-p4JKAIDbbyU1to1BZCPc7uf/edit#gid=1346638070&range=26:26
Tiền đề: Giáo viên và học sinh đang sử dụng các thiết bị  khác nhau, và đang monitoring
Thiết bị : giáo viên (iPad15.7), học sinh (lenovo Chrome book)

Step
1. Giáo viên vào màn hình học sinh
2. Học sinh tạo một văn bản gồm 100 ký tự 「丸ゴシック」
3. Học sinh thực hiện 20 lần thay đổi "kích thước"
4. Giáo viên thay đổi phông chữ của văn bản ở bước 3 thành 「教科書体」
5. Giáo viên xóa số ký tự trong văn bản ở bước 4 cho đến khi còn 0 ký tự.
6. Học sinh nhập 10 ký tự vào text box từ bước 5
7. Giáo viên cắt 5 trong số 10 ký tự trong text box từ bước 6 và dán chúng 5 lần trong khung.

Kết quả mong đợi
7. Ký tự biến mất khi bị cắt

Hoạt động thực tế
7. ký tự không biến mất ngay cả khi bị cắt

Video tham khảo:
https://drive.google.com/file/d/1mRaQLkBIvluZhHAwqwtBBW018BKGc6e2/view?usp=sharing | Priority4 | OK | NG | https://jira.scuti.works/browse/ED-853 | ThoNQ 20.10: Tái hiện được, tuy nhiên phím cut được sử dụng thuộc bàn phím ảo của Ipad và sử dụng để cut nội dung trong ô text box 
( thử dụng phím tắt Ctrl+X đối với nội dung trong ô text box cũng không cut được nội dung đã chọn)
23.0 | 罫線マス目 | 佐藤 | 2022-10-18 00:00:00 | High | P4Bug | Rejected | "内容：WEB版、iPadにて、罫線マス目のサイズが違う
端末：iPad(15.5), Macbook(12.6)

例）罫線マス目の「斜眼　等角投影」
最小値60, 最大値900をWebとiPadで比べた際、同じ値を設定しても、マス目の大きさが異なります

https://drive.google.com/file/d/1OuyHGRAC2I2QaA4KQ9prcS4R0xJ9RQ0l/view?usp=sharing 

・テスト端末のChromebook、Dynabookにて、このような現象が起きていないか調査をお願いします
・「斜眼　等角投影」以外の罫線マス目も、調査をお願いします" | Nội dung: Kích thước của các template khác nhau giữa phiên bản WEB và iPad
Thiết bị : iPad (15.5), Macbook (12.6)

Ví dụ) 「斜眼　等角投影」[Kẻ xiên (chiếu các góc) ] của template
Khi so sánh giá trị tối thiểu 60 và giá trị lớn nhất 900 trên web và iPad, kích thước của các ô là khác nhau ngay cả khi cùng một giá trị được đặt.

https://drive.google.com/file/d/1OuyHGRAC2I2QaA4KQ9prcS4R0xJ9RQ0l/view?usp=sharing

・ Vui lòng điều tra xem loại hiện tượng này có xảy ra trên thiết bị test Chromebook,  Dynabook hay không.
・ Vui lòng điều tra template khác ngoài 「斜眼　等角投影」[Kẻ xiên (chiếu các góc) | →再現動画はこちらです。私は、iPad＆Macbookを使っています
https://drive.google.com/file/d/1OuyHGRAC2I2QaA4KQ9prcS4R0xJ9RQ0l/view?usp=sharing 
同じ動作を、
①Chromebook＆Dynabook
②Dynabook＆iPad
③Chromebook＆iPad
で撮影していただけませんか？

Chromebook, Dynabook, Ipad をそれぞれ再現してみましたが、特にそのような不具合が見当たらなかった。
https://drive.google.com/drive/folders/1S4S4_S57H0qx-ZOucB_N2kv707hFM4GN　

10/25 佐藤
ありがとうございます。問題ないことが確認できました。オータケ様にご承認をいただいた後、この件はCloseいたします。
別件ですが、ご提供いただいた動画にて、Chromebook・Dynabookの方眼の、拡大率が最小の場合、線がまだらに見えました。（細い線・太い線が混じっている）こちらは、カメラの問題でこのように見えるだけでしょうか？スクリーンショットなど、見やすい画像をご提供いただくことは可能でしょうか？なお、iPadは問題ありませんでした。Chromebook・Dynabookも、iPadのような線であれば、正しいです。
https://drive.google.com/drive/folders/1VCdiHfv5FIPKx2GPVeKmLX2GhZttCjow?usp=sharing | ThuyLTP 24/10 Video tái hiện của Sato san trên iPad＆Macbook
https://drive.google.com/file/d/1OuyHGRAC2I2QaA4KQ9prcS4R0xJ9RQ0l/view?usp=sharing  
Hãy thực hiện hành động giống vậy và lấy video trên 
①Chromebook＆Dynabook
②Dynabook＆iPad
③Chromebook＆iPad
giúp tôi được không
Thơ 24/10:
Link video tương ứng
https://drive.google.com/drive/folders/1S4S4_S57H0qx-ZOucB_N2kv707hFM4GN 

10/25 Sato

Cảm ơn. Tôi đã xác nhận không có vấn đề gì.  Sau khi nhận được phê duyệt từ Otake , tôi sẽ close mục này. 
  Đây là vụ khác, tại video mà scuti đã chia sẻ, tỷ lệ phóng đại ô vuông của chromebook/Dynabook, TH tỷ lệ phóng đại Min, tôi thấy các nét không đều . ( nét mảnh nét dãy trộn lẫn nhau) Cái này là do vấn đề của camera nên nhìn như thấy như thế này à? Có thể share cho tôi ảnh  dễ nhìn hơn như là ảnh chụp màn hình không? Ngoài ra, IPAD thì không có vấn đề gì cả. Trên chromebook và Dynabook nếu cũng có các nét giống như Ipad là chính xác.

https://drive.google.com/drive/folders/1VCdiHfv5FIPKx2GPVeKmLX2GhZttCjow?usp=sharing

ThanhPT 26/10

Vấn đề này xảy ra do cơ chế Anti-aliasing(https://en.wikipedia.org/wiki/Anti-aliasing) của thiết bị, tương tự no19. Chúng tôi không thể can thiệt vào cơ chế render của device. | Priority4 | NG | NG | ThoNQ 21.10:
Kiểm tra template trên các thiết bị Ipad, Chrome Book và Dynabook tương đồng nhau (Tuy nhiên phần template min của 方眼　Hiển thị trên Chrome Book và Dynabook bị nét đậm nét mờ do cơ chế render của thiết bị)
Link evidence:
https://drive.google.com/drive/folders/1S4S4_S57H0qx-ZOucB_N2kv707hFM4GN
24.0 | 罫線マス目 | 佐藤 | 2022-10-18 00:00:00 | High | P4Bug | Cannot reproduce | 内容：WEB版、にて罫線マス目の拡大の仕方が違う
端末：Macbook(12.6)

例）罫線マス目の「斜眼　等角投影」
最大値の表示は、設計と違う
https://docs.google.com/spreadsheets/d/1-dLcZiR8RcjZPB8RY98AZaUtDs6WXNtVBz65bZ3XXk4/edit#gid=363441949

最大値の設計
https://drive.google.com/file/d/1bAT3QqgkWNIXygeI3t9SkcsUgSypLu9J/view?usp=sharing

実装されているもの
https://drive.google.com/file/d/1I6v4XqCOCc3ozL0U0C6c5y2lfIeQDF3b/view?usp=sharing

・テスト端末のChromebook、Dynabookにて、このような現象が起きていないか調査をお願いします
・「斜眼　等角投影」以外の罫線マス目も、調査をお願いします | Nội dung: Phương pháp phóng to các template bị khác nhau tại phiên bản WEB
Thiết bị đầu cuối: Macbook (12.6)

Ví dụ) 「斜眼　等角投影」[Kẻ xiên (chiếu các góc)  của template
Hiển thị giá trị lớn nhất khác với thiết kế
https://docs.google.com/spreadsheets/d/1-dLcZiR8RcjZPB8RY98AZaUtDs6WXNtVBz65bZ3XXk4/edit#gid=363441949

Thiết kế của giá trị tối đa
https://drive.google.com/file/d/1bAT3QqgkWNIXygeI3t9SkcsUgSypLu9J/view?usp=sharing

Kích thước đã được thực hiện
https://drive.google.com/file/d/1I6v4XqCOCc3ozL0U0C6c5y2lfIeQDF3b/view?usp=sharing

・ Vui lòng điều tra xem loại hiện tượng này có xảy ra trên thiết bị test Chromebook hoặc Dynabook hay không.
・ Vui lòng điều tra ở các template khác ngoài 「斜眼　等角投影」[Kẻ xiên (chiếu các góc) z | Sato 24/10: 再現動画はこちらです
https://drive.google.com/file/d/1Bvs1f2AvnsO37SL9uHlMaPnyA9yaC3uW/view?usp=sharing 
同じ動作を、
①Chromebook
②Dynabook
で撮影していただけませんか？
※iPadでは、問題なく動作しました
Scuti Thoさん
Chromebook と Dynabookでの再現動画です。特に不具合が見当たらなかった。
https://drive.google.com/drive/folders/1S4S4_S57H0qx-ZOucB_N2kv707hFM4GN　
Macbookの画面サイズ依存で発生していると考えられます。 　
それで、このバグはスコープ外だと思います。
10/25佐藤　

問題ないことが確認できました。オータケ様にご承認いただけましたら、この項目をCloseします。 | Sato 24/10: Video tái hiện
https://drive.google.com/file/d/1Bvs1f2AvnsO37SL9uHlMaPnyA9yaC3uW/view?usp=sharing  
Hãy thực hiện thao tác giống vậy trên
①Chromebook
②Dynabook
rồi quay video giúp tôi với nhé
Trên IPad thì không sao cả.

Thơ 24/10: Video trên Chromebook và Dynabook :
https://drive.google.com/drive/folders/1S4S4_S57H0qx-ZOucB_N2kv707hFM4GN 

Không phát sinh lỗi
Trên Macbook có thể do khác size màn hình nên bug này không thuộc scope.

10/25 Sato

Tôi đã xác nhận không có vấn đề gì.
Nếu Otake xác nhận xong thì sẽ close mục này | Priority4 | NG | NG | ThoNQ 21.10:
Kiểm tra template trên các thiết bị Ipad, Chrome Book và Dynabook giá trị max của template đúng yêu cầu  
Link evidence:
https://drive.google.com/drive/folders/1S4S4_S57H0qx-ZOucB_N2kv707hFM4GN
25.0 | テキストボックス | 笠・中田 | 2022-10-18 00:00:00 | Medium | P1~3Bug | Scuti | 内容：正常に「もどる」「すすむ」の操作ができない
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1589795614&range=A32:F32
前提：モニタリング中
端末：先生（iPad 15.7）、生徒（lenovoのChromebook）

ステップ
1.先生は生徒の画面に入る
2.生徒はテキストボックスを挿入し、30文字入力する
3.先生は該当のテキストボックスを太文字にする
4.生徒は該当のテキストボックスのフォントを「丸ゴシック」にする
5.先生は該当のテキストボックスに下線をつける
6.生徒は該当のテキストボックスのハイライトをピンクにする
7.先生は該当のテキストボックスをオレンジ文字にする
8.生徒は該当のテキストボックスのサイズを8ptにする
9.先生は該当のテキストボックスを縦書きにする
10.生徒は該当のテキストボックスのサイズを44ptにする
11.先生は「もどる」を8回押す
12.先生は「すすむ」を8回おす
13.生徒は「もどる」を8回押す
14.生徒は「すすむ」を8回おす

期待される結果
・正常に「もどる」「すすむ」の操作ができる

実際の動き
・正常に「もどる」「すすむ」の操作ができない

参考動画：
同時録画です
iPad(先生)
https://drive.google.com/file/d/1UtMrDrtkXnwrZXh-m-MWzZCbevewT0TP/view?usp=sharing

chrome(生徒)
https://drive.google.com/file/d/1UT5T6oPsriPcZzIB-NWZRqPMlSEn0cOm/view?usp=sharing

＿＿
佐藤メモ：No.25,26は関連する不具合です。自分と他人があるオブジェクトに対し操作を行なっている場合、「もどる」「すすむ」を押すと変な挙動になります。どのように対処すべきでしょうか？ | Đang điều tra | Nội dung: Không thể thực hiện các thao tác 「もどる」「すすむ」[Back] [next] một cách bình thường
Case: https://docs.google.com/spreadsheets/d/1Zcd8OZzd-p4JKAIDbbyU1to1BZCPc7uf/edit#gid=1346638070&range=32:32
Tiền đề: Đang monitoring
Thiết bị: giáo viên (iPad 15.7), học sinh (lenovo Chromebook)

Step
1. Giáo viên vào màn hình học sinh
2. Học sinh chèn một text box rồi nhập 30 ký tự
3. Giáo viên chuyển text box tương ứng sang chữ in đậm
4. Học sinh thiết lập phông chữ của text box tương ứng thành 「丸ゴシック」
5. Giáo viên gạch chân text box tương ứng
6. Học sinh thực hiện chuyển highlight của text box tương ứng thành màu hồng
7. Giáo viên thiết lập text box tương ứng sang các ký tự màu cam
8. Học sinh đặt kích thước của text box tương ứng là 8pt
9. Giáo viên chuyển text box tương ứng sang kiểu viết dọc
10. Học sinh đặt kích thước của text box tương ứng là 44pt
11. Cô giáo nhấn 「もどる」 8 lần
12. Cô giáo bấm 「すすむ」 8 lần
13. Học sinh nhấn 「もどる」 tám lần
14. Học sinh bấm 「すすむ」 8 lần

Kết quả mong đợi
・ 「もどる」 và 「すすむ」 có thể hoạt động bình thường

chuyển động thực tế
・ Không thể thực hiện các thao tác 「もどる」 và 「すすむ」 bình thường.

Video tham khảo:
Quay video đồng thời
iPad (giáo viên)
https://drive.google.com/file/d/1UtMrDrtkXnwrZXh-m-MWzZCbevewT0TP/view?usp=sharing

chrome (HS)
https://drive.google.com/file/d/1UT5T6oPsriPcZzIB-NWZRqPMlSEn0cOm/view?usp=sharing

__
Sato Memo: No.25 và 26 là các lỗi liên quan. Nếu bản thân và người khác đang thao tác trên một object, việc nhấn 「もどる」 và 「すすむ」sẽ hoạt động kỳ lạ. Tôi nên làm gì với TH này? | Priority4 | OK | NG | https://jira.scuti.works/browse/ED-51 | ThoNQ: Tái hiện được (20/10) 
Ngoài ra
Step 8 khi thu nhỏ size chữ bên ipad hiển thị background ngắn lại không đồng bộ với chrome book
26.0 | テキストボックス | 笠・中田 | 2022-10-19 00:00:00 | Medium | P1~3Bug | Scuti | 内容：正常に「もどる」「すすむ」の操作ができない
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1589795614&range=A34:F34
前提：グループ学習中
端末：Mac（先生）、Mac（生徒A）、Chromebook（生徒B）、iPad（生徒C）

ステップ
1.先生は生徒の画面に入る
2.生徒Aはテキストボックスを挿入し、100文字入力する
3.生徒Bは該当のテキストボックスを太文字にする
4.生徒Cは該当のテキストボックスに灰色のハイライトをつける
5.生徒Aは該当のテキストボックスの文字を紫にする
6.生徒Bは該当のテキストボックスのサイズを66ptにする
7.生徒Cは該当のテキストボックスに下線をつける
8.生徒Aは該当のテキストボックスを150文字にする
9.生徒Bは該当のテキストボックスを縦書きにする
10.生徒Cは該当のテキストボックスの文字を黄色にする
11生徒A、生徒B、生徒Cは2回ずつ「もどる」を押す
12.生徒A、生徒B、生徒Cは2回ずつ「すすむ」を押す

期待される結果
・正常に「もどる」「すすむ」の操作ができる

実際の動き
・正常に「もどる」「すすむ」の操作ができない

参考動画：
https://drive.google.com/file/d/1WcVOIGSAY2ZmmLABICObF4nDaj-CjTNf/view?usp=sharing
生徒Cの画面です。1:50付近で生徒A が「もどる」２回、2:02付近で生徒Cが「もどる」２回、2:35付近で生徒Bが「もどる」を２回実行しています。 | Đang điều tra | Nội dung: Không thể thực hiện các thao tác 「もどる」「すすむ」một cách bình thường
Case: https://docs.google.com/spreadsheets/d/1Zcd8OZzd-p4JKAIDbbyU1to1BZCPc7uf/edit#gid=1346638070&range=34:34
Tiền đề: Trong quá trình học nhóm
Thiết bị: Mac (Giáo viên), Mac (HS A), Chromebook (HS B), iPad (HS C)

Step
1. Giáo viên vào màn hình học sinh
2. Học sinh A chèn một text box và nhập 100 ký tự
3. Học sinh B chuyển text box tương ứngn thành chữ in đậm
4. Học sinh C gắn highlight text box tương ứng thành màu xám
5. Học sinh A chuyển ký tự của text box tương ứng thành màu tím
6. Học viên B đặt kích thước của text box tương ứng là 66pt
7. HS C gắn gạch dưới cho text box tương ứng
8. Học sinh A nhập 150 ký tự vào text box tương ứng
9. Học sinh B chuyển text box tương ứng thành kiểu viết dọc
10. Học viên C chuyển ký tự của text box tương ứng sang màu vàng.
11 Học sinh A, Học sinh B và Học sinh C lần lượt nhấn 「もどる」[Back] hai lần.
12. Học sinh A, Học sinh B và Học sinh C lần lượt nhấn 「すすむ」[Next]   hai lần .

Kết quả mong đợi
・ 「もどる」[Back] và 「すすむ」[Next] có thể hoạt động bình thường

chuyển động thực tế
・ Không thể thực hiện các thao tác 「もどる」[Back] và 「すすむ」[Next] bình thường.

Video tham khảo:
https://drive.google.com/file/d/1WcVOIGSAY2ZmmLABICObF4nDaj-CjTNf/view?usp=sharing
Màn hình của HS C. Vào khoảng 1:50, học sinh A 「もどる」[Back] hai lần, khoảng 2:02 học sinh C 「もどる」[Back] hai lần và vào khoảng 2:35 học sinh B 「もどる」[Back] hai lần. | Priority4 | OK | NG | https://jira.scuti.works/browse/ED-51 | ThoNQ: 20.10
Sử dụng chrome book thay cho mac
Step 6 không có size 66 trong menu -. sử dụng size 64 giống video
Tái hiện được bug 
- Màn hình thao tác không back lại các step đã thực hiện của user hoặc nhưng các màn hình khác có lúc xem được thay đổi của object nhưng có lúc không update hoặc update sai
27.0 | 消しゴム | 中田 | 2022-10-19 00:00:00 | Non-fun Bug | Rejected | 内容：消しゴム使用後の表示画面が生徒Aだけ異なる
ケース：
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=D25:F25   
前提：グループ学習中
端末：Chromebook（先生）、iPad15.7（生徒A）、iPad15.7（生徒B）、iPad15.7（生徒C）

ステップ
1.生徒Aはペンのオブジェクトを作成する
2.生徒Bはステップ1のオブジェクトに対し、カット＆コピーを繰り返す
3.生徒Aはステップ2の動作中に消しゴムを利用する

期待される結果
・全ての端末が同じ画面（板書）になる

実際の動き
・生徒Aのみ画面が異なる

参考画像：
https://drive.google.com/file/d/1ziHEbSXWZgoI9S9U5NiYWFead58X1Usi/view?usp=sharing
一番右が生徒A（消しゴムを利用）のiPadです

－－－－－
佐藤メモ
こちらの不具合は、同期のタイミングが原因かと思いました。非機能要件に関する部分に見受けられますが、念の為ご確認をお願いいたします。 | Đang điều tra

Có thể là lỗi do Non-Funtion. Sẽ các nhận hoạt động sau khi cải thiện Non-funtion | Nội dung: Màn hình hiển thị sau khi sử dụng tẩy thì chỉ  học sinh A là có màn hình khác
Case:
https://docs.google.com/spreadsheets/d/1Zcd8OZzd-p4JKAIDbbyU1to1BZCPc7uf/edit#gid=667363158&range=25:25 
Tiền đề: Đang học nhóm
Thiết bị: Chromebook (Giáo viên), iPad15.7 (HS A), iPad15.7 (HS B), iPad15.7 (HS C)

Step
1. Học sinh A tạo object pen
2. Học sinh B lặp lại việc cắt và sao chép object ở bước 1
3. Học sinh A sử dụng tẩy trong lúc đang thao tác bước 2

Kết quả mong đợi
・ Tất cả các thiết bị  đều có màn hình giống nhau (board)

Hoạt động thực tế
・ Chỉ học sinh A có màn hình khác

Hình ảnh tham khảo:
https://drive.google.com/file/d/1ziHEbSXWZgoI9S9U5NiYWFead58X1Usi/view?usp=sharing 
Ngoài cùng bên phải là iPad của học sinh A (dùng tẩy)

-----
Memo của Sato
Tôi nghĩ rằng lỗi này là do thời điểm đồng bộ. Có thể được nhìn thấy trong phần liên quan đến Non-Funtion, nhưng để chắc chắn vui lòng xác nhận giúp tôi.. | Priority4 | OK | NG | https://jira.scuti.works/browse/ED-74 | Tho NQ 20.10
Tái hiện được bug (khả năng liên quan đến memory vì sau đó có thêm 1 object là hiển thị lỗi tràn bộ nhớ)
消しゴム | 中田・笠 | 2022-10-20 00:00:00 | Medium | 内容：カット&コピー(ペースト？)の挙動がおかしい
ケース：
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1403952901&range=E26
前提：グループ学習中
端末：Chromebook（先生）、iPad15.7（生徒A）、iPad15.7（生徒B）

ステップ
1.生徒Aはペンのオブジェクトを作成する
2.生徒Bはステップ1のオブジェクトに対し、カット＆コピーを繰り返す
3.生徒Aはステップ2の動作中に、「全消去」を実行する

期待される結果
・正しくカット＆ペーストされる

実際の動き
・カット＆ペーストし続けるとオブジェクトが右下に移動していく(コピペの仕様でしょうか)
・複数回カット＆ペーストを繰り返すとスライドがカットされ、ペーストするとカットされたはずのオブジェクトがペーストされている状態になる(生徒B)
・カットされたはずのオブジェクトが残っている(生徒A)

参考動画：
生徒A
https://drive.google.com/file/d/1m8CQT1TQLxf3NVQIIVDyoiQwxvyVgkRm/view?usp=sharing
生徒B
https://drive.google.com/file/d/1TXIC3NtqVNzYlq9JXfFZ4rt6-psO-NRU/view?usp=sharing | ・カット＆ペーストし続けるとオブジェクトが右下に移動していく(コピペの仕様でしょうか)
→仕様です

・複数回カット＆ペーストを繰り返すとスライドがカットされ、ペーストするとカットされたはずのオブジェクトがペーストされている状態になる(生徒B)
・カットされたはずのオブジェクトが残っている(生徒A)
→これは、カットのボタンを押す際に、誤ってカットボタンではないところを押したためにオブジェクトの選択が解除され、スライドがカット対象になってしまったためだと思います。
流れ
①スライドがカットされる
②全てのスライドが削除されたため、新しいからのスライドが生成される
③ペーストを押すと、①のスライドがペーストされる（カットされたはずのオブジェクトが残っているように見える）
この認識であっていますか？

また、下記URLの動画にて、右下の方に枠が点滅しているように見えます。
こちらは、ペーストの操作中、同期が遅くてオブジェクトの全体像の表示が追いついていない状態でしょうか？
だとしたら、この部分は非機能要件を改善することで、動きがよくなる見込みです。
https://drive.google.com/file/d/14-baMF9xtTHkVPLAM5yABskuenTnlyRo/view?usp=sharing


私の方でケースを試したところ、不具合は発生されませんでした。
非機能要件改善後に、再度このケースを試させていただきます。

https://drive.google.com/file/d/1U40EqQVIMQBiOMmXmzv4CbtjrKO4Vdyj/view?usp=sharing

10/21中田・笠
ステップ2において、「生徒Bはステップ1のオブジェクトに対し、カット＆コピー(ペースト？)を繰り返す」とありますが、これは「カット→ペースト→ペースト→ペースト…」が正しい操作ということでしょうか？
こちらの解釈が間違っておりましたら申し訳ありません。
点滅しているように見えるのは「カット→ペースト→カット→ペースト…」の操作を行なったからです。

10/21　佐藤
＞ステップ2において、「生徒Bはステップ1のオブジェクトに対し、カット＆コピー(ペースト？)を繰り返す」とありますが、これは「カット→ペースト→ペースト→ペースト…」が正しい操作ということでしょうか？
→そもそも、ステップ２の「カット＆コピー」が、間違えてますよね。「カット→ペースト→カット→ペースト…」でも、「カット→ペースト→ペースト→ペースト…」でも、似た動きなので大丈夫です。

>点滅しているように見えるのは「カット→ペースト→カット→ペースト…」の操作を行なったからです。
→理解しました。ありがとうございます。

結論としては、こちらで報告いただいた動作は、全て仕様通りだと思います。本項目をCloseさせていただきます。
Dưới đây là P5
29.0 | タグ３機能 | 笠 | 2022-10-31 00:00:00 | 内容：デジタル教具で教科タグで絞り込みすると１ページ分しか表示されない
ケース：
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=285559628&range=B13:C13

前提：
・オータケ権限、先生、生徒は、別の端末を利用している
・デジタル 教具、アニメーションの数は、検索で少なくとも 2 ページが表示されるのに十分な量が登録されている
端末：管理者(学校責任者)・生徒ともにiPad16.1
使用アカウント：
管理者…otake001@gmail.com　sqyHAZ37
生徒…UC32EWZ787　tenQWD68

ステップ
1.先生はモニタリングを開始し、生徒のノートに入る
2.生徒はノートを開く
3.先生、生徒は、生徒のノート上で、「デジタル教具」を押下し、一覧を開く
4.先生、生徒は、任意のタグXにて絞り込む
5.絞り込んだ結果、2ページ以上の結果が表示される
6.先生、生徒は絞り込み結果の全てのページを確認する
7.先生、生徒がステップ6の操作中に、オータケは管理画面の「デジタル教具一覧」を開く
8.オータケは、ステップ4のタグがついている教具に対して、全てタグYに付け替える。
9.先生、生徒はデジタル教具一覧を閉じる
10.先生、生徒は「デジタル教具」押下し、もう一度一覧を開く
11.先生、生徒は、タグYにて絞り込む
12.絞り込んだ結果、2ページ以上の結果が表示される
13.先生、生徒は絞り込み結果の全てのページを確認する
14.先生、生徒は、ステップ7のデジタル教具を挿入する
15.先生はデジタル教具をコピーし、2回ペーストする
16.生徒はスライドをコピーし、2回ペーストする

期待される結果
5.絞り込んだ結果、2ページ以上の結果が表示される

実際の動き
「算数」タグで絞り込むと本来18件表示されるはずが12件(１ページ分)しか表示されない
新しく教具を追加すると古いものから表示が消えていく

参考動画：https://drive.google.com/file/d/1A9H9QWJjkQ1SExdUFSrolkoYsZkMRlm4/view?usp=share_link

再現ができませんでしたが、同じタイミング・条件で「算数」タグで絞り込んだ際、教具の検索結果の表示が異なっていた事例がありましたのでスクリーンショットだけ添付させていただきます。↓
生徒側の検索結果：
https://drive.google.com/file/d/16wiXWANy7qy1NLiu9acPpEiKKaQ2a4yM/view?usp=sharing
先生側の検索結果：
https://drive.google.com/file/d/1qRQdSCob0-56lZZppy6_hE1B6Jyk924v/view?usp=share_link
30.0 | 検索機能 | 佐藤 | P5Bug | Closed | 機能：アニメーション・デジタル教具のタグ

通常、どのアニメーション・デジタル教具にも紐づいていないタグは、自動的に削除されます

しかし現在、どのアニメーション・デジタル教具にも紐づいていないタグが残っているようです。こちら、UAT実施に差し支えるので、早急に調査をお願いいたします。

▼参考動画：「小学２年」以外の全ての学年タグは何にも紐づいていないのに、検索画面に残っている。
https://drive.google.com/file/d/1sVQhbRUHqxkNxxaWoT-FUYlcDIY1WvGm/view?usp=sharing | Chức năng: Tag animation/Digital tool

Thông thường , tag không không được liên kết vớianimation/Digital tool nào sẽ tự động bị xóa.

Tuy nhiên, có vẻ như hiện tại đang còn các tag không được liên kết với bất kỳ animation/Digital tool nào. Điều này sẽ cản trở việc thực hiện UAT, vì vậy vui lòng điều tra càng sớm việc này giúp tôi.

▼ Video tham khảo: Tất cả các tag năm học không phải là [Tiều học năm 2] không được liên kết với bất kỳ animation/Digital tool nào, nhưng chúng vẫn còn trên màn hình tìm kiếm.
https://drive.google.com/file/d/1sVQhbRUHqxkNxxaWoT-FUYlcDIY1WvGm/view?usp=sharing | 再現：実施済み
原因：ステージング環境での古いデータのためです。以前はステージング環境で対笈せず、本番環境のみで対応したため、ステージング環境でこの不具合が残っています。
対応：実施済み
動画参照：
https://drive.google.com/file/d/1rcoZxsGPJUQ6LYHRhMz5zv5v3Y0mpLjQ/view?usp=share_link 

11/7
すみません、まだ不具合が残っているようでした。
「小学4年」「理科」「昆虫の体のつくり」は、デジタル教具にもアニメーションにも紐づいていませんが、タグとして残っています。ご確認をお願いいたします。
https://drive.google.com/file/d/1b-xURqhW2wXS3AnI0SR4-cRNLW6A_-np/view?usp=sharing | QuyenVV: Tái hiện được, bug do data cũ ở staging, trước kia chỉ xử lý trên production nên staging vẫn còn.

Đã xử lý
Video thể hiện: https://drive.google.com/file/d/1rcoZxsGPJUQ6LYHRhMz5zv5v3Y0mpLjQ/view?usp=share_link 

11/7

Xin lỗi, dường như là vẫn đang còn lỗi.
3 tag 「小学4年」「理科」「昆虫の体のつくり」này không liên kết với digital tool và animation nhưng vẫn còn tag này.
Vui lòng xác nhận giup tôi nhé

https://drive.google.com/file/d/1b-xURqhW2wXS3AnI0SR4-cRNLW6A_-np/view?usp=sharing

QuyenVV 11/07:
"Sở dĩ bạn không thấy 3 tag 「小学4年」「理科」「昆虫の体のつくり」ở phía giáo viên vì phía Otake - chức năng animation còn có 1 tính năng phụ khác là draft animation. 3 tags này đã được gắn vào 1 draft animation, cho nên nó vẫn tồn tại trong hệ thống và phù hợp với requirement "Khi 1 tag không còn gắn với bất kỳ digital tool/animation nào khác thì tag đó sẽ bị xóa bỏ liên kết và không hiển thị trên list". | OK | NG | https://jira.scuti.works/browse/ED-876 | Tái hiện được, bug do data cũ ở staging, trước kia chỉ xử lý trên production nên staging vẫn còn.
31.0 | デジタル教具(スライド？) | 笠 | 2022-11-01 00:00:00 | Other | Cannot reproduce | 内容：
グループ学習終了後のスライドの順番が先生と生徒で違う
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=1757196407&range=B40:C40

前提：
・生徒A、生徒B、生徒Cはグループ１、生徒D、生徒Eはグループ２に所属している
・複数のデジタル教具が作成済みであること
1.学校責任者は、グループ学習を開始する
2.学校責任者は、グループノートに入る
3.生徒Aは、1枚目のスライドにて「挿入」→「PDF」を押下し、任意のPDFの挿入を実行する。（PDFのページは5枚以上とする）
4.生徒Bは、1枚目のスライドにてステップ３の動作中に、デジタル教具の挿入を繰り返す
5.学校責任者は、ステップ3、ステップ4の動作中、グループ学習を終了する
6.学校責任者は、授業を終了する
7.学校責任者は、生徒Aは、ステップ２のグループノート画面を開く

期待される結果
7.学校責任者、生徒Aは、グループ学習が終了される直前までの状態のスライドを確認することができる

実際の動き
終了後にグループノートを確認するとスライドの順番が先生と生徒で違う(生徒は全員同じ)

参考画像：
生徒
https://drive.google.com/file/d/1GQrNCAf1Y-alzvUufJO4dxXNY-mT1X4v/view?usp=share_link
先生
https://drive.google.com/file/d/1VLkdp433EnG0aka1kRnJ86TJi5gvrfe1/view?usp=share_link | Scuti đang điều tra | Nội dung:
Thứ tự của các slide sau khi kết thúc học nhóm là khác nhau giữa giáo viên và học sinh
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=1757196407&range=B40:C40

Tiền đề:
・ Học sinh A, B và C thuộc nhóm 1, học sinh D và E thuộc nhóm 2.
・ Nhiều digital tool đã được tạo ra
1. Quản lý trường học bắt đầu học nhóm
2. Quản lý nhà trường vào group note.
3. HS A nhấn 「挿入」→「PDF」 trên slide đầu tiên để insert một file PDF tùy ý. (PDF phải từ 5 trang trở lên)
4. Học sinh B lặp lại việc insert các digital tool ở step 3 trên slide đầu tiên.
5. Quản lý trường học kết thúc học nhóm ở step 3 và 4
6. Quản lý kết thúc tiết học.
7. Quản lý trường học, học sinh A, mở màn hình group note của step 2

Kết quả mong muốn
7. Quản lý trường học và HS A có thể xác nhận các slide ở trạng thái ngay trước khi kết thúc học nhóm.

Hoạt động thực tế
Khi tôi kiểm tra các group note sau khi kết thúc, thứ tự của các slide là khác nhau giữa giáo viên và học sinh (tất cả học sinh đều giống nhau)

Hình ảnh tham khảo:
HS
https://drive.google.com/file/d/1GQrNCAf1Y-alzvUufJO4dxXNY-mT1X4v/view?usp=share_link
giáo viên
https://drive.google.com/file/d/1VLkdp433EnG0aka1kRnJ86TJi5gvrfe1/view?usp=share_link
ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー
Sato Memo: Tôi nghĩ đó không phải lỗi thuộc P5, hãy xác nhận nhận giúp tôi. | QuyenVV: 
この不具合を再現できないです。
優先度５に関する不具合ではないと判断しています。
動画参照：
https://drive.google.com/file/d/17ivmf9lZdt1gYVRfv7qmr63YVF6yOiGv/view?usp=share_link 

ご確認をお願いいたします。 | QuyenVV: Không tái hiện được, bug này không thuộc P5
Video: https://drive.google.com/file/d/17ivmf9lZdt1gYVRfv7qmr63YVF6yOiGv/view?usp=share_link | VanTT: đúng là lỗi này không thuộc P5, lỗi này thuộc phần học nhóm cũ
Tuy nhiên bên Scuti đang không tái hiện được bug, link ảnh ở màn Học sinh và Giáo viên: https://drive.google.com/file/d/17ivmf9lZdt1gYVRfv7qmr63YVF6yOiGv/view?usp=share_link
32.0 | デジタル教具
Digital tool | 笠 | 2022-11-01 00:00:00 | Other | Cannot reproduce | 内容：
付箋またはデジタル教具の位置が先生と生徒で違う
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=1757196407&range=B34:C34

前提：
複数のデジタル教具が作成済みであること

1.学校責任者は、モニタリングを開始する
2.学校責任者は、生徒のノートに入る
3.生徒は、ノートの1枚目のスライドに任意のセットのデジタル教具を挿入する
4.生徒は、1枚目のスライドに付箋を１０個挿入する
5.生徒は、ステップ３の教具をコピー＆ペーストし、教具の数を１０にする
6.生徒は、ステップ５の1つの教具の上に、１つの付箋を重ねる。この際、教具が完全に付箋の下に隠れるように、付箋の大きさを調整する。合計１０の教具のすべてに付箋を重ねて隠す
7.生徒は、ステップ６の付箋のうち、５つの付箋に任意の文字を入力する
8.学校責任者、生徒は、「めくる」ボタンを押下する
9.学校責任者、生徒は、任意の付箋をめくる
10.学校責任者、生徒は、それぞれ任意のデジタル教具を挿入する。この動作を3回繰り返す。この際、教具・付箋の調整は行わない。
11.学校責任者は「全部めくる」を押下した後、生徒は、「とじる」を押下する。この動作を5回繰り返す。
12.生徒は、1枚目のスライドをコピーし、2回ペーストする。
13.学校責任者、生徒は、ペーストされた全てのスライドで付箋の動きを調べる。

期待される結果
3~13.学校責任者の端末上で、生徒の操作が反映されること。生徒のスライドは、先生の端末上でも完全に一致していること。

実際の動き
生徒の画面では付箋で完全に隠したオブジェクトが先生の画面では少し見えてしまっている

参考画像：
画質が粗く申し訳ありません。
左の端末が先生で、上段右から２番目の付箋から下のオブジェクトが見えてしまっています。
https://drive.google.com/file/d/14bQw0ii8AeT3dxEvV6evCtVxfXJHxY7u/view?usp=share_link | Scuti đang điều tra | Nội dung:
Vị trí của giấy nhớ hoặc digital tool là khác nhau giữa giáo viên và học sinh
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=1757196407&range=B34:C34

Tiền đề:
Nhiều digital tool đã được tạo ra

1. Quản lý trường bắt đầu monitoring
2. Quản lý nhà trường vào note học sinh.
3. Học sinh insert bất kỳ set digital tool nào vào slide đầu tiên của note của mình
4. Học sinh insert 10 giấy nhớ vào slide đầu tiên
5. Học sinh copy & paste digital tool ở step 3, đặt số dụng cụ dạy học là 10 
6. Học sinh đặt một giấy nhớ chồng lên trên một trong các dụng cụ dạy học ở step 5. Lúc này, điều chỉnh kích thước của giấy nhớ sao cho dụng cụ dạy học nằm khuất hoàn toàn bên dưới giấy nhớ. Chồng giấy nhớ lên trên để che tất cả 10 dụng cụ dạy học
7. Học sinh nhập các ký tự tùy ý vào 5 giấy nhớ trong số các giấy nhớ ở step 6
8. Quản lý nhà trường và học sinh nhấn nút 「めくる」
9. Quản lý trường nhà trường và học sinh lật giấy nhớ bất kỳ
10. Quản lý trường học và học sinh lần lượt insert digital tool bất kỳ. Lặp lại thao tác này 3 lần. Lúc này sẽ không tiến hành điều chỉnh dụng cụ dạy học và giấy nhớ.
11. Sau khi quản lý trường nhấn 「全部めくる」, học sinh nhấn 「とじる」. Lặp lại thao tác này 5 lần.
12. Học sinh copy slide đầu tiên rồi paste hai lần.
13. Quản lý trường, học sinh kiểm tra chuyển động của giấy nhớ trên tất cả các slide đã paste.

Kết quả mong muốn
3 ~ 13. Hoạt động của học sinh phải được phản ánh trên thiết bị của quản lý trường. Các slide của học sinh phải khớp hoàn toàn với trên thiết bị của giáo viên.

Hoạt động thực tế
Tại màn hình HS có thể nhìn thấy 1 chút object đã che hoàn toàn bởi giấy nhớ tại màn hình của GV .
Hình ảnh tham khảo:
Xin lỗi vì chất lượng hình ảnh hơi kém.
TB bên trái là giáo viên và object bên dưới có thể nhìn thấy từ giấy nhớ thứ hai từ phía trên bên phải.
https://drive.google.com/file/d/14bQw0ii8AeT3dxEvV6evCtVxfXJHxY7u/view?usp=share_link
ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー ー
Sato Memo: Tôi không nghĩ đó là lỗi của P5, hãy xác nhận giúp tôi. | QuyenVV: Lỗi không tái hiện được và cũng không thuộc P5
Link: https://drive.google.com/file/d/15LhamQaoEhDNgwad2ViBaqXRMj5ncwGK/view?usp=share_link 

Nhờ phía Tanosy xác nhận giúp. | VanTT: đúng là lỗi này không thuộc P5, lỗi này thuộc phần monitoring cũ
Tuy nhiên bên Scuti đang không tái hiện được bug, link ảnh ở màn Học sinh và Giáo viên: https://drive.google.com/file/d/15LhamQaoEhDNgwad2ViBaqXRMj5ncwGK/view?usp=share_link
33.0 | デジタル教具
Digital tool | 中田 | 2022-11-02 00:00:00 | P5Bug | Cannot reproduce | 内容：生徒Aがオブジェクトを選択できない

前提
・生徒A、生徒B、生徒Cはグループ１
・複数のデジタル教具が作成済みであること

1.学校責任者は、グループ学習を開始する
2.学校責任者は、グループノートに入る
3.生徒Aは、1枚目のスライドにて「挿入」→「画像」を押下し、任意の画像の挿入を実行する。
4.生徒Bは、1枚目のスライドにてステップ３の動作中に、デジタル教具の挿入を繰り返す
5.生徒Aは、ステップ３の画像挿入完了後、1枚目のスライドの全てのオブジェクトをコピーし、10回ペーストする
6.生徒Aは、「もどる」10回、「すすむ」10回を繰り返し押す
7.生徒Bは、ステップ６の最中に、「もどる」1回「すすむ」1回を繰り返し押す
8.生徒Cは、ステップ６、７の最中に1枚目のスライドをコピーし、1回ペーストする
9.学校責任者は、ステップ6、ステップ7の動作中、グループ学習を終了する
10.学校責任者は、授業を終了する
11.学校責任者は、生徒Aは、ステップ２のグループノート画面を開く

期待される結果
5.生徒Aは全てのオブジェクトを選択し、コピー&ペーストをすることができる。

実際の動き
5.生徒Aはオブジェクトを選択することができない。
　一度「自分のノート」に移動し、「グループノート」を開き直すことで選択することができた。

参考動画：
https://drive.google.com/file/d/1WiRT7J2_VnT2sBL2RK3RwPs3J56giYrr/view?usp=share_link | Scuti đang điều tra | Mô tả: Học sinh A không thể chọn object

tiền đề
・ Học sinh A, Học sinh B và Học sinh C thuộc Nhóm 1.
・ Nhiều digital tool đã được tạo ra

1. Quản lý trường học bắt đầu học nhóm
2. Quản lý nhà trường vào group note.
3. HS A nhấn「挿入」→「画像」 trên slide đầu tiên để insert một hình ảnh tùy ý.
4. Học sinh B lặp lại việc insert các digital tool ở  trên slide đầu tiên trong khi thao tác ở step 3 đang được thực hiện.
5. HS A copy tất cả các object trên slide đầu tiên sau khi hoàn thành việc insert hình ảnh ở step 3 và paste chúng 10 lần.
6. Học sinh A liên tục nhấn 「もどる」 10 lần và 「すすむ」 10 lần.
7. HS B liên tục nhấn 「もどる」 một lần và 「すすむ」 trong lúc thao tác ở step 6 đang được thực hiện.
8. HS C copy slide đầu tiên và paste một lần trong khi đang thao tác step 6 và 7
9. Quản lý trường học kết thúc việc học nhóm trong khi đang thao tác step 6 và 7
10. Quản lý của trường kết thúc buổi học.
11. Quản lý trường học, học sinh A, mở màn hình group note của step 2

Kết quả mong muốn
5. Học sinh A có thể chọn tất cả các object và có thể copy và paste.

Hoạt động thực tế
5. HS A không được chọn object.
Có thể chọn nó bằng cách chuyển 1 lần đến「自分のノート」rồi mở lại 「グループノート」.

Video tham khảo:
https://drive.google.com/file/d/1WiRT7J2_VnT2sBL2RK3RwPs3J56giYrr/view?usp=share_link
____
Sato Memo: Đây có phải là lỗi liên quan đến digital tool không? Hay có nguyên nhân khác? | không tái hiện được, nên please cho xin thêm thông tin tài khoản, tiết học và memo thêm là trước lúc các ông gặp lỗi thì có làm gì thêm không?
Nếu tái hiện được thì bug này bên Scuti nhận định là bug của P5 (đã đổi phân loại rồi nhé) https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1103407037&range=38:38

11/7
Accout sử dụng:

【GV】ID：otaketeacher-b40@gmail.com
　　　　PW：gqsSBL48
【HS A】UC32JS1870　　ldm2AQ63
【HS B】UC32WSI871       lus2HZ84　

11/7+8: QuyenVV
Chúng tôi đã thực hiện nhiều cách nhưng hiện tại chưa thể tái hiện được tình trạng lỗi này, bao gồm cả việc vào tiết học bị lỗi và tạo mới tiết học khác. 
Vui lòng thử kiểm tra lại và xác nhận lại với chúng tôi trên version mới nhất 1.0.0 (49)
Link video: evidence: https://drive.google.com/file/d/1WYKSrxfN0Ek0Pd3fKgstrCsrSfhQqTLz/view?usp=share_link | VanTT: đây là lỗi của P5. Tuy nhiên bên Scuti đang không tái hiện được lỗi
Link video: https://drive.google.com/file/d/18J63jXyGHJaZNIRtOolBnmUZvI2wsvBr/view?usp=share_link

VanTT: đã login account khách cung cấp, tới tiết học như trong video khách đang quay 2022年 11月 1日 5時間目：生活. Nhưng vẫn không tái hiện được bug, link evidence: https://drive.google.com/file/d/1WYKSrxfN0Ek0Pd3fKgstrCsrSfhQqTLz/view?usp=share_link
- Nhờ bên khách thực hiện lại xem còn bị lỗi không, nếu vẫn bị lỗi thì ghi rõ tiền điều kiện của lỗi (trước đó có thao tác gì đặc biệt không)
34.0 | デジタル教具
Digital tool | Other | Cannot reproduce | 内容：グループ学習開始時のスライド枚数が違う
（このテストケース特有のものでは無いと思いますが。このテスト時に出たものですのでここで報告させていただきます。）
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=1757196407&range=B40:C40

前提：
・生徒A、生徒B、生徒Cはグループ１、生徒D、生徒Eはグループ２に所属している
・複数のデジタル教具が作成済みであること

1.学校責任者は、グループ学習を開始する
2.学校責任者は、グループノートに入る
3.生徒Aは、1枚目のスライドにて「挿入」→「PDF」を押下し、任意のPDFの挿入を実行する。（PDFのページは5枚以上とする）
4.生徒Bは、1枚目のスライドにてステップ３の動作中に、デジタル教具の挿入を繰り返す
5.学校責任者は、ステップ3、ステップ4の動作中、グループ学習を終了する
6.学校責任者は、授業を終了する
7.学校責任者は、生徒Aは、ステップ２のグループノート画面を開く"        "4.デジタル教具の挿入に成功すること。デジタル教具の重なり順は、先頭が最背面、後ろが最上面であること。また、古いものが下、新しいものが上であること。この動作と、ステップ４の動作が、互いに不具合を起こさないこと。
5.先生は、PDF挿入中にグループ学習修了に成功すること。グループ学習を修了するまでに読み込んでいたPDFの部分がグループ学習ノートに挿入される。
7.学校責任者、生徒Aは、グループ学習が終了される直前までの状態のスライドを確認することができる

期待される結果
スライドは全員１枚

実際の動き
スライドが２枚ある生徒がいる

参考画像：
https://drive.google.com/file/d/1I2pXiSRcl-2nDAzH6jjeX55ZvvS1pwq0/view?usp=share_link | Nội dung: Số lượng slide khi bắt đầu học nhóm là khác nhau
(Tôi không nghĩ nó là duy nhất cho testcase này, nhưng vì nó xuất hiện khi test ,nên tôi sẽ báo cáo nó ở đây.)
https://docs.google.com/spreadsheets/d/1q6dQVYFqIlQuCndwbE0HQ3LT7IHqdnEZPHZ7xw4O2yg/edit#gid=1757196407&range=B40:C40

Tiền đề:
・ Học sinh A, B và C thuộc nhóm 1, học sinh D và E thuộc nhóm 2.
・ Nhiều digital tool đã được tạo ra

1. Quản lý trường học bắt đầu học nhóm
2. Quản lý nhà trường vào group note.
3. HS A nhấn 「挿入」→「PDF」 trên slide đầu tiên để insert một file PDF tùy ý. (PDF phải từ 5 trang trở lên)
4. Học sinh B lặp lại việc insert các digital tool ở step 3 trên slide đầu tiên.
5. Quản lý trường học kết thúc học nhóm trong khi đang thao tác step 3 và 4
6. Quản lý trường kết thúc tiết học.
7. Học sinh A mở màn hình group note ở step 2.

Kết quả mong muốn
Tất cả mọi người đều là 1 slide
Hoạt động thực tế
Có HS có 2 slide
Hình ảnh tham khảo:
https://drive.google.com/file/d/1I2pXiSRcl-2nDAzH6jjeX55ZvvS1pwq0/view?usp=share_link

ー ー
Sato Memo: Tôi nghĩ đó là một lỗi thuộc non-funtion. Vui lòng xác nhận. | QuyenVV: Không thể tái hiện được và bug này thuộc về P1~3  (nếu tái hiện được)
Link video: https://drive.google.com/file/d/1kaxX-Ju6fUfOp3iHmMQ4HwugZw4BTNW0/view?usp=share_link 

Nhờ phía Tanosy xác nhận giúp. | VanTT: Không tái hiện được, link evidence: https://drive.google.com/file/d/1kaxX-Ju6fUfOp3iHmMQ4HwugZw4BTNW0/view?usp=share_link
Tuy nhiên, bên Scuti nhận định đây không phải là bug non-function mà là bug của phần học nhóm cũ
35.0 | 検索
search | 佐藤 | 2022-11-02 00:00:00 | P5Bug | Closed | 内容：デジタル板書上・管理画面上で、検索結果に差異がある
端末：MacBook、iPad(15.7.1)

ステップ
1.デジタル板書上で「算数」にて絞り込む→24件の検索結果が現れる
2.管理画面上で「算数」にて絞り込む→26件の検索結果が現れる

期待する動作
管理画面・デジタル板書において、登録されているデジタル教具・タグの内容が一致していること

▼参照動画
https://drive.google.com/file/d/1jAn-heGOl0LcwKAxkOnVDD_Ov_TWrelj/view?usp=share_link

※板書上の動作はMacbookで撮影しましたが、iPadでも同様の状態でした | Scuti đang điều tra | Nội dung: Có sự sai khác ở kết quả search trên màn digital board và màn quản lý
TB: MacBook、iPad(15.7.1)

Step
1. Lọc tag 「算数」trên digital board-->Có 24 kết quả search được hiển thị
2.Lọc tag 「算数」trên màn quản lý-->Có 26 kết quả search được hiển thị

Kết quả mong muốn

Nội dung của Digital tool/tag thống nhất với nhau trên màn quản lý vafdigital board

▼Video tham khảo
https://drive.google.com/file/d/1jAn-heGOl0LcwKAxkOnVDD_Ov_TWrelj/view?usp=share_link

※ Hoạt động trên board tôi đã quay bằng macbook nhưng ở IPAD cungc có tình trạng tương tự | スクーティにてこの不具合を再現できました。
ステージング環境で修正しました。
https://drive.google.com/file/d/1qb_Fp6JIgCCVoraax5Z4Pphyd8P00wr9/view?usp=share_link 

11/4
ステージング環境にて、修正が確認できませんでした。
https://drive.google.com/file/d/1C-RDaJOFhkDHZXVHVDXvAUr5-mvxuAOM/view?usp=sharing
ステージング環境の最新版は1.0.0(48)でしょうか？

11/7
再確認しましたが、まだ解消されていませんでした。
https://drive.google.com/file/d/1C-RDaJOFhkDHZXVHVDXvAUr5-mvxuAOM/view?usp=sharing

また、管理画面とデジタル板書上において、教具の順番が異なるのも気になりました。併せてご確認をお願いいたします。
https://drive.google.com/file/d/1mwOyhBZRML4-XgZkckSvYDs7pOi3yLwy/view?usp=sharing | QuyenVV: Scuti đã tái hiện được bug này
Đã xử lý
Link video đã kiểm tra trên staging:
https://drive.google.com/file/d/1qb_Fp6JIgCCVoraax5Z4Pphyd8P00wr9/view?usp=share_link 

11/4 Sato

Tôi đã không xác nhận được phần fix trên môi trường STG

https://drive.google.com/file/d/1C-RDaJOFhkDHZXVHVDXvAUr5-mvxuAOM/view?usp=sharing

Version mới nhất của môi trường STG là 1.0.0(48) đúng không?


Sato 11/07

Tôi đã xác nhận lại nhưng lỗi vẫn chưa được giải quyết.

https://drive.google.com/file/d/1C-RDaJOFhkDHZXVHVDXvAUr5-mvxuAOM/view?usp=sharing


Ngoài ra, tại trên màn hình quản lý và digital board, tôi thấy thứ tự của dụng cụ dạy học đang khác nhau.
Vui lòng xác nhận giúp tôi.
https://drive.google.com/file/d/1mwOyhBZRML4-XgZkckSvYDs7pOi3yLwy/view?usp=sharing 

QuyenVV 11/07

Version mới nhất của môi trường STG là 1.0.0(49), bản 1.0.0(48) là bản build 9 ngày trước. Chúng tôi chưa đưa lên testflight thành công, nên đã build trực tiếp trên máy để check trước. Hôm nay chúng tôi đã đẩy lại bản 49 lên lại testflight. Xin lỗi bạn vì sự bất tiện này.

Chúng tôi đã xác nhận lại 1 lần nữa trên bản build mới nhất, issue đã được giải quyết. Vì vậy xin hãy cài bản 1.0.0 (49) và xác nhận giúp tình trạng này giúp chúng tôi. | OK | OK | https://jira.scuti.works/browse/ED-829 | VanTT: Đã tái hiện được
Lỗi này bị reopen do trước đây đã log, dev mới deploy trên server dev, chưa đẩy lên staging
36.0 | デジタル教具 | 佐々木 | 2022-11-10 00:00:00 | Other | Cannot reproduce | 内容：板書操作中に、内容が消える現象
端末：iPad
アカウント：生徒　UC32KT4829、bcmCQH93
授業：11月7日　1時間目　算数　

ステップ
1.デジタル教具「数のあらわし方」を挿入する
2.添付動画のように、教具の一部をコピー＆ペーストして、別の教具の上に重ねる
3.添付画像のように、ペンツールにて教具の上に文字を書く
※ステップ1の教具をたくさんコピーして利用されていたそうなので、メモリが原因かもしれません

期待する動作
データが保存される

実際に起こった動作
操作中に突然データがリセットされ、まっさらな状態になった

▼参考動画
（こちらでは、ステップのみ参考にしてください。不具合の瞬間は再現できていません。iMac利用。）
https://drive.google.com/file/d/1tAvTC8vrGqw4Gr-u0X5e5bjJ85_3Jmo6/view?usp=sharing | Nội dung：Hiện tượng nội dung bị xóa trong khi đang thao tác board
Device：iPad
Account：Học sinh　UC32KT4829、bcmCQH93
Tiết học：Ngày 7/11　Tiết đầu tiên　Toán học/算数　

Step
1.Insert Digital tool「Cách hiển thị các số/数のあらわし方」
2. Thực hiện copy & paste 1 phần các dụng cụ dạy học, rồi chồng lên dụng cụ dạy học khác giống như video đính kèm
3. vẽ ký tự len trên dụng cụ dạy học bằng Pen tool giống như ảnh đính kèm
※Có vẻ như đã copy rất nhiều dụng cụ dạy học ở Step 1 để sử dụng, nên có thể nguyên nhân là memory

Hoạt động mong muốn
Data được lưu

Hoạt động thực tế đã xảy ra
Khi đang thao tác thì tự nhiên data bị reset, trở thành trạng thái trắng xóa

▼Video tham khảo
（Cái này thì hãy chỉ tham khảo Step nhé. Trong đó không có tái hiện khảnh khắc phát sinh bug đâu. Sử dụng iMac）
https://drive.google.com/file/d/1tAvTC8vrGqw4Gr-u0X5e5bjJ85_3Jmo6/view?usp=sharing | QuyenVV 10/11: たくさんコピーしましたが、その現象が再現できませんでした。
Scutiがやった動画: https://drive.google.com/file/d/13R79b9Gdc9PPMeWRTR3r-cHuEz7MI19e/view?usp=share_link 
再度、再現して動画を撮っていただけますか？ | QuyenVV 10/11: Chúng tôi đã làm nhiều lần copy nhưng không thể tái hiện được
Link video tái hiện: https://drive.google.com/file/d/13R79b9Gdc9PPMeWRTR3r-cHuEz7MI19e/view?usp=share_link 
Bạn có thể tái hiện và show 1 video lỗi đầy đủ không? | NG | QuyenVV 10/11: Chúng tôi đã làm nhiều lần copy nhưng không thể tái hiện được
Link video tái hiện: https://drive.google.com/file/d/13R79b9Gdc9PPMeWRTR3r-cHuEz7MI19e/view?usp=share_link
37.0 | デジタル教具の新規追加
Add thêm digital tool | 笠 | 2022-11-11 00:00:00 | P5Bug | Closed | 内容：デジタル教具編集画面で新規タグの追加ができない
端末：iMac

ステップ
1.アップロード済みのデジタル教具を開く
2.学年タグ「小学6年生」を「小学2年生」(新規タグ)に付け替え、編集完了する

期待する動作
学年タグに「小学2年生」タグが追加される

実際の動作
学年タグに「小学2年生」タグのみ追加されない
「小学4年生」など他の学年は登録可能
また、教科タグ・単元タグに「小学2年生」タグは追加可能

参考動画：
https://drive.google.com/file/d/19XHg8nmi-J2DcAzev79kirGcKVSuLMA6/view?usp=share_link

＿＿＿
佐藤にて試したところ、同じ現象が発生しました。 | Nội dung: Không thể thêm tag mới tại màn hình chỉnh sửa digital tool
Thiết bị: iMac

Step
1. Mở digital tool đã tải lên
2. Thay đổi tag 「小学6年生」thành 「小学2年生」(tag mới) để hoàn thành chỉnh sửa

Kết quả mong muốn
Tag  「小学2年生」được thêm vào tag năm học

Hoạt động thực tế
Chỉ tag「小学2年生」không được thêm vào tag năm học
Các năm học khác  có thể  đăng ký ví dụ như 「小学4年生」
Ngoài ra, có thể thêm tag 「小学2年生」 vào tag 教科/単元

Tham khảo Video:
https://drive.google.com/file/d/19XHg8nmi-J2DcAzev79kirGcKVSuLMA6/view?usp=share_link

____
Sato đã thử và thấy phát sinh hiện tượng giống như vậy. | QuyenVV: 11/15:
Lỗi liên quan đến tag quá khứ bị remove ảnh hưởng bởi No 30
Tag mới bị remove thì không bị.
==> Lỗi do conflict dữ liệu cũ.
Scuti đã xử lý bug trên Staging 
Link video: 
https://drive.google.com/file/d/1IHeFQCLjq76-xBFbR869As6mwcL43nMy/view?usp=sharing | https://jira.scuti.works/browse/ED-889
38.0 | デジタル教具の新規追加
Add thêm digital tool | 笠 | 2022-11-11 00:00:00 | P5Bug | Closed | 小学3年生のタグだけがつけられない。
動画内で他学年（４・５・６年生）のタグをつけられるか試し、それは可能でした。
なぜか３年生だけがタグ付けするとエラー表示が出ます。
PVの外注先画面操作をお願いしているところなので、早く改善していただきますようお願いします。

▼参考動画
https://tanosyhq.slack.com/files/U029L52GAH3/F04D1H9AT5Y/___________________________.mov | Chỉ có mỗi tag của Học sinh lớp 3 là không thể gắn được.
Trong video, khách đã thử xem có thể gắn tag của những học sinh năm khác （lớp ４・５・６）, thì dều có thể làm được.
Không hiểu sao mà chỉ khi gắn tag của Học sinh lớp 3 thì lại hiển thị error
Hiện tại khách đang nhờ một bên khác thao tác màn hình để PV, nên nhờ các bạn cải thiện sớm giúp tôi nhé.

▼Video tham khảo
https://tanosyhq.slack.com/files/U029L52GAH3/F04D1H9AT5Y/___________________________.mov | https://jira.scuti.works/browse/ED-52 | QuyenVV: Có vẻ vẫn còn xót các tag data cũ chưa được xử lý của No 37
39.0 | デジタル板書 | 佐々木（鬼澤） | 2022-12-16 00:00:00 | https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1671180609934539 | Other | Cannot reproduce | 内容：デジタル板書で「＜」を押すと、時間割一覧ではなくTOP画面に遷移してしまう

本番環境

device:iPad
アカウント
gvosakauni4@edu.jp
Nagi1234

ステップ1　スライド画面から戻る（左上の「＜」）押す
ステップ2　板書、児童のノート、画像をアップロードするが表示されている画面の左上の戻るを押す

期待する動作
時間割一覧の画面に遷移

実際に起こる
動作時間割の画面に遷移せず、トップ画面に遷移

参考動画
https://drive.google.com/file/d/1Xz_xDngWG-83Z8wNS-5IsW6IUqIc_EyC/view?usp=share_link | Nội dung：Nếu nhấn 「＜」ở digial board, thì lại không di chuyển đến List thời khóa biểu, mà lại di chuyển tới màn hình TOP

Môi trường thật

device:iPad
Account
gvosakauni4@edu.jp
Nagi1234

Step 1　Quay lại từ màn hình Slide （nhấn 「＜」ở phía trên bên trái）
Step 2　Nhấn Back ở phía trên bên trái của màn hình mà upload image, note HS, board đang được hiển thị

Hoạt động mong muốn
Di chuyển về màn hình List thời khóa biểu

Hoạt động xảy ra thực tế
Không di chuyển tới màn hình List thời khóa biểu, mà lại di chuyển tới màn hình TOP

Video tham khảo
https://drive.google.com/file/d/1Xz_xDngWG-83Z8wNS-5IsW6IUqIc_EyC/view?usp=share_link | GiangPT 30/01: 
Chúng tôi đã login account khách gửi và tới tiết học như ở trong video, tuy nhiên không tái hiện được bug.
Link video tái hiện: https://drive.google.com/file/d/1VMDCcht4twUfbeQwmH91i-JINVZ_1WuC/view?usp=share_link | VanTT 16/12: Chúng tôi đã login account khách gửi và tới tiết học như ở trong video, tuy nhiên không tái hiện được bug.
Link video tái hiện: https://drive.google.com/file/d/1VMDCcht4twUfbeQwmH91i-JINVZ_1WuC/view?usp=share_link
40.0 | デジタル板書 | 佐々木（鬼澤） | 2022-12-16 00:00:00 | https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p16711806099345399 | Other | Scuti Closed | 内容：メモリ不足が出るとスライドを切り替えても正しく表示されない。左のプレビューに「？」が表示される

本番環境

device:iPad
アカウント
gvosakauni4@edu.jp
Nagi1234

ステップ1　スライド上で板書を作成する（デジタル教具や文字を書く＝先生が使うのと同じ使い方をするということ）

期待する動作（反応）
メモリ不足と表示されない
左の小さいスライドに実際のスライドと同じ絵が表示される

実際に起こる動作（反応）
突然、メモリ不足と表示される（規則性が見いだせない）
左のスライドのサムネイルに絵が表示されず、「？」マークが表示される（参考動画の、4枚目のスライド）

参考動画
https://drive.google.com/file/d/107vcX3_rUqpOLF-gwZCLnTy7I9nIeZCO/view?usp=share_link | Nội dung：Nếu xuất hiện Không đủ bộ nhớ, thì kể cả switch slide thì cũng không hiển thị chính xác. Preview bên trái lại hiển thị「？」

Môi trường thật

device:iPad
Account
gvosakauni4@edu.jp
Nagi1234

Step 1　Tạo bảng trên slide (viết digital tool hoặc là ký tự = tức là thực hiện cách sử dụng giống như GV sử dụng)

Hoạt động mong muốn (Response)
Không hiển thị là Không đủ bộ nhớ/メモリ不足
Tại slide nhỏ bên trái phải hiển thị bức tranh giống như ở slide thực tế

Hoạt động xảy ra thực tế
Tự nhiên Không đủ bộ nhớ/メモリ不足 được hiển thị ra (không tuân theo quy tắc nào cả)
Ảnh thumbnail của slide bên trái không được hiển thị ra, mà lại hiển thị「？」 (slide thứ 4 trong video tham khảo)

Video tham khảo
https://drive.google.com/file/d/107vcX3_rUqpOLF-gwZCLnTy7I9nIeZCO/view?usp=share_link | Scuti đã xử lý lỗi tràn bộ nhớ nên sẽ ko còn lỗi này nữa | - VanTT(30/1)
Scuti đã xử lý lỗi tràn bộ nhớ nên hiện tại không tái hiện được bug
Dưới đây là Nonfuntion
38.0 | Đúng specs, ko phải là bug | Other | Rejected | 内容：編集するスライドを移動すると【もどる・すすむ】が操作できなくなる
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1256415382&range=B9
端末：iPad(16.2)

1.ユーザーは任意のデジタル板書／ノートを開く
2.画像を挿入する（1つのオブジェクトの容量は100MB以下とする）
3.動画を挿入する（1つのオブジェクトの容量は100MB以下とする）
4.PDFを挿入する（1ページのデータ量は10MB以下とする）
5.任意のスライドやオブジェクトを【コピー・カット・ペースト・削除】する
6.任意のタイミングで【もどる・すすむ】を実行する

期待する動作
ステップ６で正しく【もどる・すすむ】が操作できる

実際の動作
編集するスライドを移動すると【もどる・すすむ】ボタンがグレーの状態になり操作できなくなる

参考動画：
https://drive.google.com/file/d/1ssmul0Jc582BJMU61oWkE4CYlVtZY8Mx/view?usp=sharing" | Nội dung： Nếu di chuyển slide edit thì không thể thao tác 【Back・Next】
Case:
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1256415382&range=B9 
Device：iPad(16.2)
Nội dung：Add thêm obj
Quyền：Quản lý trường, GV, HS
1.User mở digital board/Note tùy ý
2.Add thêm image (Dung lượng của 1 obj là 100MB trở xuống)
3.Add thêm video (Dung lượng của 1 obj là 100MB trở xuống)
4.Add PDF (Dung lượng data của 1 page từ 10MB trở xuống)
5.Thực hiện 【Copy・Cut・Paste・Delete】 slide hay obj tùy ý
6.Thực hiện 【Back・Next】 ở timing bất kỳ

Hoạt động kỳ vọng
Có thể thao tác  【Back ・Next】 chính xác ở step 6

Hoạt động thực tế
Nếu di chuyển slide edit thì button  【Back・Next】có trạng thái gray, không thể thao tác được

Vi deo tham khảo：
https://drive.google.com/file/d/1ssmul0Jc582BJMU61oWkE4CYlVtZY8Mx/view?usp=sharing | Hiện tại back/next chỉ đang áp dụng cho 1 page chứ không xử lý được logic cho cả 1 digital board vì mỗi slide có 1 bộ back/nexr riêng. Khi refresh lại page/ chuyển page rồi quay lại, back/next sẽ được reset. 
Link spec chỉ biểu thị nút back/next tại mỗi slide https://docs.google.com/presentation/d/1YNuXtrESPhaRL7_daMUqewx8NO1lyhy5/edit#slide=id.p16 

Phía Scuti đã test lại trường hợp back/ next sau và vẫn hoạt động bình thương, khách hàng tham khảo: 

- Với trường hợp 【Copy・Cut・Paste・Delete】 object trong cùng slide hoặc sang slide khác, vẫn thực hiện Back Next bình thường
Video: https://drive.google.com/file/d/1kQu5iJ6XCnfp_O-YcpRs_VYXxFjIjKGy/view?usp=share_link
- Với trường hợp 【Copy・Cut・Paste・Delete】 slide, khi sang slide mới sau khi vừa được tạo nhờ thực hiện paste slide thì button Back Next sẽ disable vì theo spec hiện tại button Back chỉ enable khi đã làm từ 2 thao tác trở lên, button Next chỉ enable khi back từ 1 bước trở lên ( sang slide khác, các hành động trước đó sẽ được reset) https://docs.google.com/presentation/d/1YNuXtrESPhaRL7_daMUqewx8NO1lyhy5/edit#slide=id.p16 | GiangPT | 17/01 | Other | VanTT: (16/1)
- Với trường hợp 【Copy・Cut・Paste・Delete】 object trong cùng slide hoặc sang slide khác, vẫn thực hiện Back Next bình thường
Video: https://drive.google.com/file/d/1kQu5iJ6XCnfp_O-YcpRs_VYXxFjIjKGy/view?usp=share_link
- Với trường hợp 【Copy・Cut・Paste・Delete】 slide, khi sang slide mới sau khi vừa được tạo nhờ thực hiện paste slide thì button Back Next sẽ disable vì theo spec hiện tại button Back chỉ enable khi đã làm từ 2 thao tác trở lên, button Next chỉ enable khi back từ 1 bước trở lên ( sang slide khác, các hành động trước đó sẽ được reset) https://docs.google.com/presentation/d/1YNuXtrESPhaRL7_daMUqewx8NO1lyhy5/edit#slide=id.p16 
-> Expect của bug đag bị sai so với spec
39.0 | Other | Rejected | 内容：「Googleでログイン」を押下するとアプリが落ちる
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B9
端末：iPad(16.2)

1.先生は、ログイン画面を開く
2.先生は、「先生・管理者用ログインは こちら」を押下する
3.先生は、「Googleでログイン」を押下する
4.先生は、必要事項を入力し、ログイン操作を完了させる

期待する動作
ステップ３でGoogleのログインへ遷移する

実際の動作
「”PreProd Eduα Cloud”がクラッシュしました」と表示され、ログインすることができない

PC (iMac)とChromebookではアカウントへのアクセスがブロックされたというようなメッセージが出てログインができません
録画を試みましたが、以降はクリックしても何も反応がない状態です

参考動画(iPad)：
https://drive.google.com/file/d/1IV3WeVWvIK9WytjC3wFF5ZR8eCm33rVC/view?usp=sharing

参考動画(iMac)：
https://drive.google.com/file/d/1A5KhujEge5A7Yfh0BPL_UPNZeVVe_uyz/view?usp=sharing | 内容：「Googleでログイン」を押下するとアプリが落ちる
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B9
端末：iPad(16.2)

1.先生は、ログイン画面を開く
2.先生は、「先生・管理者用ログインは こちら」を押下する
3.先生は、「Googleでログイン」を押下する
4.先生は、必要事項を入力し、ログイン操作を完了させる

期待する動作
ステップ３でGoogleのログインへ遷移する

実際の動作
「”PreProd Eduα Cloud”がクラッシュしました」と表示され、ログインすることができない

PC (iMac)とChromebookではアカウントへのアクセスがブロックされたというようなメッセージが出てログインができません
録画を試みましたが、以降はクリックしても何も反応がない状態です

参考動画(iPad)：
https://drive.google.com/file/d/1IV3WeVWvIK9WytjC3wFF5ZR8eCm33rVC/view?usp=sharing

参考動画(iMac)：
https://drive.google.com/file/d/1A5KhujEge5A7Yfh0BPL_UPNZeVVe_uyz/view?usp=sharing | Không login được bằng Google trên pre production. Check lại trên môi trường Produciton và đã có bug ở No bên dưới. | Other
40.0 | Non-fun Bug | Scuti Closed | 内容：先生のモニタリング画面で、グループ１のノートにグループ２のノートも表示される
ケース：https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B12 
端末：Chromebook、iPad(16.2)

・先生（Chrome book）
　　メアド：s.nakata2022@gmail.com
　　pass　：Ohtake8591

・生徒A（iPad）
　　ユーザーコード：UC3B6T19
　　pass　　　　　：qcvTUD76

・生徒B（iPad）
　　ユーザーコード：UC3YRD1V1665330
　　pass　　　　　：mvzMZJ34

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.生徒A～Dはログインし、ステップ1の授業を開く
3.生徒A～Dは、自身のノートを開く。1スライドにつき１つのWeb検索画像を挿入する動作を２０ページ分まで続ける。
4.先生は、ステップ３の最中に、「授業TOP」→「時間割画面」に遷移する
5.先生は、ステップ３の最中に、「編集」を押下し、ステップ１の授業を選択する。日付を4か月後に変更し、登録する。
6.先生は、ステップ３の最中に、ステップ5の授業を開く
7.先生は、グループ学習を開始する。
8.生徒A～Dは、自身のグループノートにてペン・消しゴムの利用し続ける
9.先生は、グループノート１に入る。＜＞を用いて、グループノート２に遷移する
10.先生は、「生徒の画面で他のグループを見られるようにする」モードをONにする。生徒A～Dは、他のグループノートを観覧する。
11.先生は「グループノート終了」→「授業終了」を押下する
12.授業終了後、先生・生徒A～Dは、生徒A～Dの個人ノートと、グループノート１・２の観覧をする

期待する動作
ステップ９でグループノート１の画面に入ると、グループ１のノートのみが表示される

実際の動作
グループ１のノートにグループ２のノートも表示される

参考画像(Chromebook：先生)
※画面左のスライドプレビューに、グループ１と２のスライドがそれぞれ表示されています
https://drive.google.com/file/d/1yoXRCS0TNTGc6vc-6uVSyp_Xen89sDz2/view?usp=share_link 

参考画像(iPad：グループ１の生徒)
https://drive.google.com/file/d/1FZ-vdYbn--bWawVz3awRsb_aH5AUjUmS/view?usp=share_link 

参考画像(iPad：グループ２の生徒)
https://drive.google.com/file/d/1-bsMA8ND5A5W_X0C4wci4cOyuVgZPeb9/view?usp=share_link | Nội dung： Ở màn hình Monitoring của GV, note của group 2 lại bị hiển thị vào note của group 1
Case：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B12   
Device: Chromebook、iPad(16.2)

・Giáo viên (Chrome book）
　　Mail：s.nakata2022@gmail.com
　　pass　： Ohtake8591

・HSA（iPad）
　　User code UC3B6T19
　　pass　　　　　：qcvTUD76

・HS B（iPad）
　　User code: UC3YRD1V1665330
　　pass　　　　　：mvzMZJ34

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.HS A~D thực hiện login, mở tiết học ở Step 1
3.HS A～D mở note của mình. Thực hiện liên tục thao tác add 1 image tìm kiếm web vào 1 slide cho đến page thứ 20
4.Trong khi đang làm step 3, GV di chuyển 「TOP Tiết học」→「Màn hình TKB」
5. Trong khi đang làm step 3, GV nhấn 「Edit/編集」, chọn tiết học ở step 1. Thay đổi date thành 4 tháng sau, rồi đăng ký
6.Trong khi đang làm step 3, GV mở tiết học ở step 5
7.GV start Học nhóm.
8.HS A～D sử dụng liên tục Pen, Tẩy tại note nhóm của mình.
9.GV vào group note 1 Sử dụng ＜＞, để di chuyển tới group note 2
10.Giáo viên On mode 「có thể xem group khác trên màn hình của HS」. HS A～D xem group note khác
11.GV nhấn 「Kết thúc group note」→「Kết thúc tiết học」
12.Sau khi kết thúc tiết học, GV, HS A～D xem note cá nhân của HS A～D, group note 1,2

Hoạt động kỳ vọng
Ở step 9, nếu vào màn hình group note 1, thì chỉ hiển thị note của group 1

Hoạt động thực tế
Note của group 2 lại bị hiển thị vào note của group 1

Video tham khảo (Chromebook： Giáo viên)
※Tại Preview bên trái màn hình, lần lượt hiển thị slide của group 1 và 2

https://drive.google.com/file/d/1yoXRCS0TNTGc6vc-6uVSyp_Xen89sDz2/view?usp=share_link 

Video tham khảo (iPad： Học sinh của Group 1)

https://drive.google.com/file/d/1FZ-vdYbn--bWawVz3awRsb_aH5AUjUmS/view?usp=share_link 

Video tham khảo (iPad： Học sinh của Group 2)

https://drive.google.com/file/d/1-bsMA8ND5A5W_X0C4wci4cOyuVgZPeb9/view?usp=share_link | Scuti đã tái hiện được. 
Trùng với No 43

GiangPT 30/01: 
Scuti đã fix bug, nhờ khách hàng check lại. 
-----------------
13/2
Sau khi được phát, nếu HS switch sang group note thì bị hiển thị là「グループ学習ノートが配布されていません…」.
Nếu switch lần nữa thì note được hiển thị ra (lần nào cũng bị vậy)
Khi sử dụng Pen ở Note nhóm thì tool lựa chọn 「Pen・Mark・Tẩy」không được hiển thị ra.
「Cut・Copy・Paste・Delete」ở bên phải phía trên và Mark ＋phía dưới slide không được hiển thị.
Acc GV
Chrome book
demo3@edualpha-cloud.jp
password：fumWMR89
Acc HS
iPad
User code：UC124V8379
Pass：fmlMUW89
Acc HS
iPad
User code：UC1220E378
Pass：zdtSEJ84
Acc HS
iPad
User code：UC126JY377
Pass：zyeQSW69
Acc HS
iPad
Use code：UC121DD56
Pass：pflDGU53 | GiangPT | 17/01 | OK | https://jira.scuti.works/browse/ED-293 | VanTT: 13/2: có tái hiện được
YenNH (10/2) Vẫn done

YenNH (16/1) 
Step tái hiện giống với No 43, HoaLP đã log bug ED-237
41.0 | Non-fun Bug | Scuti Closed | 内容：先生が生徒のノートを確認できない
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B11

端末：iPad(16.2)、iMac (Retina 5K, 27-inch, 2020)

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.先生は「授業開始」→「投影しない授業開始」を実施する
3.先生は、デジタル板書を開き、表を作成する。任意のスタイル変更をする。
4.先生は、デジタル板書の編集を終了し、時間割画面にもどる
5.先生は、黒板板書を開き、3枚の写真をアップロードする
6.生徒はログインし、ステップ1の授業を開く
7.生徒は、自身のノートを開き、表を作成する。任意のスタイル変更をする。
8.先生は、ステップ7の最中に、「授業終了」を押下し、「授業TOP」→「時間割画面」に遷移する
9.生徒は再び自身のノートに入り、PDFを挿入の操作を実行する。（1ページ10MBが、50ページ分あるPDFファイル）
10.先生は、ステップ9の動作中に「編集」を押下してステップ1の授業を選択し、単元名の変更を実行する
11.先生は、ステップ10のデジタル板書を開き、モニタリングを開始する
12.先生は、生徒の画面に入る

期待する動作
ステップ12で先生と生徒は同じノートを閲覧できる

実際の動作
先生がノートを確認しても生徒のノートが表示されない

参考動画(先生から見た生徒の画面)：
https://drive.google.com/file/d/1J7GLKCEsT-NNwReFFRhXKG7ydu-E2Qox/view?usp=sharing

参考画像(実際の生徒から見た画面)：
https://drive.google.com/file/d/1vKJ-vFrW0HPKIno2FoRT9S0apMRV8YpF/view?usp=sharing | Nội dung： GV không thể confirm note của HS
Case:
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B11  

Device：iPad(16.2)、iMac (Retina 5K, 27-inch, 2020)

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.GV thực hiện 「Bắt đầu tiết học/授業開始」→「Bắt đầu tiết học không trình chiếu/投影しない授業開始」
3.GV mở digital board, tạo bảng Thay đổi style bất kỳ
4.GV kết thúc edit digital board, quay lại màn hình TKB
5.GV mở bảng đen, upload 3 ảnh
6.HS login rồi mở tiết học của step 1
7.HS mở note của bản thân, tạo bảng Thay đổi style bất kỳ
8.Trong khi đang làm step 7, GV nhấn Kết thúc tiết học, rồi di chuyển 「TOP Tiết học」→「Màn hình TKB」
9.HS vào note của mình lần nữa, thực hiện thao tác add PDF （File PDF có 50 page, 1 page 10MB)
10. Trong khi đang làm step 9, GV nhấn 「Edit/編集」, chọn tiết học ở step 1, thực hiện thay đổi tên đơn vị
11.GV mở digital board ở step 10, bắt đầu monitoring
12.GV vào màn hình HS

Hoạt động kỳ vọng
Ở Step 12, GV và HS đều có thể xem note giống nhau

Hoạt động thực tế
GV confirm note đi nữa, nhưng note của HS không được hiển thị ra

Video tham khảo (Màn hình của HS từ view GV)：
https://drive.google.com/file/d/1J7GLKCEsT-NNwReFFRhXKG7ydu-E2Qox/view?usp=sharing  

Ảnh tham khảo (Màn hình thực tế từ view HS)：
https://drive.google.com/file/d/1vKJ-vFrW0HPKIno2FoRT9S0apMRV8YpF/view?usp=sharin | Scuti hiện tại không tái hiện được bug này, nhờ khách hàng tái hiện lại. Nếu vẫn còn tái hiện được, có thể cho chúng tôi tài khoản và tiết học, slide đang vẫn thể hiện lỗi đó để Scuti điều tra thêm.
Môi trường: Học sinh (Ipad), Giáo viên (ChromeBook)
Video:
https://drive.google.com/file/d/1Pz-bodmNx0u0UjrTlaCeiwPju5VUD9lR/view?usp=sharing 

30/1. Tanoshi đã tái hiện được. Thông tin acc như sau.
Acc GV：GV tanoshi1 :sensei1@tanosy.com　vjzDZW86
Acc HS：HS tanoshi１:　UC22CJN490　fjt2FR34

Tiết hoc：30/1/2023　Tiết 2
Sau khi kết thúc tiết học, GV không confirm được digital board của HS

YenNH (30/1): Đã tái hiện được bug
-----------------------
13/2.Otake lại tìm ra bug khi test lại
NO.41
7.HS mở note của bản thân, tạo bảng. Thay đổi style bất kỳ
8.Trong khi đang làm step 7, GV nhấn Kết thúc tiết học, rồi di chuyển 「TOP Tiết học」→「Màn hình TKB」
Khi HS đang thao tác step 7, GV nhấn 「Kết thúc tiết học」,
thì màn hình phía học sinh bị cưỡng chế quay lại TOP tiết học.
Không liên quan tới cách thao tác, GV nhấn「Kết thúc tiết học」, phía HS bị cưỡng chế quay lại Top tiết học
Acc GV:
Chrome book
demo3@edualpha-cloud.jp
password：fumWMR89
Acc HS
iPad
User code：UC124V8379
Pass：fmlMUW89
Vì có bug như trên nên ko thể confirm được No.41 | GiangPT | 17/01 | OK | https://jira.scuti.works/browse/ED-257 | YenNH (10/2) Vẫn done

YenNH (16/1):
Tái hiện trên thiết bị: Học sinh (Ipad), Giáo viên (ChromeBook)
Không tái hiện được bug, nhờ khách hàng cung cấp tài khoản, tiết học để bên Scuti tái hiện lại.
Video:
https://drive.google.com/file/d/1Pz-bodmNx0u0UjrTlaCeiwPju5VUD9lR/view?usp=sharing

YenNH (30/1): Đã tái hiện được bug
42.0 | Other | Rejected | 内容：生徒の授業TOP画面が正しく表示されない
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B13

端末：iPad(16.2)、Chromebook

・先生（Chrome book）
　　メアド：s.nakata2022@gmail.com
　　pass　：Ohtake8591

・生徒A（iPad）
　　ユーザーコード：UC3B6T19
　　pass　　　　　：qcvTUD76

・生徒B（iPad）
　　ユーザーコード：UC3YRD1V1665330
　　pass　　　　　：mvzMZJ34

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.生徒40名はログインし、ステップ1の授業を開く
3.先生は、「授業開始」→「投影しない授業開始」を実施する
4.先生は、「板書公開」を押下する
5.先生は、グループ学習を開始し、「生徒の画面で他のグループを見られるようにする」モードをONにする。
6.先生は、グループノート１に入る
7.生徒40人は、自身のグループノートを開く
8.生徒40人は、1枚目のスライドに付箋を挿入する。色、サイズの変更や、文字の入力、めくる・閉じる動作を実施する。
9.生徒Aは、「もどる」を押下し、「授業TOP」→「先生の板書」画面を開く
10.生徒Bは、「もどる」→「グループノート」を押下し、他のグループノートを観覧する
11.生徒Cは、グループノート上にて、アニメーションの視聴を開始する
12.生徒Dは、ステップ11の動作中、自身のグループノートの全てのスライドを削除する
13.先生、生徒A〜Dの端末上で、空のスライドが1枚になっているかを確認する

期待する動作
ステップ2で授業TOP画面を開くと、まだノート（画面右下）には何も記入されてない状態である

実際の動作
右下のノートに、別の授業のグループノートが表示されている

参考画像（Chromebook：先生）
※生徒ノートにはまだ何も記入されていないことがわかる
https://drive.google.com/file/d/12NCYtci4L3pakqi3vfKWyVg8bYiFlNmo/view?usp=share_link

参考画像（iPad：生徒A）
※正しく表示されている生徒の画面
https://drive.google.com/file/d/1ASDQ1NrtRMGrg3E-MuJBBzioB9ImiQmK/view?usp=share_link

参考画像（iPad：生徒B）
※正しく表示されなかった生徒の画面（画面右下の生徒ノートに別の授業のグループノートが表示されてしまっている）
https://drive.google.com/file/d/1Q2MaCa2Hgl2COVNlguai2sp293rnoOxW/view?usp=share_link
→その後、右下のノートをタップすると別の授業のノート画面に遷移し、戻るをタップしてもそのまま別授業のTOP画面になる
（参考動画：https://drive.google.com/file/d/1PkagT-Vzuz_NZMn7Ou2Q4aFTkMd8T1Zq/view?usp=share_link） | Nội dung： Màn hình TOP tiết học của HS không được hiển thị chính xác
Case:
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B13 

Device：iPad(16.2)、Chromebook

・GV（Chrome book）
　　Mail：s.nakata2022@gmail.com
　　pass　： Ohtake8591

・HSA（iPad）
　　User code: UC3B6T19
　　pass　　　　　：qcvTUD76

・HS B（iPad）
　　User code: UC3YRD1V1665330
　　pass　　　　　：mvzMZJ34

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.40 HS login rồi mở tiết học của step 1
3.GV thực hiện 「Bắt đầu tiết học/授業開始」→「Bắt đầu tiết học không trình chiếu/投影しない授業開始」
4.Giáo viên nhấn 「Công khai board/板書公開」
5.Giáo viên bắt đầu học nhóm,  On mode 「có thể xem group khác trên màn hình của HS」.
6.GV vào group note 1
7.40 HS mở group note của mình.
8.40 HS add thêm Giấy nhớ vào slide thứ nhất Thực hiện  thay đổi màu sắc, size, nhập ký tự, xoay, close.
9.HS A nhấn 「Back」, mở màn hình 「TOP tiết học」→「Board giáo viên」
10. HS B nhấn 「Back」→「Note nhóm」, xem group note khác
11.HS C bắt đầu xem animation trên group note
12.HS D, trong khi đang làm step 11, xóa tất cả slide trên group note của mình
13.Trên device GV, HS A〜D, confirm xem có đang có 1 slide trống hay không

Hoạt động kỳ vọng
Nếu mở màn hình TOP tiết học ở step 2, thì trạng thái note là chưa được fill gì cả

Hoạt động thực tế
Tại note của bên phải phía dưới, group note của tiết học khác đang được hiển thị

Image tham khảo (Chromebook： Giáo viên)
※Ở note học sinh đang không được fill gì cả
https://drive.google.com/file/d/12NCYtci4L3pakqi3vfKWyVg8bYiFlNmo/view?usp=share_link 

Image tham khảo (iPad： HS A)
※Màn hình HS đang được hiển thị chính xác
https://drive.google.com/file/d/1ASDQ1NrtRMGrg3E-MuJBBzioB9ImiQmK/view?usp=share_link 

Image tham khảo (iPad： HS B)
※Màn hình HS đã không được hiển thị chính xác (Group note của tiết học khác đang được hiển thị vào note HS bên dưới bên phải màn hình)
https://drive.google.com/file/d/1Q2MaCa2Hgl2COVNlguai2sp293rnoOxW/view?usp=share_link 
→Sau đó, nếu tap vào note bên phải phía dưới thì sẽ di chuyển tới màn hình note của tiết học khác, sau đó kể cả có tap vào Back thì vẫn là màn hình Top tiết học như cũ
（Video tham khảo：
https://drive.google.com/file/d/1PkagT-Vzuz_NZMn7Ou2Q4aFTkMd8T1Zq/view?usp=share_link ） | Scuti không thể tái hiên, nhờ khách hàng tái hiện lại xem còn bị không và cho Scuti xin lại tài khoản, tiết học bị 
video tái hiện: https://drive.google.com/drive/folders/1t69j-EFPIQ6u811-YXZaE9Tk3j1CvnAO?usp=share_link .

-------------
2/2 Otake cũng không tái hiện được, nhưng trong quá trình tái hiện lại phát hiện ra bug khác, sẽ log ở dưới đây (Thúy) | GiangPT | 17/01 | NG | HoaLP: Tested ngày 16/1 Tester không tái hiện được bug. Nhờ khách hàng gửi thêm video 

https://drive.google.com/drive/folders/1t69j-EFPIQ6u811-YXZaE9Tk3j1CvnAO?usp=share_link
43.0 | Non-fun Bug | Scuti Closed | 内容：先生が生徒のノートを確認できない・生徒が他の生徒のノートを確認できない
(No.41と同じ現象かもしれませんが生徒も症状が出たのでこちらも報告いたします)
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B12
端末：生徒⇨iPad(16.2)、先生⇨iMac (Retina 5K, 27-inch, 2020)

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.生徒A～Dはログインし、ステップ1の授業を開く
3.生徒A～Dは、自身のノートを開く。1スライドにつき１つのWeb検索画像を挿入する動作を２０ページ分まで続ける。
4.先生は、ステップ３の最中に、「授業TOP」→「時間割画面」に遷移する
5.先生は、ステップ３の最中に、「編集」を押下し、ステップ１の授業を選択する。日付を4か月後に変更し、登録する。
6.先生は、ステップ３の最中に、ステップ5の授業を開く
7.先生は、グループ学習を開始する。
8.生徒A～Dは、自身のグループノートにてペン・消しゴムの利用し続ける
9.先生は、グループノート１に入る。＜＞を用いて、グループノート２に遷移する
10.先生は、「生徒の画面で他のグループを見られるようにする」モードをONにする。生徒A～Dは、他のグループノートを観覧する。
11.先生は「グループノート終了」→「授業終了」を押下する
12.授業終了後、先生・生徒A～Dは、生徒A～Dの個人ノートと、グループノート１・２の観覧をする

期待する動作
ステップ12で先生と生徒はそれぞれのノートを閲覧できる

実際の動作
先生は個人ノートとグループノートが、生徒は自分以外の個人ノートが確認できない
生徒はその後一覧に戻ると画面に何も表示されない時がある

参考動画(先生から見た生徒の画面)：
https://drive.google.com/file/d/16CJ9OfVAeW9qj4MWsBzNH5f1VfGWrX-B/view?usp=sharing

参考画像(生徒から見たグループノート・個人ノート)：
https://drive.google.com/file/d/1WI082jduUIKlIPKUbmRt6_ccp6PUzjLL/view?usp=sharing | Nội dung： Giáo viên không thể confirm note của HS, HS không thể confirm note của HS khác
(Cos thể hiện tượng giống No.41, nhưng có hiện tựng của cả HS nữa nên vẫn báo cáo cả bug này)
Case:
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B12 
Device: HS:⇨iPad(16.2), GV⇨iMac (Retina 5K, 27-inch, 2020)

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.HS A~D thực hiện login, mở tiết học ở Step 1
3.HS A～D mở note của mình. Thực hiện liên tục thao tác add 1 image tìm kiếm web vào 1 slide cho đến page thứ 20
4.Trong khi đang làm step 3, GV di chuyển 「TOP Tiết học」→「Màn hình TKB」
5. Trong khi đang làm step 3, GV nhấn 「Edit/編集」, chọn tiết học ở step 1. Thay đổi date thành 4 tháng sau, rồi đăng ký
6.Trong khi đang làm step 3, GV mở tiết học ở step 5
7.GV start Học nhóm.
8.HS A～D sử dụng liên tục Pen, Tẩy tại note nhóm của mình.
9.GV vào group note 1 Sử dụng ＜＞, để di chuyển tới group note 2
10.Giáo viên On mode 「có thể xem group khác trên màn hình của HS」. HS A～D xem group note khác
11.GV nhấn 「Kết thúc group note」→「Kết thúc tiết học」
12.Sau khi kết thúc tiết học, GV, HS A～D xem note cá nhân của HS A～D, group note 1,2

Hoạt động kỳ vọng
Ở Step 12, Giáo viên và Học sinh có thể lần lượt xem note

Hoạt động thực tế
Giáo viên không thể confirm note cá nhân và note group, Học sinh không thể confirm note cá nhân ngoài note của mình
Sau đó, học sinh back lại list thì có lúc trên màn hình không được hiển thị gì cả

Video tham khảo (Màn hình của HS từ view GV)：
https://drive.google.com/file/d/16CJ9OfVAeW9qj4MWsBzNH5f1VfGWrX-B/view?usp=sharing 

Ảnh tham khảo (Group note, note cá nhân từ view HS)：
https://drive.google.com/file/d/1WI082jduUIKlIPKUbmRt6_ccp6PUzjLL/view?usp=sharing | Scuti đã tái hiện được.

GiangPT 30/01: 
Scuti đã fix bug, nhờ khách hàng check lại. | GiangPT | 17/01 | OK | https://jira.scuti.works/browse/ED-237 | YenNH (10/2) Vẫn done

HoaLP: Tested ngày 16/1 Tester có tái hiện được bug trên pre-prod
44.0 | Non-fun Bug | Scuti Closed | 内容：先生が授業を開始すると違う授業のTOPに飛ばされてしまう
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B14

端末：iPad(16.2)

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.生徒40人はログインし、ステップ1の授業を開く
3.先生は、「授業開始」→「投影しない授業開始」を実施する

期待する動作：
ステップ３で選択した授業(1/11(水)４時間目の国語)が開始される

実際の動作：
1/11(水)４時間目の国語の「授業開始」を押下したが、同日３時間目の音楽のTOPに遷移する

参考動画：
https://drive.google.com/file/d/1owzMhaI2CGtDxM33UtZWVte5W5zfBwTo/view?usp=sharing | Nội dung： Khi giáo viên bắt đầu tiết học thì bị di chuyển tới Top của tiết học khác
Case:
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B14 

Device：iPad(16.2)

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.40 HS login, rồi mở tiết học ở step 1
3.GV thực hiện 「Bắt đầu tiết học/授業開始」→「Bắt đầu tiết học không trình chiếu/投影しない授業開始」

Hoạt động kỳ vọng:
Tiết học đã chọn ở step 3 (Tiết thứ 4, ngày 11/1(thứ 4) Quốc ngữ) được start

Hoạt động thực tế:
Đã nhấn「Bắt đầu tiết học/授業開始」 của Tiết thứ 4 ngày 11/1 (thứ 4) Quốc ngữ, nhưng lại di chuyển tới TOP của tiết thứ 3 cùng ngày Âm nhạc

Vi deo tham khảo：
https://drive.google.com/file/d/1owzMhaI2CGtDxM33UtZWVte5W5zfBwTo/view?usp=sharing | Không tái hiện được, nhờ khách tái hiện lại và cung cấp thêm tài khoản, tiết học bị lỗi
Link video: https://drive.google.com/file/d/1bhkyCLCCtmlggsvNQrAUm6_BXbCXtVEl/view?usp=share_link 
-------------
30/1. Thông tin acc lỗi
GV：
demo8@edualpha-cloud.jp
dfvUQT38
HS：
UC126JY377
zyeQSW69
Có vẻ như là do Thiếu memory

VanTT(30/1): đã tái hiện được bug trên prod | GiangPT | 17/01 | OK | https://jira.scuti.works/browse/ED-250 | HoaLP (10/2) Vẫn done
VanTT:(16/1)
Không tái hiện được bug
Link video: https://drive.google.com/file/d/1bhkyCLCCtmlggsvNQrAUm6_BXbCXtVEl/view?usp=share_link
Nhờ bên khách cung cấp tài khoản và tiết học đang bị lỗi

VanTT(30/1): đã tái hiện được bug trên prod
45.0 | P1~3Bug | Scuti Closed | 内容：Eduαアニメーションのキーワード検索が機能していない
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B16
端末：Chromebook

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.生徒はログインし、ステップ1の授業を開く
3.先生は、「授業開始」→「投影しない授業開始」を実施する
4.先生は、グループ学習を開始する。

6-0.生徒40名はそれぞれ下記の動作を同時に実行する

6-1.生徒20名は、「Eduαアニメーション」を押下し、一覧画面を開く
6-2.生徒20名は、「検索」を押下し、検索窓を開く
6-3.生徒20名は、任意のタブ・キーワードを指定し、絞り込みを実施する
6-4.絞り込み結果から任意のアニメーションを選び、再生する

6-1.生徒15名は、「デジタル教具」を押下し、デジタル教具一覧画面を開く
6-2.生徒15名は、「検索」を押下し、検索窓を開く
6-3.生徒15名は、任意のタブ・キーワードを指定し、絞り込みを実施する
6-4.絞り込み結果から任意のデジタル教具を選び、挿入する

6-1.生徒5名は、「デジタル教具」→「罫線マス目」を押下し、罫線一覧画面を開く
6-2.生徒5名は、「検索」を押下し、検索窓を開く
6-3.生徒5名は、任意のタブ・キーワードを指定し、絞り込みを実施する
6-4.絞り込み結果から任意の罫線マス目を選び、設定する

期待する動作
ステップ6-3にて、「ながい」でキーワード検索すると、「どちらがながい」のアニメが表示される。

実際の動作
検索結果に何も表示されない。

参考動画（Chromebook）：
https://drive.google.com/file/d/1GeAoxYhWoaE5o0hsiU4Mn6caVp905o7o/view?usp=share_link
タグ検索はヒットしますが、さらにキーワード検索を追加するとヒットしませんでした。
「デジタル教具」や「罫線マス目」のキーワード検索は機能していました。 | Nội dung： Chức năng: Search key word của Edua animation đang không hoạt động
Case：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B16 
Device: Chromebook

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.Giáo viên login, rồi mở tiết học của step 1
3.GV thực hiện 「Bắt đầu tiết học/授業開始」→「Bắt đầu tiết học không trình chiếu/投影しない授業開始」
4.Giáo viên bắt đầu học nhóm.

6-0.40 HS thực hiện đồng thời lần lượt các thao tác bên dưới

6-1.20 HS nhấn 「Animation Edua/Eduαアニメーション」, mở màn hình list
6-2.20 HS nhấn 「Search/検索」, mở cửa sổ tìm kiếm
6-3. 20 HS chỉ định tab, key word tùy ý, thực hiện filter
6-4.Chọn animation bất kỳ từ kết quả filter, play

6-1. 15 HS nhấn 「Digital tool/デジタル教具」, mở màn hình digital tool list
6-2. 15 HS nhấn 「Search/検索」, mở cửa sổ tìm kiếm
6-3. 15 HS chỉ định tab, key word tùy ý, thực hiện filter
6-4.Chọn digital tool tùy ý từ kết quả filter, add thêm

6-1. 5 HS nhấn 「Digital tool/デジタル教具」 → nhấn 「template/罫線マス目」 để mở màn hình List template
6-2. 5 HS nhấn 「Search/検索」, mở cửa sổ tìm kiếm
6-3. 5 HS chỉ định tab, key word tùy ý, thực hiện filter
6-4.Chọn template tùy ý từ kết quả filter, setting

Hoạt động kỳ vọng
Tại step 6-3, khi search với keyword là 「Dài/ながい」, thì animation của 「Cái nào dài hơn/どちらがながい」bị hiển thị ra.

Hoạt động thực tế
Không hiển thị bất cứ nội dung gì trong kết quả tìm kiếm.

Video tham khảo（Chromebook）：
https://drive.google.com/file/d/1GeAoxYhWoaE5o0hsiU4Mn6caVp905o7o/view?usp=share_link 
Với search tag thì hit ra, nhưng sau đó nếu add thêm search keyword nữa thì đã không hit
Chức năng: Search key word của Digital tool hay Template đang hoạt động rồi. | Scuti đã tái hiện được.
Thúy comtor: Đang confirm câu hỏi: DB có Ga là 2 ký tự, còn khi nhập vào ô search chỉ là 1 kí tựb (27/1)

30/1: Tanoshi trả lời về câu hỏi trên như sau.
Nếu lúc upload mà phản ánh y nguyên tên file vào title thì ký tự 「ど」＝「と」+「‘’」
Nếu nhập lại bằng tay thì 「ど」 sẽ thành 1 ký tự như bình thường đó.

VanTT:(30/1)
Sau khi tạo mới animation hoặc edit animation với tên file có title là 「ど」＝「と」+「‘’」
Search lại bằng cách nhập lại bằng tay kí tự ながい thì vẫn hoạt động bình thường. Link video: https://drive.google.com/file/d/1DwkU7ELAfmsCCrfnJKH40r7EUTdl_3Qj/view?usp=share_link

Thuy (3/2)
Nhẽ là là 1 ký tự mà lại đang bị hiển thị thành 2 ký tự thì là bug, nếu fix bug này không tốn thời gian thì nhờ các bạn fix giúp tôi được không, nếu fix tốn thời gian thì nhờ các bạn cho việc nhập title bằng tay thành bắt buộc giúp tôi
3/2 Chốt như sau.
No 45 sẽ bắt buộc việc nhập tay vào title
Hãy xóa chức năng generate title từ file video đi nha (Takeuchi san confirm) | GiangPT | 17/01 | OK | https://jira.scuti.works/browse/ED-235
https://jira.scuti.works/browse/ED-277 | HoaLP (10/2) Done task  ED-277

VanTT:(3/2): đã trao đổi trực tiếp và trả lời chị Thúy 
VanTT:(16/1)
Có tái hiện được, link bug https://jira.scuti.works/browse/ED-235

VanTT:(30/1)
Sau khi tạo mới animation hoặc edit animation với tên file có title là 「ど」＝「と」+「‘’」
Search lại bằng cách nhập lại bằng tay kí tự ながい thì vẫn hoạt động bình thường. Link video: https://drive.google.com/file/d/1DwkU7ELAfmsCCrfnJKH40r7EUTdl_3Qj/view?usp=share_link
46.0 | Other | Rejected | 内容：グループ１のノートで書いた一部が、別の授業の生徒のノートに反映されている
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B12
端末：iPad（16.2）

1.先生はログインし、時間割の任意の日付に授業を作成する。
2.生徒A～Dはログインし、ステップ1の授業を開く
3.生徒A～Dは、自身のノートを開く。1スライドにつき１つのWeb検索画像を挿入する動作を２０ページ分まで続ける。
4.先生は、ステップ３の最中に、「授業TOP」→「時間割画面」に遷移する
5.先生は、ステップ３の最中に、「編集」を押下し、ステップ１の授業を選択する。日付を4か月後に変更し、登録する。
6.先生は、ステップ３の最中に、ステップ5の授業を開く
7.先生は、グループ学習を開始する。
8.生徒A～Dは、自身のグループノートにてペン・消しゴムの利用し続ける
9.先生は、グループノート１に入る。＜＞を用いて、グループノート２に遷移する
10.先生は、「生徒の画面で他のグループを見られるようにする」モードをONにする。生徒A～Dは、他のグループノートを観覧する。
11.先生は「グループノート終了」→「授業終了」を押下する
12.授業終了後、先生・生徒A～Dは、生徒A～Dの個人ノートと、グループノート１・２の観覧をする

期待する動作
ステップ12にて、生徒はグループ１のノートが正常に表示される。

実際の動作
グループ１のノートが一部オブジェクトが欠けた状態で表示される。
欠けたオブジェクトは、他の授業の自分のノートに反映されていた。

参考画像：
https://drive.google.com/file/d/1l0M1Lzq-qkNnNVJoI4eF66Y1J3Zt6J5s/view?usp=share_link | Nội dung： Một phần nội dung đã viết ở note group 1 đang ko được phản ánh lên note của HS tiết học khác
Case：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B12 
Device: iPad（16.2）

1.Giáo viên login, rồi tạo tiết học vào ngày bất kỳ trên Thời khóa biểu.
2.HS A~D thực hiện login, mở tiết học ở Step 1
3.HS A～D mở note của mình. Thực hiện liên tục thao tác add 1 image tìm kiếm web vào 1 slide cho đến page thứ 20
4.Trong khi đang làm step 3, GV di chuyển 「TOP Tiết học」→「Màn hình TKB」
5. Trong khi đang làm step 3, GV nhấn 「Edit/編集」, chọn tiết học ở step 1. Thay đổi date thành 4 tháng sau, rồi đăng ký
6.Trong khi đang làm step 3, GV mở tiết học ở step 5
7.GV start Học nhóm.
8.HS A～D sử dụng liên tục Pen, Tẩy tại note nhóm của mình.
9.GV vào group note 1 Sử dụng ＜＞, để di chuyển tới group note 2
10.Giáo viên On mode 「có thể xem group khác trên màn hình của HS」. HS A～D xem group note khác
11.GV nhấn 「Kết thúc group note」→「Kết thúc tiết học」
12.Sau khi kết thúc tiết học, GV, HS A～D xem note cá nhân của HS A～D, group note 1,2

Hoạt động kỳ vọng
Tại Step 12, HS sẽ có note group 1 được hiển thị một cách bình thường.

Hoạt động thực tế
Note của group 1  được hiển thị thiếu 1 phần obj.
Obj đã thiếu đang được phản ánh lên note của mình của tiết học khác.

Image tham khảo:
https://drive.google.com/file/d/1l0M1Lzq-qkNnNVJoI4eF66Y1J3Zt6J5s/view?usp=share_link | Không tái hiện được, nhờ khách tái hiện lại và cung cấp thêm tài khoản, tiết học bị lỗi
Link video: https://drive.google.com/drive/folders/1wXXzZV_SyBYaLkEOBUMPcLgFLcBLHbIf 

--------------------
30/1 Thông tin Acc và tiết học lỗi như sau.
【Acc sử dụng】
User code：UC3B6T19
Pass　　：qcvTUD76
【Giờ học】
・Note của group 1
　　2023/5/9　Tiết３：国語
・Note cá nhân (học sinh)
　　2023/2/10　Tiết３：社会 

31/1 Tạo tiết học mới trên TKB không tái hiện được bug
Tiết học 2023/5/9　Tiết３：国語  không có tiết học trên màn TKB. 
Link video: https://drive.google.com/file/d/1jx2BBlkBSxLkV2knU0ZSqTGl2bjqOQoA/view?usp=share_link
-----
2/2

Có thể thực hiện một chuỗi các thao tác trong testcase, nhưng, lúc cuối cùng HS quay lại Calendar, rồi chọn lại Giờ học lần nữa thì lại không thể confirm nội dung group note

Device：iPad
User code：UC126JY377
Pass：zyeQSW69 | GiangPT | 17/01 | NG | https://jira.scuti.works/browse/ED-256 | 16/1 Tester không tái hiện được bug 
Link video: https://drive.google.com/drive/folders/1wXXzZV_SyBYaLkEOBUMPcLgFLcBLHbIf
31/1 Tạo tiết học mới trên TKB không tái hiện được bug
Tiết học 2023/5/9　Tiết３：国語  không có tiết học trên màn TKB. 
Link video: https://drive.google.com/file/d/1jx2BBlkBSxLkV2knU0ZSqTGl2bjqOQoA/view?usp=share_link
Dưới đây là OT bug list
47.0 | Other | Otake Feedback | 内容：先生が生徒のノート上で入力した文字が生徒の画面で確認できない
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=A7:B7
端末：iPad(16.2)

1.先生は任意のデジタル板書を開く
2.生徒はステップ１の授業に入り、ノートを開く
3.先生はモニタリングを開始し、生徒のノートに入る
4.先生は生徒のノート上にテキストボックスを挿入する。この際、オブジェクトの位置は変更せず、テキスト入力が可能の状態（選択状態）を維持する
5.生徒は、自身のノート上にテキストボックスを挿入する。（この際、ステップ4のテキストボックスと完全に重なる）
6.先生は、ステップ４のテキストボックスに任意の文字を入力する。テキスト入力可能の状態を維持する。
7.生徒は、ステップ５のテキストボックスに任意の文字を入力する。テキスト入力可能の状態を維持する。
8.先生は、ステップ６のテキストの色を変更し、選択状態を解除する。
9.生徒は、ステップ７のテキストのフォントを変更し、選択状態を解除する。

期待する動作：
先生・生徒共に色とフォントの違うテキストが２種表示されている

実際の動作：
生徒の画面に先生のテキストが表示されない

備考：
ステップ８にて、テキスト入力可能状態ではフォントカラーの変更ができないため、一度選択を解除してから変更いたしました。

参考画像：
https://drive.google.com/file/d/15CXYyjz_8VtafckiLHyGyiYpsPXWiEO4/view?usp=share_link
https://drive.google.com/file/d/1EmjR8uCxAPOVzGF3kZ5C0EaBukmZTGdA/view?usp=share_link | Nội dung： Trên màn hình của HS, không thể confirm được ký tự mà GV đã input trên note HS
 Case:
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=A7:B7 
 Device：iPad(16.2)
 
 1. GV mở digital board bất kỳ
 2.Giáo viên vào tiết học ở Bước 1, mở note
 3.Giáo viên bắt đầu monitoring, vào note của HS
 4. Giáo viên add thêm textbox vào note HS Khi này, không thay đổi vị trí obj, tiếp tục duy trì trạng thái có thể input text (trạng thái chọn)
 5.HS add thêm textbox vào note của mình (Khi này, đè lên textbox ở step 4 hoàn toàn)
 6. GV input ký tự bất kỳ vào textbox của Step 4 Duy trì trạng thái có thể input text.
 7. HS input ký tự tùy ý vào textbox của Step 5 Duy trì trạng thái có thể input text.
 8. GV thay đổi màu của text ở step 6, hủy bỏ trạng thái chọn
 9. GV HS thay đổi font của text ở step 7, hủy bỏ trạng thái chọn
 
 Hoạt động kỳ vọng:
 Đang hiển thị 2 loại text có màu và font khác nhau ở cả GV và HS
 
 Hoạt động thực tế:
 Text của GV không được hiển thị trên màn hình của GV
 
 Note:
 Tại step 8, ở trạng thái có thể input text thì không thể thay đổi màu font, nên đã hủy bỏ trạng thái chọn một lần rồi mới thay đổi.
 
 Image tham khảo:
 https://drive.google.com/file/d/15CXYyjz_8VtafckiLHyGyiYpsPXWiEO4/view?usp=share_link 
 https://drive.google.com/file/d/1EmjR8uCxAPOVzGF3kZ5C0EaBukmZTGdA/view?usp=share_link | 1/17タノシー再現できました。生徒側に先生のテキストが表示されません | GiangPT 30/01: 
Không tái hiện được bug (Login account GV trên máy tính, HS trên ipad app)
Nhờ khách quay thêm video của bug
- Link video tái hiện: https://drive.google.com/file/d/1I4mSHRLyT84MWViGXv7S93x2BdBR4K34/view?usp=share_link
- Ảnh màn hình GV: https://drive.google.com/file/d/1I4mSHRLyT84MWViGXv7S93x2BdBR4K34/view?usp=share_link
--------------------------
2/2
Acc GV
Device：Chrome book
mailto:demo3@edualpha-cloud.jp
password：fumWMR89

Acc HS
Device：iPad
User code：UC126JY377
Pass：zyeQSW69
---------------------


VanTT (2/2): Cần confirm lại step 9 của bug 
 9. GV thay đổi font của text ở step 7, hủy bỏ trạng thái chọn
-> Step này không xảy ra được vì ở step 7 HS đang duy trì trạng thái có thể input text nên GV sẽ không thao tác gì được ở object của HS đang thao tác
-> Scuti đang suy đoán Step 9 là GV thay đổi font của text ở step 6, hủy bỏ trạng thái chọn -> liệu có đúng không ?
-> Nếu đúng như suy đoán thì hiện tại bên Scuti không tái hiện được bug ( đã login sử dụng account khách gửi ), nhờ bên khách tái hiện lại và quay video.
Link video tái hiện: 
https://drive.google.com/file/d/1O0ysPliF-cL3vx6QjItWI9XtmI7HwtnM/view?usp=share_link

Link ảnh màn hình GV: 
https://drive.google.com/file/d/18yDXntESQrAORmD5QPsH_BbUNgsVSdgf/view?usp=share_link

3/2: Đã đổi step 9 từ GV sang HS (Thuy)

VanTT (3/2): không tái hiện được dù đã làm theo step mới của khách, nhờ khách quay video tái hiện lại.
Link video tái hiện: https://drive.google.com/file/d/1o1GwZvdAQ7tCZW25ROhL0xVTo6Vk7cU5/view?usp=share_link
Link ảnh màn hình GV:  https://drive.google.com/file/d/1smb-aTphEeQT8Vml433y1kNfMIEeBFql/view?usp=share_link

7/2
----------------------
13/2
Rất nhiều lần bị fail thao tác (kiểu đang thao tác thì bị crash) | OK | https://jira.scuti.works/browse/ED-280 | HoaLP (13/2) Không tái hiện bug
Link video: https://drive.google.com/file/d/1as6QfjNzyVr_Favprf148UAFvUQMHc-I/view?usp=share_link
HoaLP (10/2) Vẫn done
07/02: HoaLP đã tái hiện được bug 
Link video: https://drive.google.com/file/d/1vbszVCpqiWrqCso25d7K8rDh_LMASXoJ/view?usp=share_link

VanTT (3/2): không tái hiện được dù đã làm theo step mới của khách, nhờ khách quay video tái hiện lại.

Link video tái hiện: https://drive.google.com/file/d/1o1GwZvdAQ7tCZW25ROhL0xVTo6Vk7cU5/view?usp=share_link

Link ảnh màn hình GV:  https://drive.google.com/file/d/1smb-aTphEeQT8Vml433y1kNfMIEeBFql/view?usp=share_link
VanTT (2/2): Cần confirm lại step 9 của bug 
 9. GV thay đổi font của text ở step 7, hủy bỏ trạng thái chọn
-> Step này không xảy ra được vì ở step 7 HS đang duy trì trạng thái có thể input text nên GV sẽ không thao tác gì được ở object của HS đang thao tác
-> Scuti đang suy đoán Step 9 là GV thay đổi font của text ở step 6, hủy bỏ trạng thái chọn -> liệu có đúng không ?
-> Nếu đúng như suy đoán thì hiện tại bên Scuti không tái hiện được bug ( đã login sử dụng account khách gửi ), nhờ bên khách tái hiện lại và quay video.
Link video tái hiện: 
https://drive.google.com/file/d/1O0ysPliF-cL3vx6QjItWI9XtmI7HwtnM/view?usp=share_link

Link ảnh màn hình GV: 
https://drive.google.com/file/d/18yDXntESQrAORmD5QPsH_BbUNgsVSdgf/view?usp=share_link

VanTT (18/1): Không tái hiện được bug (Login account GV trên máy tính, HS trên ipad app)
Nhờ khách quay thêm video của bug
- Link video tái hiện: https://drive.google.com/file/d/1I4mSHRLyT84MWViGXv7S93x2BdBR4K34/view?usp=share_link
- Ảnh màn hình GV: https://drive.google.com/file/d/1I4mSHRLyT84MWViGXv7S93x2BdBR4K34/view?usp=share_link
48.0 | OT BUG | Otake Feedback | 内容：生徒がグループノートにPDFを挿入中にスライドを削除すると挿入している生徒の１枚目の表示がおかしくなる
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B11

端末：生徒：iPad(16.2)　先生(iMac)

1.先生はグループ学習を開始する。生徒A〜生徒Cは同じグループに振り分けられる。
2.先生は、生徒のグループノートに入る。
3.生徒Aは、1枚目のスライドに任意のオブジェクトの作成を続ける。
4.生徒Bは、10ページ程度あるPDFの挿入を開始する
5.生徒Cは、ステップ3・4の動作中、1枚目のスライドを削除する（生徒Aが操作中のスライド）

期待する動作：
先生、生徒A〜Cの端末上で、1枚目のスライドが削除される。最終的には、生徒Bが挿入したPDFが正常に挿入され、先生、生徒A〜Cの端末上で確認ができる。

実際の動作：
Bの１枚目のスライドが白紙になるが、左側のプレビューが削除前のままになり
その後AやCが１枚目にオブジェクトを作成しても反映されない

備考：
その後、先生・A・Cが授業TOPに戻り、再度グループノートを開くと、Bと同じ状態になっている

参考画像：
右上がPDFを挿入した生徒です
https://drive.google.com/file/d/1LmdEFSrsT8JLCn-VoAJ_G5juJE-Pth4l/view?usp=share_link

備考の参考画像です
https://drive.google.com/file/d/1P0mmc55ZFX4uTx_1onihJsQ6C_6Vh3Fx/view?usp=share_link | Nội dung： Nếu xóa slide trong khi HS đang add thêm PDF trên note nhóm thì hiển thị của slide đầu tiên của HS đang add thêm bị bất thường
 Case:
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B11  
 
 Device: HS：iPad(16.2) GV(iMac)
 
 1. Giáo viên bắt đầu học nhóm. HS A~ HS C được chia vào nhóm giống nhau.
 2.GV vào group note của HS
 3. HS A tiếp tục tạo obj tùy ý trên slide thứ nhất.
 4. HS B bắt đầu add thêm PDF có khoảng 10 page
 5.HS C, trong khi đang làm step 3 và 4, xóa slide thứ nhất (slide mà HS A đang thao tác)
 
 Hoạt động kỳ vọng:
 Trên thiết bị của GV, HS A~ HS C, slide thứ 1 bị xóa. Cuối cùng, PDF mà HS B đã add thêm sẽ được add bình thường, có thể confirm trên thiết bị của HS A ~ HS C.
 
 Hoạt động thực tế:
 Slide thứ nhất của B thì là slide trắng, nhưng preview bên trái vẫn là nội dung trước khi xóa
 Sau đó, A hay C tạo obj vào slide thứ 1 thì cũng không được phản ánh
 
 Note:
 Sau đó, HS A, C quay lại TOP tiết học, rồi mở lại group note lại lần nữa thì thành trạng thái giống B
 
 Image tham khảo:
 Phía trên bên phải là HS đã add thêm PDF
 https://drive.google.com/file/d/1LmdEFSrsT8JLCn-VoAJ_G5juJE-Pth4l/view?usp=share_link 
 
 Image tham khảo của Note
 https://drive.google.com/file/d/1P0mmc55ZFX4uTx_1onihJsQ6C_6Vh3Fx/view?usp=share_link | Scuti đã tái hiện được, đang được xử lý
-----------
13/2
①Khi Giáo viên đang setting group thì bị fail, back về màn hình Login.
②Tool bên trái phía dưới bị gray, không thể thực hiện step 3.
③Ngoài lần fail ở ①, còn vài lần bị fail khác.
Acc GV
Chromebook
demo3@edualpha-cloud.jp
password：fumWMR89
Acc HS
iPad
User code：UC124V8379
Pass：fmlMUW89 | OK | https://jira.scuti.works/browse/ED-248 | VanTT (13/2): Theo spec hiện tại 1 account chỉ được login trên 1 thiết bị, nên khi có login thêm 1 thiết bị khác thì sẽ tự động logout ở thiết bị đầu 
-> do đó việc setting group chưa thành công (HS chưa được add vào nhóm) -> Tool bar phía dưới của note học nhóm của HS đang bị gray là đúng
- Video tái hiện GV vẫn setting nhóm thành công (khi chỉ 1 user đang dùng account đó) và video thể hiện tool bar ở phía dưới của note học nhóm vẫn enable khi HS đã được add vào nhóm thành công
https://drive.google.com/file/d/1o4EeKM1-Dq6eZXdOcZL_rE58VJ9rjvve/view?usp=share_link
https://drive.google.com/file/d/1MgKKLPlKu0UUtLlYZa-B3SON4-jBYSvl/view?usp=share_link

HoaLP (10/2) Vẫn done
HoaLP (18/01) Tester tái hiện bug trên prod. Tỉ lệ tái hiện bug là 33,33%
Thúy comtor: đang chờ Tanoshi phân loại bug nghiêm trọng hay không để phán đoán xem có cần fix ko (27/1)
49.0 | Other | Rejected | 内容：授業TOPからグループノートに入れない
端末：生徒：iPad(16.2)

1.先生はグループ学習を開始する。生徒A〜生徒Cは同じグループに振り分けられる。
2.生徒はグループノートに入る。

期待する動作：
授業TOPの「グループ学習ノート」からグループノートに入ることができる

実際の動作：
グループ学習が開始されているにもかかわらず「グループ学習ノート」ボタンが非活性である
一度個人ノートに入り、画面上部のボタンから「グループ学習ノート」を選択することで入ることができる

備考：
以下の生徒アカウントで発生
ユーザーID：UC3PDNGY690
パスワード：cuqFZT74
ログインのし直し、メモリ解放などを行なっても改善しませんでした

参考動画：
https://drive.google.com/file/d/1COerkKF0-rK6vPExo26cSb6Q0L5nV45i/view?usp=share_link | Nội dung： Không vào được note group từ TOP tiết học
 Device: HS：iPad(16.2)
 
 1. Giáo viên bắt đầu học nhóm. HS A~ HS C được chia vào nhóm giống nhau.
 2.HS vào group note.
 
 Hoạt động kỳ vọng:
 Có thể vào group note từ 「Note học nhóm/グループ学習ノート」 của TOP tiết học
 
 Hoạt động thực tế:
 Mặc dù Học nhóm đang được bắt đầu rồi nhưng button 「Note học nhóm/グループ学習ノート」 vẫn Inactive
 Nếu vào note cá nhân 1 lần, sau đó chọn 「Note học nhóm/グループ学習ノート」 từ button bên trên màn hình
 
 Note:
 Phát sinh với acc HS như sau
 User ID： UC3PDNGY690
 Password：cuqFZT74
 Login lại, hay có giải phóng memory thì cũng không cải thiện được
 
 Vi deo tham khảo：
 https://drive.google.com/file/d/1COerkKF0-rK6vPExo26cSb6Q0L5nV45i/view?usp=share_link | 1/17Macでは再現できませんでした。 | VanTT (18/1):  Không tái hiện được bug
Link video tái hiện: https://drive.google.com/file/d/1OZNMKQp1_kL9jQrJjAS4_3PM8M50eQAO/view?usp=share_link
- Cần xin thêm account GV start học nhóm để tái hiện lỗi vì hiện tại khách chỉ cung cấp account HS bị lỗi

27/1: Tanoshi và Otake cũng không tái hiện được, nhưng lại bị lỗi di chuyển sang tiết học khác giống như hiện tượng No44 (thúy comtor)
1/2: Giống với No 44 nên reject (thúy) | NG | VanTT (18/1):  Không tái hiện được bug
Link video tái hiện: https://drive.google.com/file/d/1OZNMKQp1_kL9jQrJjAS4_3PM8M50eQAO/view?usp=share_link
- Cần xin thêm account GV start học nhóm để tái hiện lỗi vì hiện tại khách chỉ cung cấp account HS bị lỗi

VanTT (30/1) trả lời cho feedback ngày 27/1 : đã tái hiện và log bug No 44
50.0 | OT BUG | Scuti Closed | 内容：素早く線のオブジェクトを引くと、正常に反映されない
端末：Chromebook
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B28

1.先生はデジタル板書上にて、【図形】→【線のオブジェクト】を押下する。
2.板書上をタップして、指定サイズのオブジェクトを挿入する。この動作を5回繰り返す。
3.先生はデジタル板書上にて、【図形】→【線のオブジェクト】を押下する。
4.板書上にて、スワイプして任意のサイズのオブジェクトを挿入する。この動作を5回繰り返す。その際、さまざまな大きさの線を作成するようにする。

期待する動作：
ステップ１・３にて、線のオブジェクトを引くと、引いた通りの線が反映される

実際の動作：
ゆっくり引くと期待通りの線を引くことができるが、素早く線を引くと引いた軌道とは異なる線（いずれも右下がりの短い線）が表示される

参考動画：
https://drive.google.com/file/d/10TKmvZTPMu9Z0-uQm-ixWXym7GD-vROH/view?usp=share_link | Nội dung： Nếu vẽ nhanh obj đường kẻ , thì không được phản ánh một cách bình thường
 Device: Chromebook
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B28  
 
 1.Trên digital board, GV nhấn 【shape/図形】→【obj đường kẻ/線のオブジェクト】.
 2. Tap vào trên board, rồi add thêm obj có size chỉ định. Lặp lại 5 lần hoạt động này.
 1.Trên digital board, GV nhấn 【shape/図形】→【obj đường kẻ/線のオブジェクト】.
 4. Tap vào trên board, rồi add thêm obj có size tùy ý. Lặp lại 5 lần hoạt động này. Khi này, thực hiện tạo đường kẻ với nhiều size khác nhau.
 
 Hoạt động kỳ vọng:
 Tại Step 1,3, nếu vẽ obj đường kẻ, đường kẻ giống như đã vẽ sẽ được phản ánh lên
 
 Hoạt động thực tế:
 Nếu vẽ chậm thì có thể vẽ đường kẻ giống như expect, nhưng nếu vẽ nhanh thì sẽ hiển thị đường kẻ khác với quỹ đạo đã kẻ (cái nào cũng là đường kẻ ngắn, hướng xuống bên phải phía dưới)
 
 Video tham khảo：
 https://drive.google.com/file/d/10TKmvZTPMu9Z0-uQm-ixWXym7GD-vROH/view?usp=share_link | 1/17タノシー再現できました。 | Scuti đã tái hiện được, đang được xử lý | OK | https://jira.scuti.works/browse/ED-242 | YenNH (10/2) Vẫn done
HoaLP 18/1: Tái hiện được bug trên proD
Link bug: https://jira.scuti.works/browse/ED-242
51.0 | Other | Rejected | 内容：PDFが正しく表示されない
端末：iPad16.2（生徒）、Chromebook（先生）
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B34

1.先生は、モニタリングを開始し、生徒のノートに入る。
2.生徒は、20ページ程度のPDFを挿入する（1ページのデータ量は10MB以下とする）。
3.先生・生徒の端末上にて、PDFの内容が同じように反映されているか確認する。
4.生徒は、1枚目のスライドを消し、先頭のスライドがPDFが挿入されたものになるようにする。
5.先生・生徒はそれぞれ授業TOP画面に遷移し、PDFの画像がプレビュー画面に表示されていることを確認する。

期待する動作：
ステップ３で、生徒の端末（iPad）上にてPDFが正常に表示される

実際の動作：
スライドを切り替えても、PDFの表示が変わらない
※Chromebook（先生）では正常に表示されました

参考動画：
https://drive.google.com/file/d/1JtEu61MOy6JJsOO8uKjnjJE1tTAq8ltg/view?usp=share_link
動画時間00:05〜00:11・・・スライドを18から19に切り替えてもPDFが変わらない
動画時間00:26〜00:30・・・スライドを17、18、19と切り替えてもPDFが変わらない | Nội dung： Không hiển thị chính xác PDF
 Thiết bị：iPad16.2（HS）, Chromebook（GV）
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B34  
 
 1.Giáo viên bắt đầu monitoring, vào note của HS.
 2. HS Add PDF khoảng 20 page (Dung lượng data của 1 page từ 10MB trở xuống)
 3.Trên thiết bị của GV, HS, confirm xem nội dung PDF có đang được phản ánh giống nhau không.
 4.HS xóa slide thứ nhất, thực hiện để slide đầu tiên là slide đã được add thêm PDF.
 5.GV, HS lần lượt di chuyển tớ màn hình TOP, rồi confirm xem ảnh PDF có đang được hiển thị trên màn hình Preview không.
 
 Hoạt động kỳ vọng:
 Ở step 3, trên thiết bị của HS (iPad), PDF được hiển thị bình thường
 
 Hoạt động thực tế:
 Kể cả có chuyển slide đi nữa, thì hiển thị PDF cũng không thay đổi
 ※Trên Chromebook （Giáo viên）thì đã hiển thị bình thường rồi
 
 Video tham khảo：
 https://drive.google.com/file/d/1JtEu61MOy6JJsOO8uKjnjJE1tTAq8ltg/view?usp=share_link 
 Thời gian video 00:05〜00:11・・・Chuyển từ slide 18 sang slide 19 thì cũng không thay đổi PDF
 Thời gian video 00:26〜00:30・・・Chuyển slide thành 17, 18, 19 thì cũng không thay đổi PDF | 1/17Macでは再現できませんでした。 | 27/1 Thuy Tanoshi Otake đều không tái hiện được | NG | HoaLP  Không tái hiện được bug trên prod
Link video: https://drive.google.com/file/d/14q0TW1NXeOM2qZ7Gv4jXYMm91lQ7PT6t/view?usp=share_link
52.0 | Other | Rejected | 内容：先生の書き込みを非表示にしても、左端のプレビュー画面では表示されたままになっている
端末：iPad16.2（生徒）、Chromebook（先生）
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B33

1.先生はモニタリングを開始し、生徒のノートに入る。
2.先生は、生徒のノートに任意のオブジェクトを作成する。
3.生徒は、「先生の書き込みを表示」ボタンをOFFにする。
4.生徒は、ブラウザのリロードボタンを押す。

期待する動作：
ステップ３にて、先生の書き込みを非表示にすると、左端のプレビュー画面でも先生の書き込みが非表示になる

実際の動作：
画面中央の先生の書き込みは非表示になるが、左端のプレビュー画面は非表示にならない

参考動画：
https://drive.google.com/file/d/1x4mnPplKZOQ9TmNvGJSl-bbDzeRJ02PO/view?usp=share_link

※また、Chromebookが生徒端末の場合でも同様の現象が見られました（下記動画参照）
https://drive.google.com/file/d/1BhteTuTqJctdMSFWIsc1x4PMSoRjVkYF/view?usp=share_link | Nội dung： Kể cả có cho thành không hiển thị nội dung GV viết thì ở màn hình Preview bên trái lại vẫn hiển thị nguyên như cũ
 Thiết bị：iPad16.2（HS）, Chromebook（GV）
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B33 
 
 1.Giáo viên bắt đầu monitoring, vào note của HS.
 2.HS tạo obj bất kỳ trên note học sinh.
 3.HS OFF button 「Hiển thị nội dung GV viết/先生の書き込みを表示」.
 4.HS nhấn button reload browser.
 
 Hoạt động kỳ vọng:
 Tại step 3, nếu cho thành Không hiển thị nội dung GV viết, thì ở màn hình Preview bên trái, nội dung Gv viết sẽ không hiển thị ra
 
 Hoạt động thực tế:
 Nội dung GV viết ở giữa màn hình thì không được hiển thị ra, nhưng màn hình Preview bên trái lại không thành Không hiển thị
 
 Video tham khảo：
 https://drive.google.com/file/d/1x4mnPplKZOQ9TmNvGJSl-bbDzeRJ02PO/view?usp=share_link 
 
 ※Ngoài ra, nếu thiết bị HS là Chromebook thì cũng thấy hiện tượng tương tự （tham khảo video bên dưới）
 https://drive.google.com/file/d/1BhteTuTqJctdMSFWIsc1x4PMSoRjVkYF/view?usp=share_link | 1/17タノシー再現できました。 | 27/1 Thúy comtor. Giống như specs nên closed | Other | YenNH (18/01):
Hiện tại bên Scuti đang xử lý: khi học sinh OFF view object của GV trên note cá nhân của mình thì chỉ ẩn các object của GV trên board còn trên slide con bên trái màn hình thì vẫn hiển thị
Câu Q&A liên quan: https://docs.google.com/spreadsheets/d/1-CbrnZmgbAuOjc2A9sj5XfZIx6eGC2YiNY8T8-qU8n4/edit#gid=1751213500&range=90:90
53.0 | Other | Rejected | 内容：リロードすると、非表示にしていた先生の書き込みが表示されてしまう
端末：Chromebook（生徒）、iPad 16.2(先生)
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B33

1.先生はモニタリングを開始し、生徒のノートに入る。
2.先生は、生徒のノートに任意のオブジェクトを作成する。
3.生徒は、「先生の書き込みを表示」ボタンをOFFにする。
4.生徒は、ブラウザのリロードボタンを押す。

期待する動作：
ステップ４にて、ブラウザのリロードボタンを押しても先生の書き込みは非表示のままである

実際の動作：
リロードすると、非表示にしていた先生の書き込みが表示されてしまう

参考動画：
https://drive.google.com/file/d/1rWnbYqj3YUEwsBqBiSqT1Zy09trgs8gs/view?usp=share_link | 1/17タノシー再現できました。 | Nội dung：Khi reload thì phần ghi vào của giáo viên đã ẩn bị hiển thị
 Thiết bị:Chromebook（Học sinh）、iPad 16.2(Giáo viên)
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B33
 
 1. GV bắt đầu monitoring rồi vào note học sinh
 2. Giáo viên tạo object bất kỳ vào note học sinh
 3.Học sinh OFF button 「先生の書き込みを表示」
 4.Học sinh ấn button reload của trình duyệt
 
 Hoạt động mong muốn:
 Tại step 4 dù ấn button reload của trình duyệt nhưng phần ghi vào của giáo viên vẫn giữ nguyên trạng thái không hiển thị.
 
 Hoạt động thực tế:
 Khi reload thì phần ghi vào của giáo viên đã ẩn trước đó hiển thị ra.
 
 Video tham khảo:
 https://drive.google.com/file/d/1rWnbYqj3YUEwsBqBiSqT1Zy09trgs8gs/view?usp=share_link | 1/17:Tanosy đã tái hiện được | 1/17:Tanosy đã tái hiện được
27/1: Giống như specs nên closed Thuýcomtor | Other | VanTT (18/1): 
Hiện tại Scuti đang xử lí khi HS OFF note của GV, sau đó thực hiện refresh lại trang thì sẽ không lưu trạng thái OFF trước đó mà sẽ hiển thị trạng thái là ON note của GV.
54.0 | OT BUG | Scuti Closed | 内容：PDF挿入後のプレビュー(授業TOP )がぼやけている
ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B34

端末：iPad(16.2)

1.先生は、モニタリングを開始し、生徒のノートに入る。
2.生徒は、20ページ程度のPDFを挿入する（1ページのデータ量は10MB以下とする）。
3.先生・生徒の端末上にて、PDFの内容が同じように反映されているか確認する。
4.生徒は、1枚目のスライドを消し、先頭のスライドがPDFが挿入されたものになるようにする。
5.先生・生徒はそれぞれ授業TOP画面に遷移し、PDFの画像がプレビュー画面に表示されていることを確認する。

期待する動作：
挿入したPDFの１ページ目が正しく表示される

実際の動作：
生徒の授業TOPから見るとモザイクのかかったようなプレビューになる

挿入したPDF：
https://drive.google.com/file/d/1oEgjTJ7PSzJRVqRpiUuXjHbzsnrF69Q5/view?usp=sharing

参考画像：
https://drive.google.com/file/d/1zfVgUYjHuK64-IIMT20sDfk2_Z2ou3VC/view?usp=sharing
https://drive.google.com/file/d/1Ktp1Qb0mKO2aDIfQj4mzGFTGmgT5ubo7/view?usp=sharing
https://drive.google.com/file/d/1a6qx3M2izvugNGs8iro4zC-uRG7WaUW2/view?usp=sharing | 1/17タノシー再現できました。 | Nội dung：Preview sau khi insert PDF ( TOP tiết học) đang bị mờ
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B34
 
 Thiết bị：iPad(16.2)
 
 1. GV bắt đầu monitoring rồi vào note học sinh
 2. Học sinh insert PDF khoảng 20 page ( Dung lượng data 1 page là 10MB trở xuống)
 3. Tại thiết bị vủa giáo viên/học sinh, kiểm tra xem nội dung PDF có đang được phản ánh giống nhau không
 4. Học sinh xóa slide thứ nhất, rồi làm cho slide đầu tiên là slide mà đã được insert PDF.
 5.Giáo viên /Học sinh lần lượt chuyển sang màn hình TOP tiết học rồi kiểm tra ảnh PDF đang được hiển thị tại màn preview
 
 Hoạt động mong muốn:
 Trang thứ nhất của PDF đã insert được hiển thị chính xác
 
 Hoạt động thực tế:
 Khi nhìn từ TOP tiết học của học sinh thì preview bị mờ 
 
 PDF đã insert
 https://drive.google.com/file/d/1oEgjTJ7PSzJRVqRpiUuXjHbzsnrF69Q5/view?usp=sharing
 
 Video tham khảo:
 https://drive.google.com/file/d/1zfVgUYjHuK64-IIMT20sDfk2_Z2ou3VC/view?usp=sharing
 https://drive.google.com/file/d/1Ktp1Qb0mKO2aDIfQj4mzGFTGmgT5ubo7/view?usp=sharing
 https://drive.google.com/file/d/1a6qx3M2izvugNGs8iro4zC-uRG7WaUW2/view?usp=sharing | 1/17:Tanosy đã tái hiện được | 1/17:Tanosy đã tái hiện được | OK | https://jira.scuti.works/browse/ED-245 | HoaLP (10/2) Vẫn done
HoaLP: Tái hiện được bug trên prod
Link bug: https://jira.scuti.works/browse/ED-245
55.0 | OT BUG | Scuti Closed | 内容：デジタル板書から授業TOPに戻ると、一度時間割画面まで戻らないとデジタル板書が閲覧できなくなる

ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C9

端末：iPad(16.2)、Chromebook

1.先生は、オブジェクトをコピーし、30回ペーストし続ける
2.生徒はステップ1の動作中にこの授業に開く
3.生徒は素早く授業TOPにもどる
4.生徒は再びこの授業を開く（繰り返す）

期待する動作：
ステップ４にて、授業TOPに戻ったあと、すぐデジタル版書を閲覧することができる

実際の動作：
板書公開中であるにもかかわらず、板書を閲覧することができない

参考動画(iPad)：
https://drive.google.com/file/d/1omZUIWqDo4JNM88yrNRyQJlMSzo_xZRi/view?usp=share_link

参考動画(Chromebook)：
https://drive.google.com/file/d/1vTRHCcICpp8_dH5k48TPASVaRlvvh3yf/view?usp=share_link | 1/17タノシー再現できました。 | Nội dung： Khi back về TOP tiết học từ digital board thì nếu không quay lại màn thời khóa biểu một lần thì không thể xem được digital board
 
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C9
 
 Thiết bị：iPad(16.2)、Chromebook
 
 1. Giáo viên copy object rồi paste liên tịc 30 lần
 2.Học sinh mở đến tiết học này trong lúc giáo viên đang thao tác step 1 
 3. Học sinh nhanh chóng quay lại TOP tiết học
 4. Học sinh mở lại tiết học này một lần nữa ( lặp lại)
 
 Hoạt động mong muốn:
 Tại step 4, sau khi back lại TOP tiết học, có thể xem digital board ngay lập tức
 
 Hoạt động thực tế:
 Mặc dù là đang công khai board nhưng không thể xem board
 
 Video tham khảo(iPad)：
 https://drive.google.com/file/d/1omZUIWqDo4JNM88yrNRyQJlMSzo_xZRi/view?usp=share_link
 
 Video tham khảo(Chromebook)：
 https://drive.google.com/file/d/1vTRHCcICpp8_dH5k48TPASVaRlvvh3yf/view?usp=share_link | 1/17:Tanosy đã tái hiện được | 1/17:Tanosy đã tái hiện được | OK | https://jira.scuti.works/browse/ED-244 | YenNH (10/2) Vẫn done
YenNH (18/1): Đã tái hiện được bug
Lỗi xảy ra do khi back từ digital board ra TOP thì hiển thị TOP của tiết học khác
56.0 | OT BUG | Scuti Closed | 内容：アプリ内からMicrosoftアカウントでログインすることができない

ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B9

端末：iPad(16.2)

11.学校責任者は、ログイン画面を開く
12.学校責任者は、「先生・管理者用ログインは こちら」を押下する
13.学校責任者は、「Microsoftでログイン」を押下する
14.学校責任者は、必要事項を入力し、ログイン操作を完了させる
15.管理画面を開く

期待する動作：
アプリ内でMicrosoftアカウントによるログインが成功する

実際の動作：
ログインできず、アカウントの登録がないと表示される

備考：
Safariでは”undefined”というファイルをダウンロードするかというポップアップが表示されますが、何度か試すとログインできました。

参考動画(アプリ版)：
https://drive.google.com/file/d/1D0ZsBR_sS3cx9-sHnzNghYcnCOOB_6fk/view?usp=sharing

参考動画(Safari)：
https://drive.google.com/file/d/1fZcal-kk7b7V_QFMBUZ9x0XdSMQmcGbs/view?usp=share_link | Nội dung：Không login được bằng account Microsoft từ app
 
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=159639949&range=B9
 
 Thiết bị：iPad(16.2)
 
 11. Quản lý trường học mở màn hình Login 
 12. Quản lý trường bấm button 「先生・管理者用ログインは こちら」 
 13. Quản lý trường nhấn 「Microsoftでログイン」 
 14. Quản lý trường nhập các mục cần thiết để hoàn thành thao tác Login 
 15. Mở màn hình quản lý 
 
 Hoạt động mong muốn:
 Login thành công bằng account Microsoft tại app
 
 Hoạt động thực tế:
 Không login được, hiển thị là account không đăng ký
 
 Tham khảo:
 Tại safari Popup: [Có tải xuống file " undefined" không] được hiển thị nhưng, khi thử nhiều lần thì đã login được.
 
 Video tham khảo(bản app)：
 https://drive.google.com/file/d/1D0ZsBR_sS3cx9-sHnzNghYcnCOOB_6fk/view?usp=sharing
 
 Video tham khảo(Safari)：
 https://drive.google.com/file/d/1fZcal-kk7b7V_QFMBUZ9x0XdSMQmcGbs/view?usp=share_link | GiangPT 30/01: 
không tái hiện được bug, nhờ khách hàng cung cấp account đang bị lỗi để phía Scuti kiểm tra lại
Video: https://drive.google.com/file/d/1I40zpSTCRJWo8YMmsB1JD_IXMfvslRO6/view?usp=sharing

-------------------
2/2: (Thuy) Có thể login trên iMac bằng GoogleChrome（Browser）, nhưng 
iPad（App）thì lại không thể login được.
Microsoft Acc
t.ohtake@edualpha-cloud.jp
Pass：4JDDwDSSYkBe
------------------

9/2: web thì có thể login, iPad thì không thể | OK | https://jira.scuti.works/browse/ED-247 | HoaLP (10/2) Sử dụng acc của khách hàng để login trên Ipad vẫn login thành công. Tester không tái hiện được bug. Link video: https://drive.google.com/file/d/1vz5tLGp3bH4Xn8CxgmT01lBupfMGd0IZ/view?usp=share_link
VanTT(2/2): đã tái hiện được bug với account khách cung cấp

YenNH(27/1): không tái hiện được bug, nhờ khách hàng cung cấp account đang bị lỗi để phía Scuti kiểm tra lại
Video: https://drive.google.com/file/d/1I40zpSTCRJWo8YMmsB1JD_IXMfvslRO6/view?usp=sharing
57.0 | OT BUG | Scuti Closed | 内容：テキスト機能を使い文字を打ち込む時の文字の画質が荒くなっている。
端末：iPad(16.2)

参考動画１：
https://drive.google.com/file/d/1XqIsIJcfwtNbrtHmg5YpIgmZEP2xYfdy/view?usp=share_link

参考動画２：
https://drive.google.com/file/d/1EHVANMQd1DVtUYSg4soFMY0sbUkzKnBp/view?usp=share_link

備考：動画１は2022/12月16日に撮影
　　　動画２は2023/1/23日に撮影
　　　アカウントや端末を変更しても画質が荒い状態。 | Nội dung:：Chất lượng hình ảnh của ký tự khi sử dụng chức năng text nhập ký tự vào đang bị thô 
 Thiết bị：iPad(16.2)
 
 Video tham khảo 1：https://drive.google.com/file/d/1XqIsIJcfwtNbrtHmg5YpIgmZEP2xYfdy/view?usp=share_link
 
 Video tham khảo 2：https://drive.google.com/file/d/1EHVANMQd1DVtUYSg4soFMY0sbUkzKnBp/view?usp=share_link
 
 Tham khảo：Video 1 là quay 16/12/2022
 Video 2 là quayt vào 23/1/2023
 Dù thay đổi account và thiết bị nhưng chất lượng hình ảnh vẫn ở trạng thái bị thô | Scuti đã tái hiện được, đang được xử lý | OK | https://jira.scuti.works/browse/ED-243 | HoaLP (10/2) Vẫn done
18/01: Chúng tôi có ghi nhận lỗi này trước đó, xác định mất thời gian và không quá quan trọng nên sẽ xử lý sau
58.0 | OT BUG | Rejected | 内容：付箋ツールを使用することができない
端末：iPad16.2（先生）、Chromebook（生徒）
ケース：
https://drive.google.com/file/d/1rf3nOAEgJnsZwiQhfmpvyzhXhh73mHsD/view?usp=share_link

・使用アカウント（先生）
　　ユーザーコード：UC12YI0357
　　パスワード　　：mfbNVY43

1.先生は、生徒の画面に入る
2.先生・生徒は、それぞれノート上にハイライトのオブジェクトを５つずつ作成する。すべてのオブジェクトを重ねる。
3.生徒は、任意の罫線マス目を設定する
4.先生は、付箋を挿入する。この際、ステップ２のオブジェクトに重なるように配置する。
5.先生は、全てのオブジェクトをコピーし、3回ペーストする
6.生徒は、ステップ3のスライドをカットし、3回ペーストする
7.先生は、授業を終了する
8.生徒は、授業終了後に自身のノートにて、「先生の書き込みを表示」ボタンをオフにする
9.先生、生徒は、それぞれ生徒のノート上にて、オブジェクトの重なり順を調べる

期待する動作：
ステップ４にて、付箋ツールを押下すると、付箋を使用することができる

実際の動作：
付箋ツールを押下すると、画像アイコンが縦に並んで表示され、付箋を使用することができない

参考動画：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C11 | 内容：付箋ツールを使用することができない
端末：iPad16.2（先生）、Chromebook（生徒）
ケース：
https://drive.google.com/file/d/1rf3nOAEgJnsZwiQhfmpvyzhXhh73mHsD/view?usp=share_link

・使用アカウント（先生）
　　ユーザーコード：UC12YI0357
　　パスワード　　：mfbNVY43

1.先生は、生徒の画面に入る
2.先生・生徒は、それぞれノート上にハイライトのオブジェクトを５つずつ作成する。すべてのオブジェクトを重ねる。
3.生徒は、任意の罫線マス目を設定する
4.先生は、付箋を挿入する。この際、ステップ２のオブジェクトに重なるように配置する。
5.先生は、全てのオブジェクトをコピーし、3回ペーストする
6.生徒は、ステップ3のスライドをカットし、3回ペーストする
7.先生は、授業を終了する
8.生徒は、授業終了後に自身のノートにて、「先生の書き込みを表示」ボタンをオフにする
9.先生、生徒は、それぞれ生徒のノート上にて、オブジェクトの重なり順を調べる

期待する動作：
ステップ４にて、付箋ツールを押下すると、付箋を使用することができる

実際の動作：
付箋ツールを押下すると、画像アイコンが縦に並んで表示され、付箋を使用することができない

参考動画：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C11 | 27/1 Thuy comtor: Tanoshi cũng ko tái hiện dc nên tạm thời không cần care | NG
59.0 | Other | Rejected | 内容：グループ学習と授業を終了しても生徒側の画面でグループ学習が終了しない

ケース：
https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C22

端末：生徒⇨iPad(16.2)　先生⇨iMac

1.学校責任者は、グループ学習を開始する
2.学校責任者は、グループノートに入る
3.生徒Aは、1枚目のスライドにて「挿入」→「PDF」を押下し、任意のPDFの挿入を実行する。（PDFのページは5枚以上とする）
4.生徒Bは、1枚目のスライドにてステップ３の動作中に、デジタル教具の挿入を繰り返す
5.学校責任者は、ステップ3、ステップ4の動作中、グループ学習を終了する
6.学校責任者は、授業を終了する
7.学校責任者は、生徒Aは、ステップ２のグループノート画面を開く

期待する動作：
グループ学習を修了するまでに読み込んでいたPDFの部分がグループ学習ノートに挿入される。

実際の動作：
ステップ５・６でグループ学習と授業を終了しても、生徒側の画面ではグループ学習が終了せずPDFの挿入が続く
ステップ７でグループノートを開くと、プレビューは機能しているが開くことができない

参考動画：
https://drive.google.com/file/d/1FT6fnmkru5AG4zAt1ZBDq1oR09n4ktvN/view?usp=share_link
(動画の35秒あたりでグループ学習を終了し、その後授業も終了しています) | Nội dung： Mặc dù đã kết thúc Học nhóm và Tiết học nhưng Học nhóm lại không kết thúc trên màn hình phía học sinh
 
 Case:
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C22 
 
 Device: HS⇨iPad(16.2) GV⇨iMac
 
 1.Người quản lý trường bắt đầu học nhóm.
 2.Người quản lý trường vào note nhóm
 3.HS A tại slide thứ nhất, nhấn 「Add/挿入」→「PDF」, rồi thực hiện add thêm PDF tùy ý. (Chọn PDF có từ 5 page trở lên)
 4.HS B, tại slide thứ nhất, thực hiện lặp đi lặp lại việc add thêm digital tool trong khi đang làm step 3
 5.Người quản lý trường kết thúc học nhóm trong khi đang thực hiện step 3, step 4
 6.Người quản lý trường kết thúc Giờ học
 7.Người quản lý trường, học sinh A mở màn hình group note ở step 2
 
 Hoạt động kỳ vọng:
 Phần PDF đã được load sẽ được add thêm vào group note cho tới khi kết thúc group note.
 
 Hoạt động thực tế:
 Mặc dù đã kết thúc Học nhóm và Giờ học nhưng Học nhóm lại không kết thúc trên màn hình phía học sinh, mà vẫn tiếp tục add thêm PDF
 Nếu mở group note ở step 7, thì chức năng preview đã thực hiện nhưng lại không thể mở được
 
 Video tham khảo：
 https://drive.google.com/file/d/1FT6fnmkru5AG4zAt1ZBDq1oR09n4ktvN/view?usp=share_link 
 (Ở khoảng giây thứ 35 của video, kết thúc Học nhóm, sau đó Giờ học cũng đã kết thúc) | GiangPT 30/01: 
1. Specs hiện tại vẫn xử lí là khi cancel file PDF đang upload, thì không thực hiện cancel mà vẫn tiếp tục upload hết file PDF.
2. Trường hợp khi GV kết thúc học nhóm hoặc kết thúc tiết học thì cũng được hiểu tương tự như đang upload PDF và cancel. 

=> Trường hợp này phía Scuti đang hiểu đang hoạt động đúng specs. Nhờ khách hàng xác nhận. 

2/1: ĐÚng specs nên reject. Đã confirm với Kirita san. (Thuy) | Other | VanTT: (30/1)
- Trước giờ bên Scuti xử lí là chỉ thực hiện cancel file PDF cho quá trình upload file, không thực hiện cancel file PDF khi đang insert file PDF lên digital board 
- Vậy nên, khi GV kết thúc học nhóm hoặc kết thúc tiết học khi đang insert file PDF lên digital board ( được hiểu là cancel file PDF khi đang insert lên board) thì vẫn insert tiếp đến khi hết file PDF thì thôi.
-> Expect của khách đang sai
60.0 | Other | Rejected | Nội dung：Ở iPad không thể chọn nhiều cell trong bảng
 Device: iPad（16.2）
 Case：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1463779882&range=B31 
 
 1.Học sinh mở note, add thêm bảng 3x4.
 2. Input ký tự tùy ý vào toàn bộ cell.
 3.Chọn nhiều cell bất kỳ, thay đổi style như bên dưới. (Chữ đậm/gạch dưới/Thay đổi font/Thay đổi font size/Thay đổi màu chữ/Thay đổi màu nền)
 
 Hoạt động kỳ vọng:
 Tại step 3, lựa chọn nhiều cell trong bảng
 
 Hoạt động thực tế:
 Không thể lựa chọn nhiều cell trong bảng
 
 Vi deo tham khảo：
 https://drive.google.com/file/d/1tbawXwuUZqjPkEHqDSTT7LOW4dRc5jBE/view?usp=share_link | Không tái hiện được, nhờ khách hàng tai hiện lại và cung cấp thêm tài khoàn, thông tin để scuti điều tra. Thanks
Link evidence: Video: 
https://drive.google.com/file/d/1h36iC1TUkxpiAeNouOwpuI2wGJHd9xr4/view?usp=share_link 

2/1: Scuti cũng không tái hiện được nên reject (Thuy) | Other | YenNH (31/1): hiện tại tính năng multi select cell trong bảng trên Ipad-app chưa làm
Lý do: Ở P3 khách hàng confirm là sẽ làm trong P4 nhưng chưa yêu cầu tính năng trên (có thể do quên)
=> Phía Scuti đã Q&A với khách và khách đã chốt là sẽ làm 
Q&A: https://docs.google.com/spreadsheets/d/1pMQbJXm8MwKRjKJP5gkqysZJWJfmpHGqZPpbgKA7ijU/edit#gid=1751213500&range=42:42
61.0 | OT BUG | Rejected | Nội dung： Trên màn hình của Giáo viên, group note không được hiển thị
 Device: Chromebook (GV), iPad16.2 (HS)
 Case：
 ※Cả 3 case 【UAT Check_13】【UAT Check_15】【UAT Check_16】đều đã xảy ra bug tương tự
 
 【UAT Check_13】：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=B19 
 
 【UAT Check_15】：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=B21 
 
 【UAT Check_16】：
 https://docs.google.com/spreadsheets/d/1ji-CFYK1lKfkiIBB0E5L4d6POyC6X_UeUibEGHfDKyw/edit#gid=1334049066&range=C22 
 
 ・Acc GV
 Mail address：demo2@edualpha-cloud.jp 
 Pass：hlqQDM58 
 
 ・Acc HS A
 User code: UC12B6C358
 Pass：dmxVSK43
 
 
 Hoạt động kỳ vọng:
 Sau khi kết thúc Giờ học, người quản lý trường học (Giáo viên) có thể xem group note
 
 Hoạt động thực tế:
 Chỉ mỗi Giáo viên không thể mở group note
 
 Video tham khảo：
 【UAT Check_13】
 https://drive.google.com/file/d/1tn7ZwUKlaPGewim7kk10TNwHK4ZTLaNB/view?usp=share_link 
 
 【UAT Check_15】
 https://drive.google.com/file/d/1pjQ-ggj9XxJTl4WQgFcnfJ1qZvD0sLHc/view?usp=share_link 
 
 【UAT Check_16】
 https://drive.google.com/file/d/1pB_p4XEL2vpXIA1_VIlimwTALBoOxrWD/view?usp=share_link | Hiện không thể tái hiện, nhờ khách hàng kiểm tra lại và cung cấp thêm tiết học, tài khoản
2/2: Thuy Reject do Otake đã không tái hiện được, bây h lại hoạt động bình thường | NG | HoaLP (31/1)  
+ Check_13,16 không tái hiện được bug. Link video https://drive.google.com/file/d/1oPTMbb7VoYgS8hE5vgIQr7wqOCK0HUPt/view?usp=share_link
+ Check_15 không tái hiện được bug. Link video https://drive.google.com/file/d/1fInL4jPzhtS9XiZxg9ysX4jdFRs48kPU/view?usp=share_link
62.0 | Other | Tanosy | Nội dung： Mặc dù input tên digital tool nhưng vẫn không thể search
Device 1 (bạn tester ngoài): FUJITSU  LIFEBOOK SH90/T　Version thứ 5  Intel　CORE i5
Device 2 (Confirm lại ở Otake)：iMac (Retina 5K, 27-inch, 2017)　Version 10.13.6　


Step 1  Nhấn digital tool
Step 2 Tại thanh tìm kiếm trên cùng, input 「てんびん」

Hoạt động kỳ vọng: Digital tool có tên gắn 「てんびん」 được hiển thị ra
Hoạt động thực tế: Digital tool có tên gắn 「てんびん」 không được hiển thị ra
※Nếu input rồi search là 「てん」 thì sẽ hiển thị ra digital tool có tên là 「てんびん」

Video tham khảo
https://drive.google.com/file/d/17YleuSNNt6CjOBIm-EeDj1vEXDMFBbbi/view?usp=share_link | Tương tự NO 45 đang confirm khách hàng. 
https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1103407037&range=57:57 
3/2：Thuy
 bắt buộc việc nhập tay vào title
Hãy xóa chức năng generate title từ file video đi nha (Takeuchi san confirm)

GiangPT (3/2): Bug này cùng nguyên nhân lỗi với bug No45, tuy nhiên, khi tạo mới digital tool không có tính năng generate title từ file, tên của digital tool được người dùng nhập từ màn hình tạo mới. 
- Phía Scuti phán đoán, tại màn hình nhập tên digital tool khách hàng ko tự đánh tên digital tool mà copy tên sai từ 1 chỗ khác nên gây ra lỗi. 

- Cách giải quyết: Khi tạo mới khách hàng phải tự đánh tên digital tool bằng bàn phìm. 

=> Do vậy bug này sẽ reject | OK | https://jira.scuti.works/browse/ED-278 | VanTT (3/2): Bug này cùng nguyên nhân lỗi với bug No45 nên khi tạo digital tool thì sẽ sẽ bắt buộc việc nhập tay vào title và không cần  xóa chức năng generate title từ file vì digital tool không có tính năng nào là tự động lấy tên file 
YenNH (30/1): Lỗi này giống với bug Phương đang confirm với khách
Do chữ び trong data cũ đang là 2 ký tự tạo thành nên không search được
Video: https://drive.google.com/file/d/1dETNEXkU3nEWHcq-xI0Hw__ficePoxv8/view?usp=sharing
63.0 | Other | Rejected | 内容：デジタル教具がアップロードできない
端末：iMac

1.オータケ権限は管理画面にログインする
2.「デジタル教具」→「新規作成」と進み、任意のサムネイルと教具を追加する
3.「画像の読み込み」を押下し、教具の情報を記入する

期待する動作：
「画像の読み込み」を押下すると、詳細を記入する画面に遷移する

実際の動作：
画面が白くなり、動作しなくなる

参考動画：
https://drive.google.com/file/d/1vdKaYSj7iKVxvnvZvpnFGS0-lA5kRvQq/view?usp=share_link | 27/1 Thuy comtor Tanoshi không tái hiện được trên Mac
-----------------------
2/2: Otake vẫn tái hiện được nhé.

Ở bên Otake, lúc định đăng ký degital tool trên iMac thì màn hình bị trắng. Hôm nay, PC làm việc là PC như ảnh đính kèm (sheet No.63), nhưng ở iMac khá cũng có trạng thái tương tự.

Vẫn reject do thiết bị không thuộc scope
64.0 | Other | Scuti Closed | Acc GV
ryuayana8591@gmail.com
User code：UC12VVJBN666
Pass word：frsLUQ57
Tên：遠藤章司
HS A không liên quan gì tới acc GV trên nhưng lại có thể confirm được màn hình board. | Otake tái hiện No42 nhưng lại phát hiện ra bug này (2/2 Thuy) | OK | https://jira.scuti.works/browse/ED-272 | YenNH (10/2) Vẫn done
YenNH (2/2): Có tái hiện được
65.0 | Other | Scuti Closed | 3.Acc GV
s.nakata2022@gmail.com
Pass：nlqUDX67
Nếu login bằng acc GV trên rồi di chuyển tới màn hình Thời khóa biểu
thì lại không thể sử dụng và bị hiển thị là 「Đang phát sinh vấn đề hiện tại ở server/サーバーで現在問題が発生しています。…」 | Otake tái hiện No42 nhưng lại phát hiện ra bug này (2/2 Thuy) | OK | https://jira.scuti.works/browse/ED-273 | YenNH (10/2) Vẫn done
YenNH (2/2): Có tái hiện được
66.0 | Other | Scuti Closed | Thực hiện theo các step của testcase No.46. sau đó phát sinh bug mới như sau
Có thể thực hiện một chuỗi các thao tác trong testcase, nhưng, lúc cuối cùng HS quay lại Calendar, rồi chọn lại Giờ học lần nữa thì lại không thể confirm nội dung group note
Device：iPad
User code：UC126JY377
Pass：zyeQSW69

Thông tin các acc:
Giáo viên
Device：Chrome book
demo3@edualpha-cloud.jp
password：fumWMR89
Học sinh（Acc trong video tái hiện）
Device：iPad
User code：UC126JY377
Pass：zyeQSW69
生徒（動画のアカウント）
端末：iPad
ユーザーコード：UC1220E378
パスワード：zdtSEJ84
生徒（動画のアカウント）
端末：iPad
ユーザーコード：UC124V8379
パスワード：fmlMUW89
生徒（動画のアカウント）
端末：iPad
ユーザーコード：UC124J7384 | Phát sinh mới khi làm các step No.46 (2/2 thuy) ( (tương ứng với No.67 bên UAT khách hàng)
----------- | OK | https://jira.scuti.works/browse/ED-274 | HoaLP (10/2) Vẫn done
HoaLP (2/2) Tái hiện bug chỉ trên note cá nhân
Link video: https://drive.google.com/file/d/1D1bEy8mkoSp0SDJor6eoy78Qqx9Ayt8S/view?usp=share_link
67.0 | Other | Scuti Closed | Acc GV
mailto:ryuayana8591@gmail.com
User code：UC12VVJBN666
Pass：frsLUQ57
Tên：遠藤章司
Acc GV trên  có thể monitoring note của HS Yamayaki/山崎 đang không liên quan gì | 2/2: Otake vẫn tái hiện được. (tương ứng với No.66 bên UAT khách hàng)
----------------
Chưa thấy được chỉnh sửa 13/2
-----------------
YenNH (13/2): 
1. Chỉ khi GV và HS cùng 1 trường thì HS mới có thể được vào lớp của GV
2. GV 遠藤章司 và HS Yamayaki/山崎 đã từng cùng trường (school_id 3) và HS Yamayaki/山崎 đã từng thuộc lớp của GV 遠藤章司, sau đó GV 遠藤章司 và HS Yamayaki/山崎 đã chuyển trường nên hiện tại khách hàng đang thấy 2 users này không cùng trường -> Thực tế 2 users này vẫn có liên quan đến nhau
Link ảnh: https://drive.google.com/drive/folders/1eF44JZFtrE16SBckFSxNcFhJS8fvuApI?usp=sharing | OK | https://jira.scuti.works/browse/ED-275 | YenNH (13/2): 
1. Chỉ khi GV và HS cùng 1 trường thì HS mới có thể được vào lớp của GV
2. GV 遠藤章司 và HS Yamayaki/山崎 đã từng cùng trường và HS Yamayaki/山崎 đã từng thuộc lớp của GV 遠藤章司, sau đó GV 遠藤章司 và HS Yamayaki/山崎 đã chuyển trường nẻn hiện tại khách hàng đang thấy 2 users này không cùng trường -> Tóm lại 2 users này vẫn có liên quan đến nhau

YenNH (10/2): Vẫn xảy ra bug khi GV tạo tiết học mới
YenNH (3/2): Sau khi điều tra thì đã tái hiện được với điều kiện GV/HS chuyển trường và tiết học thuộc ngày tương lai
YenNH (3/2): Vẫn không tái hiện được, nhờ khách hàng cung cấp video tái hiện ạ
Video: https://drive.google.com/file/d/1IbrB3I50atWBwgjgy4jxv6oJKJ3CxjSz/view?usp=sharing
68.0 | Other | Nội dung　Nếu sử dụng tool Tẩy thì không nội dung nào phản ứng cả.
Device：iPad16.4.1
Acc：demo1@edualpha-cloud.jp　Pass：zdaKVB94

1.Viết ký tự bằng Pen tool
2.Xóa ký tự bằng tool Tẩy
3.Chạm vào các obj khác, cho nó di chuyển

Kết quả kì vọng：Có thể di chuyển các obj đúng như ý muốn
Kết quả thực tế：Không thể chọn obj, tất cả các chức năng như Pen tool, maker đều không hoạt động được nữa.
Thêm vào đó, đến cả scroll màn hình CHọn digital tool cũng không thể thực hiện được.
Tình trạng cụ thể đã được mô tả rõ trong video tham khảo.

Video tham khảo
https://drive.google.com/file/d/1O4mx0Zpc1ItXY_ultowocwwrpXQLCf6w/view?usp=share_link | Vantt (12/4): Scuti đang không tái hiện được bug trên môi trường staging ở bản build mới nhất 1.0.1(1)
Link video tái hiện: https://drive.google.com/file/d/1LnL8oVFMCLV0bX4OV0UofvvtysLx70o3/view?usp=share_link
69.0 | Nội dung　Nếu sử dụng tool Tẩy thì không chức năng nào phản ứng nữa
Device：iPad16.4.1
Acc：demo2@edualpha-cloud.jp　Pass：hlqQDM58

1. Tại Control center của iPad (khi flick màn hình bên phải phía trên sẽ hiển thị ra), khởi động mirroning (Otake là dùng Apple TV)
2. Nhấn start tiết học/授業開始, và chiếu màn hình lên Monitor loại lớn bằng Bắt đầu tiết học trình chiếu/投影する授業開始
4. Định xóa một phần ký tự đã viết bằng tool Tẩy (khi này thì phát sinh bugL toàn bộ ký tự bị biến mất)
5.Định viết ký tự bằng tool Pen lại lần nữa

Kết quả kỳ vọng：Có thể di chuyển obj giống như mong muốn, có thể viết ký tự
Kết quả thực tế: Không thể chọn OBJ, chức năng khác như Pen tool, maker đêỳ không hoạt động được nữa.
Thêm nữa, không thể scroll ở màn hình chọn digital tool.
※Phát sinh hiện tượng giống với video tham khảo của No 68.
70.0 | Nội dung　Vị trí của copy khi chọn và copy đồng thời nhiều slide bị sai khác
Device：iPad16.4.1
Acc：UC12E0D336　Pass：dhjDEH83
Môi trường：Staging

1. Chọn nhiều slide (không chọn các slide liên tiếp nhau, cách 1 slide chọn 1 slide）
2. Click vào icon 3 chấm bên phải phía trên slide, nhấn copy
3.Nhấn paste trong icon 3 chấm của slide

Kết quả kỳ vọng：Copy được paste vào phía dưới của slide dưới cùng trong những slide đã chọn đồng thời trước đó.
Kết quả thực tế：Copy được paste vào phía dưới của slide đầu tiên trong những slide đã chọn đồng thời trước đó

Video tham khảo
https://drive.google.com/file/d/1PDDotCZEohzGZ4bpMvHEO5oWgGtBd0cg/view?usp=share_link 

Ảnh tham khảo 1
https://drive.google.com/file/d/1DLGDgZWG5w1rvbnXv-UtQSpYFIk_-UxC/view?usp=share_link 
Ảnh tham khảo 2
https://drive.google.com/file/d/1XC6EwtCVnCbHV9N04OVxSleQS9Nfk1VO/view?usp=share_link | Ngày 11/05/2023 GiangPT: 
0. Bên mình đã tái hiện được tình trạng như khách báo chưa? Trên môi trường nào?
=> Đã tái hiện được, Trên cả môi trường dev và staging
1. Tình trạng này xảy ra ở giai đoạn làm CR gần đây hay khi nào? 
=> Xảy ra ở giai đoạn trước khi làm CR của Maintaince, ở giai đoạn phát triển tính năng cut/copy/paste ở Slide
2. Nguyên nhân là gì?
=> Do trước đây ở giai đoạn phát triển không có specs nói rõ ràng về việc chọn nhiều slide không liên tiếp khi copy - paste, nên phía Scuti đang xử lý như hiện tại.
=> Nếu khách hàng muốn chỉnh sửa việc này thì phía Scuti sẽ thực hiện. 
3. Thời gian chỉnh sửa mất bao lâu? 
=> 4 Mds ( 2 Mds dev + 2 Mds Test)

Nhờ bên phía khách hàng xác định độ ưu tiên so với CR hiện tại bên mình đang làm để bên mình sắp xếp. | OK | 0. Bên mình đã tái hiện được bug chưa? Trên môi trường nào?
=> Đã tái hiện được bug, Trên cả môi trường dev và staging
1. Bug xảy ra ở giai đoạn làm CR gần đây hay khi nào? 
=> Xảy ra ở giai đoạn trước khi làm CR, ở giai đoạn phát triển tính năng cut/copy/paste ở Slide
2. Nguyên nhân của bug là gì?
=> Xác định sai vị trí cần Paste
3. Thời gian chỉnh sửa mất bao lâu? 
=> 22h
Trong đó 6h(dev) + 16h(test)
71.0 | Maintain | Chức năng Cut không hoạt động.
1        Chọn nhiều obj                                
2        Nhấn Cut                                
3       Nhấn Undo
4       Nhấn paste
Kết quả kì vọng        Slide đã Cut sẽ được paste vào bên dưới slide đang chọn.                                
Kết quả thực tế        Kể cả có nhấn Cut thì chẳng có gì xảy ra.                                
                                        
Video tham khảo        https://drive.google.com/file/d/1BmQJ4ON2c4yxPuCiYCSWALygPaufkQcf/view?usp=sharing | OK | Refer bản JP
https://docs.google.com/spreadsheets/d/1dLt9iGZJyYKXrtlmBx0uTK_AVURCby3lHNFLqrF3lOk/edit?pli=1#gid=1706252568
72.0 | Maintain | Nội dung: Dù copy slide đã mất đi thì cũng không phản ứng gì.                              
1        Chọn nhiều obj. Ví dụ: 4 cái A,B, C,D                                
2        Nhấn Copy
3        Nhấn Back (hoặc là Xóa),  để giảm slide so với thời điểm Copy (4 slide). Ví dụ) xóa slide C và D, để lại 2 slide là A và B.
4       Nhấn paste.                                
                                        
Kết qủa kì vọng        tất cả những slide đã copy (ở ví dụ này là 4 slide) sẽ được paste vào bên dưới slide đang chọn.                                
Kết quả thực tế       Những slide đang khoogn hiển thị ở thời điểm paste thì sẽ không được đối tượng paste.
                                        
Video:        https://drive.google.com/file/d/1d9k8ieugybK9qyvM_mKdB2Zqic-pFCpg/view?usp=sharing | OK | Refer bản JP
https://docs.google.com/spreadsheets/d/1dLt9iGZJyYKXrtlmBx0uTK_AVURCby3lHNFLqrF3lOk/edit?pli=1#gid=1706252568
73.0 | Maintain | Ở Học nhóm, có thể chọn cùng một obj.                                
1        Có 4 người tham gia (GV 1, HS 3 (A, B, C). 3 HS học nhóm, GV mornitoring.
2        HS 1 bạn (A) gọi digital tool (text cũng dc, shape cũng dc, gì cũng được), rồi thực hiện thao tác obj
        ※Tôi mô tả acc của người tham gia vào video                                
                                        
Kết quả kì vọng        Ở màn hình GV và HS B・C, có thể nhiền thấy obj mà A đang thao tác đang được bao bọc bằng khung màu cam
        Ngoài ra, B và C sẽ không thể chọn được obj mà A đang thao tác（còn GV thì ngay từ đầu đã không thể)                                
Kết quả thực tế        Ở màn hình của B thì obj mà A đang thao tác lại không được bao bọc bởi khung màu cam, và còn có thể chọn được
       Vì thế, nên 2 người đang có thể thao tác cùng một obj, hoạt động của obj cũng trở nên rất buồn cười.
                                        
Video      https://drive.google.com/file/d/1CLR1rJIGrQ8usOWEQ5FctFGP-LR2TnjB/view?usp=sharing                                
        Từ đầu〜giây thứ 5・5phút 19giây〜đến cuối | OK | Refer bản JP
https://docs.google.com/spreadsheets/d/1dLt9iGZJyYKXrtlmBx0uTK_AVURCby3lHNFLqrF3lOk/edit?pli=1#gid=1706252568
74.0 | Maintain | Ở Học nhóm, có thể chọn cùng một obj.                                     
1          Có 4 người tham gia (GV 1, HS 3 (A, B, C). 3 HS học nhóm, GV mornitoring.                                
2       3 HS tạm thời rời học nhóm, GV kết thúc Học nhóm
3       GV lại phân nhóm với nhóm đã cho kết thúc ở 2 bằng chức năng 「Phân nhóm đã đăng ký/登録済みのグループ分け」, rồi bắt đầy Học nhóm.
        ※Acc người tham gia được mô tả trong video
                                        
Kết quả kì vọng       3 HS  ABC có thể tự mình edit slide, viết thêm hoặc thao tác obj
                                        
Kết quả thực tế        Trong 3 HS ABC, chỉ 1 HS (giả sử là B) mặc dù có thể chọn slide, nhưng tool như Pen chẳng hạn lại bị gray out, không thể làm gì dc                
        Ở lúc khác, thì cũng có slide mà chỉ B mới có thể thao tác được,                                
        đối với slide đó, thì ngược lại với khi nãy, A và C có thể chọn được slide đó, nhưng tool Pen lại ko hoạt động                            
                                        
Video tái hiện        https://drive.google.com/file/d/1CLR1rJIGrQ8usOWEQ5FctFGP-LR2TnjB/view?usp=sharing                                
       từ giây  54〜5phút19s | OK | "Refer bản JP
https://docs.google.com/spreadsheets/d/1dLt9iGZJyYKXrtlmBx0uTK_AVURCby3lHNFLqrF3lOk/edit?pli=1#gid=1706252568 "
75.0 | Maintain | 内容：ペンツールで書いたオブジェクトが正常に板書に映らない。
先生（sensei4@otake.com）でモニタリングをはじめる。生徒1（UC18XU7S10）2（UC19ALFM11）                                
生徒1がペンオブジェクトで文字を書く。                                
                                
生徒1が書いた字が先生と生徒2の板書にほぼ同時で出現する。書いているそばからオブジェクトが出現する。                                
                                
生徒1が書いた字が生徒2の板書に出現しない。※スライドの列には反映されている。                                
                                
https://drive.google.com/file/d/1VzlavRJDgsbVTLV7VFup7dveqMUllji4/view?usp=sharing                                
動画編集はしていません。しかし、現象は理解できます。
------------
 Nội dung: Obj đã viết bằng Pen tool thì không phản ánh lên board một cách bình thường.
Start mornitoring bằng acc Giáo viên (sensei4@otake.com). HS 1 （UC18XU7S10）2（UC19ALFM11）
HS1 sẽ viết ký tự bằng obj Pen
Expect: Ký tự mà HS 1 đã viết sẽ xuất hiện gần như đồng thời lên board của HS 2. Obj sẽ xuất hiện từ chỗ bên cạnh chỗ đang viết.
Thực tế: Ký tự mà HS 1 đã viết không xuất hiện trên board của HS 2. ※Đang phản ánh lên chuỗi slide
Video tái hiện:
https://drive.google.com/file/d/1VzlavRJDgsbVTLV7VFup7dveqMUllji4/view?usp=sharing
(Video chưa edit, những có thể hiểu được hiện tượng)
76.0 | Maintain | ペンツールで書いたオブジェクトが正常に板書に映らない。                                
WEB版で右クリックする。                                
ロック機能〜削除のポップアップが出現する。                                                                
ポップアップが出現する。                                                                
ポップアップが出現するが、とても小さい。                                                                
https://drive.google.com/file/d/1Jt9xTSoik3uDCBqPCfVANled89UPJAi3/view?usp=sharing                                
動画編集はしていません。しかし、現象は理解できます。
------------------
Nội dung: Obj đã viết bằng Pentool không phản ánh lên board 1 cách bình thường
Step:
Click chuột phải trên Web version
Xuất hiện pop up (Lock/Unlock~ Delete)
Expect: Hiển thị popup
Thực tế: Hiên thị popup nhưng rất nhỏ.
Video tái hiện: 
https://drive.google.com/file/d/1Jt9xTSoik3uDCBqPCfVANled89UPJAi3/view?usp=sharing
(Video chưa edit, nhưng có thể hiểu được hiện tượng)
77.0 | Update version test | Closed | Title: Phát sinh error khi upload digital tool
Step:
1.Với quyền otake, thực hiện Drag and drop thumbnail digital tool và Data digital tool, cho nó load.
Quyền hạn：k.sasaki@edualpha-cloud.jp　Pass：PCsfRAvGQL9X）                        
2.Input Tên digtal tool/教具名〜Tag/タグ.                 
3.Nhấn Tạo/作成する       
Video tái hiện:
https://drive.google.com/file/d/1Ib_1JB0cRSaUz39PphPd0n_SPpHPyqWW/view?usp=sharing                                                 
                        
Hoạt động kì vọng: Có thể tạo digital tool
Hoạt động thực tế: Không thể tạo digital tool | Đã fix xong (29/9/2023). Do vẫn còn tag đó trong DB
78.0 | Closed | Title: Sau khi Cut, vị trí paste không theo quy tắc
Step:
1. Chọn nhiều slide.                                
  Người thao tác （Ohtake        UC1AYJXB8        Teacher_4　example1695612269108839@example.com　Pass：Otake12345）                                
2. Cut slide.                                
3. Dán slide.                                
※Với acc HS thì không confirm thấy tình trạng này.                                
Kết quả kì vọng: Với những slide đang chon (khung màu đỏ), sẽ được paste vào bên dưới slide dưới cùng.                                                                
Kết quả thực tế: Được dán vào bên dưới slide đầu tiên.                                
Video tái hiện:                                
Ipad (17.0.1): https://drive.google.com/file/d/1MCp4xaohRn7dH37FocyUdsiK5cXV761c/view?usp=sharing                                  
ASUS (windows10(22H2)): https://drive.google.com/file/d/1uahWNkDu0Zr6byzF82gkex4wk05GwGFD/view?usp=sharing | Khách nhìn nhầm hoạt động. 
(Scuti đã sửa đúng theo specs, nhưng lúc khách confirm thì nhìn nhầm.)
79.0 | Update version test | Scuti | Title:
 Sử dụng quyền Otake （t_ohtake@ohtake-edu.com　pass:Otake12345）, input nội dung cần thiết vào CSV file, ở màn hình Confirm nội dung, cứ bị reload lại vài lần
Step: 
1. Input item cần thiết, confirm nội dung
2. Login bằng quyền Otake, DL file CSV dùng để setting hội đồng giáo dụng                                
3. Input item cần thiết, upload                                
4. Nhấn Hoàn thành upload/アップロード完了                                
5. Icon kiểu như nhà loald laij video được hiển thị ra, nhưng lại mất luôn                                
.6.Bị back lại luôn màn hình confirm ở bước ３                                
                                
Kết quả kì vọng: Nếu nhấn vào Hoàn thành upload/アップロード完了, thì sẽ di chuyển đến màn hình input thành công                                
                                
Kết quả thực tế: KHông di chuyển màn hình, back lại màn hình confirm input                                
                                
https://drive.google.com/file/d/1K5lkXNyxx_8zpzvakBAY5WJOEBYH3-qw/view?usp=sharing 
Device: Imac 13.6 Chrome 117 | OK | Dev: 1h
Test: 2h
80.0 | Update version test | Scuti | Titile: Khi đang test Smoke_test_174, obj gốc khi cut không mất đi
Step:
1. Thực hiện monitoring tiết học bởi GV （example1695612269108839@example.com pass:Otake12345）・HS（UC19ALFM11 pass:Otake12345）                
2. GV thực hiện Cut obj mà HS đã insert                
3. Mặc dù đã thực hiện Cut, nhưng obj gốc khi cut lại không mất đi                
                
                
Kết  quả kì vọng: Khi thực hiện Cut thì obj đối tượng phải mất đi                
Kết quả thực tế: Obj gốc khi Cut lại không mất đi                 
https://drive.google.com/file/d/19bsXx9stQfcPnrMM-StW6wMik70ItM48/view?usp=drive_link
Device: ASUS window 10  (22H2)  App version: 117.0.5938.92 | Other | Spec trước giờ vẫn vậy => Cần giải thích lại với khách specs
Khi monitoring, GV thực hiện cut object của hsinh thì sẽ giống như copy object của học sinh
Evidence: k tim thấy
81.0 | Update version test | Scuti | Title: Không thể paste tiết học ở smoke_test138  (tiết học đối tượng là tiết học đã đăng ký trong quá khứ) ←Có thể paste                                
Step: 
1. Tạo trước những tiết học ở ngày hôm  đó, quá khứ, tương lai.                                
2. Mở folder Chia sẻ board, Chọn tiết học trong quá khứ, Chọn Copy vào TKB/時間割にコピーする                              
3. Chọn tiết học Ngày hôm đó, Tương lai, có thể paste                                
                                
                                
Kết quả  kì vọng: Không thể paste tiết học trong quá khứ.                                
Kết quả thực tế: Có thể paste tiết học quá khứ.                                
                                
https://drive.google.com/file/d/15xX7zNTwGWz5_0yApB0mgfeQN3B32_oh/view?usp=drive_link 
Device: ASUS window 10  (22H2)  App version: 117.0.5938.92 | Other | KH đang hiểu nhầm ý của case này. => Cần giải thích với khách về case này
"Không cho phép thao tác paste tiết học với (tiết học thuộc tuần quá khứ)" tức là cái tiết học mà mình thực hiện copy ý (Tiết học thực hiện 時間割にコピーする    ) sẽ không thể paste vào những tiết học thuộc tuần quá khứ, chỉ được paste với những tiết học thuộc tuần hiện tại và tương lai thôi
Evidence: https://drive.google.com/file/d/1amJgaAhW40RXPzXVIXy0kTR8_uV_Nklx/view?usp=drive_link
82.0 | Update version test | Scuti | Title: Khi authen lại trong trường hợp đã quên password, thì mỗi Gmail là không nhận được.                                
Step
1. Ở màn hình Login, nhấn  [Nếu khong biết password/パスワードがわからない場合].                                
                                
2. Input item bắt buộc (mail address)                                
                                
3. Màn hình bị di chuyển, messenger có nội dung là: Confirm mail dùng để authen được hiển thị ra, nhưng không thấy mail tới.                                
                                
4. Khi thực hiện tương tự bằng Yahoo mail thì mail dùng để authen lại được gửi đến.                                
                                
Kêt quả kì vọng: Là mail address tồn tại nên, mail dùng để authen sẽ được gửi đến.                                
                                
Kết quả thực tế: Đúng mail nhưng không thấy mail đến (Chỉ mỗi Gmail bị vậy) Bên Tanoshi cũng đã confirm                                 
https://drive.google.com/file/d/1x5NXgwr8Mh-IKSX6f7w6_iZ4cVvgv6m7/view?usp=drive_link   
device: Imac 14 117.0.5938.92（Official Build） 
（x86_64） | OK | Đã tái hiện được, đang đúng là nvay
Dev:
83.0 | Update version test | Scuti | Title: Sử dụng tiết học đã tạo trong quá khứ, thì HS và GV đã chuyển trường lại có thể mornitoring tiết học.                                
Step:
1. Chuẩn bị 1 GV và 1 HS, rồi tạo sẵn tiết học. (Nếu chưa edit CSV tiết học thì edit trước). Confirm là có thể tham gia vào tiết học.                                
*teacher6(test@test.com) pass(jmwGA247). student6(UC1UXGHX1679405) pass(qhsJZG78)                                
 Thực hiện các thủ tục chuyển trường giáo viên.                                
                                
2. GV có thể tạo tiết học ở trường chuyển đến (Tất nhiên là không được phản ánh cho học sinh)                                
                                
3. Giáo viên và Học sih vào tiết học trước khi chuyển trường. Giáo viên có thể start tiết học monitoring.                                
                                
Kết quả kì vọng: Có thể xem lại tiết học trong quá khứ, hoặc là copy TKB, nhưng không  được sử dụng tiết học trong quá khứ và can thiếp tới đối phương.                                
                                
Kết quả thực tế: Sử dụng tiết học trong quá khứ, và có thể can thiệp tới đối phương.                                 
https://drive.google.com/file/d/1_0RlJO_UGBzl74zMaJCEtdKuZvtnTcUD/view?usp=sharing  

Device:
Imac:14.0（23A344）App version: "117.0.5938.92（Official Build） （x86_64）"
ASUS : windows10(22H2)   App version: 117.0.5938.92 | Other | Spec trước giờ vẫn vậy, không có specs nói rõ về phần này => Cần giải thích lại với khách specs
84.0 | Update version test | Scuti | Tittle: App bị crash khi login bằng google
Step:
1. Input acc đã đăng ký, nhấn login bằng google.                                
Acc đã chuẩn bị lần này đã đăng ký vào system.                                
Quyền Otake（k.fujiwara2023@gmail.com） pass(rjgM2Z53)                                
                                
2. Nhấn Login bằng Googlr/googleでログイン                                
                                
3. Hiển thị thông báo Crash. Close app                                
                                
kết quả kì vọng: Có thể login bằng acc đã đăng ký                                
                                
Kết quả thực tế: App bị crash                                
https://drive.google.com/file/d/1GbCC0My8s2Zz9EPes88-a3KnwO4hWSnI/view?usp=drive_link                                
https://drive.google.com/file/d/15PeR8J_WGMDTv0N8TQ2osaHAPXy2MjKx/view?usp=drive_link 

Device:
ipadOS 17,0(21A329)
App version:
PreProdEduaCloud 
ver 1,0,0
PreProdEduaCloud 
ver 1,0,1 | NG | - Xuân confirm thêm thông tin khi test case này khách đang dùng những phần mềm ẩn nào có khả năng bị nặng phần cứng. 
- Confirm version khách đang dùng để test xem mới nhất không? 
Trên Gen7 version 17.0.3 k bị
https://drive.google.com/file/d/1qIIepGlv1yb-QhN3ab5tkgdlTG1JnnOH/view?usp=drive_link
85.0 | Update version test | Scuti | Nội dung: Input acc chưa đăng ký, nhấn Login bằng Google/googleでログインする                                
Acc đã chuẩn bị lần này là acc đã đăng ký vào system                                
*teacher4(example1695612269108839@example.com) pass(Otake12345)                                
                                
Nhấn Login bằng GG/googleでログイン                                
                                
Thông báo crash được hiển thị ra. Close app                                
                                
                                
kết quả kì vọng: Hiển thị error messenge: Thông tin login chưa đăng ký.                                
                                
Kết quả thực tế: Crash app                                 
https://drive.google.com/file/d/1AD_NixvtpCWm_S3UpREKFr2xnLU2MJ8q/view?usp=drive_link  
Device: ipadOS 17,0(21A329)
App version:
PreProdEduaCloud 
ver 1,0,0

PreProdEduaCloud 
ver 1,0,1" | NG | - Xuân confirm thêm thông tin khi test case này khách đang dùng những phần mềm ẩn nào có khả năng bị nặng phần cứng. 
- Confirm version khách đang dùng để test xem mới nhất không? 

Trên Gen7 version 17.0.3 k bị
https://drive.google.com/file/d/1qIIepGlv1yb-QhN3ab5tkgdlTG1JnnOH/view?usp=drive_link
86.0 | Update version test | Scuti | KHÔNG DỊCH VÌ THẤY GIỐNG NO.80
--------
Nội dung: Khi đang thực hiện Smoke_test_174, obj gốc khi Cut lại không mất đi                                
GV（example1695612269108839@example.com pass:Otake12345）・HS（UC19ALFM11 pass:Otake12345）                                
                                
先生は生徒が挿入したオブジェクトを切り取る                                
                                
切り取りを行ったのに、切り取り元のオブジェクトが消えない。                                
                                
                                
切り取りを行った際は、対象のオブジェクトは消える                                
                                
切り取り元のオブジェクトが消えない                                
                                
https://drive.google.com/file/d/1eH8PEFkGELcGLuN9peql6o7QZSN_9oI-/view?usp=drive_link

Device: ipadOS 17,0(21A329)
App version: PreProdEduaCloud  ver 1,0,0 | Other | Spec trước giờ vẫn vậy => Cần giải thích lại với khách specs
Khi monitoring, GV thực hiện cut object của hsinh thì sẽ giống như copy object của học sinh
Evidence: k tim thấy
87.0 | Update version test | Scuti | Nội dung: Khi đang thực hiện smoke_test177, đối với obj đang được chọn, thì không hiển thị viền màu vàng.                                
Thực hiện tiết học monitoring với GV（example1695612269108839@example.com pass:Otake12345）・HS（UC19ALFM11 pass:Otake12345）                                
 Step:                               
1. HS insert obj, cho thành trạng thái có thể chuyển hướng, phóng to, thu nhỏ.                                
                                
Confirm là Giáo viên không thể thao tác đói với obj mà HS đã add vào trên màn hình của mình
（Chắc chắn là đã không có  viền màu vàng)                                
                                
                                
Kết quả kì vọng: （Giáo viên）viền màu vàng thể hiện là HS đang chọn obj sẽ hiển thị ra.                                
                                
Kết quả thực tế: （Giáo viên) viền màu vàng thể hiện là HS đang chọn obj không hiển thị ra.                                 
                                
https://drive.google.com/file/d/1rvpfQlbU-KRnuDTqdBGela4wiUb4bAiz/view?usp=drive_link  

Device:
ipadOS 17,0(21A329)
App version:
"PreProdEduaCloud 
ver 1,0,0" | NG | Không tái hiện được
88.0 | Update version test | Scuti | 1.Tạo tiết học trong CSV file, tạo tiết học.                                
teache4(example1695612269108839@example.com) pass(Otake12345)                                
Chủ nhiệm học sinh/学年主任(tanosy@test.com) pass(vmaXYU54)                                
student4(UC19ALFM11) pass(Otake12345)                                
student5(UC18XU7S10) pass(Otake12345)                                
Đăng ký lần lượt 2 HS vào tiết học                                
                                
2. Tiết học đang không được phản ánh vào student5.                                
                                
kết quả kì vọng: Nội dung sẽ được phản ánh giống nhau cho 2 HS.                                
Kết quả thực tế: Chỉ student5 không được phản ánh.                                
                                
https://drive.google.com/file/d/1RgJUX_OR6Eorzl4SSf24UOz5T7LVhC4d/view?usp=drive_link
Device: ipadOS 17,0(21A329)
App version: PreProdEduaCloud 
ver 1.0.0
PreProdEduaCloud 
ver 1.0.1. | OK | Confirm thử với Quyền xem có nhớ matrix chuyển trường không. 

Do HS đã rời trường rồi quay lại trường đó nên bị lỗi
89.0 | Update version test | Scuti | Title: Không thể search theo thông tin Người hợp đồng (Cách chi trả)                                
Step:
1. Input word tìm kiếm vào box search List người hợp đồng ở màn hình quản lý với quyền Otake (t_ohtake@ohtake-edu.com)                                
                                
2. Đã thực hiện tìm kiếm theo Cách chi trả  (’振込’・’手形’・’その他’), nhưng không thể search được.                                
                                
3. Đang search được theo ký tự chữ số tiếng Anh （Tại Box search, cả suggest có word gần giống cũng được hiển thị ra)                                
                                
                                
Kết quả kì vọng: word matching với word search được hiển thị ra (Tại Box search, cả suggest có word gần giống cũng được hiển thị ra）                                
Kết quả thực tế: Nếu là cách tìm kiếm ở２ thì không hiển thị ra kết quả tìm kiếm. 
Thiết bị: sonoma 14.0（23A344）
App version: 118.0.5993.96（Official Build） （x86_64）                               
                                
Video tái hiện: https://drive.google.com/file/d/1o4PLnONaOmSZGKZmYgZpRYflBiNrBrvi/view?usp=sharing | OK | Dev BE: 8h
Test: 3h
90.0 | Update version test | Scuti | Title: 
Word search data của Hội đồng giáo dục còn hạn chế.
1. Nếu di chuyển tới màn hình sau khi search, thì cho search box thành blank rồi search lại.                              
2. Input word search vào box tìm kiếm List hội đồng giáo dục ở màn hình quản lý theo quyền Otake (t_ohtake@ohtake-edu.com).
                                
3. Đã thực hiện search theo Mail addres và Số điện thoại nhưng không search được.                                
                                
4. Đang search được theo ký tự tiếng Anh ( suggest với word gần giống cũng được hiển thị ra）                                
                                
Kết quả kì vọng: Kết quả search theo Code Hội đồng giáo dục・Tên Hội đồng giáo dục sẽ được hiển thị ra.                                
                                
Kết quả thực tế: có thể search theo thông tin đã đăng ký.                                
Có thể search chỉ với Code Hội đồng giáo dục・Tên hội đồng giáo dục.                                
*Nếu  quay lại Hiển thị list sau khi hiển thị kết quả search, thì sẽ cho box tìm kiếm  thành trống rồi thực hiện tìm kiếm lại là specs đúng không?
Video tái hiện:
https://drive.google.com/file/d/1I-uwH-lJiSPjklIP_kRYzgzPhNQvZyYx/view?usp=share_link 
Thiết bị: 
sonoma 14.0（23A344） | Other | Không phải là bug ạ
Là yêu cầu từ trước là sẽ search được theo HĐGD code, tên HĐGD, Địa chỉ và search 1 phần ạ
https://docs.google.com/spreadsheets/d/1Z3CTmnDTVDj1_9r7xSZer4o7FH7BRYFW/edit#gid=993706882
91.0
92.0
93.0
94.0
95.0
96.0
97.0
98.0
99.0
100.0
101.0
102.0
103.0
104.0
105.0
## Sheet: 進捗
例 | 端末 | 10/12(水) | 10/13(木) | 10/14(金) | 10/17(月) | 10/18(火) | 10/19(水) | 10/20(木) | 10/21(金)
最後の一枚 | 1.0 | iPad | 16/16(100％)
Chromebook | 未実施 | 16/16(100%) | Chromebook追いかけバグテスト_x000a_iPadで出たバグを、同じ条件下でChromebookで実施し、バグ有無を確認します。_x000a__x000a_①　結果：バグ出なかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=A2:H2_x000a_②　結果：バグ出なかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=A2:H2_x000a_③結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H4
共有機能 | 0.5 | iPad | 10/19(53%) | 13/19(68%) | 19/19(100%)
Chromebook | Chromebook追いかけバグテスト_x000a_iPadで出たバグを、同じ条件下でChromebookで実施し、バグ有無を確認します。_x000a__x000a_⑦結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H9
ハイライトペン | 0.2 | iPad | 15/15(100%)
Chromebook | 2/20(10%) | 7/20(35％)
ツールバー | 0.0 | iPad | 7/19(37%) | 18/19(95%) | 19/19(100%)
Chromebook | Chromebook追いかけバグテスト_x000a_iPadで出たバグを、同じ条件下でChromebookで実施し、バグ有無を確認します。_x000a__x000a_④　結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H5_x000a__x000a_⑤　結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H6_x000a__x000a_⑥結果：バグ出なかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H7
消しゴム | 0.0 | iPad | 9/20(45%) | 20/20(100%)
Chromebook | Chromebook追いかけバグテスト_x000a_iPadで出たバグを、同じ条件下でChromebookで実施し、バグ有無を確認します。_x000a__x000a_⑧　結果：バグ出なかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H14_x000a__x000a_⑨　結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H15_x000a__x000a_⑩　結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H16
テキストボックス | 0.0 | iPad | 2/13(15%) | 2/13(15%) | 11/13(85%)
Chromebook
ピンチインピンチアウト | 0.0 | iPad | 15/21(71%) | 21/21(100%)
Chromebook | Chromebook追いかけバグテスト_x000a_iPadで出たバグを、同じ条件下でChromebookで実施し、バグ有無を確認します。_x000a__x000a_⑪　結果：バグ出た_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H17_x000a__x000a_⑫　結果：バグでなかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H18 | Chromebook追いかけバグテスト
iPadで出たバグを、同じ条件下でChromebookで実施し、バグ有無を確認します。

⑬　結果：バグでなかった
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=864724772&range=A40:G40

⑭　結果：バグでなかった
https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H20
罫線マス目 | 0.0 | iPad | 21/21(100%)
Chromebook | ⑮　結果：バグでなかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H21_x000a__x000a_⑯　結果：バグでなかった_x000a_https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117&range=H22
## Sheet: No.63
Video tái hiện của Otake
## Sheet: 例
NO | Chức năng
機能 | Người báo cáo
報告者 | Ngày báo cáo
日付 | Độ ưu tiên
優先順位 | Category | Status | 内容
日本語 | Nội dung
ベトナム語 | 回答
日本語訳 | Trả lời
ベトナム語回答 | Người trả lời
返信者 | Ngày trả lời
返信日 | Milestone | Kết quả check cuối cùng, hoặc ticket Jira
最終チェック結果、またはチケット Jira
1.0 | ツールバー | 佐藤 | 2022-10-06 00:00:00 | Other | 内容：先生が生徒のオブジェクトをツールバーでカットしてしまうバグ
ケース：https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445&range=35:35
前提：モニタリング中
端末：先生（iPad,15.5)、生徒(Macbook,12.6)

ステップ
1. 先生はモニタリングを開始する
2.先生は生徒のノートに入る
3.生徒は図形を挿入する
4.先生は、ステップ３の図形を選択し、ツールバーの「カット」を押下する

期待する結果
先生は生徒の図形をカットできない

実際の動き
先生は生徒の図形をカットする

参考動画
URL
2.0 | Other
3.0 | Other
4.0 | Other
5.0 | Other
6.0 | Other
7.0 | Other
8.0 | Other
9.0 | Other
10.0 | Other
11.0 | Other
12.0 | Other
13.0 | Other
14.0 | Other
15.0 | Other
16.0 | Other
17.0 | Other
18.0 | Other
19.0 | Other
20.0 | Other
21.0 | Other
22.0 | Other
23.0 | Other
24.0 | Other
25.0 | Other
26.0 | Other
27.0 | Other
28.0 | Other
29.0 | Other
30.0 | Other
31.0 | Other
32.0 | Other
33.0 | Other
34.0 | Other
35.0 | Other
36.0 | Other
37.0 | Other
38.0 | Other
39.0 | Other
40.0 | Other
41.0 | Other
42.0 | Other
43.0 | Other
44.0 | Other
45.0 | Other
46.0 | Other
47.0 | Other
48.0 | Other
49.0 | Other
50.0 | Other
51.0 | Other
52.0 | Other
53.0 | Other
54.0 | Other
55.0 | Other
56.0 | Other
57.0 | Other
58.0 | Other
59.0 | Other
60.0 | Other
61.0 | Other
62.0 | Other
63.0 | Other
64.0 | Other
65.0 | Other
66.0 | Other
67.0 | Other
68.0 | Other
69.0 | Other
70.0 | Other
71.0 | Other
72.0 | Other
73.0 | Other
74.0 | Other
75.0 | Other
76.0 | Other
77.0 | Other
78.0 | Other
79.0 | Other
80.0 | Other
81.0 | Other
82.0 | Other
83.0 | Other
84.0 | Other
85.0 | Other
86.0 | Other
87.0 | Other
88.0 | Other
89.0 | Other
90.0 | Other
91.0 | Other
92.0 | Other
93.0 | Other
94.0 | Other
95.0 | Other
96.0 | Other
97.0 | Other
98.0 | Other
99.0 | Other
100.0 | Other
101.0 | Other
102.0 | Other
103.0 | Other
104.0 | Other
105.0 | Other
106.0 | Other
107.0 | Other
108.0 | Other
109.0 | Other
110.0 | Other
## Sheet: 方針
●期間
範囲 | 担当 | 開始 | 終了
優先度４ | オータケ様 | 2022-10-10 00:00:00 | 2022-10-21 00:00:00
スクーティ | 2022-10-11 00:00:00 | 2022-10-28 00:00:00
優先度５ | オータケ様 | 2022-10-31 00:00:00 | 2022-11-11 00:00:00 | 仮
スクーティ | 2022-11-07 00:00:00 | 2022-11-25 00:00:00 | 仮
非機能要件 | オータケ様 | 2022-12-01 00:00:00 | 2022-12-16 00:00:00 | 仮
スクーティ | 2022-12-12 00:00:00 | 2022-12-30 00:00:00 | 仮
※12月には、運用テストも実施予定です
●UAT方針
・UAT期間終了後に発見されたバグ場合は、原則スコープ外とする。（重大なケースの場合は、都度ご相談させていただく）
・UATのバグ修正完了後に、オータケ様には承認のメールをいただく。（宛先：yuka-satou@tanosyinc.com）
意図：その機能はUAT・バグ修正が完了し、オータケ様によって承認を受けたことを示すため
・テスト量は、最低ラインはタノシーが提供させていただいたケースの全て。（優先度４の場合、約156ケース）
・可能な場合は、それ以上のケースを実施してください。
・テスト端末以外の端末のみで起こるバグは、修正対象外とする。
例）オータケ様所有のLenovoのChromebookで出たバグが、テスト対象端末のiPad, Dynabook, Chromebookで出ない場合は、修正しない。出る場合は、修正する。
●バグに関して
・バグ報告は、【バグ報告eduα】のチャンネルを利用する
・バグ報告シートURL
https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=180020117
バグ報告の必要項目
・バグのタイトル
・該当テストケースURL
・実施端末、バージョン
・前提条件
・実施ステップ
・問題の内容
・期待結果
・ある場合は画像、ビデオなどの参考資料
※例をご参照ください
https://docs.google.com/spreadsheets/d/12IL1pIKwroA0U2DrPrV8l7oKe2hVnUhfstp8HhYPcRY/edit#gid=1264901842&range=2:2
●品質
UATのバグの数を集計し、下記URLの品質指標に合わせて品質の評価を行います
https://docs.google.com/presentation/d/12bMpcc95jUrhkcXtbICxgQPqoJ08kxdGfTRPrat2nAU/edit#slide=id.g157658df847_0_16
●テストケース
優先度４
https://docs.google.com/spreadsheets/d/1jjQBZ0zkHiPZsqkJu4Otr10OEt1RXwkqfdhjFnen8Z8/edit#gid=1059291445
優先度５
未完成
非機能要件
未完成
●バグと仕様変更（Change Request)について
機能設計に定義されている仕様と、違った動きをするものがバグです。
機能設計に定義されていない仕様は、仕様変更（Change Request）となります。
バグは、12月末までのスコープにて修正しますが、仕様変更は、対応外です。
仕様変更の対応は、1月以降のご相談とさせていただきます。
機能設計
https://www.notion.so/372e7d0914874ee79c4929ba70fd94f5?v=c2885451ae43421d84f8e86f8906c93e
## Sheet: 要望一覧
https://docs.google.com/spreadsheets/d/18fDSGpSUwOj5rJeSV8kn3kt2vro1-ntRHLT_h-f8jp8/edit#gid=0&range=157:157
バグではないけど改善が必要という機能は、上記のシートに記載をお願いいたします。


---
**Nguồn:** `Kinh nghiệm PM\[External] Q&A maintain sample.xlsx`

## Sheet: Rule
Format đặt câu hỏi:
Điền page/secreen/Function
Question
Background
Question detail
→5W1H: what, where, when, why,who,how
Level
Status
To: sonna, my, giangPT etc...
Author
## Sheet: Q&A【Scuti】
NO | ステータス | 画面 | 機能 | 質問 | 回答 | 優先度 | 宛先 | 質問者 | 希望回答期限 | 画像
1.0 | MUST FOLLOW
Question format | Function to ask:
- Screen ID/Name, API ID/Name, Batch ID/Name, etc
- What part of the doc you want to ask by text or screenshot

Background:
- xxx information is missing in order to implement xxx function or
- xxx description is not consistent with xxx description of xxx doc or
- this doc says xxx but it's unclear for me I want to make it more detailed
- other issue to confirm

Question or request: 
- In order to resolve the problem above, can I have xxx?
- In order to resolve the problem above, let me confirm xxx. I understant that is xxx but is it correct? | Màu đen, chữ trắng là đã update detail design, checklist
1.0 | Pending | - | 板書作成機能（相談） | 現在、Edu システムにはすでにデジタルボードの機能がありますが、
・現在の機能の代わりに新機能（先生が大きな部屋をつくり、その部屋の鍵を生徒に教える）を作成する
・現在の機能のと新機能を併存させる
のどちらを想定されておりますでしょうか？ | 優先度が低いため、現在は保留でお願いします（2023.12.4レス）。 | Low | 佐々木様 | 赤井 | -
2.0 | Pending | - | 板書作成機能（相談） | 作成した部屋には生徒は入れる認識ですが、
先生も入れることを想定されていますでしょうか？ | 優先度が低いため、現在は保留でお願いします（2023.12.4レス）。 | Low | 佐々木様 | 赤井 | -
3.0 | Pending | - | 板書作成機能（相談） | 教師はどのようにして生徒に授業の部屋に参加するコードを共有することを想定されておりますでしょうか?

メールで送付、教師が印刷して生徒に配布などがあるかと考えておりますが、アプリ内で先生と生徒間でコードを共有するためのチャット機能を追加し、その機能経由で配布する方法などもございます。 | 優先度が低いため、現在は保留でお願いします（2023.12.4レス）。 | Low | 佐々木様 | 赤井 | -
4.0 | Pending | - | 板書作成機能（相談） | 発行するコードで現在想定されている文字の種類などはございますでしょうか？
セキュリティの面からも考えて、弊社側では半角英数字を考慮しております。（桁数については相談になるかと思います） | 優先度が低いため、現在は保留でお願いします（2023.12.4レス）。 | Low | 佐々木様 | 赤井 | -
5.0 | Pending | - | 板書作成機能（相談） | 先生が作成した部屋に生徒がコードを使用して入室後、再度入室する際に
再度コード入力するのか、入力なしに次回から入室できるようにするのかどちらをお考えでしょうか？

弊社側としてはユーザの使いやすさを考えると後者の方がいいかと考えております。 | 優先度が低いため、現在は保留でお願いします（2023.12.4レス）。 | Low | 佐々木様 | 赤井 | -
6.0 | DONE | ハンドラーのロック | 現在の仕様では、複数のオブジェクト選択後、ロックを押すと全てのオブジェクトに対してロックされます。
その後、仮にロックされた１つのオブジェクトのロックを解除した場合、全てのオブジェクトに対してロック解除されます。

質問としては、
・複数のオブジェクトをロックし、その中の１つをロック解除した際はその１つをロック解除する認識でよろしいでしょうか？（今の仕様から修正します） | 赤井さんの認識で合っています。改めて申し添えますと、オブジェクトABCDEFGがあるとき、オブジェクトAのロックを解除すると、オブジェクトAのロック解除は他のオブジェクトに影響しないということです。

→再度検討 | High | 佐々木様 | 赤井
7.0 | DONE | ハンドラー | 以前はあったカット機能ですが、
３点メニュークリック後に表示されるサブメニュー内にカット機能はもう入れない認識でよろしいでしょうか？
その場合、他のどこかにカット機能を追加しますでしょうか？ | カット機能は無くすことにしました。 | High | 佐々木様 | 赤井
8.0 | DONE | ハンドラー | Web版においては以前のように、
undo, redo, copy, cut, pasteなどのショートカット機能は使える認識でよろしいでしょうか？ | はい、そのようにお願いいたします。
ただ、カット機能はなくす。 | High | 佐々木様 | 赤井
9.0 | DONE | ハンドラー | ３点ボタンを押下した後に出てくるコピペ機能などがあるサブメニューですが、
サブメニュー内の機能をクリックした際は、サブメニューは閉じず、
もう一度３点メニュークリック時に閉じる認識でよろしいでしょうか？
（ハンドラーボタンがクリック時にグレーになるかつサブメニュー表示のままなので、他のボタンも同じかと思いましたが念のため確認させてください） | ハンドラーボタンクリック時にグレーになるということで私のほうが資料を作りましたが、動作的には、なにか指令（コピーや削除など）のアイコンを押した際は、サブメニューは閉じてしまっていいと思います。Canvaでも確認しましたが、なにか命令をするとサブメニューは閉じていました。

→ということは、コピー、削除だけではなくハンドラーボタン含む全ての指令のアイコンをクリック時にサブメニューを閉じる認識でよろしいでしょうか？（ボタンの背景はグレーにしない）
また、閉じるのはサブメニューのみで３点メニューは表示されている認識でよろしいでしょうか？

→はい。その認識で合っています。サブメニューは閉じてよいです。閉じるのはサブメニューのみで、三点メニューは表示させたままでよいです。三点メニュー残しておかないと、次の指令が出せなくなるためです。 | High | 佐々木様 | 赤井
10.0 | DONE | ハンドラー | サブメニューでは、「ハンドル」のみがクリック時に
グレーアウトし、その他はクリック時のボタンの色は変わらない認識でよろしいでしょうか？ | 上記の回答がこの部分の回答も兼ねていると思いましたので、割愛します。 | High | 佐々木様 | 赤井
11.0 | DONE | ハンドラー | 旧来の仕様ではロック時にはコピー、ペースト、削除などができますが、
新仕様で削除のみできなくなる、と伺いました。

ただ、ロック時は
https://otakescuti.slack.com/archives/C065KMCCMA7/p1701849121271509
こちらの画像のようにロックボタンだけ表示し、３点リーダは表示しません。

この場合、コピー、ペーストなどはショートカットコマンドのみからしかできないと想定しております。

こちらに関して少し確認いただけますでしょうか？ | 誤解があったら申し訳ないのですが、基本的には、ロックをしたら、ロックの解除以外の操作は全部封印するということをしたいです。

現行の封印事項は、移動・拡大・縮小・回転の４つです
他方で、現行できてしまうのが、コピー・ペースト・切り取り・削除の4つです。
現行の仕様で特に問題視しているのが、削除です。なので、ロックをしたら削除は禁止するというのは確定です。
これに加えて、コピーもペーストもできなくしてしまってよいと考えています。
ロック中におけるコピーとペーストについては、特段こだわっていないので、ショートカットキーで「できてもいいしできなくてもいい」というのが回答で、その判断基準は工数によるということになってしまいます。
曖昧ないいかたですみません…。

→承知しました。カットも原理的にオブジェクトを削除するので
コピー・ペースト・切り取り・削除ができなくなってもいい、ということですね。
ロック中のコピー・ペースト・カットについてですが、ショートカットキーでできる/できないパターンの見積もりを作成いたしますので少々お待ちください。 | High | 佐々木様 | 赤井
12.0 | DONE | ハンドラー | 先生がモニタリングをしている際、
生徒の画面に対して現在
「カット・コピー・ペースト」が可能で他の機能は使用できなくなっています。
この際、３点リーダ表示後のサブメニューも同様の表示にしますでしょうか？（使用できない機能は薄く表示する） | 今回、カットが消えるので、

先生が生徒にできる操作
「コピー・ペースト・コピペ・反転垂直・反転水平」
とくに、反転機能については、合同な図形（三角形Aと三角形Bを回転させたり、反転させたりしてぴったり重ね合わせる操作を指導するときなどに必要な機能だと考えています。その操作を、モニタリング中に先生が児童のノートに入って指導するという状況が想定できます）

先生が生徒にできない操作
「ロック」※理由は、児童がオブジェクトを触れなくって困るからです。

→ご丁寧にありがとうございます。
使用できる機能は理解いたしました。
使用できない機能をサブメニューにどのように表示する件ですが、
①透明度を薄く表示する
②非表示にする
の二通りあるかと思います。
現行では、透明度を薄くして表示されていますが、
これも見積もりによる、といった具合でしょうか？（細かいところですみません）

→使用できないサブメニューの表示方法については、透明度を薄くするという現行の手法を踏襲してよいと考えます。

→承知しました！ありがとうございます。 | High | 佐々木様 | 赤井
13.0 | DONE | ハンドラー | ３点リーダーや３点リーダ押下後の各ボタンは、
Web版にてマウスでホバー時に、影をつける表示にされますでしょうか？
既存システムでは、特に影をつける表示はございませんが、canvaにはございますのでお聞きしたかった次第です。 | いえ、三点リーダーには影は付けないでいいです。現行と同じでお願いします。

やはり、三点リーダーには付けたほうがいいと思いました。
影がないと背景が白いときにどこがボタンの範囲なのかがわからないからです（2023.12.12）
マウスホバー時に | High | 佐々木様 | 赤井
14.0 | DONE | ハンドラー | 以前口頭で確認したかもしれませんが、念の為もう一度確認させてください。
３点リーダーの位置ですが、以下の通りでよろしいでしょうか？
・回転時→常に上部表示。左右は動かず、オブジェクトの最上部から少しだけ距離を空けて表示。画面の上部で３点リーダーが見切れても問題ない。
・ズームイン時→もし表示されなかったら、画面から消える | ・回転時→常に上部表示。
合っています。
・左右は動かず、オブジェクトの最上部から少しだけ距離を空けて表示。
合っています。
・画面の上部で３点リーダーが見切れても問題ない。
合っています。
・ズームイン時→もし表示されなかったら、画面から消える
それでいいと思います。どのくらいのズームで消えるのかは知りたいところではあります。 | High | 佐々木様 | 赤井
15.0 | DONE | ハンドラー | コピペボタンについて

・オブジェクトをコピペする際、コピペされたオブジェクトの表示位置はペーストした際に表示する位置（やや右下）の認識でよろしいでしょうか？
・オブジェクトコピペ時にフォーカスが当たるのはコピペされた新しいオブジェクトでよろしいでしょうか？（canvaはそのようになってます）
・たくさんのオブジェクトを選択時に、コピペボタンを押下した際、フォーカスは当たらない（現行でたくさんのオブジェクトに対してペーストした時のように全てのオブジェクトからフォーカスが外れる）ということでよろしいでしょうか？
・コピペ機能はコピーとペーストの合体なので、仮にコピー→コピペ→ペーストを実行した際はコピペを行った時のオブジェクトがペーストされる認識でよろしいでしょうか？
・現行の仕様に従うと、コピペした際にできたオブジェクトは元の属性（ロック状態、ハンドルがない）を引き継がない認識でよろしいでしょうか？ | ・オブジェクトをコピペする際、コピペされたオブジェクトの表示位置はペーストした際に表示する位置（やや右下）の認識でよろしいでしょうか？
はい、現在と同じ仕様でよいです。

・オブジェクトコピペ時にフォーカスが当たるのはコピペされた新しいオブジェクトでよろしいでしょうか？（canvaはそのようになってます）
はい、これも赤井さんの提案でよいです。

・たくさんのオブジェクトを選択時に、コピペボタンを押下した際、フォーカスは当たらない（現行でたくさんのオブジェクトに対してペーストした時のように全てのオブジェクトからフォーカスが外れる）ということでよろしいでしょうか？
はい、現在の仕様で確認しましたが、それと同じでよいです。

・コピペ機能はコピーとペーストの合体なので、仮にコピー→コピペ→ペーストを実行した際はコピペを行った時のオブジェクトがペーストされる認識でよろしいでしょうか？
念のために確認します。
▲のオブジェクトと◯のオブジェクトがあるとします。▲を「コピー」します。◯を「コピペ」します。そうすると、◯が「ペースト」される、ということで認識あっているでしょうか。
「コピペ」の指令が「コピー」の指令を上書きするというような私の理解です。
この認識であっているのであれば、赤井さんの提案でよいです。
→「◯が「ペースト」される」という認識で問題ございません。認識が同じなので、そのように進めさせていただきます。


・現行の仕様に従うと、コピペした際にできたオブジェトは元の属性（ロック状態、ハンドルがない）を引き継がない認識でよろしいでしょうか？
まず、認識合わせをさせてください。
1つ目：ロック状態の引き継ぎの有無
コピペボタンについては、3点リーダーを押して、はじめて出現するボタンです。なので、ロック中ですと、三点リーダーは非表示となっており押せないと思います。抜け道があるのかわからないのですが、赤井さん的にはどのような場合にロック状態の引き継ぎが起きるのを想定しているのか教えてください。
→おっしゃる通りですね。ロック状態の時は３点リーダが非表示なのでメニューから選んでコピー、ペースト、コピペは行えないですね。ただ、可能性があるとすればショートカットキーでコピー、ペーストしたパターンですね。QA11にて、見積もり額によってショートカットキーでの制御をする・しないを決めるとのことなのでもし制御しない、を選択した場合はこの抜け道があるかと思います。



2つ目：ハンドルがない状態の引き継ぎの有無
これについても一応認識合わせをさせてください。
①三点リーダーを押下する。
②ハンドルアイコンを押下して、ハンドルを非表示にする。（ハンドルを非表示にしても、三点リーダーだけは消えない）
③再び三点リーダーを押下する。
④コピペボタンを押下する。
⑤オブジェクトが複製される。このとき、新しくペーストされたオブジェクトにフォーカスしていて、ハンドルは非表示になっていない（全部出ている）。
この認識で合っていれば、これ（ハンドルの非表示を引き継がないこと）については、赤井さんの提案どおりで良いと考えます。
→はい、その認識で問題ございません。 | High | 佐々木様 | 赤井
16.0 | DONE | ハンドラー | 教師がモニタリング中に児童のボードをみている時です。


・児童がオブジェクトのハンドラーを非表示にすると、教師はそのオブジェクト選択時にハンドラーは非表示になりますでしょうか？（先生が児童に対して図形を使って説明するなら、図形の縮小・拡大を行うこともあると思うので、表示した方がいいかもしれないです。また、QA12のご回答に従うと、先生は生徒のオブジェクトに対するハンドラーのON/OFF権限はないです。）

・グループ学習にて、同じグループの生徒があるオブジェクトに対してハンドラーをOFFにした場合、
その生徒にだけハンドラーがOFFに表示される
同じグループの全ての生徒に対してハンドラーがOFF表示される
のどちらでしょうか？


上の質問に少し似ているかもしれないです。
動かすのは自分なので、自分にだけハンドルは非表示する、としてもいいかもしれませんが意見をお聞かせください・ | ・児童がオブジェクトのハンドラーを非表示にすると、教師はそのオブジェクト選択時にハンドラーは非表示になりますでしょうか？（先生が児童に対して図形を使って説明するなら、図形の縮小・拡大を行うこともあると思うので、表示した方がいいかもしれないです。また、QA12のご回答に従うと、先生は生徒のオブジェクトに対するハンドラーのON/OFF権限はないです。）
まず、QA12で先生は「移動・拡大・縮小」ができることがぬけていました。ここは現行から変更無いことを確認しておきたいです。
そこで、ご質問の件です。
①児童がオブジェクト（▲）のハンドラーを非表示にする。
②先生がモニタリングモードに切り替え、児童のオブジェクト（▲）を先生が選択する。この段階では、ハンドラーは非表示でよいと思います。
③先生は、▲を操作したいので、三点リーダーを押下して、ハンドラーを表示させて操作を実行する。
QA12から変更になりますね。
まとめると、先生がモニタリングで児童にできる操作「移動・拡大・縮小・コピー・ペースト・コピペ・反転垂直・反転水平・ハンドラーのON/OFF」

・グループ学習にて、同じグループの生徒があるオブジェクトに対してハンドラーをOFFにした場合、
その生徒にだけハンドラーがOFFに表示される
同じグループの全ての生徒に対してハンドラーがOFF表示される
のどちらでしょうか？
赤井さんのご提案のとおり、ハンドラーをOFFにした生徒だけ非表示して、他の生徒まで影響させないでいいと思います。


→ありがとうございます。
まとめると２パターンあるということですね。

①先生がモニタリングモードで生徒の画面を見ている場合
先生が操作した生徒のハンドル状態は、生徒にも反映される。
（要するに、先生生徒双方間でハンドル状態は同じとなる。上書きとなる。）


②複数生徒間でグループ学習の場合
ハンドル状態は生徒自身のみが影響範囲で、他の生徒からは影響を受けない。 | High | 佐々木様 | 赤井
17.0 | DONE | ハンドラー | 回転ハンドルしたから伸びている青い棒線は無くすことはできますか？存在している意味がよくわからなくなったので、無くしたいと思いました。
https://drive.google.com/file/d/1hUSlPEtLh6YX9ufzI___rPAXw-7QebTv/view?usp=sharing | はい、可能です！対応させていただきます。 | 赤井さん | 佐々木
18.0 | DONE | ハンドラー | 三点リーダ押下後に、コピー、反転機能、ハンドル表示などの機能を選択できますが、
これらの機能は選択できるすべてのオブジェクト対象の機能ということでよろしいでしょうか？
（モニタリングやグループ学習では一部機能は使用できませんが、ペンで書いた図形、テキスト、デジタル教具などを含むすべての図形対象かどうかの確認です） | はい、そのようにお願いいたします。
ただ、これはまだお伝えしていなかったのですが、図形（四角形や三角形、ふきだしなどが出せる機能）は無くそうと思っています。 | 佐々木様 | 赤井
19.0 | DONE | ハンドラー | 現在は、Web版でマウスの右クリックを行うと小さなメニューが表示されて、ロックやコピー、ペーストなどが可能です。
そこで、新仕様においては、以下のような仕様でよろしいでしょうか？

・右クリックを行っても前同様のメニューが表示される（メニューの内容にはコピペ、反転、ハンドルONOFFなどが追加されます）
・その状態で三点リーダをクリックすると、右クリックを行った時のメニューは閉じて、三点リーダをクリックした時に表示するメニューが現れる（ただ、表示されているメニューの中身は右クリックと三点リーダで同じ） | はい、ご提案のとおりの仕様でよいと思います。 | 佐々木様 | 赤井
20.0 | DONE | ハンドラー | 反転機能ですが、
複数のオブジェクトを選択した際、以下の２パターンがあると思っています。

①Canvaのように、それぞれのオブジェクトが反転する

②選択された複数のオブジェクトが１つのオブジェクトとして反転する。

①で問題ないかとは思いますが、念のために確認させてください。 | ご認識のとおり、①でよいと思います。 | 佐々木様 | 赤井
21.0 | DONE | ハンドラー | オブジェクト回転時の三点リーダについてです。
Canvaのように、オブジェクト回転時は三点リーダを非表示にし、回転終了後に表示する認識でよろしいでしょうか？
（回転時は三点リーダをタップできないので、表示しなくていい認識です） | その認識です。
22.0 | DONE | ハンドラー | 複数のオブジェクトがあり、ロックがされているオブジェクトとされていないオブジェクトがあり、
そのすべてのオブジェクトを選択した場合、
三点リーダは表示しない認識でよろしいでしょうか？

ロックがかかっているにもかかわらず三点リーダが表示されるので、弊社側としては選択した中に一つでもロックされているオブジェクトがあれば三点リーダは表示しないほうが良いかと思います。 | 三点リーダーは表示させることにします。理由は、Googleスライドで図示します。
23.0 | DONE | ハンドラー | 個別ロック解除か全ロック解除か | サブメニューボタンを追加したました。理由は、Googleスライドで図示します。
24.0 | DONE | ハンドラー | ハンドルの表示・非表示機能について
オブジェクトを移動しているときに、ハンドルが出現することが嫌なのでハンドルの表示非表示機能を考えました。
オブジェクトを移動させるときは、四隅と回転，三点リーダーがでている必要がなく、オブジェクトが四角く囲われている状態であればいいように思いました。
iPadに標準実装されている「フリーボード」やCanvaの動きも同様になっているようです。
しかし、たとえば、オブジェクトを動かしているときにハンドルが非表示になるのであれば、この機能は必要ないと思いました。 | ボタンから使用するハンドル機能は不要と合意。
一つのオブジェクト移動時に、オブジェクトの枠線を出すか出さないかはScuti内部で確認する。（出さないほうが望ましいとのこと）
複数オブジェクトの際は、枠線を出す。
25.0 | DONE | ハンドラー | ロック中のコピー・ペースト・カットで
ショートカットキーでできる/できないパターンの見積もりについて | ロック中に
既存からできない：移動・拡大・縮小・回転
現行からできない：コピー・ペースト・切り取り・削除
についてですが、見積もりは以下のようになります。

<案①>ロック中のオブジェクトもコピー・ペースト可能
<案②>ロック中のオブジェクトはコピー・ペースト不可能
これらでの差分は開発・テストを含めて2人日程度です。（②の方が多い）

具体的には、
②では、オブジェクト選択時にオブジェクトの状態(ロックかアンロックか)を取得し、
ロックであれば、コピーしない、という条件分けが必要になります。
また、ipadとwebがあるので、オブジェクトタップ時と右クリック時の2種類があります。

複数のオブジェクトでロック・アンロックのオブジェクトが混ざっている際の制御については今仕様が未決定の箇所があるので、それらは除いて見積もりをしています。


←工数について承知しました。本日（12月19日）のMTGにて改めてご説明をお願いいたします（佐々木）。
2日程度であれば、ショートカットキーのコピーとペーストは封印する方向で勧めたいと考えています。
ロックとアンロックの混ざっている場合については、見積もりはあとということで承知しました。

→案②で決定。ロック中のオブジェクトはショートカットでコピー・ペースト不可能（カットや削除も不可能）
26.0 | DONE | ハンドラー | オブジェクト移動時は四隅や縦横の丸は表示しない認識ですが、
回転時も表示しない認識でよろしいでしょうか？
（Canvaは表示しません） | はい、移動時はハンドラー（四隅・縦横の◯）はいずれも表示しない認識でよいです。回転時も同様でいいです。

※今回の質問の趣旨からずれると思いますが、三点リーダーも移動時は表示しないでほしいです。（移動時はCanvaやフリーボード同様に、枠のみ表示※フリーボードはオブジェクト1つの場合は何も表示しないので、弊社としては、フリーボードの仕様のほうが望ましいです）
回転のときは、三点リーダーの仲間たち（回転や削除が合体している白いバーのこと）の中に、回転アイコンがあるので、必然的に白いバーを表示することになるので、それは気にしていないです。
27.0 | DONE | ハンドラー | サブメニュー（グレーのもの）を表示中は、
回転ハンドラーは重なってしまうかつ回転機能は同時に使用できないのでので非表示でよろしいでしょうか？ | はい、そのようにお願いいたします。
28.0
29.0 | DONE | 反転アニメーション | 以前認識合わせさせていただいた際に、
反転のアニメーションはあってもなくても良い、ということでした。
現状として、反転アニメーションをつけるのであれば少し技術的な調査が先に必要となるとのことです。
そのため、特段必ず必要ということでなければアニメーションなしでも問題ないかを確認させていただきたいです。 | 反転アニメーションは「なし」でいいです。
30.0 | DONE | ロックアイコンとメニューの位置が重なった時 | このシートの図のように、場合によってロックアイコンとメニューが重なることがあるかと思います。
その際の表示ですが、4パターンあるかと考えています。
結論として、１がいいかと考えています。
理由として、
・2と4は1つのオブジェクトにおいてロックアイコンを置く位置を制御しないといけない。
・3はメニューとロックアイコンが重なるので誤タップが生じるかもしれない。
という理由から消去法で1を選んでいます。 | 確認しましたが、年末の認識合わせのMTGのときの仕様よりは、Canvaとかフリーボードの仕様の方がいいように思えてきました。
つまり、オブジェクトが1つのときは、ロックアコンがオブジェクト下部（または上部）に1つでる。
オブジェクトが2つ以上のときは、2つ以上のオブジェクトを1つのオブジェクトに見立ててロックアイコンがオブジェクトの下部（または上部）に1つ出る。

MTGのときに再度すり合わせしたいです。
ちなみに、1の案ですが、オブジェクトが画面上や下に移動すると、サブメニューが表示できるスペースを確保するために、メニューが上や下に動くという仕様は変更がないということでよいでしょうか？
31.0 | DONE | Web版でのサブメニューの表示 | Web版でサブメニューを表示している際、ユーザがマウスを使用してズームをした際にサブメニューは閉じますか？
Scutiの提案としては、閉じたほうがいいと思います。

理由として、現在もマウスでズームした際に右クリックで表示されているサブメニューは閉じます。
また、ズーム時はユーザはサブメニューを触りたいのではなくオブジェクトを見たいからズームしていると思います。 | Scutiさんの提案でよいとおもいます。
ズームしたらサブメニューの表示が閉じるということでよいです。
32.0 | DONE | アイコンについて | 新機能の「上下反転」「左右反転」「コピペ」のアイコン素材をお送りいただけますでしょうか？ | 承知しました。Slackでお送りします。
33.0 | DONE | Web版でのペーストの表示 | iPad版で長押し時に表示する「はりつけ」のデザインを作ってみました。
元からサイズが二倍程度、デザインはグレー色にしています。
こちらからご確認お願いします。 | 確認しました。これで良いと思います。
34.0 | DONE | ロック状態でのオブジェクト | 先日、ロック状態でテキストオブジェクトは編集できない（他のオブジェクト同様）ということになりました。
他の種類のオブジェクトでもロック状態でできることを少し確認させていただきたいです。


・テーブルオブジェクト
テキスト編集、行列の追加、拡縮、移動

・付箋
めくる、閉じる、付箋の色を変える、移動

・テキストオブジェクト
認識合わせの結果、ロック状態では何もできないということになりました。
フォントや色を変えるテキストエディターメニューも非表示でよろしいでしょうか？

・時計オブジェクト
時計の針を動かす

・ビデオオブジェクト
ビデオの再生、音声、フルスクリーン

・ペンオブジェクト
ペンで描いた線は消しゴムで消せる？ | ・テーブルオブジェクト
→テキスト編集とは、「削除」、「入力」、色やフォント、大きさ、太さ変える、下線を引く）などの画面上部に表示されるメニューの全部を指しているという理解です。
その前提の上で、テキスト編集、行列の追加、拡縮、移動は操作不可にしてよいです。

・付箋
→めくる、閉じる、付箋の色を変える、移動のほかに、「テキストの入力」も不可にしてください。

・テキストオブジェクト
→非表示というよりも、グレーアウトのほうがいいと思います。（私の感覚的なものではあるのですが）

・時計オブジェクト
→これは盲点でしたが、針オブジェクトの移動は不可にしてよいです。しかし、針は動いたほうがいいです。

【理由（課題）】
実際にアプリで操作してみると、針を動かそうとすると、針全体のオブジェクトが動いてしまうことがあります。

【上述の問題を踏まえて、想定される操作】
①時計の文字盤オブジェクトの上に針オブジェクトを置く。
②時計の文字盤と針を両方ロックする。
③時計の針だけを動かすことができる。
「長針をぐるぐる回すと短針が連動して動くオブジェクト」 「 長針と短針をそれぞれ動かせるオブジェクト」
上記2種ともロック中に針だけは動かせるという方がよいです。

・ビデオオブジェクト
→・ビデオオブジェクト
→移動・拡縮・回転が操作不可でよいです。再生や音量、タイムラインみたいなやつ、フルスクリーンは有効にしてほしいです。
※ビデオの操作に関連してですが、現在の仕様は、ハンドラーが再生ボタンやフルスクリーンボタンに被ってしまっていて問題だと思っています。これは改善したいです。

・ペンオブジェクト
→ペンで描いた線は消しゴムで消せなくていいです。

-----
35.0 | DONE | テーブルオブジェクトの反転について | QA35の図　にテーブルオブジェクトを反転させた際の表示を記載しています。
以下の認識でよろしいでしょうか？（番号は図形の左上に記載しています）

・水平反転
1→4

・垂直反転
1 → 2

・垂直反転後に水平反転
1→2→３ | 自分でも再現しました。合っています。大丈夫です。
←すみません、Canvaと同様の仕様に訂正したいです（2024.1.11）。
36.0 | DONE | Web版のサブメニューについて | Web版で右クリックした際に表示するサブメニューは、以前の基本設計ではデザインはiPadと同じで「コピペ・削除・ロック・全てロック解除・コピー・貼り付け・上下反転・左右反転」の機能を表示していました。
メニュー・サブメニューの表示機能は変更したのですが、Web版はメニューはないため「コピペ・削除・ロック・全てロック解除・コピー・貼り付け・上下反転・左右反転」の機能を表示させる認識でよろしいでしょうか？UIはこちらです。 | ＞Web版はメニューはないため「コピペ・削除・ロック・全てロック解除・コピー・貼り付け・上下反転・左右反転」の機能を表示させる認識
認識の齟齬があるとよくないので、一応確認です。※ご認識が合っていれば、以下は聞き流してください。
まず、iPadもWEB版もメニューは表示されないといけません。
ChromebookもASUSも2in1で、ノートパソコンモードとタブレットモードの2つのタイプに変更できます。
つまり、タブレットモードのときは、右クリックなどはできなくなるのでメニューが表示がされていないといけません。

回答としては、ノートパソコンモードのときの右クリックの挙動は、赤井さんのご提案のとおり（8つのアイコンが出る）でよいです。
図示したので、ご確認ください。

ーーーーーーー
赤井コメント
・ノートパソコンモードの時はメニューとサブメニューで重複している機能（ロック・アンロックなど）がありますが、問題ない認識でよろしいでしょうか？
→はい、それでよいです。
・ノートパソコンモードでオブジェクトフォーカスがない状態で空白場所を右クリックした場合、メニューは出さずにサブメニューだけ出す認識でよろしいでしょうか？（今のアプリの仕様のような動きです）
→はい、それでよいです。
37.0 | DONE | 複数オブジェクトのロックについて | 以前、ロック・アンロックオブジェクト混在時に回転できない、というように認識合わせいたしました。
新仕様では、
・赤枠がロックで回転は非表示
・青枠がアンロックで回転は表示
・混在時は青枠で回転は表示
ということですが、混在時に回転できないのであれば、混在時は赤枠の方がいいかもしれません。
ご確認の程お願いします。 | はい、ご認識のとおり回転させられなくていいと思っています。
問題は、赤枠にするということです。
この赤はエラー的な印象を与えたくて決めた色（赤信号的な意味）なので、赤くするというのは意図と違うという感じです。
私としては、単純に考えて、ロックアンロック混在時の選択は、回転ハンドルを表示しないというのがわかりやすくて良いと考えます。

また、これに関連して、ロックアンロック混在時の移動・拡縮は現在の仕様だと不可能です。
その点も考慮すると、四隅縦横の白丸ハンドラーも表示させないほうがよいと思います。

移動はできるようにしたいです。拡縮はできなくていいです。

授業で使う際には、動画のようなシチュエーションが実際にありました。
つまり、将棋とかチェスで想像していただきたいのですが、まず盤面があり、その上をコマが動くという状況です。
これと似た原理が必要で、まず絶対に動くことがない盤面に相当するオブジェクト（動画でいう"緑の畳"）があり、その上を、赤丸やブロック、図形などを動かして使います。
要は、「畳は動いてほしくないけど、人間の顔オブジェクトは動かしたい」という状況です。
畳がロック状態で顔オブジェクトはアンロックというとき、畳と顔の全てのオブジェクトをフォーカスして、顔オブジェクトだけが動くというのが操作性としてよいと言えます。
38.0 | DONE | ロック、アンロックオブジェクト選択時に移動させるときについて | ロックアンロック混在時に全選択して移動させると、
アンロックオブジェクトのみ移動されるという認識です。

また、移動させた際にロックオブジェクトからフォーカスは外れる（ロック状態を示すアイコンも表示されない）認識でよろしいでしょうか？ | ロックアンロック混在時に全選択して移動させると、アンロックオブジェクトのみ移動されるという認識です。
はい、合っています。Canvaもそのようになっていました。

移動させた際にロックオブジェクトからフォーカスは外れる（ロック状態を示すアイコンも表示されない）認識でよろしいでしょうか？
はい、そのような仕様でいいです。
39.0 | DONE | モニタリング授業について | 先生が生徒のロックされているオブジェクトを選択した際、
・ロックされているので境界線は赤くなる
・表示されるメニューの「アンロック」機能は使用できないので透明度が下がった表示になる

の認識でよろしいでしょうか？

→要するに、念の為モニタリング授業時も境界線の色が変更したり、メニューの表示が変わったりするかを確認しています。 | 先生が生徒のロックされているオブジェクトを選択した際、
・ロックされているので境界線は赤くなる
・表示されるメニューの「アンロック」機能は使用できないので透明度が下がった表示になる
はい、それでいいと思います。

要するに、念の為モニタリング授業時も境界線の色が変更したり、メニューの表示が変わったりするかを確認しています。
モニタリング授業時のためだけに、メニューの表示方法が変わらないでいいです。板書画面での仕様を踏襲する方法をとるのがよいと考えます。
40.0 | DONE | モニタリング授業について | 先生がロック、アンロックが混在されているオブジェクトを全選択した際、

・境界線は青色になる
・最新の仕様のように、メニューが表示される（削除、複製、三点リーダー、ロック、アンロック）
が、先生はロックできないので、ロックは透明度が落ちた表示になる。

の認識でよろしいでしょうか？

→要するに、念の為モニタリング授業時も境界線の色が変更したり、メニューの表示が変わったりするかを確認しています。 | はい、その認識で良いと思います。
（＝No39と同じ回答になります）
41.0 | DONE | 境界の四隅縦横の丸ハンドルについて | 四隅縦横ハンドルは現状のように線上ではなく、角（先端）に表示することは可能です。
（これにより、以前おっしゃっていた動画再生、フルスクリーンのボタンがクリックしやすくなると思っています。） | ありがとうございます。
それでは、角（先端）にハンドルを付けていただきたいです。

縦横のハンドルの位置ですが、線から飛び出している感じでしょうか？

-----
赤井返事します。
はい、その図の認識で問題ございません。
42.0 | DONE | ズーム時のアンロックアイコンとメニュー、サブメニューの表示について | 仕様書には以下のように記載していました。
""ズーム時にもアンロックアイコンとメニュー、サブメニューは１〜５のルールが適用される。
（ただ、技術的難易度によっては、200〜300％程度ズームまでアンロックアイコンとメニュー、サブメニューは表示し、それ以上ズームすると非表示にする、などの方法もある）""

_x0010_これにつきまして、
「ズーム時にもアンロックアイコンとメニュー、サブメニューは１〜５のルールが適用される。」
の対応が可能なため、こちらで対応させていただきたいと思っております。
（ズーム時もアンロック、メニュー、サブメニューはオブジェクトが完全に画面外に消えるまで表示されます） | ありがとうございます。
「ズームしてもメニューが消えない」というルールを適用していただければと思います。

ちなみに、反対のズームアウト（バック）したときにも、メニューは消えないということで良いでしょうか？


-----
赤井返事します。
はい、ズームアウト時もメニューは消えることはございません。
43.0 | DONE | PCで右クリックした時のポップアップ表示 | 現在、スライド21 にて
PCで右クリックした時かつオブジェクトにフォーカスがない場合に図のa,bを技術検討して対応するということでした。
弊社側で技術検討した結果、aのほうが容易かつ、
オブジェクトにフォーカスがある場合とサブメニューの8枠は変わらないためaにさせていただければと思います。 | 承知しました。aの案でいいと思います。
44.0 | DONE | ハンドラーやメニューのサイズについて | 以前いただいたQA41の要素のサイズ について少し提案があります。

現状の実装のデモです。（未完成です。ハンドルの色も黒です。）

前提：現状のデジタルボードの画面はまだ上下のメニューと左のスライドのスペースが表示されているため、
仕様に記載のフルスクリーンのものよりはデジタルボードは小さい状態です。

①QA41のサイズと見た目が同じになるように画面の大きさに対してpxを測って実装する形でよろしいでしょうか？
その場合、画面によって157pxよりかなり大きく設定しないとQA41のようなサイズのメニューにはならない認識です。


②以後の改修でフルスクリーンのデジタルボードになるため、現状は少しデジタルボードが小さく表示されています。

③丸ハンドラーと回転ハンドラーまでの距離
オブジェクトから回転アイコンまでの距離が3px(仮)ということですが、
実際触ってみるとお互い近すぎて回転アイコンを触りたいのに丸ハンドラーに触れてしまうことがあります。
こちらの距離は動画のようにより広げることは可能でしょうか？(62px)

④メニューとオブジェクトの距離
回転時に、メニューとオブジェクトの間に回転ハンドラーを表示できるスペースがあるように、メニューとオブジェクトの距離は大きくしています。(120px)

⑤ハンドルが6pxの場合小さすぎて少し触りにくいと感じました。（弊社の主観です）
これにつきまして、一旦確認の上以下のどちらかでできたらと考えております。
・ハンドルを大きくする
・ハンドルは大きくせず、触れられる範囲を大きくする（技術検討次第） | ①への回答
こちらで計測したピクセルと開発側とでは多分何かが違っているのだと思います。ピクセルは解像度とも関連があるので、その辺の情報が分かれば開発との齟齬をなくす事ができると思います。なので、その点は、後で教えていただければと思います。
確定していることは、私がIllustratorでつくった画面（QA41）を実際にiPadの写真アプリに入れて見たときのサイズ感が理想だということです。たとえば、iPadに定規を当てて測ってみると「メニュー」アイコンだと横50mmみたいな算出は可能です。が…、賢いやり方ではないと思います。なんとかピクセルで伝えられたらと思います。

②への回答
はい、改修前なので仕方ないと思います。

③への回答
これもそもそもピクセルの算出方法に誤りがあることの弊害かもしれません。
３pxがまちがっている可能性もあります。
赤井さん操作感としての問題はよくわかります。このままいくと確実に失敗すると思うので、白と回転ハンドラーの距離は直さないと行けないと思います。この離れ具合がどの程度がよいのか弊社でシミュレーションできればいいと思います（①のピクセル問題が解決すれば）。

④への回答
これもこの距離感がいいのか検討をしたいです。
QA44に添付した画像にiMacとiPadが一緒に写した画像があります。iMacの画面に表示されているアートボード（板書画面）の大きさは、iPadの画面サイズと同一になるように設定してサイズ感を見ていることがわかっていただけると思います。その状態で120pxの距離で再現すると緑色の「工」の字のサイズとなり、ピクセルの定義でなにかが全然違っているようなので、これから開発画面と同様に再現できるよう調べてみます。

⑤への回答
見栄えの問題があります。なので、ハンドラーの大きさは変えないで、触れる範囲を大きくできるといいです。

あと、現状の実装画面を共有していただけたことは、はじめてだったので、この事自体がとても大きいです。私の記憶では、これまではステージング環境までは不可触でした。なので、どうしても中身が見えないまま進み、ようやっと見せてもらったときに重大な見落としを見つけることがありました。機能的に不完全であることは大前提と理解した上で、操作感を今の段階で弊社に触らせていただけると見落とし等があった場合にも対応が早くできるのでいいと思っています。
45.0 | DONE | ロック・アンロックオブジェクト混同時の移動について | 現状の動画はこちらになります。
説明としては、
ロックとアンロックオブジェクト選択時に移動させようとすると、
移動可能なアンロックオブジェクトの位置が左上になってしまう現象が発生しています。

---
これにつきまして、Scuti側で2種類の進め方がございます。

①上記が発生しないように引き続き技術的な調査を行う
②ロックとアンロックオブジェクトを選択時は、アンロックオブジェクトのみにフォーカスを当てる。
そうすることで、移動時もフォーカスが当たっているアンロックオブジェクトのみが移動する。
デメリットとして、ロックとアンロックオブジェクトが混ざっている際（ロック3つ、アンロック2つとします）に全て選択してもアンロック2つに対してしか操作できません。ロック3つについては、ロックされているオブジェクトのみを選択することでフォーカスがあたりアンロックが可能となります。 | ①の技術的な検証をお願いしたいところですが、工期にどの程度の影響があるのかということで判断を変えたいと思います。

弊社としては、②の案でも悪くはないと思っています。
②の場合の対処として、
1.アンロックオブジェクトをロックオブジェクトから引き離して移動させる。
2.つぎに、ロックオブジェクトのみをまとめて選択してアンロックする。
これでも大きな問題はないと考えています。

まずは、技術的な調査にかかる時間が知りたいです。
その時間の長さとによっては、②へ変更ということにしたいと思います。

→赤井追記
5人日がかかりますが、工数相談の結果、②の案で進めることに決定。
46.0 | DONE | iPadの長押しで表示させる貼り付けポップアップについて | オブジェクトがフォーカスされていない状態で、画面を長押しすると貼り付けポップアップが表示される認識でよろしいでしょうか？

確認の背景として、オブジェクトにフォーカスをあてて長押しすると複数オブジェクトを選択できるモードに入る機能が以前からあるので、
オブジェクトにフォーカスをあてた状態で長押しすると貼り付けポップアップと複数オブジェクト選択モードの両方になるので、両方が重なって良くないかと思いました。 | はい、その認識でいいです。
47.0 | DONE | サブメニューがある時の回転アイコンについて | 現在の動画：https://drive.google.com/file/d/1AF7DmIg0sZifdpI0Z4oAfJYsCmrs0-Ex/view?usp=drive_link

基本設計書に、サブメニューがあるときは回転アイコンを表示しない、という記載をしましたが、
あくまでも回転アイコンとサブメニューが重なる時のみで、
サブメニューと回転アイコンが重ならないときは動画のような表示方法で問題ない認識でよろしいでしょうか？ | はい、回転アイコンがサブメニューの下敷きにならない場合は、動画の7秒あたりの表示方法でいいです。
48.0 | DONE | サブメニューの表示について | PCで右クリックした場合のサブメニューに表示される機能について認識合わせさせてください。
仕様：
https://docs.google.com/presentation/d/1qVbHh8f97IZH62g3-ohR_ts3_gPa_r_V/edit#slide=id.g2ae68f301fa_2_1


①、②は仕様書に記載があります。③の確認をさせてください。
①オブジェクトにフォーカスがある場合、8つの機能全て使用できます
②オブジェクトにフォーカスがない場合、ペーストのみ使用できます
③オブジェクトにフォーカスがあるが、オブジェクトがロックされている場合、アンロックとペーストのみ表示される。
理由：ロックアイテムなので、アンロックは可能です。また、ペーストは①②で使用できるのでペーストも使用できます。


現在のサブメニューの表示：QA48 | ③の内容を確認いたしました。③の認識（アンロックとはペーストが可能で他は封印）でいいと思います。

あと、別件ですが、「すべてかいじょ」というのは表現は直そうと思います。
訂正後は「かいじょする」にしたいです（「ロックする」と対になるような表現）

理由
複数のロックオブジェクトを選択してアンロックするときは、「すべてかいじょ」で通じます。
1つのオブジェクトに対しては、「すべてかいじょ」だと「何を？他のも全部？」という感じになると思います。
49.0 | DONE | 回転アイコンの表示について | 回転アイコンですが、現状QA49　の修正前の画像のように一部の端末で少しぼやけて表示されています。
原因としては、iPadのやLenovo端末のピクセル表示の限界が原因となっている可能性があるということでした。
詳細として画面サイズが小さい際に、アイコンも小さくなるのでアイコンが詳細まで表示できずぼやけてしまいます。反対に画面サイズが大きくなったり、詳細のピクセルまで表示できる画面の場合はアイコンの詳細まで表示できております。

そこで提案として、回転ハンドルを以下画像のように少し大きくしてみるのはいかがでしょうか？
これにより回転ハンドルがより鮮明に見えると思っております。

修正前と後の4枚の画像：QA49 | 回転ハンドルを大きくするということで画像確認しました。
たしかに大きくなると見やすく、ぼやけもなくなり良いと思います。
あとは、操作するときに回転ハンドルの左下の白丸ハンドラーとの誤認が起こらなければ良いと思います。
可能であれば、実機で確認したいです。
50.0 | DONE | 画面レイアウト変更 | 画面レイアウト変更後は付箋のボタンが画面下部ではなく画面右側に移動します。
以前までは付箋をクリックすると、上に付箋の色一覧が出てきていた(QA50)のですが、新仕様では上ではなく左側に伸びるように出しますでしょうか？ | 認識合わせ済み
51.0 | DONE | 画面レイアウト変更 | 1.ボタンの活性・非活性
2.細かいボタン表示について
3.＞押下時に、スライドを表示時のアニメーションについて
4.生徒の黒板機能について
5.メモの表示
6.授業開始のボタンがなくなることについて

MTGで確認 | 認識合わせ済み
52.0 | DONE | 画面レイアウト変更 | 生徒のデジタルボードを開いた際に、右下に
「先生の書き込みを表示」というボタンがあります。
（QA52）
新仕様書にはこちらのボタンがなかったのですが、
継続して表示させる認識でよろしいでしょうか？ | すみません、漏れていました。はい、継続して表示させてください。QA52に画像を追加しました。
53.0 | DONE | テキストオブジェクトを編集中のメニュー表示について | テキストオブジェクトを編集中の表示が現在WebとiPadで異なっております。
（QA53）
Web: テキスト編集中はハンドル、回転、メニューが表示されない
iPad: テキスト編集中は画面下部にエディターが表示され、ハンドル、回転、メニューが表示される。

質問として、
iPad版もWebのようにテキスト編集中はハンドル、回転、メニューが表示されないようにした方がよろしいでしょうか？
理由として、
Web版との統一、テキスト編集中はテキスト編集にのみ注力する（メニューなどを表示させない）などが挙げられます。

ただ、細かいところですので、もし改修が不要であればお伝えください。 | iPadとWEBで統一させる必要はない（表示が異なっていて良い）と思います。つまり、現在の仕様のままで良いと思います。
54.0 | DONE | 画面レイアウト変更 | 画面レイアウト変更後はデジタルボードのサイズが大きくなります。
また、画面比率は現在16:9となっています。

デジタルボードが大きくなると以下の２つのケースのどちらかを選択する必要があります。

①画面比率は今のままで、画面サイズに合うようにボードサイズを拡大させる。（現在と同じ）
注意点：現在もそうだと思いますが、画面比率が固定なので端末によってデジタルボードではない余白が生じます。


②画面比率は、新しいボードの縦横比とし（例：18:10）、余白のないようにボードサイズを拡大させる。
注意点：見え方を統一するため、比率はiPad,Web共に同じにする必要があります。そのため、すべての端末において余白がないようにボードサイズを拡大させることはできません。iPadのみ余白がないように対応し、それ以外は余白が出る、というのがこの対応です。 | ①の案でいいと思います。
＞画面比率が固定なので端末によってデジタルボードではない余白が生じます。
iPad、Chromebook、ASUSにおいて余白が出てしまうと困りますが、例えばiPhoneなどの対象端末でないもので余白がでるなどは仕方がないと思います。
金曜日に少し詳しく説明していただいてもいいですか？
55.0 | DONE | 画面レイアウト変更 | 先生のアカウントでログイン後、教科選択とデジタルボード画面（新仕様ではなくなる予定での画面）では「板書共有フォルダ」ボタンがあります。
もし画面がなくなるとこのフォルダにアクセスする導線がなくなるのですが、デジタルボード上に導線を入れる予定はございますでしょうか？ | 一旦、三点リーダーの中に収納するようにします。
QA55

>>赤井コメント：
ありがとうございます。こちらのアイコンもいただいてもいいでしょうか？
56.0 | DONE | 画面レイアウト変更 | 先生の板書、モニタリングが公開されてない場合、
生徒のデジタルボード内にある、10,11機能はグレーアウトされますでしょうか？ | 完封ではない。
57.0 | DONE | 画面レイアウト変更 | 「前の画面に戻る」の文言変更はございますでしょうか？ | 「時間割にもどる」に変更
58.0 | DONE | 画面レイアウト変更 | 三点リーダの中にある機能ですが、
付箋機能以外は機能を押下すると、三点リーダのサイドバーは閉じる認識です。 | ふせん以外はOK.
三点リーダ内のポインターを押下して閉じる。
ポインターを使用している時は濃くして表示する。
色は後ほど。
59.0 | DONE | 画面レイアウト変更 | グループ学習を終了させた際に、生徒側でそのグループに入っている生徒向けに
グループ学習が終了したというアラート画面を表示したほうがいいと思っております。 | グループ学習中の生徒さんの画面でアラートを出す。その後元々の生徒さんの板書に戻らせる。
60.0 | DONE | 画面レイアウト変更 | 1. モニタリング画面で「一覧に戻る」、＜＞ボタンなどについて。
2.ペン、テキストを使用した際に表示されるエディターについて

メニューとこちらのどちらを上に表示させるか？

スライド表示の場合、重ならないよう表示していたが、
こちらも同様でしょうか？ | 全て避けるように表示する
61.0 | DONE | ズームイン | ボード上でズームインした際に、
メニューとオブジェクトまでの距離があるように見えても、
「ズームしている」ためメニューが上に表示されないことはあります。
Slackでお送りした動画を確認したり、実動画を確認いただきたいのですが、
ズームインした際のメニューの位置は現在の表示で何か違和感などございますでしょうか？ | ＞「ズームしている」ためメニューが上に表示されないことはあります。
＞ズームインした際のメニューの位置は現在の表示で何か違和感などございますでしょうか？
動画を確認しました。下部にメニューが移動しているので、違和感はないです。
63.0 | DONE | 画面レイアウト変更 | 図形を削除するなら、今まで本番環境にある図形はどうする？
全て削除するor そのままにする？
既存のままであれば、バグが発生する？
ユーザがコピとかできるので、消した方がいい可能性がある。 | 確認不要
62.0 | DONE | 画面レイアウト変更 | 先生の板書に遷移した際、「自分の板書」ボタンはグレーアウトするか？
マトリックスを書く
どのアイコンが非表示、非活性、活性か | 赤井が更新する
65.0 | DONE | 画面レイアウト変更 | 赤井：基本設計書のグループ学習初回の画面を修正する | 赤井が更新する
66.0 | DONE | 画面レイアウト変更 | はいふボタンはどこに表示するか？ | 赤井確認後報告
赤井が更新する
67.0 | DONE | 画面レイアウト変更 | グループ学習モードの「キャンセル」ボタンを押下後はどこに遷移するのか？
「開始」をクリックして初めて既存のグループは終了して新しいグループは作られるのか？
グループ学習を終了させない理由は？
----
以下確認
・グループ学習の終了は「新規グループ」を押下して初めて使えるようになる背景は？
・「開始」をクリックして初めてグループが作られる
・そのため、「終了しますか？」ポップアップをクリックしてもグループ学習は終了しない
・もしそうであれば、終了→はい→キャンセルをすると何もグループがない状態になる | 新規グループ押下→開始→キャンセルを押下すると、活動しているグループはない状態になる。
64.0 | DONE | 画面レイアウト変更 | ポインターは生徒さんも見えるようにする？
現在は、生徒は特に見えない。

パフォーマンスに関わる箇所で、結構ラグが発生してしまう可能性がある。 | ポインターの軌跡は表示不要。
ポインター機能は今と同様つける。
69.0 | Pending | 画面レイアウト変更 | 起点はどこか、ズームは最大、最小がどのくらいか確認する
今は400%. | アートボード全体表示から〜５００％まで

20%up, 400 * 1.2 = 480 ---> 500%

ーーー
赤井確認タスク：
デフォルトでipad, webともに９つのオブジェクトを表示することはできるか？
70.0 | DONE | 検索と登録 | タグ付けを行う画面で、第一層、二層、三層, 四層を選択するときに
🔻と＋を押下すると、選択プルダウンが出てきますが、
🔻と＋だけではなく、プルダウンの四角の全てのエリアを押下するとプルダウンが表示できるのがいいと思います。

理由として、他のアプリでもそのようにしているのが多いのと、クリックできる範囲が増えるのでいいかと思いました。

画面
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.p53 | ＞プルダウンの四角の全てのエリアを押下するとプルダウンが表示できるのがいいと思います。
それで良いと思います。私もとくに理由があって▼を押下させようと考えていないので大丈夫です。
71.0 | DONE | 検索と登録 | デジタル教具にタグをつける画面で、アップロードした素材はゴミ箱ボタンをクリックして削除できます。
仮に32個アップロードしそのあと32個全てゴミ箱ボタンを押下後は素材は全て消えて「戻る」しかできなくなります。
何もできないので、自動的にデジタル教具をアップロードする画面に戻ってみては、という声はあるのですが、
少し不自然かつ「戻る」ボタンがあるので自動的にデジタル教具をアップロードする画面に戻らなくて良いかと思っております。
なので、提案としては、「戻る」ボタンがあるので自動的にデジタル教具をアップロードする画面に戻らない。となります・

画面
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.p16 | ＞32個全てゴミ箱ボタンを押下後は素材は全て消す→画面上には素材は0個であるとういう状態において、自動的にアップロード画面にもどるか否か

端的に言うと、どちらでも良いという回答になります。
では、どっちかといえば「自動的にもどるというような細工はしなくてもよい」となります。
理由は、画面上の素材を0にした時点で、それはもうやり直したいというような状況だと思います。
であれば、自分の意思でもどるを押して最初からやり直すのが自然と考えます。
72.0 | DONE | 検索と登録 | 現在、管理側で「編集完了」ボタンがあり、このボタンは
・教具名やタグの編集orサイズ変更後に押下する
・第一層〜第四層を選択後に押下する
などがあります。

質問として、データの保存は「編集完了」か「作成する」のどちらのボタンを押下してからか相談させていただきたいです。
弊社の意見としては「編集完了」を押下してからでもいいかと思っています。
理由として、教具名やタグの編集、サイズの変更、第一層〜第四層の変更は選択するのに少し時間がかかるかつ、
一番最後の「作成する」を押下するまでに誤って端末が再起動になったり、ブラウザを閉じたりになる場合があるからです。

なので、「 編集完了」 ボタンを押下してから、保存しても良いかと考えているからです。


念のためご意見をいただければと思います。

画像
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.p62
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.p77 | ＞データの保存は「編集完了」か「作成する」のどちらのボタンを押下してからか相談させていただきたいです。
＞弊社の意見としては「編集完了」を押下してからでもいいかと思っています。

一応、確かめたいのですが、データの保存とは具体的には、どこになんの情報を保存するという意味でしょうか？

私は、「編集完了」の意味として、「一旦確定させる」という考えで設計しました。
タグ付けでいうと、操作は2段階になっています。
1段階：タグ情報の確定（＝編集完了）
2段階：オブジェクトをアップロードする（＝作成する）

オブジェクトに設定したタグ情報を確定させることをデータの保存ということであれば、提案の通りでいいと思います。


＞＞＞赤井
データの保存はデータベースに編集内容（タグ付けやサイズのデータなど）を保存させることを指しております。
以下のように実装することを考えております。

①新規登録の場合
「編集完了」と「作成する」ボタンがあります。
「作成する」ボタンを押下して初めてデータ（教具とタグ付けのデータ）がアップロードされる。

②既存の教具を編集する場合
「編集完了」と「作成する」ボタンがあり、
「編集完了」ボタン押下時にタグ付けやサイズのデータを更新する。（これが終了後、ブラウザを閉じても変更は反映されている）
「作成する」ボタンを押下してデータの更新の漏れがないか確認して、更新を完了する。（実際は編集完了時にデータは保存されているので、ここでは再度保存して確認すると思います）

内容理解しました。
赤井さんの案でいいと思いますが、ご説明を受けて感じたことを書きますと、
「作成する」と「編集完了」の働きが同じなので、
・新規の場合は、「作成する」
・既存の場合は、「編集完了」
と対応させたほうがシンプルなように思いますが、いかがでしょうか？

→青のやり方で決定
73.0 | DONE | 検索と登録 | 現在アップロードされているデジタル教具は検索機能を実装時に全て削除しますでしょうか？
それとも、デジタル教具はそのままで、ついていたタグのみリセットする形にしますでしょうか？（技術確認します） | はい、すべて削除していいです。
74.0 | DONE | 検索と登録 | デジタル教具以外にも、動画側もタグ付けがされています。
ただ、動画のタグ付けは従来の形式（タイトル、学年、教科、単元）を使用しています。

動画側のタグは従来の形式のままにするか、
デジタル教具のように新しい方法でタグ付けをするのかどちらにしますでしょうか？

また、後者のデジタル教具のように新しい方法でタグ付けをする場合、
対応は可能だと考えておりますが、少し工数に影響が出る可能性がございます。 | 動画は従来の形式のままでいいです。
75.0 | Need send customer | ハンドラーと画面レイアウト | ハンドラーのメニュー、ペーストのポップアップ、サブメニューを表示させる際に、QA75 の赤枠の箇所に
ハンドラーのメニュー、ペーストのポップアップ、サブメニューが表示できない間隔を追加させていただきたいです。

理由としては、
テキストエディターやスライドのボタンとハンドラーのメニュー、ペーストのポップアップ、サブメニューが重ならないように表示する件で、距離を計算しやすくするためです。

ペンやテキストを挿入した際に画面上部にテキストエディターが表示されたり、画面左部に＞が表示されている場合、画面下部にグループの名前やボタンがある場合があると思います。

なので、もしこの間隔を追加させていただくと、画面上部/左にハンドラーのメニュー、ペーストのポップアップ、サブメニューを表示するスペースがあっても、赤枠に接していたら下部/右側に表示されます。
また、テキストエディターなどが表示されていない場合でもこの赤枠にメニューなどが接しているとメニューはその赤枠を避けるように表示されます。 | それで問題なし。

03/04　赤井：
テキストエディター、グループ学習のボタン、スライドの表示時のみスペースが制限されます。
それ以外は影響ございません。
76.0 | DONE | 検索と登録 | https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.p130
このスライドで、検索キーワードに「野菜」を使用すると、
検索結果の名前に「野菜」がある箇所は赤色になっています。

これはイラスト上で強調のために赤色のテキストになっていて、
実際は黒文字という認識でよろしいでしょうか？ | 赤文字になっているのは、説明用で強調しました。
実際は、黒文字です。
77.0 | DONE | 検索と登録 | https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.g2c8a8b227f2_1_80

管理画面で教具を編集する画面（名前の編集はできない画面）で最大100文字を表示できるよう、
上記のようなUIを考えました。ご確認お願いします。 | ご提案ありがとうとうございます。これでいいと思います。
1点、吹き出しに「教具名をホバーもしくはタップすると、最大200文字の教具名が表示される
」とありますが、これは最大100文字の誤りでしょうか？それともシステムの仕様で200文字になってしまうのでしょうか？

どちらにしても、ご提案の方法でいいと思います。

>>赤井
失礼しました。100文字の誤りですね。
最大100文字が表示されます。
78.0 | Need apply to spec | 検索と登録 | 既存仕様：教具名を最大１０文字にし、11文字以上があった場合、後ろに三点が付くこと
新規仕様：教具名を最大20文字にし、21文字以上があった場合、21文字目以降を非表示にする
課題：
アップロードした直後の画面と先生が教具を検索する画面上の教具名の表示は新規仕様のように実装できていない。
教具のサイズが小さいからです。
一覧画面には教具を大きく表示されるから、20文字まで表示できる。
詳細はQA78シートをご参考ください。
提案：アップロードした直後画面と検索画面には既存仕様のまま | アップロードした直後の画面では文字が最大10文字でいいと思います（QA78の提案の通りでOK）。

しかし、先生が教具を検索する画面では、もう少し表示数を増やせないでしょうか？
もちろん教具のサイズが小さいのというのはあると思います。
20文字が難しいというのであれば、15文字など（QA78に画像追記しましたので読んでください）。
Thuy 4/9:開発者に確認中 | High
79.0 | DONE | 検索と登録 | 削除際に表示するポップアップと「はい」を押下した後に表示する通知文について
BD上の記載：QA79シートの②
実装：QA79シートの①
Scutiの提案：実装した①は当システムにある他のポップアップのデザインと今まで削除する際の仕様と合わせて実装しました。
統一させるためにそのデザインにした方が良いです。 | 提案のとおりでいいです。デザインを統一していいです。
Thuy 4/9:お客さんから補足：オータケ側のデザインはQA79シートの①に変更してもよいが、ユーザ側のポップアップがあれば、QA79シートの②もデザインにしてほしい。

→管理上のポップアップは②にする。
80.0 | DONE | 検索と登録 | Zipファイルにする件について | iPAdでZip解凍できる？
→可能
81.0 | DONE | 画面レイアウト変更 | 全画面表示について | ・Chromebook全画面表示したら、余白があまりなかった。
→今後画面サイズを広げる対応は不要？
82.0 | DONE | 配布 | 念の為確認ですが、「先生が生徒全員に配布」の全員の範囲は以下の認識でよろしいでしょうか？

例）田中先生がいて、算数と国語の授業を担当している。
算数は4/5で生徒数は15人
国語は 4/8に担当で生徒数は50人

操作：田中先生が時間割表から算数の授業を選択して、「配布」機能を使用すると

配下にいる15人の生徒全員にスライドが配布される。
（田中先生が時間割表から国語の授業を選択して配布した場合は配下の50人
の生徒にスライドが配布される） | はい、教科によって送り先を限定していいです。
83.0 | DONE | 配布 | ネット切断や、アプリを途中で閉じた（ホームボタンを２回押してバックグラウンドからアプリを停止させる）際の生徒と先生の動作について確認させてください。（いずれもレアケースだと思います）

・先生：スライド送信中にネット切断もしくはアプリを閉じる
→送信を停止する。生徒にスライドは送信しない。

・生徒：スライド受信中にネット切断もしくはアプリを閉じる
→受信できたスライドまで受信する（検索機能のセットのスライド挿入時と同じ動きです） | はい、その対応でいいと思います。
84.0 | DONE | 検索 | セットや素材挿入中にネットが途切れた際に表示するエラーですが、
セットや素材選択画面ではなく、デジタルボード画面で表示させていただきたいです。
理由として、処理の順番として以下となっているからです。
①使うボタンを押下
②デジタル教具のスライドが閉じる
③選択したセットや素材を読み込む
④エラーが表示される

以下表示例です。
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.g2cb8cc7e059_0_0 | はい、その対応で問題ないです。デジタルボード画面でエラーを出していいです。
85.0 | DONE | 検索 | 複数の素材を挿入し、その中で複数挿入失敗した際のポップアップのテキストについて、以下リンクの下線部分に提案させていただきました。
ご確認の程お願いします。
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.g2cb8cc7e059_0_0 | 確認しました。

＞複数の素材を挿入できなかった際は
＞二行目のテキストは「野菜」「キャベツ」「ジャガイモ」をつかうことができません
＞のように挿入できなかったすべての素材の名前を表示する (佐々木さんと確認中)

1つ気がついたことがあります。
名称が実際は長いということです。
つまり、「野菜」という単純な名前ではなく、「野菜＿夏野菜＿tomato」などの名称になることが予想されます。
この長い名称を複数（最大9個）表示させるというのは、ごちゃごちゃするので、かえってよくないと思いました。
そこで、代案として「選んだそざいをつかうことができません」くらいシンプルでいいとおもいます。
86.0 | DONE | 検索 | 管理側でアップロードした素材一覧を表示する画面（32個）で素材の白枠に表示する素材の大きさについて認識合わせさせてください。
以下のスライドの「佐々木さん確認」箇所をお手数ですがご確認の程お願いします。
https://docs.google.com/presentation/d/1k47qXaHp1oDd0JeeslMXcwSR2p8qEjRt/edit#slide=id.g2cb8cc7e059_0_27 | 案の通りで良いです。
87.0 | DONE | 画面レイアウト | 既存の仕様：
生徒側でログインし、自分のグループ学習ノートを見ている際に、
自分がいる場合は（自分）という文字が名前の横に表示されています。
画像

新規の仕様：
右上にドロップダウンの形で生徒の名前が表示されます。
また、新規仕様では名前は最大15文字表示され、それ以上は表示しない、という仕様があります。

相談事項：
新規の仕様でも自分の名前の横に(自分)と付けても良いと思います。
また、その場合名前の最大文字数は11文字((自分)が4文字)とな理ます。
12文字以上の名前になるケースがあまりないのでは？とおもったのでこれでもいいと考えましたが、念の為確認させてください。 | 相談の案、「（自分）と出る」ので良いと思います。今日操作をしていて自分表記を頼りにしていました。

15文字設定の背景としては、ネパールとかベトナムの方の名前を漢字にする結構長くなります（大体は10文字付近）。日本の学校でも外国の子が最近増えていることから最大公約数的に考えて、長い名前に対応させていました。
ただ、おっしゃるように「自分」が入っていることのほうが大事だと思います。

例）
トラン・クオック・クアン（Trần Quốc Khuân）　カタカナ12文字

トラン・クオック・ク…（自分）　←こうなるという理解でいいですか？
名前（10文字）+…（1文字）+（自分）（4文字）＝（15文字）
88.0 | DONE | 管理側の1->2 , 2-> 1について | OK
89.0 | DONE | 画像・動画のポップアップ | OK
90.0 | アンダーバー表示 | 関連機能:

テキストボックスにあるテキストを縦書きでアンダーバーを使用する場合
現在:
アンダーバーに関する表示の仕様がありません。

現在の不具合：
文字はアンダーバーと重なっている
アンダーバーのサイズが統一ではない

質問：

1. 以下のように修正してデモを作成しました。アンダーバーと文字の間隔が適切であるかご検討とご意見をいただければと思います。

Demo image | 2024.9.24　藤原
Demo imageを確認しました。
文字とアンダーバーの間隔は、imageで示した間隔で適切です。
私から一つ質問したいです。
（質問）デモイメージを確認しましたが、アンダーバーを動かすことはできないのですか？

-------------
Thuy：
アンダーバーの動かすとは弊社が文字との間隔を近くまたは長くできるか聞きたかったか？
藤原
そのとおりです。
Thuy：
はい、Scutiは実装でその間隔を調整できます。
藤原
アンダーバーを動かすのと、文字を緑の線の中心に動かすのはどちらが簡単ですか？
時間がかからないほうで教えてください。
Thuy：
アンダーバーを動かすのは簡単です。
但し、アンダーバーを動かす方法だと、今回のアンダーバーの不具合の一部のみ解決できて、徹底的にすべてのNGが解消ではありません。

24.9.25藤原
承知しました。
優先度の関係で、この件は保留にしてください。
今後のスケジュールの中で再開していく予定です。
91.0 | Need apply to spec | CR13 No.9 | 現在キーワードを分けるときに使用される , について
・現状：,だけで検索すると、キーワードが登録されているすべてのデジタル教具が表示されます。
・理由：キーワードは,区切りで記載されており、デジタル教具検索時に,がヒットするため。
・確認点：,を検索した時の挙動は以下のどちらを希望されていますでしょうか？
1. ,を検索しても、キーワードが登録されているデジタル教具はヒットしない
2. ,を検索すると、キーワードが登録されているすべてのデジタル教具はヒットする（現在）

どちらも登録されているキーワードや、キーワードを検索した時の挙動には影響はございません。
, を含む文字で検索した際の挙動が異なるのみとなります。

例：デジタル教具ABC ( キーワード：りんご, ごりら ) / デジタル教具DEF ( キーワード：くだもの, のりもの )
1. で , を検索した場合→  何もヒットしない
2. で , を検索した場合→  デジタル教具ABCとデジタル教具DEFが表示される | 2025.1.7
1の案でお願いいたします。
92.0 | Need apply to spec | CR15 | ## 関連機能:
- ビデオオブジェクトのコントロールを表示、音量コントロールのデザインはまだありません。

### 説明:
仕様書に音量コントロールのデザインが記載されていないため、以下のようにデザインを追加しました。

- 画像シートリンク

### 動作概要:
- ユーザーがビデオオブジェクトをクリックすると、以下のようにコントロールバーが表示されます。: #Q&A-CR15-12.1
- ユーザーがスピーカーをクリックすると、音量変更バーが表示されます。: #Q&A-CR15-12.2
- ユーザーがスピーカーをドラッグして音量を調整すると、音量に応じてスピーカーのオン/オフが表示されます。: #Q&A-CR15-12.3
- ユーザーがスピーカーをクリックすると、音量変更バーが消えます。: #Q&A-CR15-12.4
- ユーザーがiPadを使用する場合。: #Q&A-CR15-12.5 | 2025.1.7
確認いたしました。
93.0 | Need apply to spec | CR15 | 画像や動画を複数一度に挿入するとき、
挿入後にデフォルトで画像や動画をフォーカスさせますでしょうか？

以前の仕様：
複数挿入するケースがなかったですが、
単体で挿入した時は動画も画像もフォーカスされていました。

提案：
複数で挿入した際も、すべての動画と画像にフォーカスさせる。 | 2025.1.8
ご提案の仕様でお願いいたします。
94.0 | DONE | CR17 | ウォーターマークの文字「Sample」ではなく、会社名「Otake」などに変更することを提案

ウォーターマークについてですが、現在の文字は「Sample」のみとなっており、これではデジタル教具の素材の著作権が特定の企業や団体に属することが明確になりません。
「Sample」の文字を、例えば会社名や団体名「Otake」などに変更することを提案したいと思いますが、いかがでしょうか？
（あくまでもデザインは最終版では
ないというのは承知ですので、後で対応予定でしたら飛ばしていただいて問題ございません） | ご提案ありがとうございます。では、SAMPLEという文字がクロスしているデザインをやめます。
ただ単に「© Ohtake Co.,Ltd.」にします。 | 2025-03-19 00:00:00
95.0 | DONE | CR17 | 03/19 追記
下記の下線部分の内容についてですが、昨日の簡単なやり取りの中で、チームに確認するとお伝えしました。
確認した結果、この質問は撤回させていただきます。

また、ご要望について念のために再度確認させていただきます。
ウオーターマークについて、
https://drive.google.com/file/d/1jyRQqw4KtbpRyOnxY2mJPQie6bvX4hn-/view?usp=sharing のサンプル画像のように、イラストの中央に、「© Ohtake Co.,Ltd.」と言う文字を入れて、ウォーターマークのサイズは、デジタル教具の画像の横幅・縦幅に応じて伸縮されるようにするという認識であっていますでしょうか。合っていれば、対応可能です。
ご回答よろしくお願いいたします。
ーーーーーーーー
03/19 Scuti 追記
以下のように認識しておりますが、あっているかどうかご確認をお願いいたします。
・元の画像は「Sample」の文字をそのまま残す。
・画像の中央にXアイコンを追加する。
・Xアイコンを縮小して、画像の一角に配置する。
・白背景を拡張し、「Ohtake Co」の文字を追加する。
・ウォーターマークは画像内に表示するのか（画像に固定的に付けるか）、それとも元の画像の上に別の画像として重ねるのか。（2つの異なる画像として扱うのか？）
ご確認をお願いいたします。
------------------------------------

ダウンロード後、ウオーターマークが画像のサイズに合わせて表示されるか？

ユーザーがダウンロードする画像にもウォーターマークを含めて保護するためには、ウォーターマークを画像に直接付ける必要があります。その場合、ウォーターマークのサイズや位置は、元の画像のサイズに応じて調整されることになります。
以下のリンクには、さまざまなサイズの参考画像が含まれており、横長・縦長の画像があり、また、ウォーターマークも各画像のサイズに応じて変化しています。
https://drive.google.com/drive/folders/1fsq8fCVj93acbC65fjRldmfBU9c8l9uY?usp=drive_link 
こちらのイメージのように対応しようと考えていますが、いかがでしょうか？
もし他にご希望があれば、詳細な仕様をお知らせください。

よろしくお願いいたします。 | 03/21回答
＞ウオーターマークについて、https://drive.google.com/file/d/1jyRQqw4KtbpRyOnxY2mJPQie6bvX4hn-/view?usp=sharing のサンプル画像のように、イラストの中央に、「© Ohtake Co.,Ltd.」と言う文字を入れて、ウォーターマークのサイズは、デジタル教具の画像の横幅・縦幅に応じて伸縮されるようにするという認識であっていますでしょうか。

はい、認識はあっています。ですので、この方法でウォーターマークを入れてください。

--------------------
ガーさんの理解は、全然、違います。
クロスのデザイン自体をやめて、「© Ohtake Co.,Ltd.」と言う文字だけにするということです。
ガーさんのサンプル画像のサイズ毎にデータをつくりました。
イラストの中央に、「© Ohtake Co.,Ltd.」と言う文字だけを入れるデザインにするということです。
＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

SAMPLEがクロスしているデザインを「© Ohtake Co.,Ltd.」と言う文字だけにしてSlackに添付した画像のようにできますか？ | 2025-03-19 00:00:00
96.0 | DONE | CR17 | 現在提供いただいているMicrosoftアカウントはMicrosoftのSSOログインを実装する上「キー」と呼ばれるものが必要です。
現在提供いただいたMicrosoftアカウントを確認したところ、「キー」の発行ができなくなっています。
「キー」の発行にはApplication Developer または Cloud Application Administratorの権限が必要となりますので、こちらを付与できるかご確認いただけないでしょうか？ | 内容については理解しました。
弊社からMicrosoftアカウントが付与されているということのようですが、こちらで用意して付与していることは、私も初めて知りました。
つまり、最初期に、大竹が用意してお渡ししたものだと思います。
その仮定で考えますと、おそらくですが、大竹もキーの発行等については、よくわかっていないと思われます。
記憶が古すぎて覚えていないか、その知識を有していなかったなどが考えられるからです。
キーの発行ができる方法についてやり方を教えていただければ、来週、大竹にその手法で依頼します。

＞赤井
Scuti側に提供いただいたアカウントは3つございます。
・edualphacloud03@outlook.jp（開発環境）
・edualphacloud02@outlook.jp（ステージング環境）
・edualphacloud01@outlook.jp（本番環境）
←承知しました。大竹に伝えます。

大竹に発行してもらいました。新しいやつになりました。（2025.4.7）
【新Microsoftアカウント】
ID：emile1@ohtake2504.onmicrosoft.com
Pass：UFFQaAJZWL7f

ID：emile2@ohtake2504.onmicrosoft.com
Pass：UFFQaAJZWL7f

ID：emile3@ohtake2504.onmicrosoft.com
Pass：UFFQaAJZWL7f
どれが開発とかステージングとかはきまっていないので、スクーティさんほうで決めて使ってくださいとのことです。


>赤井

ありがとうございます。
https://entra.microsoft.com/
こちらのサイトでログインの際に、2段階認証コードが要求されました。
毎度Scutiから貴社にコードを要求させていただくのは手間となるかと思いましたので、以下のいずれかを実施いただけますでしょうか？

①上記アカウントの2段階認証を切る
②Microsoft Authenticatorの2段階認証のコードを自分の端末に登録できるQRコードを送付いただく

どうぞよろしくお願いします。
97.0 | DONE | CR17 | Vitalifyさんのサーバ設計のタスクには「セキュリティポリシーに沿った設計」以外に「契約後のユーザを想定したパフォーマンスの設計」も含まれている認識でよろしいでしょうか？ | はい、契約後、実際に稼働したときを想定した設計をお願いいたします。

＞赤井
バイタリフィ側と内部で少し確認します。
98.0 | DONE | CR17 | ウォーターマークを追加するデジタル教具は学校試用版の場合、「学校試用版で表示するデジタル教具すべて」という認識でよろしいでしょうか？
その場合、学校試用版で表示すべきデジタル教具一覧をご教示ください。 | ＞「学校試用版で表示するデジタル教具すべて」という認識でよろしいでしょうか？
はい、そのとおりです。

＞学校試用版で表示すべきデジタル教具一覧をご教示ください。
承知ました。こちらはいつまでにというのはありますか？

＞赤井
一旦来週中でお願いします。もし難しければおっしゃってください。
99.0 | DONE | CR17 | ステージング環境と本番環境の「最低限」サーバの構築タスクがございます。
構築においてCCU（同時接続者数）が必要ですので、こちらをご教示ください。
（以前おっしゃっていたのが、5CCU程度、ということでしたがURLをどのくらいの人数に配られるかの確認を念のためにした方が良いかと思いましたので、再確認させてください。） | 結論は、数百単位で必要かもしれません。

以下、事情の詳細。
私の予想は、1自治体あたりで5人程度の同時接続を考えていました（担当者とその上席がチェックするという程度です）。
ただ、よく考えてみれば、1自治体で5人と考えて、大竹がどのくらい営業でURLを撒いてくるかを想定しないといけません。
また、市区町村規模で考えたときに、1自治体5人（例：越谷市教育委員会の担当者5名など）となりますが、都道府県単位での契約も想定しないといけないかもしれません。
これは営業戦略に関わる件で、今の段階では、私も正確に把握していないのですが、1都道府県の教育委員会の担当者が何人アクセスするかを考慮する必要がありそうです。
仮に、県の教育委員会への営業でURLを配布後、担当者による同時接続が20名だとします。つまり、「営業都道府県数×20名」という想定は必要になるかもしれません。
もっと正確で現実的に考えれば、東北（6）と関東（7）を営業で回ったとして、13県なので13*20で260という数字は算出できます。
ただ、300、400、500とかという大雑把な数字で想定していいのであればそのほうが弊社としては決めやすいです。

＞赤井
承知しました。一旦チームで良い方法を相談してみます。

>赤井
・Otakeさん側がどれくらいのCCU（同時接続数）に対応できるかまだ不明であり、正確に測定するには非常に時間がかかる（約1人月）ため、
⇒ Scuti側としては、この段階ではPre-SaleおよびSale用の2つのサーバーでCCUの保証を行う必要はないと考えています。その代わりに、Scuti側は以下のような方針を提案します：

・Scuti側でSaleおよびPre-Saleサーバーの構成を見積もり、Devサーバーよりも高性能ではあるが、比較的小規模な構成にします。
・Devサーバーとは異なり、SaleおよびPre-Saleの2つのサーバーは、ユーザー数が増加した場合に自動スケーリングが可能です。スケーリングのタイミングはAWSのオートスケーリングサービスに依存します。
⇒ まとめると：Saleサーバー ＝ Pre-Saleサーバー ＝ Devサーバー ＋ Devサーバーの構成強化 ＋ オートスケーリング対応となります。
100.0 | DONE | CR17 | 教科側の表示するデジタル教具一覧と紐づいているタグをご準備の程お願いします。 | どの科目をどう見せるかという点で、大竹との相談が必要になりそうなので、もう少し待っていただきたいです。7日の週にはお渡しします。

＞赤井
承知しました。よろしくお願いします。
101.0 | DONE | CR17 | iPadのSafariで複数画像のダウンロード機能についてテストしたところ、
Safariでは同時に複数の画像のダウンロードは可能ですが、すべての画像ファイルが正常にダウンロードされないことがよくあります。
実装しながらこの箇所の調査をいたしますが、先に報告させていただきます。

Chromebook上のChrome, Asus上のEdgeは同時に画像ファイルをダウンロードできることを確認しました。


>04/16報告

iPadの調査結果を報告します。

◯現状
iPad SafariでDL時の様子（最大10枚程度）
https://drive.google.com/file/d/13LkUJICuqZYx1PSQBA3q5dBWvyhP3Ik8/view?usp=drive_link


◯原因

iOS/iPadOS上のSafariでは、1つのドメインに対する同時接続数（concurrent connections）に制限があるためです。
簡単にいうと、Emileサーバーからは、最大でn件までしか同時にリクエストを出せない（最大でn件までしか同時に画像をDLできない）という制限があるためです。（nは約4~12です。）

前提として、複数画像DL時は画像枚数回ポップアップが表示されます。
そのポップアップを許可すると初めて画像がDLされる、というのがSafariの仕様です。
ポップアップが開いて閉じるまでの動作が画像枚数回続くわけですが、Safari側の制限で、これが4~12回程度(Scuti側が調査した結果や開発コミュニティでの検証)となっている可能性があります。

◯解決方法

①UIを変えない方法
・Zipは良くないとおっしゃっていた先での提案ですが、iPadについては、ダウンロード時はZIP形式にするのはいかがでしょうか？
　iPadでZip解凍方法を確認すると、Zipを押下するだけでZip内のファイルや画像が見れるので、特殊な操作は必要なさそうでした。
https://drive.google.com/file/d/11Cbh7hmGntbSHllL0cw3dnzZiCeKIilB/view?usp=drive_link

②UIを変える方法
・iPadでは一度に5~10枚程度までの画像ダウンロードに制限します。そのため、選択できる画像も一度に5~10個まで、そして選択できる画像欄も20個から10個に修正します。

上記がScuti内で調査した結果です。一度ご検討いただけますでしょうか。 | iPadでのエラーの件、承知ました。引き続き調査の方をお願いいたします。

4/17返答
①UIを変えない方法で考えたいと思います。
ZIP方式でいきます。
1つ質問ですが、ZIPの名前は決められましたか？
前に聞いたような気がしますが覚えていないので教えていただきたいです。
たとえば、ZIPのファイル名を「Emileのイラスト」などとできれば、ダウンロードしたときに児童にもわかりやすいと考えています。

> 赤井 4/17
承知しました。「Emileのイラスト.zip」というZipファイル名といたします。
102.0 | DONE | CR17 | Figma上で現在、ユーザ画面でいくつかの箇所が異なるフォントを使用しています。

例：
選択中のデジタル教具画面のタイトルは「Adobe Gothic」フォントを使用していますが、
そのほかの多くの箇所（さがす、選択中のイラストを見る、などのフォント）は「MPlus」フォントを使用している。
(QA#102)

提案：
フォントは「MPlus」だけ使用する。


理由：
複数のフォントを使用すればするほどシステムが重くなります。
フォントを統一すると動きが軽くなります。 | では、フォントは「MPlus」だけ使用してください。
103.0 | DONE | CR17 | ドメインについてです。


以前取得されたドメインは弊社が構築しているシステムに接続する必要があります。
具体的には、ドメインを取得された会社（例：名前ドットコムなど）にログインして弊社が構築しているシステム情報を入力します。
つきまして、以下ご提供いただけますでしょうか？
・ドメインを登録したサービス名（例：名前ドットコムなど）
・ドメイン管理画面のURL
・ログイン用アカウント名とパスワード
設定後はパスワードをご自由に変更いただいて問題ございません。

お手数ですがよろしくお願いします。 | 以下の通りです。

・ドメインを登録したサービス名（例：名前ドットコムなど）
お名前.com

・ドメイン管理画面のURL
https://www.onamae.com/navi/login/?btn_id=newnavi_logout

・ログイン用アカウント名とパスワード
お名前ID（会員ID）70162363
パスワード　XwEtdRUnFTt4
104.0 | DONE | CR17 | レスポンシブ対応について2点あります。
参考：QA104

①レスポンシブ表示にする際、ページ表示がすぐにDLボタンとぶつかって重なってしまいます。
これを起こりにくくするため、少し縮めた際はページ表示ボタンを5つ表示するのではなく、1つにする、という工夫をしてみました。
ご確認ください。

②iPad端末やそれよりウィンドウを小さくした場合、「🔍さがす」の文字の表示スペースがすぐになくなってしまい、デザインが崩れてしまいます。
つきまして、iPad端末やそれよりウィンドウサイズを小さくした場合は🔍マークのみを表示する仕様はいかがでしょうか？ | ①について
確認しました。これで良いと思います。

②について
はい、ご提案の通りでいいと思います。「さがす」の文字がなくても虫眼鏡アイコンで十分伝わると思います。
105.0 | DONE | 契約ステータスと契約日の条件をマトリックスにまとめました。（契約ステータスと契約日の条件シート）
赤文字部分が新規の部分で、他の箇所はこれまで質問でやり取りさせていただいた部分となります。

赤文字部分のご確認の程お願いします。

確認ののち、この内容も基本設計書に追記いたします。
106.0 | DONE | CR22 | 背景：
パンくずリストをなくすので、一覧画面においてタグを選択して検索した際と、検索していない際の表示（すべての画像が表示されている画面）の違いがわかりにくい。


提案：







上記の画像のように、もしカテゴリーもしくは教科において絞って検索している場合は検索後に上記のような枠をボタンの周りに表示する。
（この枠はボタン押下時と同じ枠です。） | ご提案の通りでお願いいたします。
107.0 | DONE | CR22 | 絵の種類もしくは教科のボタンを押下後、何もタグを選択せずに検索を行った場合、以下の表示でよろしいでしょうか？

＜現在のEmile＞：なにもタグを押下せずに検索すると、絵の種類もしくは教科のどちらかのパンくずリストが表示され、画像の一覧も絵の種類もしくは教科のどちらかが表示される。
　
＜提案＞：なにもタグを押下せずに検索すると、絵の種類もしくは教科のどちらかの検索結果が表示する。
また、QA106のように、検索結果表示後は上記の提案のようにボタンの枠色を変えて「検索結果を表示している」とユーザに伝わるかと思います。 | 106と同じ反応でいいと思います。
108.0 | DONE | CR22 | 背景：
デジタル教具の編集➞デジタル教具一覧に戻ると、
デジタル教具一覧で絞っていた検索条件を維持する。

確認事項：
デジタル教具の編集➞デジタル教具一覧に戻るとデジタル教具一覧絞っていた検索条件を維持しますが、
ページは維持しますでしょうか？

例：
①デジタル教具の一覧画面（検索なし）
②デジタル教具の一覧画面（カテゴリーで１，２層タグを選択して検索）➞選択したカテゴリーの１，２層タグリストが表示
③②の一覧画面で２ページ目に遷移
④２ページ目のデジタル教具から任意のデジタル教具を選択して編集画面に遷移してから再度デジタル教具の一覧画面に戻る
⑤＜確認＞④で選択していたページを維持するか、1ページ目に戻るか。（選択したカテゴリーの１，２層タグリストの画像は表示されます） | ページまでは維持しないでいいです。
109.0 | Answered | CR22 | 背景：
デジタル教具の編集➞デジタル教具一覧に戻ると、
デジタル教具一覧で絞っていた検索条件を維持する。

確認事項：
仕様通りに開発することは可能です。
ただ、開発側の提案として、以下があります。ユーザ側では意識することはないですが、念のため説明させていただきます。

以下の素材の編集画面はポップアップ表示とします。（ただ、表示の大きさなどは何も変更がございません）
➞ポップアップ表示にすることで、背景にあるデジタル教具一覧画面の検索状態を維持する対応が容易かつ工数が少なくすみます。
ようするに、ページ遷移ではなくポップアップ表示（遷移しない）にすることで、ページ遷移が不要となり、遷移の際に必要だったデータの保持をする必要がなくなるからです。


ユーザ側の見え方は特に影響ございませんが、念のため上記の提案の確認をさせていただければと思います。 | ポップアップにして対応する案は良いと思います。
念の為に確認ですが、絞り込んだ結果の維持はされますか？

>赤井
はい、絞り込み結果は維持されます。

承知しました。
110.0 | WAIT ANSWER | CR22
111.0 | WAIT ANSWER | CR22
112.0
113.0
114.0
115.0
116.0
117.0
118.0
119.0
120.0
121.0
122.0
123.0
124.0
125.0
126.0
127.0
128.0
129.0
## Sheet: Q&A【オータケ様】
NO | Date | Status | 機能 | 質問・具体的な内容・現在の課題 | 回答 | 回答予定日 | 宛先 | 質問者 | 優先度 | 画像
1.0 | MUST FOLLOW
Question format | Function to ask:
- Screen ID/Name, API ID/Name, Batch ID/Name, etc
- What part of the doc you want to ask by text or screenshot

Background:
- xxx information is missing in order to implement xxx function or
- xxx description is not consistent with xxx description of xxx doc or
- this doc says xxx but it's unclear for me I want to make it more detailed
- other issue to confirm

Question or request: 
- In order to resolve the problem above, can I have xxx?
- In order to resolve the problem above, let me confirm xxx. I understant that is xxx but is it correct? | Màu đen, chữ trắng là đã update detail design, checklist
1.0 | ハンドラーの白丸の黒縁の濃さについて | 赤井さんからご提案ありました白丸の縁の濃さについて、こちらからグレーでとお話したのですが、リンクのSlackにある、赤井さんご提案の色と濃さで一度確認させていただきたいと思います。
よろしくお願いいたします。

補足説明
iPad版では、色と濃さともにグレーで良いと思っています。
しかし、WEB版になると、端末の性能のせいだと思いますが、白丸の縁がぼやけて見え、視認しづらい感じがあります。

Slackスレッドリンク
https://otakescuti.slack.com/archives/C0655J92UPR/p1706603143978099
2.0 | ペンで書いたものはペンとして認識する（＝オブジェクト扱いしない） | ペンがオブジェクトとして認識しなくなれば、画面操作がしやすくなる | 優先度低

オブジェクトとして認識しない、ということはゴミ箱、複製、ロック、アンロック、その他が出来なくなるということでしょうか？
オブジェクト扱いしなくなることとオブジェクト扱いすることの違いをまた休み上げ確認させてください。
3.0 | テキストの上下左右寄せ、中央揃え | 優先度低

可能です。
4.0 | 付箋の最小サイズの見直し | 一定サイズまで縮小できない問題がある | 優先度低

可能です。
5.0 | ペンで点線が書ける | 書いた線が点線になる
https://www.youtube.com/watch?v=urejMY71Av0 | 優先度中

可能です。ただ、パフォーマンスに影響がある可能性があります。
6.0 | アーチ状に線が書ける | 線の中心をつまんで引き上げたり引き下げることで、線を変形させる
Macのフリーボードにある機能 | 優先度中

少し技術調査が必要です。
7.0 | 図形機能を復活させる | 目隠しや矢印など、頻度の高い図形はデジタル教具の中に収めておくと、煩雑である
そのため、図形はデジタル教具よりも取り出しやすい位置に復活させる必要がある
ただし、図形のラインナップについては見直す | 優先度中

可能です。
8.0 | Figmaみたいにオブジェクトにガイドが出る | オブジェクトを整列して配置するときに非常に便利 | 優先度中

ガイド、というのはFigma上でいうフレームに名前をつける機能との認識です。（名前は左上に表示）
可能です。
9.0 | Figmaみたいにオブジェクト同士が吸い付く | 同上 | 優先度中

吸い付く、というのはfigmaでいう、オブジェクト同士を近づける際に赤色の補助線が出てオブジェクト同士を合わせやすくする機能でしょうか？
10.0 | 回転時角度が表示される（Canva） | 算数のときに有効 | 優先度中

可能です。
11.0 | 回転角度が45度（あるいは90度）ごとに一旦回転がストップする | 算数のときに有効だし、オブジェクトをきれいに並べたいときにも有効 | 優先度中

可能です。
12.0 | デジタル教具の選択時の表示数を細分化する（3*3から4*4） | 表示数はもっと細かくてもいい　一覧性が向上するため | 優先度中

可能です。

素材のみ
13.0 | 取り込んだ画像をトリミングする | 写真を選択したときのみハンドルメニュー（選択時にロックとかでてる白いバー）にトリミングできる機能を表示する | 優先度中

Google Slideのようなトリミング仕様でしょうか？
おそらく可能ですが、調査は必要とのことです。
14.0 | オブジェクト消しゴム機能 | オブジェクトに反応する消しゴムで、擦って消す手間が省ける | 優先度中

オブジェクトの中でペンのみを指している認識でしょうか？
ペンに関しては可能となります。（他もあれば他も確認します）

可能です。
15.0 | タイマー機能でタイマーをどこにでも表示できるようにする | デジタル教具のオブジェクトのように好きな位置に移動できる | 優先度中

可能です。
16.0 | 直線がつながる（Freeformみたいなもの） | 一筆書き＋整列 | 優先度中

直線を何本も連続で繋げて書くことができる機能ということですね。

可能です。
17.0 | 付箋のデザインを変更する | 付箋のデザインを吹き出し型やプログラミングの記号（ひし形や台形っぽい六角形）などに変更する（オブジェクトの中に文字がかけるのが良い） | 優先度高

おそらく可能です。
四角ではないので、テキストを入力できる範囲を明確にする必要があります。
18.0 | Googleスライドみたいにする（フォーカスしているスライドがわかる）
先生側の画面で、生徒がアクセスしているスライドに縁がつく
モニタリングの一覧画面で、生徒がアクセスしているスライドを常に表示される（絶えず変化する） | 生徒Aがスライド13枚目をみている、先生はモニタリングを起動し、生徒Aの画面を覗くとする
そのとき、先生は、スライド1枚目を見ることになるが、実際に生徒Aが操作中の画面はスライド13枚目である
このようにスライドが複数大量にある場合、モニタリングする側が迷子になる問題がある | 優先度高

可能です。

生徒が今見ているスライドを一覧の画面に表示させる
押下すると、一枚目か生徒側のスライドに遷移する
19.0 | モニタリング時に、任意の生徒を選択肢、ボードを比較する | Google Meetで参加者の顔が並ぶように画面を分割し表示する
たとえば、1画面のなかで、生徒Aと生徒Bを横に並べて表示させる
こうすることで比較が容易になる | 優先度高
おそらく可能です。
先生側のデジタル教具、ペンなどの機能は、生徒に対してどのように表示させるのかを決めた方がいいと思います。
モニタリングでは現在先生側でデジタル教具やペンを使用できるので。
20.0 | 無限ノート | FigmaやMacのフリーボードのように画面サイズに縛られない方法は重要 | 優先度高

現在より引き伸ばすのは可能ですが、背景の枠線の見え方など、少し影響範囲が大きい可能性があります。
詳細は技術調査を行うことができるとのことです。
参考：https://fabric5.fabricjs.com/build-minimap
21.0 | レイヤー機能 | 最前面、最背面にオブジェクトを動かせる | 優先度高

可能です。

最前面と最背面だけ、もしくは階層を動かす
22.0 | テキストの新しいフォントを増やす | 様々なフォントがあっていい | 優先度高

可能です。
23.0 | テキストメニューの記憶機能（前回使ったフォント、サイズ、などを維持する） | 操作上の不満
1.テキスト起動し、フォントA　テキストサイズ35　テキスト入力する
2.テキスト起動すると、1でのフォントやテキストサイズはリセットされて、デフォルトのフォントとサイズに戻っている

時間割に戻らない限り、一度変更したフォントやテキストサイズは維持する | 優先度高

可能です。
24.0 | 配布受け取り機能がモニタリング時には非表示になっている | 確認中 | 確認中
25.0 | padでweb挿入を封印
26.0
27.0 | 2025-02-19 00:00:00 | DONE | Zip、ダウンロード | 複数画像をZipせずにダウンロードできるか? | 結論から言うと可能ですが、2つの注意点があります。
2つの注意点はこちらで制御できず、ユーザの設定に依存します。
そのため、混乱せず小学生さんが使用する事を考慮すると、Zipで1度にダウンロードできた方が良いかと思います。（Scuti側の意見なので、佐々木さん側のご意見もお聞かせください。）

・注意点
①画像をダウンロードする際、Chromeブラウザがユーザーに対し「複数の画像のダウンロードを許可するか」確認するメッセージが表示されます。（例の画像）
 - ユーザーが「許可」しない場合、1回のクリックで1枚の画像しかダウンロードできません。
 - ユーザーが「許可」した場合、すべての画像をダウンロードできますが、初回ダウンロード時は一部の画像のダウンロードに失敗したり、すべての画像が正常にダウンロードされません。（2回目以降は問題ありません）

②Chrome内の「ファイルの保存場所を確認する」設定（先ほどmtgでお見せした設定です）
 - Chromeで「ファイルの保存場所を確認する」設定がONの場合
   - ブラウザが「ファイルの保存場所を指定するか？」の確認ポップアップを表示します。
     - ポップアップには、ファイル名、保存先のパス、「保存」ボタン、「キャンセル」ボタンが表示されます。
     - 20ファイルをダウンロードする場合、20回のポップアップが表示されます。（動画）
 - Chromeで「ファイルの保存場所を確認する」設定がOFFの場合
   - 確認なしで自動的にダウンロードが開始されます。

 - 「ファイルの保存場所を確認する」設定のON/OFF切り替え方法
   - Chromeのアドレスバーに「chrome://settings/downloads」を入力
   - 設定画面の画像

・上記2つの設定をすでに行なった後の複数画像のダウンロード時の挙動
以下の動画で実際のダウンロード動作を確認できます。
 Chromebook
 Asus | 赤井 | 佐々木さん
28.0 | 2025-02-19 00:00:00 | DONE | SSO | Google / MicrosoftアカウントでSSOログイン時にアカウント情報（名前など）を取得できるか | 可能です。
29.0 | 2025-02-20 00:00:00 | DONE | Zip、ダウンロード | Zip,複数画像ダウンロードの切り替えはできるか？ | 可能です。そのためおっしゃっていた、先生はZip、生徒は複数ダウンロードといった使い分けができます。
30.0 | 2025-02-20 00:00:00 | DONE | デジタル教具選択画面 | デジタル教具選択画面で右クリックすると、名前をつけて保存と画像のコピーはできるか？ | 可能です。
31.0 | 2025-02-20 00:00:00 | DONE | デジタル教具選択画面 | 右クリックでデジタル教具をコピーした際の画質はどうなるか？ | 落ちません。

詳細をお伝えすると、デジタル教具選択画面でのデジタル教具のサイズと、挿入後のデジタル教具のサイズは異なって見えますが、「解像度」と言う観点で言うと同じです。なので、コピーした際に、登録した画像と比べて画質が落ちるなどの心配はございません。
32.0 | 2025-02-20 00:00:00 | DONE | 画面上にキーボードを表示 | 画面上にyahoo kidsのようなキーボードを表示できるか？ | 可能です。
33.0 | 2025-02-20 00:00:00 | DONE | 画面上にキーボードを表示 | ひらがな、カタカナ、ABC、記号などを表示できるか？ | 可能です。
34.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | 学校管理者が Edu システムにログインすると、学校管理者のWS アカウント上のすべての先生と生徒のアカウントの情報をリンクできますか? | はい。

学校管理者が管理者ロールの Google Workspace アカウントを使用して Edua にログインすると、
Google API を呼び出してすべてのユーザーのリストを取得し、Edua システムで新しいユーザーを作成できます。

ただ、後述に記載する、「導入における設定」が必要なのであまり現実的ではありません。
35.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | 導入における設定は何ですか? | 【学校管理者側】
各Google Workspace アカウント上で、Eduシステムがユーザ情報を同期することを許可する設定が必要です。設定は2つ必要です。

①Google Workspace上のユーザ情報を取得する用のID( Google WorkspaceアカウントのTrustedID )をEduシステムに登録するため、オータケ様に送信する。
②Eduシステムがユーザ情報を取得する際に使用するGoogle WorkspaceのAPIを有効化する設定
参考：https://help.schooltakt.com/ja/articles/3309029-%E7%AE%A1%E7%90%86%E8%80%85-api%E3%81%AE%E8%A8%AD%E5%AE%9A%E6%96%B9%E6%B3%95

【Scuti側】
①TrustedIDをEduシステムに登録する
②Google WorkspaceのAPIを使用して、Google Workspace上にあるユーザ情報を取得する
36.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | 管理者のWSアカウント上のアカウント情報（先生や生徒）は都度同期できるか？ | リアルタイムではなく、数秒以内になります。
数秒というのはデータの取得にかかる時間となります。その時間は Google とユーザーのネットワークに依存します。

ただ、後述する、「都度同期する際のリスク」がございます。
37.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | 都度同期する際のリスク | 学校管理者が長期(6ヶ月)Eduシステムにログインしていない場合、
学校管理者はEduシステムからログアウトされます。
ログアウトされた際は、管理者のWSアカウント上のアカウント情報（先生や生徒）は同期できなくなります。
防止策として、学校管理者は6ヶ月に1度はEduシステムと同期させる必要があります。
開発側でGWのアカウント情報が変わった時に同期させる、定期的に自動同期する、などを行うとこのケースを防げます。

ただ、開発側で実行可能かの調査が必要となります。
38.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | Edua上のアカウントを作成するときに、
Google Workspace で自動的にアカウントは作成されますか？ | はい。
管理者権限のGoogle WorkspaceアカウントでEduシステムにSSOログインし、
Edu上でアカウントを作成すると、そのアカウントは Google Workspace でも作成されます。
39.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | EduとGoogleWorkspaceで同期するための最適なプロセスは何ですか? | こちらになります。
前提として、QA35の2つが設定済みである必要があります。
40.0 | 2025-02-21 00:00:00 | DONE | Google Workspace | Microsoftアカウントでも同様の管理方法ができるか？ | 可能です。
41.0 | 2025-02-21 00:00:00 | DONE | SSO | Googleアカウント, MicrosoftでのSSOフローはどのようなものか？ | こちらになります。
42.0 | 2025-02-21 00:00:00 | IGNORE | IPアドレスで管理 | IPアドレスで制限する方法は良いか、より良い方法はないか？
43.0 | 2025-02-21 00:00:00 | IGNORE | IPアドレスで管理 | 学校内のipアドレスのみのアクセスに制限しつつ、家からアクセスする方法はないか？
44.0 | 2025-02-21 00:00:00 | IGNORE | IPアドレスで管理 | セキュリティのリスクはないか？
45.0 | 2025-02-21 00:00:00 | DONE | IPアドレスで管理 | アクセス人数の情報を取得できるか？（端末idなどで計測） | できません。

理由：
- 複数のユーザーが同じ IP アドレス内に存在します
- ユーザ固有のIDを取得できない
- IP アドレスは変更される可能性があります。
46.0 | 2025-02-21 00:00:00 | DONE | ダウンロード | 下記を満たす他の方法がないかの調査
・学校側が手間なく素早くアクセスできること
　・学校側がEdu側の管理画面で情報入力をしなくてもよい
　・学校、家で使用できる
・セキュリティ面を配慮していること
・使用人数の情報を取れること | こちらになります。
47.0 | 2025-02-21 00:00:00 | DONE | セキュリティ | ・学校側のセキュリティ対策について、システム側で対応することの確認
　・暗号化
　・マルウェア対策(ウイルス) | 2025-03-03 00:00:00
48.0 | 2025-02-21 00:00:00 | DONE | セキュリティ | （赤井）文部科学省のセキュリティガイドラインをざっとチェックし、Eduシステムとの関連場所をピックアップする。 | 2025-02-27 00:00:00
49.0 | 2025-02-26 00:00:00 | IGNORE | Microsoft | MicrosoftでもGoogle Workspaceのように同期できるか？ | -
50.0 | 2025-02-26 00:00:00 | DONE | CSV | Google WorkspaceのCSVの形式の調査 | こちらになります。
今回管理画面で表示する可能性の高い情報はオレンジ色でハイライトいたしました。 | 2025-03-03 00:00:00
51.0 | 2025-02-26 00:00:00 | DONE | CSV | MicrosoftのCSVの形式の調査 | こちらになります。
今回管理画面で表示する可能性の高い情報はオレンジ色でハイライトいたしました。

参考リンク：
https://learn.microsoft.com/ja-jp/azure/active-directory-b2c/user-profile-attributes
https://learn.microsoft.com/ja-jp/entra/identity/users/users-bulk-download | 2025-03-04 00:00:00
52.0 | 2025-02-26 00:00:00 | DONE | ダウンロード | 技術確認

試用版提供時に、
・ダウンロード
・コピー
・ドラッグドロップ
してもデジタル教具に透かし文字が入るようにしたい。

ダウンロードする前の選択一覧画面でも画像に透かし文字は入っている。 | 技術的には可能です。
簡単にまとめると、元の画像とは別にウォーターマーク付き（透かし文字）の画像を作成してアップロードしておく方法です。

以下詳細です。

1. 現在システムに既にある画像に関しては、次の2つの方法があります：
   - オータケ様がウォーターマーク付き（透かし文字のことを指します）の画像を追加アップロードする。
   - Scutiが実装して、任意の画像に自動的にウォーターマークを追加する。

2. 今後アップロードされる画像についても2つの方法があります：
   - オータケ様は、元の画像に加えてウォーターマーク付きの画像をアップロードする。
   - オータケ様は元の画像のみをアップロードし、Scutiが元の画像から自動的にウォーターマーク付きの画像を生成するように実装する。

※注意点
①ウォーターマーク付き（透かし文字）の画像とウォーターマークなしの画像は別々にDB上に登録する必要があります。
もし別々に登録しない場合、毎回ユーザが画像をダウンロードする度にウォーターマークを画像に追加する処理が発生して処理時間が遅くなる可能性が大いにございます。
→DLが遅くなる

②DB上に登録する画像の量を増やす、ということはそれに応じてAWSの料金も増加します。
トライアル版ではすべての画像に対してウォーターマークをつけないかと思いますが（表示する画像は少ない可能性があるので）、
もしすべての画像につける、となった場合は単純計算で今の約2倍の金額のコスト（AWSのS3のコストです）がかかる計算となります。
そのため、トライアル版で表示する画像を絞って、それらの画像に対してウォーターマークがついている版の画像をDBに登録するのが理想的な方法かと思います。 | 2025-02-27 00:00:00
53.0 | 2025-03-03 00:00:00 | DONE | セキュリティ | P147　（６）情報の通信経路のセキュリティ確保の②
クラウド利用者は、クラウド事業者が保守運用等を遠隔で行う場合の、保守運用拠点と管理区域間での通信回線及び通信回線装置の管理について、情報の盗聴、改ざん、誤った経路での通信、破壊等から保護するために必要な措置（情報交換の実施基準･手順等の整備、通信の暗号化等）をクラウド事業者に求め、


このふと文字のところのイメージがわからないです。
保守運用を遠隔で行うの意味
管理区域の意味
ここがよくわからないので、わかればお願いいたします。 | ・クラウド事業者が保守運用等を遠隔で行う場合の〜


サーバーは学校ではなく、遠隔のScutiがAWSを使用して管理するので、
・Scuti の 保守・運用を行う拠点（Scutiのオフィス）
・学校の 管理区域（ネットワークの基幹機器及び重要な情報システムを設置し、当該機器等の管理並びに運用を行うための部屋や電磁的記録媒体の保管庫）
この2つの間で使用する通信に対して情報の盗聴、改ざん、誤った経路での通信、破壊されないようにしてほしい、と解釈しています
54.0 | 2025-03-05 00:00:00 | DONE | Google/Microsoft | Google Workspace, Microsoftで自動同期の設定をした場合取りたいデータだけ取得できるか？ | 可能です。
取得したいデータのみを選択して自動同期できます。
55.0 | 2025-03-05 00:00:00 | DONE | セキュリティ | セキュリティポリシーのスケジュールについて | 以下のスケジュールで進める予定です。
・資料の翻訳(完了済み)
・開発側がすべての項目や問題を明確にする（03/06終了予定）。  
・03/07に見積もりの見積もり（すべての項目の調査完了予定）を送付予定です。（変更の場合は報告します）
56.0 | 2025-03-07 00:00:00 | DONE | AWS | グループ２の実装の場合で、サーバーのスケールアップについては、どのくらいの期間で拡張できるのかを教えていただきたいです。
はじめは小さくしてあとから大きくするというやり方は正しいと思います。
しかし、急遽学校との契約が決まった場合、スケールアップの必要性が生じます。
その時を想定すると、スケールアップをするときに、小規模でも、大規模でも同じくらいの期間で拡張できるのか、大規模になればなるほどスケールアップに時間がかかるのかということを知りたいです。 | 大規模になればなるほどスケールアップに時間がかかる可能性があります。

まだサーバの構築をしていないので、具体的な数値はお伝えできないのですが、システムの複雑さ次第で数時間、または数日かかる可能性があります。 | 2025-03-12 00:00:00
57.0 | 2025-03-07 00:00:00 | DONE | 管理画面 | CSVの件でプルダウン、セル結合、漢字入力の場合でも問題なくCSVアップロードして読み取れるか？ | 問題ございません。
CSV形式にした際に、プルダウンであればそれに記載されている値が表示されます。 | 2025-03-10 00:00:00
58.0 | 2025-03-07 00:00:00 | DONE | 管理画面 | CSVは指定した行から読み取りできるか？
(例：3行目からなど)
https://docs.google.com/spreadsheets/d/19ZZsstqnQcw57O1h1yL2-MrNWkAy7vzSvLgpfMx25vg/edit?gid=0#gid=0 | 可能です。 | 2025-03-10 00:00:00
59.0 | 2025-03-10 00:00:00 | DONE | セキュリティ | セキュリティポリシーの確認をする上で、仕様が必要な箇所はいくつある？ | 現状管理画面、ダウンロードが必要なシステムを想定してポリシーの確認をしています。
一旦進めることはできる（今想定の機能だけでポリシーの調査をする）とのことですが、明日ユーザ側と管理側の仕様を軽く開発側に伝えようと思います。 | 2025-03-10 00:00:00
60.0 | 2025-03-10 00:00:00 | DONE | パフォーマンス | パフォーマンスについて
ダウンロードの速度の定義以外に決めるものはあるか？ | 確認したところ、数値を定義してもネットワークに依存するため、
Scuti側が実装時に実機で確認して定義し報告させていただく方法が良いと考えています。
例：ASUSの◯◯端末で100Mbpsのネットワーク回線があれば、20KBの画像を20個ダウンロードすると、3秒間かかる、など | 2025-03-10 00:00:00
62.0 | 2025-04-02 00:00:00 | DONE | ユーザ | 大竹さん営業用と学校試用用でのウォーターマークとSSOについて | 以下を提案します。

①大竹さん営業用
ウォーターマークなし、SSOあり（または　専用ID・PASS）

②学校試用用
ウォーターマークあり、SSOなし（または　専用ID・PASS）

また、①②は「最低限」の営業用の本番サーバで2つとも使用できます。
具体的には、以下です。

①大竹さん用のアカウントはSSOログインできるように先にDBに登録します。
DBに登録された後、大竹さんはGoogleアカウント/ Microsoftアカウントを使用してSSOログインし、ホーム画面にはウォーターマークのない画像が一覧に表示されます。

②ログイン画面上の右下（場所はどこでも良いです）に試用用ボタンを追加し、そのボタンを押下することでホーム画面が表示されます。ホーム画面にはウォーターマークのある画像が一覧に表示されます。

①をSSOありにする理由：
もしSSOなしの場合、②とは別のボタンを画面上に置くことになります。画面上にボタンを置くと、ウォーターマークのある画像に誰でもアクセスできるので、このやり方は良くないと判断しました。
61.0 | 2025-03-28 00:00:00 | DONE | サーバ | ステージングサーバは不要にできないか？ | チームに確認したところ、開発安全性の観点からかなりおすすめはできない（ほぼ不可能）とのことです。
理由は以下の通りです。

①本番環境とほぼ同等の環境での試験ができる
開発環境はステージング環境や本番環境より、より劣るサーバーで開発します。
本番環境と同じ位のスペックのサーバーでテストを行うには、ステージング環境でテストを行う必要があります。
ステージング環境があることで、開発環境とステージング環境の間の環境起因のバグを見つけだすことができます。

②開発環境で変更後、すぐに本番環境でアップロードできない
例えば、「最低限」の営業の本番サーバーのURLを、試用するユーザに送信していたり、大竹さんがプレゼン用に使用しているときに、開発環境の変更を本番サーバーにアップロードができないです。
この間は、開発環境からステージング環境にまず変更を反映して、先にテストすることで環境起因のバグを洗い出すことができます。
62.0 | 2025-03-28 00:00:00 | DONE | サーバ | 必要最小限の構成にできないか？ | 結論として、5つのサーバを準備します。
①「最低限」の開発用サーバ
Scuti開発用に使用します
②「最低限」の営業用のステージングサーバ
本番サーバとほぼ同等環境のサーバ
③「最低限」の営業用の本番サーバ
大竹さんがプレゼン用に使用
学校試用用に使用（URL送信）
④「パフォーマンスとセキュリティ構築済み」の実際ユーザ用のステージングサーバ
営業反応が良い場合に構築する、本番サーバとほぼ同等環境のサーバ
⑤「パフォーマンスとセキュリティ構築済み」の実際ユーザ用の本番サーバ

再度フローをサーバ構築のフローにてまとめましたので、ご確認ください。
63.0
64.0
65.0
66.0
67.0
68.0
69.0
70.0
71.0
72.0
73.0
74.0
75.0
76.0
77.0
78.0
79.0
80.0
81.0
82.0
83.0
84.0
85.0
86.0
87.0
88.0
89.0
90.0
91.0
92.0
93.0
94.0
95.0
96.0
97.0
98.0
99.0
100.0
101.0
102.0
103.0
104.0
105.0
106.0
107.0
108.0
109.0
110.0
111.0
112.0
113.0
114.0
115.0
116.0
117.0
118.0
119.0
120.0
121.0
122.0
123.0
124.0
125.0
126.0
127.0
128.0
129.0
130.0
131.0
132.0
133.0
134.0
135.0
136.0
137.0
138.0
139.0
140.0
141.0
142.0
143.0
144.0
145.0
## Sheet: 契約ステータスと契約日の条件
パターン | 変更前ステータス | 変更後ステータス | 契約開始日の条件 | 契約終了日の条件 | 備考
1.0 | 利用中 | 利用中 | 契約終了日より前 | 契約開始日の少なくとも1日後、かつ
本日以降（本日含む） | ・契約開始日、終了日は左の条件の日にちのみをカレンダーから選択できる。

・以下のケースの場合は、「契約終了日が不正です」という赤文字のエラーが表示される。

「契約終了日が不正です」を表示するケース
＜変更前＞
本日：5/9
契約開始日：5/1
契約終了日：5/5
ステータス：解約中

＜変更後＞
本日：5/9
契約開始日：5/1
契約終了日：5/5
ステータス：利用中

→開始・終了日をカレンダーから変更していませんが、ステータスが「利用中」になったので、契約終了日は契約開始日の少なくとも1日後、かつ本日以降（本日含む）という条件が適用されます。

上記の場合は条件に反しているので、契約終了日の下記に「契約終了日が不正です」という赤文字のエラーを表示する。
2.0 | 利用中 | 一時停止
3.0 | 利用中 | 解約済み | 契約開始日の少なくとも1日後
4.0 | 一時停止 | 一時停止 | 契約開始日の少なくとも1日後、かつ
本日以降（本日含む）
5.0 | 一時停止 | 利用中
6.0 | 一時停止 | 解約済み | 契約開始日の少なくとも1日後
7.0 | 解約済み | 解約済み
8.0 | 解約済み | 利用中 | 契約開始日の少なくとも1日後、かつ
本日以降（本日含む）
9.0 | 解約済み | 一時停止
＜変更前＞ | ＜変更前＞
本日：5/9 | 本日：5/9
契約開始日：5/1 | 契約開始日：5/1
契約終了日：5/15 | 契約終了日：5/15
ステータス：解約中 | ステータス：利用中
＜変更後＞ | ＜変更後＞
契約終了しているのに、利用中だったり、一時停止になっているので、矛盾が生じる
だから本日以降の日付で設定する必要がある | 本日：5/9 | 本日：5/9
契約開始日：5/1 | 契約開始日：5/1
契約終了日：5/5 | 契約終了日：5/5
ステータス：利用中 | ステータス：解約済
## Sheet: 自治体のリスト
前提
日本の自治体構成
・都道府県（47）：日本全国を広域的に区分した行政単位。
・市町村（1,718）：都道府県の下位に位置する基礎的な自治体で、以下の3種類がある：
　  ・市（792）
  　・町（743）
  　・村（183）
・特別区（23）：東京都にのみ存在する特別な区分で、他の市町村と同等の自治体。

これらを合わせると、全国で1,741の自治体が存在する。
参考：リンク
都道府県,市区町村
北海道,札幌市中央区
北海道,札幌市北区
北海道,札幌市東区
北海道,札幌市白石区
北海道,札幌市豊平区
北海道,札幌市南区
北海道,札幌市西区
北海道,札幌市厚別区
北海道,札幌市手稲区
北海道,札幌市清田区
北海道,函館市
北海道,小樽市
北海道,旭川市
北海道,室蘭市
北海道,釧路市
北海道,帯広市
北海道,北見市
北海道,夕張市
北海道,岩見沢市
北海道,網走市
北海道,留萌市
北海道,苫小牧市
北海道,稚内市
北海道,美唄市
北海道,芦別市
北海道,江別市
北海道,赤平市
北海道,紋別市
北海道,士別市
北海道,名寄市
北海道,三笠市
北海道,根室市
北海道,千歳市
北海道,滝川市
北海道,砂川市
北海道,歌志内市
北海道,深川市
北海道,富良野市
北海道,登別市
北海道,恵庭市
北海道,伊達市
北海道,北広島市
北海道,石狩市
北海道,北斗市
北海道,石狩郡当別町
北海道,石狩郡新篠津村
北海道,松前郡松前町
北海道,松前郡福島町
北海道,上磯郡知内町
北海道,上磯郡木古内町
北海道,亀田郡七飯町
北海道,茅部郡鹿部町
北海道,茅部郡森町
北海道,二海郡八雲町
北海道,山越郡長万部町
北海道,檜山郡江差町
北海道,檜山郡上ノ国町
北海道,檜山郡厚沢部町
北海道,爾志郡乙部町
北海道,奥尻郡奥尻町
北海道,瀬棚郡今金町
北海道,久遠郡せたな町
北海道,島牧郡島牧村
北海道,寿都郡寿都町
北海道,寿都郡黒松内町
北海道,磯谷郡蘭越町
北海道,虻田郡ニセコ町
北海道,虻田郡真狩村
北海道,虻田郡留寿都村
北海道,虻田郡喜茂別町
北海道,虻田郡京極町
北海道,虻田郡倶知安町
北海道,岩内郡共和町
北海道,岩内郡岩内町
北海道,古宇郡泊村
北海道,古宇郡神恵内村
北海道,積丹郡積丹町
北海道,古平郡古平町
北海道,余市郡仁木町
北海道,余市郡余市町
北海道,余市郡赤井川村
北海道,空知郡南幌町
北海道,空知郡奈井江町
北海道,空知郡上砂川町
北海道,夕張郡由仁町
北海道,夕張郡長沼町
北海道,夕張郡栗山町
北海道,樺戸郡月形町
北海道,樺戸郡浦臼町
北海道,樺戸郡新十津川町
北海道,雨竜郡妹背牛町
北海道,雨竜郡秩父別町
北海道,雨竜郡雨竜町
北海道,雨竜郡北竜町
北海道,雨竜郡沼田町
北海道,上川郡鷹栖町
北海道,上川郡東神楽町
北海道,上川郡当麻町
北海道,上川郡比布町
北海道,上川郡愛別町
北海道,上川郡上川町
北海道,上川郡東川町
北海道,上川郡美瑛町
北海道,空知郡上富良野町
北海道,空知郡中富良野町
北海道,空知郡南富良野町
北海道,勇払郡占冠村
北海道,上川郡和寒町
北海道,上川郡剣淵町
北海道,上川郡下川町
北海道,中川郡美深町
北海道,中川郡音威子府村
北海道,中川郡中川町
北海道,雨竜郡幌加内町
北海道,増毛郡増毛町
北海道,留萌郡小平町
北海道,苫前郡苫前町
北海道,苫前郡羽幌町
北海道,苫前郡初山別村
北海道,天塩郡遠別町
北海道,天塩郡天塩町
北海道,宗谷郡猿払村
北海道,枝幸郡浜頓別町
北海道,枝幸郡中頓別町
北海道,枝幸郡枝幸町
北海道,天塩郡豊富町
北海道,礼文郡礼文町
北海道,利尻郡利尻町
北海道,利尻郡利尻富士町
北海道,天塩郡幌延町
北海道,網走郡美幌町
北海道,網走郡津別町
北海道,斜里郡斜里町
北海道,斜里郡清里町
北海道,斜里郡小清水町
北海道,常呂郡訓子府町
北海道,常呂郡置戸町
北海道,常呂郡佐呂間町
北海道,紋別郡遠軽町
北海道,紋別郡湧別町
北海道,紋別郡滝上町
北海道,紋別郡興部町
北海道,紋別郡西興部村
北海道,紋別郡雄武町
北海道,網走郡大空町
北海道,虻田郡豊浦町
北海道,有珠郡壮瞥町
北海道,白老郡白老町
北海道,勇払郡厚真町
北海道,虻田郡洞爺湖町
北海道,勇払郡安平町
北海道,勇払郡むかわ町
北海道,沙流郡日高町
北海道,沙流郡平取町
北海道,新冠郡新冠町
北海道,浦河郡浦河町
北海道,様似郡様似町
北海道,幌泉郡えりも町
北海道,日高郡新ひだか町
北海道,河東郡音更町
北海道,河東郡士幌町
北海道,河東郡上士幌町
北海道,河東郡鹿追町
北海道,上川郡新得町
北海道,上川郡清水町
北海道,河西郡芽室町
北海道,河西郡中札内村
北海道,河西郡更別村
北海道,広尾郡大樹町
北海道,広尾郡広尾町
北海道,中川郡幕別町
北海道,中川郡池田町
北海道,中川郡豊頃町
北海道,中川郡本別町
北海道,足寄郡足寄町
北海道,足寄郡陸別町
北海道,十勝郡浦幌町
北海道,釧路郡釧路町
北海道,厚岸郡厚岸町
北海道,厚岸郡浜中町
北海道,川上郡標茶町
北海道,川上郡弟子屈町
北海道,阿寒郡鶴居村
北海道,白糠郡白糠町
北海道,野付郡別海町
北海道,標津郡中標津町
北海道,標津郡標津町
北海道,目梨郡羅臼町
青森県,青森市
青森県,弘前市
青森県,八戸市
青森県,黒石市
青森県,五所川原市
青森県,十和田市
青森県,三沢市
青森県,むつ市
青森県,つがる市
青森県,平川市
青森県,東津軽郡平内町
青森県,東津軽郡今別町
青森県,東津軽郡蓬田村
青森県,東津軽郡外ケ浜町
青森県,西津軽郡鰺ヶ沢町
青森県,西津軽郡深浦町
青森県,中津軽郡西目屋村
青森県,南津軽郡藤崎町
青森県,南津軽郡大鰐町
青森県,南津軽郡田舎館村
青森県,北津軽郡板柳町
青森県,北津軽郡鶴田町
青森県,北津軽郡中泊町
青森県,上北郡野辺地町
青森県,上北郡七戸町
青森県,上北郡六戸町
青森県,上北郡横浜町
青森県,上北郡東北町
青森県,上北郡六ヶ所村
青森県,上北郡おいらせ町
青森県,下北郡大間町
青森県,下北郡東通村
青森県,下北郡風間浦村
青森県,下北郡佐井村
青森県,三戸郡三戸町
青森県,三戸郡五戸町
青森県,三戸郡田子町
青森県,三戸郡南部町
青森県,三戸郡階上町
青森県,三戸郡新郷村
岩手県,盛岡市
岩手県,宮古市
岩手県,大船渡市
岩手県,花巻市
岩手県,北上市
岩手県,久慈市
岩手県,遠野市
岩手県,一関市
岩手県,陸前高田市
岩手県,釜石市
岩手県,二戸市
岩手県,八幡平市
岩手県,奥州市
岩手県,滝沢市
岩手県,岩手郡雫石町
岩手県,岩手郡葛巻町
岩手県,岩手郡岩手町
岩手県,紫波郡紫波町
岩手県,紫波郡矢巾町
岩手県,和賀郡西和賀町
岩手県,胆沢郡金ケ崎町
岩手県,西磐井郡平泉町
岩手県,気仙郡住田町
岩手県,上閉伊郡大槌町
岩手県,下閉伊郡山田町
岩手県,下閉伊郡岩泉町
岩手県,下閉伊郡田野畑村
岩手県,下閉伊郡普代村
岩手県,九戸郡軽米町
岩手県,九戸郡野田村
岩手県,九戸郡九戸村
岩手県,九戸郡洋野町
岩手県,二戸郡一戸町
宮城県,仙台市青葉区
宮城県,仙台市宮城野区
宮城県,仙台市若林区
宮城県,仙台市太白区
宮城県,仙台市泉区
宮城県,石巻市
宮城県,塩竈市
宮城県,気仙沼市
宮城県,白石市
宮城県,名取市
宮城県,角田市
宮城県,多賀城市
宮城県,岩沼市
宮城県,登米市
宮城県,栗原市
宮城県,東松島市
宮城県,大崎市
宮城県,富谷市
宮城県,刈田郡蔵王町
宮城県,刈田郡七ヶ宿町
宮城県,柴田郡大河原町
宮城県,柴田郡村田町
宮城県,柴田郡柴田町
宮城県,柴田郡川崎町
宮城県,伊具郡丸森町
宮城県,亘理郡亘理町
宮城県,亘理郡山元町
宮城県,宮城郡松島町
宮城県,宮城郡七ヶ浜町
宮城県,宮城郡利府町
宮城県,黒川郡大和町
宮城県,黒川郡大郷町
宮城県,黒川郡大衡村
宮城県,加美郡色麻町
宮城県,加美郡加美町
宮城県,遠田郡涌谷町
宮城県,遠田郡美里町
宮城県,牡鹿郡女川町
宮城県,本吉郡南三陸町
秋田県,秋田市
秋田県,能代市
秋田県,横手市
秋田県,大館市
秋田県,男鹿市
秋田県,湯沢市
秋田県,鹿角市
秋田県,由利本荘市
秋田県,潟上市
秋田県,大仙市
秋田県,北秋田市
秋田県,にかほ市
秋田県,仙北市
秋田県,鹿角郡小坂町
秋田県,北秋田郡上小阿仁村
秋田県,山本郡藤里町
秋田県,山本郡三種町
秋田県,山本郡八峰町
秋田県,南秋田郡五城目町
秋田県,南秋田郡八郎潟町
秋田県,南秋田郡井川町
秋田県,南秋田郡大潟村
秋田県,仙北郡美郷町
秋田県,雄勝郡羽後町
秋田県,雄勝郡東成瀬村
山形県,山形市
山形県,米沢市
山形県,鶴岡市
山形県,酒田市
山形県,新庄市
山形県,寒河江市
山形県,上山市
山形県,村山市
山形県,長井市
山形県,天童市
山形県,東根市
山形県,尾花沢市
山形県,南陽市
山形県,東村山郡山辺町
山形県,東村山郡中山町
山形県,西村山郡河北町
山形県,西村山郡西川町
山形県,西村山郡朝日町
山形県,西村山郡大江町
山形県,北村山郡大石田町
山形県,最上郡金山町
山形県,最上郡最上町
山形県,最上郡舟形町
山形県,最上郡真室川町
山形県,最上郡大蔵村
山形県,最上郡鮭川村
山形県,最上郡戸沢村
山形県,東置賜郡高畠町
山形県,東置賜郡川西町
山形県,西置賜郡小国町
山形県,西置賜郡白鷹町
山形県,西置賜郡飯豊町
山形県,東田川郡三川町
山形県,東田川郡庄内町
山形県,飽海郡遊佐町
福島県,福島市
福島県,会津若松市
福島県,郡山市
福島県,いわき市
福島県,白河市
福島県,須賀川市
福島県,喜多方市
福島県,相馬市
福島県,二本松市
福島県,田村市
福島県,南相馬市
福島県,伊達市
福島県,本宮市
福島県,伊達郡桑折町
福島県,伊達郡国見町
福島県,伊達郡川俣町
福島県,安達郡大玉村
福島県,岩瀬郡鏡石町
福島県,岩瀬郡天栄村
福島県,南会津郡下郷町
福島県,南会津郡檜枝岐村
福島県,南会津郡只見町
福島県,南会津郡南会津町
福島県,耶麻郡北塩原村
福島県,耶麻郡西会津町
福島県,耶麻郡磐梯町
福島県,耶麻郡猪苗代町
福島県,河沼郡会津坂下町
福島県,河沼郡湯川村
福島県,河沼郡柳津町
福島県,大沼郡三島町
福島県,大沼郡金山町
福島県,大沼郡昭和村
福島県,大沼郡会津美里町
福島県,西白河郡西郷村
福島県,西白河郡泉崎村
福島県,西白河郡中島村
福島県,西白河郡矢吹町
福島県,東白川郡棚倉町
福島県,東白川郡矢祭町
福島県,東白川郡塙町
福島県,東白川郡鮫川村
福島県,石川郡石川町
福島県,石川郡玉川村
福島県,石川郡平田村
福島県,石川郡浅川町
福島県,石川郡古殿町
福島県,田村郡三春町
福島県,田村郡小野町
福島県,双葉郡広野町
福島県,双葉郡楢葉町
福島県,双葉郡富岡町
福島県,双葉郡川内村
福島県,双葉郡大熊町
福島県,双葉郡双葉町
福島県,双葉郡浪江町
福島県,双葉郡葛尾村
福島県,相馬郡新地町
福島県,相馬郡飯舘村
茨城県,水戸市
茨城県,日立市
茨城県,土浦市
茨城県,古河市
茨城県,石岡市
茨城県,結城市
茨城県,龍ヶ崎市
茨城県,下妻市
茨城県,常総市
茨城県,常陸太田市
茨城県,高萩市
茨城県,北茨城市
茨城県,笠間市
茨城県,取手市
茨城県,牛久市
茨城県,つくば市
茨城県,ひたちなか市
茨城県,鹿嶋市
茨城県,潮来市
茨城県,守谷市
茨城県,常陸大宮市
茨城県,那珂市
茨城県,筑西市
茨城県,坂東市
茨城県,稲敷市
茨城県,かすみがうら市
茨城県,桜川市
茨城県,神栖市
茨城県,行方市
茨城県,鉾田市
茨城県,つくばみらい市
茨城県,小美玉市
茨城県,東茨城郡茨城町
茨城県,東茨城郡大洗町
茨城県,東茨城郡城里町
茨城県,那珂郡東海村
茨城県,久慈郡大子町
茨城県,稲敷郡美浦村
茨城県,稲敷郡阿見町
茨城県,稲敷郡河内町
茨城県,結城郡八千代町
茨城県,猿島郡五霞町
茨城県,猿島郡境町
茨城県,北相馬郡利根町
栃木県,宇都宮市
栃木県,足利市
栃木県,栃木市
栃木県,佐野市
栃木県,鹿沼市
栃木県,日光市
栃木県,小山市
栃木県,真岡市
栃木県,大田原市
栃木県,矢板市
栃木県,那須塩原市
栃木県,さくら市
栃木県,那須烏山市
栃木県,下野市
栃木県,河内郡上三川町
栃木県,芳賀郡益子町
栃木県,芳賀郡茂木町
栃木県,芳賀郡市貝町
栃木県,芳賀郡芳賀町
栃木県,下都賀郡壬生町
栃木県,下都賀郡野木町
栃木県,塩谷郡塩谷町
栃木県,塩谷郡高根沢町
栃木県,那須郡那須町
栃木県,那須郡那珂川町
群馬県,前橋市
群馬県,高崎市
群馬県,桐生市
群馬県,伊勢崎市
群馬県,太田市
群馬県,沼田市
群馬県,館林市
群馬県,渋川市
群馬県,藤岡市
群馬県,富岡市
群馬県,安中市
群馬県,みどり市
群馬県,北群馬郡榛東村
群馬県,北群馬郡吉岡町
群馬県,多野郡上野村
群馬県,多野郡神流町
群馬県,甘楽郡下仁田町
群馬県,甘楽郡南牧村
群馬県,甘楽郡甘楽町
群馬県,吾妻郡中之条町
群馬県,吾妻郡長野原町
群馬県,吾妻郡嬬恋村
群馬県,吾妻郡草津町
群馬県,吾妻郡高山村
群馬県,吾妻郡東吾妻町
群馬県,利根郡片品村
群馬県,利根郡川場村
群馬県,利根郡昭和村
群馬県,利根郡みなかみ町
群馬県,佐波郡玉村町
群馬県,邑楽郡板倉町
群馬県,邑楽郡明和町
群馬県,邑楽郡千代田町
群馬県,邑楽郡大泉町
群馬県,邑楽郡邑楽町
埼玉県,さいたま市西区
埼玉県,さいたま市北区
埼玉県,さいたま市大宮区
埼玉県,さいたま市見沼区
埼玉県,さいたま市中央区
埼玉県,さいたま市桜区
埼玉県,さいたま市浦和区
埼玉県,さいたま市南区
埼玉県,さいたま市緑区
埼玉県,さいたま市岩槻区
埼玉県,川越市
埼玉県,熊谷市
埼玉県,川口市
埼玉県,行田市
埼玉県,秩父市
埼玉県,所沢市
埼玉県,飯能市
埼玉県,加須市
埼玉県,本庄市
埼玉県,東松山市
埼玉県,春日部市
埼玉県,狭山市
埼玉県,羽生市
埼玉県,鴻巣市
埼玉県,深谷市
埼玉県,上尾市
埼玉県,草加市
埼玉県,越谷市
埼玉県,蕨市
埼玉県,戸田市
埼玉県,入間市
埼玉県,朝霞市
埼玉県,志木市
埼玉県,和光市
埼玉県,新座市
埼玉県,桶川市
埼玉県,久喜市
埼玉県,北本市
埼玉県,八潮市
埼玉県,富士見市
埼玉県,三郷市
埼玉県,蓮田市
埼玉県,坂戸市
埼玉県,幸手市
埼玉県,鶴ヶ島市
埼玉県,日高市
埼玉県,吉川市
埼玉県,ふじみ野市
埼玉県,白岡市
埼玉県,北足立郡伊奈町
埼玉県,入間郡三芳町
埼玉県,入間郡毛呂山町
埼玉県,入間郡越生町
埼玉県,比企郡滑川町
埼玉県,比企郡嵐山町
埼玉県,比企郡小川町
埼玉県,比企郡川島町
埼玉県,比企郡吉見町
埼玉県,比企郡鳩山町
埼玉県,比企郡ときがわ町
埼玉県,秩父郡横瀬町
埼玉県,秩父郡皆野町
埼玉県,秩父郡長瀞町
埼玉県,秩父郡小鹿野町
埼玉県,秩父郡東秩父村
埼玉県,児玉郡美里町
埼玉県,児玉郡神川町
埼玉県,児玉郡上里町
埼玉県,大里郡寄居町
埼玉県,南埼玉郡宮代町
埼玉県,北葛飾郡杉戸町
埼玉県,北葛飾郡松伏町
千葉県,千葉市中央区
千葉県,千葉市花見川区
千葉県,千葉市稲毛区
千葉県,千葉市若葉区
千葉県,千葉市緑区
千葉県,千葉市美浜区
千葉県,銚子市
千葉県,市川市
千葉県,船橋市
千葉県,館山市
千葉県,木更津市
千葉県,松戸市
千葉県,野田市
千葉県,茂原市
千葉県,成田市
千葉県,佐倉市
千葉県,東金市
千葉県,旭市
千葉県,習志野市
千葉県,柏市
千葉県,勝浦市
千葉県,市原市
千葉県,流山市
千葉県,八千代市
千葉県,我孫子市
千葉県,鴨川市
千葉県,鎌ヶ谷市
千葉県,君津市
千葉県,富津市
千葉県,浦安市
千葉県,四街道市
千葉県,袖ヶ浦市
千葉県,八街市
千葉県,印西市
千葉県,白井市
千葉県,富里市
千葉県,南房総市
千葉県,匝瑳市
千葉県,香取市
千葉県,山武市
千葉県,いすみ市
千葉県,大網白里市
千葉県,印旛郡酒々井町
千葉県,印旛郡栄町
千葉県,香取郡神崎町
千葉県,香取郡多古町
千葉県,香取郡東庄町
千葉県,山武郡九十九里町
千葉県,山武郡芝山町
千葉県,山武郡横芝光町
千葉県,長生郡一宮町
千葉県,長生郡睦沢町
千葉県,長生郡長生村
千葉県,長生郡白子町
千葉県,長生郡長柄町
千葉県,長生郡長南町
千葉県,夷隅郡大多喜町
千葉県,夷隅郡御宿町
千葉県,安房郡鋸南町
東京都,千代田区
東京都,中央区
東京都,港区
東京都,新宿区
東京都,文京区
東京都,台東区
東京都,墨田区
東京都,江東区
東京都,品川区
東京都,目黒区
東京都,大田区
東京都,世田谷区
東京都,渋谷区
東京都,中野区
東京都,杉並区
東京都,豊島区
東京都,北区
東京都,荒川区
東京都,板橋区
東京都,練馬区
東京都,足立区
東京都,葛飾区
東京都,江戸川区
東京都,八王子市
東京都,立川市
東京都,武蔵野市
東京都,三鷹市
東京都,青梅市
東京都,府中市
東京都,昭島市
東京都,調布市
東京都,町田市
東京都,小金井市
東京都,小平市
東京都,日野市
東京都,東村山市
東京都,国分寺市
東京都,国立市
東京都,福生市
東京都,狛江市
東京都,東大和市
東京都,清瀬市
東京都,東久留米市
東京都,武蔵村山市
東京都,多摩市
東京都,稲城市
東京都,羽村市
東京都,あきる野市
東京都,西東京市
東京都,西多摩郡瑞穂町
東京都,西多摩郡日の出町
東京都,西多摩郡檜原村
東京都,西多摩郡奥多摩町
東京都,大島町
東京都,新島村
東京都,神津島村
東京都,三宅村
東京都,御蔵島村
東京都,八丈町
東京都,青ヶ島村
東京都,小笠原村
神奈川県,横浜市鶴見区
神奈川県,横浜市神奈川区
神奈川県,横浜市西区
神奈川県,横浜市中区
神奈川県,横浜市南区
神奈川県,横浜市保土ケ谷区
神奈川県,横浜市磯子区
神奈川県,横浜市金沢区
神奈川県,横浜市港北区
神奈川県,横浜市戸塚区
神奈川県,横浜市港南区
神奈川県,横浜市旭区
神奈川県,横浜市緑区
神奈川県,横浜市瀬谷区
神奈川県,横浜市栄区
神奈川県,横浜市泉区
神奈川県,横浜市青葉区
神奈川県,横浜市都筑区
神奈川県,川崎市川崎区
神奈川県,川崎市幸区
神奈川県,川崎市中原区
神奈川県,川崎市高津区
神奈川県,川崎市多摩区
神奈川県,川崎市宮前区
神奈川県,川崎市麻生区
神奈川県,相模原市緑区
神奈川県,相模原市中央区
神奈川県,相模原市南区
神奈川県,横須賀市
神奈川県,平塚市
神奈川県,鎌倉市
神奈川県,藤沢市
神奈川県,小田原市
神奈川県,茅ヶ崎市
神奈川県,逗子市
神奈川県,三浦市
神奈川県,秦野市
神奈川県,厚木市
神奈川県,大和市
神奈川県,伊勢原市
神奈川県,海老名市
神奈川県,座間市
神奈川県,南足柄市
神奈川県,綾瀬市
神奈川県,三浦郡葉山町
神奈川県,高座郡寒川町
神奈川県,中郡大磯町
神奈川県,中郡二宮町
神奈川県,足柄上郡中井町
神奈川県,足柄上郡大井町
神奈川県,足柄上郡松田町
神奈川県,足柄上郡山北町
神奈川県,足柄上郡開成町
神奈川県,足柄下郡箱根町
神奈川県,足柄下郡真鶴町
神奈川県,足柄下郡湯河原町
神奈川県,愛甲郡愛川町
神奈川県,愛甲郡清川村
新潟県,新潟市北区
新潟県,新潟市東区
新潟県,新潟市中央区
新潟県,新潟市江南区
新潟県,新潟市秋葉区
新潟県,新潟市南区
新潟県,新潟市西区
新潟県,新潟市西蒲区
新潟県,長岡市
新潟県,三条市
新潟県,柏崎市
新潟県,新発田市
新潟県,小千谷市
新潟県,加茂市
新潟県,十日町市
新潟県,見附市
新潟県,村上市
新潟県,燕市
新潟県,糸魚川市
新潟県,妙高市
新潟県,五泉市
新潟県,上越市
新潟県,阿賀野市
新潟県,佐渡市
新潟県,魚沼市
新潟県,南魚沼市
新潟県,胎内市
新潟県,北蒲原郡聖籠町
新潟県,西蒲原郡弥彦村
新潟県,南蒲原郡田上町
新潟県,東蒲原郡阿賀町
新潟県,三島郡出雲崎町
新潟県,南魚沼郡湯沢町
新潟県,中魚沼郡津南町
新潟県,刈羽郡刈羽村
新潟県,岩船郡関川村
新潟県,岩船郡粟島浦村
富山県,富山市
富山県,高岡市
富山県,魚津市
富山県,氷見市
富山県,滑川市
富山県,黒部市
富山県,砺波市
富山県,小矢部市
富山県,南砺市
富山県,射水市
富山県,中新川郡舟橋村
富山県,中新川郡上市町
富山県,中新川郡立山町
富山県,下新川郡入善町
富山県,下新川郡朝日町
石川県,金沢市
石川県,七尾市
石川県,小松市
石川県,輪島市
石川県,珠洲市
石川県,加賀市
石川県,羽咋市
石川県,かほく市
石川県,白山市
石川県,能美市
石川県,野々市市
石川県,能美郡川北町
石川県,河北郡津幡町
石川県,河北郡内灘町
石川県,羽咋郡志賀町
石川県,羽咋郡宝達志水町
石川県,鹿島郡中能登町
石川県,鳳珠郡穴水町
石川県,鳳珠郡能登町
福井県,福井市
福井県,敦賀市
福井県,小浜市
福井県,大野市
福井県,勝山市
福井県,鯖江市
福井県,あわら市
福井県,越前市
福井県,坂井市
福井県,吉田郡永平寺町
福井県,今立郡池田町
福井県,南条郡南越前町
福井県,丹生郡越前町
福井県,三方郡美浜町
福井県,大飯郡高浜町
福井県,大飯郡おおい町
福井県,三方上中郡若狭町
山梨県,甲府市
山梨県,富士吉田市
山梨県,都留市
山梨県,山梨市
山梨県,大月市
山梨県,韮崎市
山梨県,南アルプス市
山梨県,北杜市
山梨県,甲斐市
山梨県,笛吹市
山梨県,上野原市
山梨県,甲州市
山梨県,中央市
山梨県,西八代郡市川三郷町
山梨県,南巨摩郡早川町
山梨県,南巨摩郡身延町
山梨県,南巨摩郡南部町
山梨県,南巨摩郡富士川町
山梨県,中巨摩郡昭和町
山梨県,南都留郡道志村
山梨県,南都留郡西桂町
山梨県,南都留郡忍野村
山梨県,南都留郡山中湖村
山梨県,南都留郡鳴沢村
山梨県,南都留郡富士河口湖町
山梨県,北都留郡小菅村
山梨県,北都留郡丹波山村
長野県,長野市
長野県,松本市
長野県,上田市
長野県,岡谷市
長野県,飯田市
長野県,諏訪市
長野県,須坂市
長野県,小諸市
長野県,伊那市
長野県,駒ヶ根市
長野県,中野市
長野県,大町市
長野県,飯山市
長野県,茅野市
長野県,塩尻市
長野県,佐久市
長野県,千曲市
長野県,東御市
長野県,安曇野市
長野県,南佐久郡小海町
長野県,南佐久郡川上村
長野県,南佐久郡南牧村
長野県,南佐久郡南相木村
長野県,南佐久郡北相木村
長野県,南佐久郡佐久穂町
長野県,北佐久郡軽井沢町
長野県,北佐久郡御代田町
長野県,北佐久郡立科町
長野県,小県郡青木村
長野県,小県郡長和町
長野県,諏訪郡下諏訪町
長野県,諏訪郡富士見町
長野県,諏訪郡原村
長野県,上伊那郡辰野町
長野県,上伊那郡箕輪町
長野県,上伊那郡飯島町
長野県,上伊那郡南箕輪村
長野県,上伊那郡中川村
長野県,上伊那郡宮田村
長野県,下伊那郡松川町
長野県,下伊那郡高森町
長野県,下伊那郡阿南町
長野県,下伊那郡阿智村
長野県,下伊那郡平谷村
長野県,下伊那郡根羽村
長野県,下伊那郡下條村
長野県,下伊那郡売木村
長野県,下伊那郡天龍村
長野県,下伊那郡泰阜村
長野県,下伊那郡喬木村
長野県,下伊那郡豊丘村
長野県,下伊那郡大鹿村
長野県,木曽郡上松町
長野県,木曽郡南木曽町
長野県,木曽郡木祖村
長野県,木曽郡王滝村
長野県,木曽郡大桑村
長野県,木曽郡木曽町
長野県,東筑摩郡麻績村
長野県,東筑摩郡生坂村
長野県,東筑摩郡山形村
長野県,東筑摩郡朝日村
長野県,東筑摩郡筑北村
長野県,北安曇郡池田町
長野県,北安曇郡松川村
長野県,北安曇郡白馬村
長野県,北安曇郡小谷村
長野県,埴科郡坂城町
長野県,上高井郡小布施町
長野県,上高井郡高山村
長野県,下高井郡山ノ内町
長野県,下高井郡木島平村
長野県,下高井郡野沢温泉村
長野県,上水内郡信濃町
長野県,上水内郡小川村
長野県,上水内郡飯綱町
長野県,下水内郡栄村
岐阜県,岐阜市
岐阜県,大垣市
岐阜県,高山市
岐阜県,多治見市
岐阜県,関市
岐阜県,中津川市
岐阜県,美濃市
岐阜県,瑞浪市
岐阜県,羽島市
岐阜県,恵那市
岐阜県,美濃加茂市
岐阜県,土岐市
岐阜県,各務原市
岐阜県,可児市
岐阜県,山県市
岐阜県,瑞穂市
岐阜県,飛騨市
岐阜県,本巣市
岐阜県,郡上市
岐阜県,下呂市
岐阜県,海津市
岐阜県,羽島郡岐南町
岐阜県,羽島郡笠松町
岐阜県,養老郡養老町
岐阜県,不破郡垂井町
岐阜県,不破郡関ケ原町
岐阜県,安八郡神戸町
岐阜県,安八郡輪之内町
岐阜県,安八郡安八町
岐阜県,揖斐郡揖斐川町
岐阜県,揖斐郡大野町
岐阜県,揖斐郡池田町
岐阜県,本巣郡北方町
岐阜県,加茂郡坂祝町
岐阜県,加茂郡富加町
岐阜県,加茂郡川辺町
岐阜県,加茂郡七宗町
岐阜県,加茂郡八百津町
岐阜県,加茂郡白川町
岐阜県,加茂郡東白川村
岐阜県,可児郡御嵩町
岐阜県,大野郡白川村
静岡県,静岡市葵区
静岡県,静岡市駿河区
静岡県,静岡市清水区
静岡県,浜松市中区
静岡県,浜松市東区
静岡県,浜松市西区
静岡県,浜松市南区
静岡県,浜松市北区
静岡県,浜松市浜北区
静岡県,浜松市天竜区
静岡県,沼津市
静岡県,熱海市
静岡県,三島市
静岡県,富士宮市
静岡県,伊東市
静岡県,島田市
静岡県,富士市
静岡県,磐田市
静岡県,焼津市
静岡県,掛川市
静岡県,藤枝市
静岡県,御殿場市
静岡県,袋井市
静岡県,下田市
静岡県,裾野市
静岡県,湖西市
静岡県,伊豆市
静岡県,御前崎市
静岡県,菊川市
静岡県,伊豆の国市
静岡県,牧之原市
静岡県,賀茂郡東伊豆町
静岡県,賀茂郡河津町
静岡県,賀茂郡南伊豆町
静岡県,賀茂郡松崎町
静岡県,賀茂郡西伊豆町
静岡県,田方郡函南町
静岡県,駿東郡清水町
静岡県,駿東郡長泉町
静岡県,駿東郡小山町
静岡県,榛原郡吉田町
静岡県,榛原郡川根本町
静岡県,周智郡森町
愛知県,名古屋市千種区
愛知県,名古屋市東区
愛知県,名古屋市北区
愛知県,名古屋市西区
愛知県,名古屋市中村区
愛知県,名古屋市中区
愛知県,名古屋市昭和区
愛知県,名古屋市瑞穂区
愛知県,名古屋市熱田区
愛知県,名古屋市中川区
愛知県,名古屋市港区
愛知県,名古屋市南区
愛知県,名古屋市守山区
愛知県,名古屋市緑区
愛知県,名古屋市名東区
愛知県,名古屋市天白区
愛知県,豊橋市
愛知県,岡崎市
愛知県,一宮市
愛知県,瀬戸市
愛知県,半田市
愛知県,春日井市
愛知県,豊川市
愛知県,津島市
愛知県,碧南市
愛知県,刈谷市
愛知県,豊田市
愛知県,安城市
愛知県,西尾市
愛知県,蒲郡市
愛知県,犬山市
愛知県,常滑市
愛知県,江南市
愛知県,小牧市
愛知県,稲沢市
愛知県,新城市
愛知県,東海市
愛知県,大府市
愛知県,知多市
愛知県,知立市
愛知県,尾張旭市
愛知県,高浜市
愛知県,岩倉市
愛知県,豊明市
愛知県,日進市
愛知県,田原市
愛知県,愛西市
愛知県,清須市
愛知県,北名古屋市
愛知県,弥富市
愛知県,みよし市
愛知県,あま市
愛知県,長久手市
愛知県,愛知郡東郷町
愛知県,西春日井郡豊山町
愛知県,丹羽郡大口町
愛知県,丹羽郡扶桑町
愛知県,海部郡大治町
愛知県,海部郡蟹江町
愛知県,海部郡飛島村
愛知県,知多郡阿久比町
愛知県,知多郡東浦町
愛知県,知多郡南知多町
愛知県,知多郡美浜町
愛知県,知多郡武豊町
愛知県,額田郡幸田町
愛知県,北設楽郡設楽町
愛知県,北設楽郡東栄町
愛知県,北設楽郡豊根村
三重県,津市
三重県,四日市市
三重県,伊勢市
三重県,松阪市
三重県,桑名市
三重県,鈴鹿市
三重県,名張市
三重県,尾鷲市
三重県,亀山市
三重県,鳥羽市
三重県,熊野市
三重県,いなべ市
三重県,志摩市
三重県,伊賀市
三重県,桑名郡木曽岬町
三重県,員弁郡東員町
三重県,三重郡菰野町
三重県,三重郡朝日町
三重県,三重郡川越町
三重県,多気郡多気町
三重県,多気郡明和町
三重県,多気郡大台町
三重県,度会郡玉城町
三重県,度会郡度会町
三重県,度会郡大紀町
三重県,度会郡南伊勢町
三重県,北牟婁郡紀北町
三重県,南牟婁郡御浜町
三重県,南牟婁郡紀宝町
滋賀県,大津市
滋賀県,彦根市
滋賀県,長浜市
滋賀県,近江八幡市
滋賀県,草津市
滋賀県,守山市
滋賀県,栗東市
滋賀県,甲賀市
滋賀県,野洲市
滋賀県,湖南市
滋賀県,高島市
滋賀県,東近江市
滋賀県,米原市
滋賀県,蒲生郡日野町
滋賀県,蒲生郡竜王町
滋賀県,愛知郡愛荘町
滋賀県,犬上郡豊郷町
滋賀県,犬上郡甲良町
滋賀県,犬上郡多賀町
京都府,京都市北区
京都府,京都市上京区
京都府,京都市左京区
京都府,京都市中京区
京都府,京都市東山区
京都府,京都市下京区
京都府,京都市南区
京都府,京都市右京区
京都府,京都市伏見区
京都府,京都市山科区
京都府,京都市西京区
京都府,福知山市
京都府,舞鶴市
京都府,綾部市
京都府,宇治市
京都府,宮津市
京都府,亀岡市
京都府,城陽市
京都府,向日市
京都府,長岡京市
京都府,八幡市
京都府,京田辺市
京都府,京丹後市
京都府,南丹市
京都府,木津川市
京都府,乙訓郡大山崎町
京都府,久世郡久御山町
京都府,綴喜郡井手町
京都府,綴喜郡宇治田原町
京都府,相楽郡笠置町
京都府,相楽郡和束町
京都府,相楽郡精華町
京都府,相楽郡南山城村
京都府,船井郡京丹波町
京都府,与謝郡伊根町
京都府,与謝郡与謝野町
大阪府,大阪市都島区
大阪府,大阪市福島区
大阪府,大阪市此花区
大阪府,大阪市西区
大阪府,大阪市港区
大阪府,大阪市大正区
大阪府,大阪市天王寺区
大阪府,大阪市浪速区
大阪府,大阪市西淀川区
大阪府,大阪市東淀川区
大阪府,大阪市東成区
大阪府,大阪市生野区
大阪府,大阪市旭区
大阪府,大阪市城東区
大阪府,大阪市阿倍野区
大阪府,大阪市住吉区
大阪府,大阪市東住吉区
大阪府,大阪市西成区
大阪府,大阪市淀川区
大阪府,大阪市鶴見区
大阪府,大阪市住之江区
大阪府,大阪市平野区
大阪府,大阪市北区
大阪府,大阪市中央区
大阪府,堺市堺区
大阪府,堺市中区
大阪府,堺市東区
大阪府,堺市西区
大阪府,堺市南区
大阪府,堺市北区
大阪府,堺市美原区
大阪府,岸和田市
大阪府,豊中市
大阪府,池田市
大阪府,吹田市
大阪府,泉大津市
大阪府,高槻市
大阪府,貝塚市
大阪府,守口市
大阪府,枚方市
大阪府,茨木市
大阪府,八尾市
大阪府,泉佐野市
大阪府,富田林市
大阪府,寝屋川市
大阪府,河内長野市
大阪府,松原市
大阪府,大東市
大阪府,和泉市
大阪府,箕面市
大阪府,柏原市
大阪府,羽曳野市
大阪府,門真市
大阪府,摂津市
大阪府,高石市
大阪府,藤井寺市
大阪府,東大阪市
大阪府,泉南市
大阪府,四條畷市
大阪府,交野市
大阪府,大阪狭山市
大阪府,阪南市
大阪府,三島郡島本町
大阪府,豊能郡豊能町
大阪府,豊能郡能勢町
大阪府,泉北郡忠岡町
大阪府,泉南郡熊取町
大阪府,泉南郡田尻町
大阪府,泉南郡岬町
大阪府,南河内郡太子町
大阪府,南河内郡河南町
大阪府,南河内郡千早赤阪村
兵庫県,神戸市東灘区
兵庫県,神戸市灘区
兵庫県,神戸市兵庫区
兵庫県,神戸市長田区
兵庫県,神戸市須磨区
兵庫県,神戸市垂水区
兵庫県,神戸市北区
兵庫県,神戸市中央区
兵庫県,神戸市西区
兵庫県,姫路市
兵庫県,尼崎市
兵庫県,明石市
兵庫県,西宮市
兵庫県,洲本市
兵庫県,芦屋市
兵庫県,伊丹市
兵庫県,相生市
兵庫県,豊岡市
兵庫県,加古川市
兵庫県,赤穂市
兵庫県,西脇市
兵庫県,宝塚市
兵庫県,三木市
兵庫県,高砂市
兵庫県,川西市
兵庫県,小野市
兵庫県,三田市
兵庫県,加西市
兵庫県,丹波篠山市
兵庫県,養父市
兵庫県,丹波市
兵庫県,南あわじ市
兵庫県,朝来市
兵庫県,淡路市
兵庫県,宍粟市
兵庫県,加東市
兵庫県,たつの市
兵庫県,川辺郡猪名川町
兵庫県,多可郡多可町
兵庫県,加古郡稲美町
兵庫県,加古郡播磨町
兵庫県,神崎郡市川町
兵庫県,神崎郡福崎町
兵庫県,神崎郡神河町
兵庫県,揖保郡太子町
兵庫県,赤穂郡上郡町
兵庫県,佐用郡佐用町
兵庫県,美方郡香美町
兵庫県,美方郡新温泉町
奈良県,奈良市
奈良県,大和高田市
奈良県,大和郡山市
奈良県,天理市
奈良県,橿原市
奈良県,桜井市
奈良県,五條市
奈良県,御所市
奈良県,生駒市
奈良県,香芝市
奈良県,葛城市
奈良県,宇陀市
奈良県,山辺郡山添村
奈良県,生駒郡平群町
奈良県,生駒郡三郷町
奈良県,生駒郡斑鳩町
奈良県,生駒郡安堵町
奈良県,磯城郡川西町
奈良県,磯城郡三宅町
奈良県,磯城郡田原本町
奈良県,宇陀郡曽爾村
奈良県,宇陀郡御杖村
奈良県,高市郡高取町
奈良県,高市郡明日香村
奈良県,北葛城郡上牧町
奈良県,北葛城郡王寺町
奈良県,北葛城郡広陵町
奈良県,北葛城郡河合町
奈良県,吉野郡吉野町
奈良県,吉野郡大淀町
奈良県,吉野郡下市町
奈良県,吉野郡黒滝村
奈良県,吉野郡天川村
奈良県,吉野郡野迫川村
奈良県,吉野郡十津川村
奈良県,吉野郡下北山村
奈良県,吉野郡上北山村
奈良県,吉野郡川上村
奈良県,吉野郡東吉野村
和歌山県,和歌山市
和歌山県,海南市
和歌山県,橋本市
和歌山県,有田市
和歌山県,御坊市
和歌山県,田辺市
和歌山県,新宮市
和歌山県,紀の川市
和歌山県,岩出市
和歌山県,海草郡紀美野町
和歌山県,伊都郡かつらぎ町
和歌山県,伊都郡九度山町
和歌山県,伊都郡高野町
和歌山県,有田郡湯浅町
和歌山県,有田郡広川町
和歌山県,有田郡有田川町
和歌山県,日高郡美浜町
和歌山県,日高郡日高町
和歌山県,日高郡由良町
和歌山県,日高郡印南町
和歌山県,日高郡みなべ町
和歌山県,日高郡日高川町
和歌山県,西牟婁郡白浜町
和歌山県,西牟婁郡上富田町
和歌山県,西牟婁郡すさみ町
和歌山県,東牟婁郡那智勝浦町
和歌山県,東牟婁郡太地町
和歌山県,東牟婁郡古座川町
和歌山県,東牟婁郡北山村
和歌山県,東牟婁郡串本町
鳥取県,鳥取市
鳥取県,米子市
鳥取県,倉吉市
鳥取県,境港市
鳥取県,岩美郡岩美町
鳥取県,八頭郡若桜町
鳥取県,八頭郡智頭町
鳥取県,八頭郡八頭町
鳥取県,東伯郡三朝町
鳥取県,東伯郡湯梨浜町
鳥取県,東伯郡琴浦町
鳥取県,東伯郡北栄町
鳥取県,西伯郡日吉津村
鳥取県,西伯郡大山町
鳥取県,西伯郡南部町
鳥取県,西伯郡伯耆町
鳥取県,日野郡日南町
鳥取県,日野郡日野町
鳥取県,日野郡江府町
島根県,松江市
島根県,浜田市
島根県,出雲市
島根県,益田市
島根県,大田市
島根県,安来市
島根県,江津市
島根県,雲南市
島根県,仁多郡奥出雲町
島根県,飯石郡飯南町
島根県,邑智郡川本町
島根県,邑智郡美郷町
島根県,邑智郡邑南町
島根県,鹿足郡津和野町
島根県,鹿足郡吉賀町
島根県,隠岐郡海士町
島根県,隠岐郡西ノ島町
島根県,隠岐郡知夫村
島根県,隠岐郡隠岐の島町
岡山県,岡山市北区
岡山県,岡山市中区
岡山県,岡山市東区
岡山県,岡山市南区
岡山県,倉敷市
岡山県,津山市
岡山県,玉野市
岡山県,笠岡市
岡山県,井原市
岡山県,総社市
岡山県,高梁市
岡山県,新見市
岡山県,備前市
岡山県,瀬戸内市
岡山県,赤磐市
岡山県,真庭市
岡山県,美作市
岡山県,浅口市
岡山県,和気郡和気町
岡山県,都窪郡早島町
岡山県,浅口郡里庄町
岡山県,小田郡矢掛町
岡山県,真庭郡新庄村
岡山県,苫田郡鏡野町
岡山県,勝田郡勝央町
岡山県,勝田郡奈義町
岡山県,英田郡西粟倉村
岡山県,久米郡久米南町
岡山県,久米郡美咲町
岡山県,加賀郡吉備中央町
広島県,広島市中区
広島県,広島市東区
広島県,広島市南区
広島県,広島市西区
広島県,広島市安佐南区
広島県,広島市安佐北区
広島県,広島市安芸区
広島県,広島市佐伯区
広島県,呉市
広島県,竹原市
広島県,三原市
広島県,尾道市
広島県,福山市
広島県,府中市
広島県,三次市
広島県,庄原市
広島県,大竹市
広島県,東広島市
広島県,廿日市市
広島県,安芸高田市
広島県,江田島市
広島県,安芸郡府中町
広島県,安芸郡海田町
広島県,安芸郡熊野町
広島県,安芸郡坂町
広島県,山県郡安芸太田町
広島県,山県郡北広島町
広島県,豊田郡大崎上島町
広島県,世羅郡世羅町
広島県,神石郡神石高原町
山口県,下関市
山口県,宇部市
山口県,山口市
山口県,萩市
山口県,防府市
山口県,下松市
山口県,岩国市
山口県,光市
山口県,長門市
山口県,柳井市
山口県,美祢市
山口県,周南市
山口県,山陽小野田市
山口県,大島郡周防大島町
山口県,玖珂郡和木町
山口県,熊毛郡上関町
山口県,熊毛郡田布施町
山口県,熊毛郡平生町
山口県,阿武郡阿武町
徳島県,徳島市
徳島県,鳴門市
徳島県,小松島市
徳島県,阿南市
徳島県,吉野川市
徳島県,阿波市
徳島県,美馬市
徳島県,三好市
徳島県,勝浦郡勝浦町
徳島県,勝浦郡上勝町
徳島県,名東郡佐那河内村
徳島県,名西郡石井町
徳島県,名西郡神山町
徳島県,那賀郡那賀町
徳島県,海部郡牟岐町
徳島県,海部郡美波町
徳島県,海部郡海陽町
徳島県,板野郡松茂町
徳島県,板野郡北島町
徳島県,板野郡藍住町
徳島県,板野郡板野町
徳島県,板野郡上板町
徳島県,美馬郡つるぎ町
徳島県,三好郡東みよし町
香川県,高松市
香川県,丸亀市
香川県,坂出市
香川県,善通寺市
香川県,観音寺市
香川県,さぬき市
香川県,東かがわ市
香川県,三豊市
香川県,小豆郡土庄町
香川県,小豆郡小豆島町
香川県,木田郡三木町
香川県,香川郡直島町
香川県,綾歌郡宇多津町
香川県,綾歌郡綾川町
香川県,仲多度郡琴平町
香川県,仲多度郡多度津町
香川県,仲多度郡まんのう町
愛媛県,松山市
愛媛県,今治市
愛媛県,宇和島市
愛媛県,八幡浜市
愛媛県,新居浜市
愛媛県,西条市
愛媛県,大洲市
愛媛県,伊予市
愛媛県,四国中央市
愛媛県,西予市
愛媛県,東温市
愛媛県,越智郡上島町
愛媛県,上浮穴郡久万高原町
愛媛県,伊予郡松前町
愛媛県,伊予郡砥部町
愛媛県,喜多郡内子町
愛媛県,西宇和郡伊方町
愛媛県,北宇和郡松野町
愛媛県,北宇和郡鬼北町
愛媛県,南宇和郡愛南町
高知県,高知市
高知県,室戸市
高知県,安芸市
高知県,南国市
高知県,土佐市
高知県,須崎市
高知県,宿毛市
高知県,土佐清水市
高知県,四万十市
高知県,香南市
高知県,香美市
高知県,安芸郡東洋町
高知県,安芸郡奈半利町
高知県,安芸郡田野町
高知県,安芸郡安田町
高知県,安芸郡北川村
高知県,安芸郡馬路村
高知県,安芸郡芸西村
高知県,長岡郡本山町
高知県,長岡郡大豊町
高知県,土佐郡土佐町
高知県,土佐郡大川村
高知県,吾川郡いの町
高知県,吾川郡仁淀川町
高知県,高岡郡中土佐町
高知県,高岡郡佐川町
高知県,高岡郡越知町
高知県,高岡郡檮原町
高知県,高岡郡日高村
高知県,高岡郡津野町
高知県,高岡郡四万十町
高知県,幡多郡大月町
高知県,幡多郡三原村
高知県,幡多郡黒潮町
福岡県,北九州市門司区
福岡県,北九州市若松区
福岡県,北九州市戸畑区
福岡県,北九州市小倉北区
福岡県,北九州市小倉南区
福岡県,北九州市八幡東区
福岡県,北九州市八幡西区
福岡県,福岡市東区
福岡県,福岡市博多区
福岡県,福岡市中央区
福岡県,福岡市南区
福岡県,福岡市西区
福岡県,福岡市城南区
福岡県,福岡市早良区
福岡県,大牟田市
福岡県,久留米市
福岡県,直方市
福岡県,飯塚市
福岡県,田川市
福岡県,柳川市
福岡県,八女市
福岡県,筑後市
福岡県,大川市
福岡県,行橋市
福岡県,豊前市
福岡県,中間市
福岡県,小郡市
福岡県,筑紫野市
福岡県,春日市
福岡県,大野城市
福岡県,宗像市
福岡県,太宰府市
福岡県,古賀市
福岡県,福津市
福岡県,うきは市
福岡県,宮若市
福岡県,嘉麻市
福岡県,朝倉市
福岡県,みやま市
福岡県,糸島市
福岡県,那珂川市
福岡県,糟屋郡宇美町
福岡県,糟屋郡篠栗町
福岡県,糟屋郡志免町
福岡県,糟屋郡須恵町
福岡県,糟屋郡新宮町
福岡県,糟屋郡久山町
福岡県,糟屋郡粕屋町
福岡県,遠賀郡芦屋町
福岡県,遠賀郡水巻町
福岡県,遠賀郡岡垣町
福岡県,遠賀郡遠賀町
福岡県,鞍手郡小竹町
福岡県,鞍手郡鞍手町
福岡県,嘉穂郡桂川町
福岡県,朝倉郡筑前町
福岡県,朝倉郡東峰村
福岡県,三井郡大刀洗町
福岡県,三潴郡大木町
福岡県,八女郡広川町
福岡県,田川郡香春町
福岡県,田川郡添田町
福岡県,田川郡糸田町
福岡県,田川郡川崎町
福岡県,田川郡大任町
福岡県,田川郡赤村
福岡県,田川郡福智町
福岡県,京都郡苅田町
福岡県,京都郡みやこ町
福岡県,築上郡吉富町
福岡県,築上郡上毛町
福岡県,築上郡築上町
佐賀県,佐賀市
佐賀県,唐津市
佐賀県,鳥栖市
佐賀県,多久市
佐賀県,伊万里市
佐賀県,武雄市
佐賀県,鹿島市
佐賀県,小城市
佐賀県,嬉野市
佐賀県,神埼市
佐賀県,神埼郡吉野ヶ里町
佐賀県,三養基郡基山町
佐賀県,三養基郡上峰町
佐賀県,三養基郡みやき町
佐賀県,東松浦郡玄海町
佐賀県,西松浦郡有田町
佐賀県,杵島郡大町町
佐賀県,杵島郡江北町
佐賀県,杵島郡白石町
佐賀県,藤津郡太良町
長崎県,長崎市
長崎県,佐世保市
長崎県,島原市
長崎県,諫早市
長崎県,大村市
長崎県,平戸市
長崎県,松浦市
長崎県,対馬市
長崎県,壱岐市
長崎県,五島市
長崎県,西海市
長崎県,雲仙市
長崎県,南島原市
長崎県,西彼杵郡長与町
長崎県,西彼杵郡時津町
長崎県,東彼杵郡東彼杵町
長崎県,東彼杵郡川棚町
長崎県,東彼杵郡波佐見町
長崎県,北松浦郡小値賀町
長崎県,北松浦郡佐々町
長崎県,南松浦郡新上五島町
熊本県,熊本市中央区
熊本県,熊本市東区
熊本県,熊本市西区
熊本県,熊本市南区
熊本県,熊本市北区
熊本県,八代市
熊本県,人吉市
熊本県,荒尾市
熊本県,水俣市
熊本県,玉名市
熊本県,山鹿市
熊本県,菊池市
熊本県,宇土市
熊本県,上天草市
熊本県,宇城市
熊本県,阿蘇市
熊本県,天草市
熊本県,合志市
熊本県,下益城郡美里町
熊本県,玉名郡玉東町
熊本県,玉名郡南関町
熊本県,玉名郡長洲町
熊本県,玉名郡和水町
熊本県,菊池郡大津町
熊本県,菊池郡菊陽町
熊本県,阿蘇郡南小国町
熊本県,阿蘇郡小国町
熊本県,阿蘇郡産山村
熊本県,阿蘇郡高森町
熊本県,阿蘇郡西原村
熊本県,阿蘇郡南阿蘇村
熊本県,上益城郡御船町
熊本県,上益城郡嘉島町
熊本県,上益城郡益城町
熊本県,上益城郡甲佐町
熊本県,上益城郡山都町
熊本県,八代郡氷川町
熊本県,葦北郡芦北町
熊本県,葦北郡津奈木町
熊本県,球磨郡錦町
熊本県,球磨郡多良木町
熊本県,球磨郡水上村
熊本県,球磨郡相良村
熊本県,球磨郡五木村
熊本県,球磨郡山江村
熊本県,球磨郡球磨村
熊本県,球磨郡あさぎり町
熊本県,天草郡苓北町
熊本県,球磨郡湯前町
大分県,大分市
大分県,別府市
大分県,中津市
大分県,日田市
大分県,佐伯市
大分県,臼杵市
大分県,津久見市
大分県,竹田市
大分県,豊後高田市
大分県,杵築市
大分県,宇佐市
大分県,豊後大野市
大分県,由布市
大分県,国東市
大分県,東国東郡姫島村
大分県,速見郡日出町
大分県,玖珠郡九重町
大分県,玖珠郡玖珠町
宮崎県,宮崎市
宮崎県,都城市
宮崎県,延岡市
宮崎県,日南市
宮崎県,小林市
宮崎県,日向市
宮崎県,串間市
宮崎県,西都市
宮崎県,えびの市
宮崎県,北諸県郡三股町
宮崎県,西諸県郡高原町
宮崎県,東諸県郡国富町
宮崎県,東諸県郡綾町
宮崎県,児湯郡高鍋町
宮崎県,児湯郡新富町
宮崎県,児湯郡西米良村
宮崎県,児湯郡木城町
宮崎県,児湯郡川南町
宮崎県,児湯郡都農町
宮崎県,東臼杵郡門川町
宮崎県,東臼杵郡諸塚村
宮崎県,東臼杵郡椎葉村
宮崎県,東臼杵郡美郷町
宮崎県,西臼杵郡高千穂町
宮崎県,西臼杵郡日之影町
宮崎県,西臼杵郡五ヶ瀬町
鹿児島県,鹿児島市
鹿児島県,鹿屋市
鹿児島県,枕崎市
鹿児島県,阿久根市
鹿児島県,出水市
鹿児島県,指宿市
鹿児島県,西之表市
鹿児島県,垂水市
鹿児島県,薩摩川内市
鹿児島県,日置市
鹿児島県,曽於市
鹿児島県,霧島市
鹿児島県,いちき串木野市
鹿児島県,南さつま市
鹿児島県,志布志市
鹿児島県,奄美市
鹿児島県,南九州市
鹿児島県,伊佐市
鹿児島県,姶良市
鹿児島県,鹿児島郡三島村
鹿児島県,鹿児島郡十島村
鹿児島県,薩摩郡さつま町
鹿児島県,出水郡長島町
鹿児島県,姶良郡湧水町
鹿児島県,曽於郡大崎町
鹿児島県,肝属郡東串良町
鹿児島県,肝属郡錦江町
鹿児島県,肝属郡南大隅町
鹿児島県,肝属郡肝付町
鹿児島県,熊毛郡中種子町
鹿児島県,熊毛郡南種子町
鹿児島県,熊毛郡屋久島町
鹿児島県,大島郡大和村
鹿児島県,大島郡宇検村
鹿児島県,大島郡瀬戸内町
鹿児島県,大島郡龍郷町
鹿児島県,大島郡喜界町
鹿児島県,大島郡徳之島町
鹿児島県,大島郡天城町
鹿児島県,大島郡伊仙町
鹿児島県,大島郡和泊町
鹿児島県,大島郡知名町
鹿児島県,大島郡与論町
沖縄県,那覇市
沖縄県,宜野湾市
沖縄県,石垣市
沖縄県,浦添市
沖縄県,名護市
沖縄県,糸満市
沖縄県,沖縄市
沖縄県,豊見城市
沖縄県,うるま市
沖縄県,宮古島市
沖縄県,南城市
沖縄県,国頭郡国頭村
沖縄県,国頭郡大宜味村
沖縄県,国頭郡東村
沖縄県,国頭郡今帰仁村
沖縄県,国頭郡本部町
沖縄県,国頭郡恩納村
沖縄県,国頭郡宜野座村
沖縄県,国頭郡金武町
沖縄県,国頭郡伊江村
沖縄県,中頭郡読谷村
沖縄県,中頭郡嘉手納町
沖縄県,中頭郡北谷町
沖縄県,中頭郡北中城村
沖縄県,中頭郡中城村
沖縄県,中頭郡西原町
沖縄県,島尻郡与那原町
沖縄県,島尻郡南風原町
沖縄県,島尻郡渡嘉敷村
沖縄県,島尻郡座間味村
沖縄県,島尻郡粟国村
沖縄県,島尻郡渡名喜村
沖縄県,島尻郡南大東村
沖縄県,島尻郡北大東村
沖縄県,島尻郡伊平屋村
沖縄県,島尻郡伊是名村
沖縄県,島尻郡久米島町
沖縄県,島尻郡八重瀬町
沖縄県,宮古郡多良間村
沖縄県,八重山郡竹富町
沖縄県,八重山郡与那国町
## Sheet: サーバの構築フロー
## Sheet: 新規開発サーバのコスト
# | サービス | スペック | USD/月 | 計算
1.0 | Amazon Relational Database Service for Aurora PostgreSQL | db.t4g.medium | 109.12 | https://calculator.aws/#/estimate?id=422bd55431ee660396b35d80ec44b88af88f9362
2.0 | DynamoDB | 19.46 | https://calculator.aws/#/estimate?id=4c1f325c42758c01589e941a8c97db068a5cadc9
3.0 | Elastic Container Service | 99.01 | API : https://calculator.aws/#/estimate?id=2e255800911e0d106369e36e04041eed9be7bf14 
Socket : https://calculator.aws/#/estimate?id=2d2cc5ea212b0dfa019c3d64088fd2493a1400ea
4.0 | Elastic Compute Cloud | t3.small | 65.0 | https://calculator.aws/#/estimate?id=eaf04de6fef7e994d9f8933ae3ece13e8bd97428
5.0 | Virtual Private Cloud | 27.4 | https://calculator.aws/#/estimate?id=3be0cd44db18e2db9fad2291b7cbc37b1117e02a
6.0 | CloudWatch | 23.3 | 直近のサーバのコストを基に算出
7.0 | Elastic Load Balancing | 16.5 | 直近のサーバのコストを基に算出
8.0 | Data Transfer | 16.12 | 直近のサーバのコストを基に算出
9.0 | WAF | 15.87 | 直近のサーバのコストを基に算出
10.0 | Simple Storage Service | 6.21 | 直近のサーバのコストを基に算出
11.0 | Key Management Service | 4.0 | 直近のサーバのコストを基に算出
12.0 | Route 53 | 2.51 | 直近のサーバのコストを基に算出
13.0 | EC2 Container Registry (ECR) | 1.35 | 直近のサーバのコストを基に算出
14.0 | Secrets Manager | 0.8 | 直近のサーバのコストを基に算出
15.0 | Amplify | 0.5 | 直近のサーバのコストを基に算出
16.0 | S3 Glacier Deep Archive | 0.21 | 直近のサーバのコストを基に算出
17.0 | Simple Notification Service | 0.02 | 直近のサーバのコストを基に算出
18.0 | CloudFront | 0.01 | 直近のサーバのコストを基に算出
19.0 | API Gateway | 0.0 | 直近のサーバのコストを基に算出
20.0 | Lambda | 0.0 | 直近のサーバのコストを基に算出
1カ月の合計 | 407.39 | USD
03/10 から03/18の間に開発環境のサーバを新規に立てると想定した場合のコスト | 122.217 | USD
## Sheet: コストについて
## Sheet: セキュリティ_0303
No | 大項目 | 原文 | オータケによるWEB版を想定した際の解釈・要旨 | 具体的な機能・対応 | サブタスク | Scuti 対応要否（想定） | Scuti 対応可否（想定） | 評価
組織体制: 統括教育情報セキュリティ責任者、CISO、教育情報セキュリティ責任者、教育情報セキュリティ管理者、教育情報システム管理者、教育情報システム担当者を網羅する連絡体制の整備。 | 不要 | 学校
利用目的: 教職員は、業務以外の目的に情報資産を利用してはならない。 | 不要 | 学校
外部記録媒体の暗号化: 外部電磁的記録媒体の暗号化の徹底。暗号化機能つきの媒体を利用し、暗号化機能を活かす。 | 不要 | 学校
ファイル暗号化: パソコンやモバイル端末等におけるデータの暗号化等の機能を有効に利用しなければならない。端末に暗号化機能を持つセキュリティチップが搭載されている場合、その機能を有効に活用しなければならない。 | 確認 | 学校
外部記録媒体の暗号化: 外部電磁的記録媒体の暗号化の徹底。暗号化機能つきの媒体を利用し、暗号化機能を活かす。 | 不要 | 学校
6.0 | 情 報 の 通 信 経 路 の セ キ ュ リ テ ィ 確 保 | 調達: 情報システム開発、導入、保守等の調達に当たっては、調達仕様書に必要とする技術的なセキュリティ機能を明記しなければならない。機器及びソフトウェアの調達に当たっては、当該製品のセキュリティ機能を調査し、情報セキュリティ上問題のないことを確認しなければならない。 | 不要 | 学校
10.0 | ク ラ ウ ド 利 用 者 側 の セ キ ュ リ テ ィ 確 保 | パスワード管理: サーバ、ネットワーク機器及びパソコン等の端末にパスワードを記憶させてはならない。 | 不要 | 学校
11.0 | その他のセキュリティ対策 | 媒体チェック: 外部からデータ又はソフトウェアを取り入れる場合には、必ず不正プログラム対策ソフトウェアによるチェックを行わなければならない。 | 必要 | 学校
重要性分類Ⅱ以上の情報資産の取り扱い制限: 支給以外の端末での作業禁止。 | 不要 | 学校
暗号化アプリケーション: ファイル暗号化機能を持つアプリケーションでの接続のみを許可。 | 必要 | 学校
1.0 | 利用者認証 | ①クラウド利用者は、クラウド事業者における当該クラウドサービスを提供する情報システムの運用もしくは開発に従事する者又は管理者権限を有する者について、適切な利用者確認がなされていることをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P151〜152
適切な利用者確認＝管理画面での事前登録（CSVやシステムを介す）＋SSO | オータケ（設計）と開発（実装）
・SSO
・管理画面によるユーザー情報登録機能（新規登録/削除・CSV登録） | 要
②クラウド利用者は、当該クラウドサービスのログインに関わる認証機能の提供をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P151〜152
対象は学校管理者※児童生徒の場合、多要素認証が困難
学校管理は、ID＋パスワード＋多要素認証（所持情報or生体情報）※知識情報以外でログインする | オータケ（設計）と開発（実装）
・学校管理者権限のログイン時、多要素認証（いいかな？） | 要
③クラウド利用者側管理者権限を有する者のIDの管理について、「7.6.特権を付与されたIDの管理等」を遵守しなければならない。 | P126〜
管理者権限は強力なものであるため、厳格に管理する
・必要最小限の人数
・IDパスの厳重管理
・管理者IDとパス変更を外部事業者にやらせない
・管理者IDの作成と削除ができる
・入力回数制限を設ける
・管理者IDを初期設定以外に変更しない
・管理者IDのログ監視を行う（推奨事項）
・セキュアOSの利用（特権者の特権の悪用を防止）
→強制アクセス制御：特権者でもアクセスできなくさせる制御機能
→最小特権：必要最小限しかアクセスできなくさせる機能 | オータケ（設計）と開発（実装）
管理画面において、学校管理者に関連する機能例
・人数制限3人まで
・学校管理者がほかの学校管理者のIDの作成と削除ができる
・入力回数制限（失敗した場合ロック）
・管理者のアクセスログ | 要
2.0 | アクセス制御 | ①クラウド利用者は、当該クラウドサービスに対して、アクセスする権限のない者がアクセスできないように、システム上制限する機能の提供をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P152
WEB版は、アクセス制御をする必要のないので対応する必要はない
つまり、先生も生徒も同じサイトにアクセスすることになるので、先生版、生徒版というように、制御のしようがない

4.17追記
学校管理者が、児童や先生のログインを制御することができる機能を指しているのかも | 否
②クラウド利用者は、クラウド事業者の提供するアクセス制御機能を用いて、情報資産毎に、許可されたクラウドを利用する教職員等及び児童生徒のみがアクセスできる環境を設定しなければならない。 | 同上 | 否
3.0 | クラウドに保管するデータの暗号化 | ①クラウド利用者は、当該クラウドサービスへのデータの保管に際し、情報漏えい等に備えて、暗号化等の保護措置を講じられていることを、クラウド事業者にサービス提供定款や契約書面上で確認または合意しなければならない。 | P152
オータケが管理するデータとは、SSOをするためのCSV登録において、「学年」、「氏名」、「メールアドレス（Googleとかマイクロソフトのメアド）」（SSOに必要なもの）を取得する
これらの保管について、暗号化して管理する | 開発側
AWSがデータを暗号化しているか確認

オータケ
暗号化されている旨を定款等に明文化 | - ユーザーの機密データを暗号化し、データベース（DB）に保存する場合、セキュリティ上の問題が発生してDBへのアクセス情報が漏洩したとしても、ハッカーは機密データを閲覧できないようにする方法を調査 | 要
- AWSにおいて、DBのバックアップが盗まれた場合、それが暗号化されているため使用できない仕組みを調査。復号キーを持つユーザーのみがデータを利用可能なことを確認 | 要
4.0 | マルチテナント環境におけるテナント間の安全な管理 | ①クラウド利用者は、複数のクラウド利用者がクラウドリソースを共用する環境において、特定のクラウド利用者に対して発生したセキュリティ侵害が、他のクラウド利用者に影響を与えないように対策が講じられていることを、クラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P152
セキュリティ侵害によるエラーのドミノ倒しがおきないよいうにする
越谷市が使えなくなっても春日部市はつかえる、というように障害の影響を波及させない
オータケの場合は、管理画面を想定して考えてください
オータケのWEBサイトの場合は同一のものだから対象にしなくてよい | 開発側に確認 | # 各都市のデータベース分離に関するリサーチ

## 1. AWSデータベースサービスにおいて調査すべき事項:
- 複数の独立したデータベースをどのように構成するか、各地域ごとに専用のDBを持たせつつ、管理しやすくする方法。
- 複数のDBを運用する際のコスト、インフラ費用（サーバー、メンテナンスを含む）。
- バックアップとリカバリの仕組み。各地域が独立したバックアップを持ち、障害時に復旧できるようにする方法。
- システムの展開とスケール拡張の方法。新しい地域が追加された際に、新しいDBを作成するかリソースを割り当てる際、既存の地域に影響を与えないようにする方法。

## 2. システムにおいて調査すべき事項:
- 複数のデータベースに接続し、クエリを実行する方法。システムが正確にデータを取得できるようにしつつ、パフォーマンスを低下させない仕組み。 | 要
#### 各都市で共通のデータベースを使用する場合の調査  
- 複数の都市で共通のデータベースを使用する場合の調査  

1. システム設計に関する調査:  
   - 各地域のデータを適切に分離し、特定の地域のユーザーのみが自地域のデータにアクセスできるようなアクセス制御の仕組み  
   - ある地域で障害が発生しても、他の地域のデータに影響を与えない仕組み | 要
5.0 | クラウドサービスを提供する情報システムに対する外部からの悪意のある脅威の侵入を想定した技術的セキュリティ対策 | ①クラウド利用者は、当該クラウドサービスを提供する情報システムを監視し、セキュリティ侵害を検知することを、クラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P153
オータケ側は、管理画面（守るべき情報がある場所）に悪意のある脅威の侵入があった場合、検知、防御する対策を講じる
管理画面に侵入ということは、AWSのサーバーに侵入があったということ？ | 開発側
AWSにセキュリティ侵害があった場合の検知と通知がされるか確認 | - AWSには、サーバー上の不審なアクティビティを自動検出する仕組みが提供されているかを調査する。  
- コード内およびAWSにおける攻撃シナリオについて調査する。 | 要
②クラウド利用者は、当該クラウドサービスを提供する情報システムのインターネット接続境界において、クラウド利用者以外による不正な通信・侵入を防ぐ措置を講じるとともに、外部脅威の侵入を検知し、防御する対策を講ずることを、クラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | 同上 | 同上 | - システム内のアクセス制御の適用方法、およびアカウントの権限制限に関する調査
- AWSにおいて、不正アクセスを自動的に防止する手段を設定できるかどうかの調査 | 要
6.0 | 情報の通信経路のセキュリティ確保 | ①クラウド利用者は、教育情報システムのインターネット境界から当該クラウドサービスを提供する情報システムまでの情報の通信経路において、情報の盗聴、改ざん、誤った経路での通信、破壊等から保護するために必要な措置（情報交換の実施基準･手順等の整備、通信の暗号化等）をクラウド事業者に求め、合意のうえ、利用しなければならない。 | P153
オータケ側は、通信経路上の暗号化等の保護措置をする（措置の明確化の必要）
利用者（自治体や学校）は、この保護措置を確認して利用する
例）生徒の端末→ネット回線→WEBサーバ | 開発側への確認
AWSとの通信経路上の情報交換の実施基準･手順等の整備、通信の暗号化等の必要な措置がどうなっているのかを明確にする。 | #### AWS のセキュリティに関する調査  
- AWSがサーバー上の不審なアクティビティを自動検出する機能を提供しているかを調査  
- AWS環境とシステムコードにおけるセキュリティ侵害のシナリオを調査 | 要
②クラウド利用者は、クラウド事業者が保守運用等を遠隔で行う場合の、保守運用拠点（AWS）と管理区域間での通信回線及び通信回線装置の管理について、情報の盗聴、改ざん、誤った経路での通信、破壊等から保護するために必要な措置（情報交換の実施基準･手順等の整備、通信の暗号化等）をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P53より「管理区域とは、ネットワークの基幹機器及び重要な情報システムを設置し、当該機器等の管理並びに運用を行うための部屋（以下「情報システム室」という。）や電磁的記録媒体の保管庫をいう。」

AWSと管理区域（例：教育委員会内の自前サーバー（オンプレミス））の通信上のセキュリティが問題になっている。
しかし、今回は、管理区域とオータケ側が通信することがないため対象外の話。 | 否
7.0 | クラウドサービスを提供する情報システムの物理的セキュリティ対策 | ①クラウド利用者は、当該クラウドサービスのサーバ等の管理条件を「4.1.サーバ等の管理」に準じた対策をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P48・153
P48「4.1.サーバ等の管理」に準じた対策とは、下記の内容
（1）サーバーの取付け：設置環境の安全性
（2）サーバーの冗長化：予備のサーバー
（3）サーバーの電源：予備電源
（4）サーバーの配線：損傷しないように管理
（5）サーバーの定期保守及び修理：定期保守必須と修理するときの注意
（6）サーバーの施設外又は学校外への設置：セキュリティが万全か確認
（7）サーバーの廃棄等：データの完全消去

オータケでいうと、サーバーはAWSなので、自治体や学校にAWSの対策を上記の観点で示せばよい
そのAWSの管理がどうなっているのかを明文化する対応が必要
つまり、物理的セキュリティ対策の基準は、教育委員会と同等レベルが求められていて、それにAWSの管理体制匹敵するのかという話 | 開発側
AWSの管理が左記に合致するか確認

オータケ
AWSの管理が左記に合致している旨を定款等に明文化する | #### AWS の物理的セキュリティおよびサーバー管理に関する調査  
- AWSのサーバー運用環境が安全であるかを調査  
- AWSが障害時に代替サーバーを提供する仕組みを持っているかを調査  
- AWSのサーバーが無停電電源を備えているかを調査  
- AWSがサーバーの故障を防ぐためのリスク管理プロセスを持っているかを調査  
- AWSが定期的な点検・保守・修理を行っているかを調査  
- AWSがサーバーの使用停止時にデータを完全に削除するポリシーを持っているかを調査  
- AWSがサーバー管理においてどのような業界標準を遵守しているかを調査 | 要
②クラウド利用者は、クラウド事業者側の管理区域（サーバ等を設置）及び保守運用拠点の管理において、「4.2.管理区域（情報システム室等）の管理（教育委員会等のサーバ室にサーバを設置している場合）」に準じた対策をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P53〜57・153
P53〜57
「4.2.管理区域の管理（教育委員会等のサーバ室にサーバを設置している場合）」に準じた対策とは、下記の内容
（1）サーバー設置部屋の構造：2階以上、夢窓、ドア数、鍵、警報装置、監視装置、転倒、地震、防火、防水
（2）サーバー設置部屋への入退室：ICカード、指紋認証等
（3）サーバーの搬出：決められた人がやる

これもAWSの話で、これが4.2と同じ程度か説明する必要がある
保守運用拠点がデータセンターとは別ロケーションの場合（＝AWS）には、その物理的セキュリティ対策も①（サーバーの管理の話）と同等の充分な堅牢性と入退室管理が求められる | 開発側
AWSの管理が左記に合致するか確認

オータケ
AWSの管理が左記に合致している旨を定款等に明文化する | #### 施設のセキュリティ  
- AWSがサーバー設置場所（フロア、窓、出入り口など）を厳重に監視しているかを調査  
- AWSのサーバールームが厳格な入退室管理とセキュリティロックで保護されているかを調査  
- AWSのインフラが地震、火災、倒壊などの災害に耐えうる設計になっているかを調査  
- AWSが、特定の指定された従業員のみがサーバーの移動や保守を行えるルールを持っているかを確認 | 要
③クラウド利用者は、クラウドサービス事業者が利用する資源（装置等）の処分（廃棄）にあたり、セキュリティを確保した対応となっているかをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。なお、当該確認にあたっては、クラウドサービス事業者が利用者に提供可能な第三者による監査報告書や認証等を取得している場合には、その監査報告書や認証等を利用できる。 | P153
記憶装置などからのデータの完全消去ができるなどの処置が事業者側で明確に定まっているのかを問うている。
今回、オータケ側が取得したデータの処分については、すでに取得しているISO27001が該当しているので、問われても問題がない。 | オータケ
定款等にISO27001取得を明記 | 否
8.0 | クラウドサービスを提供する情報システムの運用管理 | ①クラウド利用者は、クラウド事業者に対して、サービスの一時停止等クラウド利用者に影響があり得る運用手順の有無、有る場合にはクラウド利用者への影響範囲（時間、サービス内容）、連絡方法等について情報提供を求め、クラウド利用者が業務運営に支障がないことを確認し、合意しなければならない。また、クラウド事業者の設定不備等によるインシデント発生時にも同様の確認をしなければならい。【推奨事項】 | P153・154
アップデートやメンテナンス、設定ミスなどのインシデントによって、サービスが使用不可になるときに、フローに付いての話。
・アプデやメンテについては、内容、頻度、時間帯、影響範囲がどうなのるのかをどのようにユーザーに通知するのか明確にする
・インシデント発生についても、障害内容、影響範囲、復旧までの時間見込みをユーザーに通知するフローを明確にする | オータケ（設計）と開発（実装）
アプデ、メンテ、インシデント通知機能 | 要
②クラウド利用者は、当該クラウドサービスにおけるサーバの冗長化について、「4.1.サーバ等の管理（2）サーバの冗長化」に準じた対策をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P48
「4.1.サーバ等の管理（2）サーバの冗長化」に準じた対策とは、
校務系サーバその他の校務系情報を格納しているサーバを冗長化し、同一データを保持しなければならない。速やかにセカンダリサーバを起動し、システムの運用停止時間を最小限にしなければならない。

P154
P48「４. 物理的セキュリティ」、P90「６. 技術的セキュリティ」に準じた対策が必要 | 開発側
AWSのサーバ冗長化を確認 | #### AWS のサーバー冗長性とバックアップ管理に関する調査  
- AWSがサーバーの冗長化（バックアップサーバーの用意）をどのように行っているかを調査  
- AWSがメインサーバー障害時に即座にバックアップサーバーへ切り替える機能を持っているかを調査。復旧時間の目安も確認  
- AWSのバックアップサーバーに対するセキュリティ対策を調査  
- メインサーバーとバックアップサーバー間のデータ同期方法を調査し、データロスが発生しないことを確認 | 要
③クラウド利用者は、当該クラウドサービスにおけるデータバックアップ及び復旧手順について、「6.1.コンピュータ及びネットワークの設定管理（2）バックアップの実施」に準じた対策をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P90・94
「6.1.コンピュータ及びネットワークの設定管理（2）バックアップの実施」に準じた対策とは、
バックアップの実施：緊急時にそなえてファイルのバックアップをしておくこと
これもAWSとの関連である

P154
P48「４. 物理的セキュリティ」、P90「６. 技術的セキュリティ」に準じた対策が必要 | 開発側
AWSのバックアップ体制を確認 | #### データのバックアップと復旧  
- AWSがデータのバックアップをどのように行っているかを調査  
- AWSがバックアップデータをどのように保護しているかを調査  
- AWSのデータ復旧機能とその復旧速度を調査  
- AWSのバックアップ・復旧時にデータ損失が発生しないかを調査  
- AWSのバックアップデータの物理的・セキュリティ基準を調査 | 要
④クラウド利用者は、当該クラウドサービスにおける情報セキュリティの確保や監査に必要なログの取得について、「6.1.コンピュータ及びネットワークの設定管理（3）ログの取得等」に準じた対策をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P90・94
「6.1.コンピュータ及びネットワークの設定管理（3）ログの取得等」に準じた対策とは、
ログの取得等：アクセスログ、システム稼動ログ、障害時のシステム出力ログ及び障害対応記録
これもAWSとの関連である

P154
P48「４. 物理的セキュリティ」、P90「６. 技術的セキュリティ」に準じた対策が必要
ログの管理は、内部統制上、定期的な取得・管理が義務付けられる場合もある。そのため、自治体は、オータケ側にログの提出やログ管理レポートを求めることがある。 | 開発側
AWSのログ取得システムを確認

オータケ（設計）と開発（実装）
その確認ができるUI

オータケ
定款等に明文化 | #### AWS のログ管理とセキュリティに関する調査  
- AWSがどの種類のログを取得できるかを調査  
- AWSのログの保存・管理方法を調査  
- AWSのログデータのセキュリティとアクセス制御、ログの取得速度を調査  
- AWSのログを地方自治体向けのシステムに統合する方法を調査  
- AWSのログ管理における物理的なサーバーセキュリティ基準を調査 | 要
9.0 | クラウドサービスを提供する情報システムのマルウェア対策 | ①クラウド利用者は、クラウドサービスを提供する情報システムを構成するサーバ及び運用管理端末等について、マルウェア対策を講じることをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P154
AWSのマルウェア対策がどうなっているのかの話
サービス乗っ取りがあった場合、深刻なセキュリティ侵害がおきる（アカウントと氏名が流出する）ので、安全対策は最上位に位置づけられる | 開発側
AWSのマルウェア対策を確認

オータケ
定款等に明文化 | - AWS が AWS の各種サービス（例: S3 など）でマルウェアを検出する機能を提供しているかを調査（自動または手動）。  
- AWS がマルウェアを削除する仕組みを提供しているかを調査（自動または手動）。  
- マルウェアによってシステムが乗っ取られた場合の復旧シナリオを調査。  
- AWS がマルウェア感染時にどのような責任を負い、どのように対応するのかを調査。 | 要
②クラウド利用者は、内部システムに侵入した攻撃を検知して対処するために、通信をチェックする等の対策を講じることをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | P154
不審な通信をチェックするために、通信の監視、検知、通知についての話
情報を外部に持ち出そうとする不審なふるまいや不正な通信を管理しアラームを発したり、通信を物理的に遮断するなどの対策が必要
また、万が一マルウェアがAWSの内部に侵入した場合の対策についても知る必要がある | 開発側
AWSのマルウェア対策としての、通信チェック対策を確認
例）AWS VPC Flow Logs + GuardDuty で、異常な通信を監視
→不正な通信があった場合にAWSはどう反応をするのか

オータケ
定款等に明文化 | - AWS が不審な通信の監視をサポートしているかを調査。また、不審なアクティビティが発生した際にユーザーへ通知する機能があるかを調査。  
- AWS が通信ログをどのように保存および管理しているかを調査。  
- AWS が不審な通信をブロックする仕組みを提供しているかを調査。また、ユーザーがカスタマイズ可能なルール設定を行えるか、自動検知機能があるかを調査。  
- AWS のネットワーク監視サービス（例: VPC Flow Logs（ネットワークトラフィックの記録）、GuardDuty（脅威検出））について調査。 | 要
10.0 | クラウド利用者側のセキュリティ確保 | ①クラウド利用者は、クラウドサービスにアクセスするクラウドを利用する教職員等及び児童生徒側端末について、保管するデータの外部流出、改ざん等から保護するために必要な措置を講じなければならない。 | クラウド利用者の話 | 否
②クラウド利用者は、標的型攻撃による外部からの脅威の侵入を防止するために、クラウドを利用する教職員等及び児童生徒への教育や入口対策を講じなければならない。 | クラウド利用者の話 | 否
11.0 | クラウド事業者従業員の人的セキュリティ対策 | ①クラウド利用者は、クラウドサービスに関わるクラウド事業者従業員に対して、クラウド事業者の情報セキュリティポリシー及び保守運用管理規程等を遵守することをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | オータケの従業員がISO27001の規定にそって行動するかの話 | 否
②クラウド利用者は、クラウドサービスに関わるクラウド事業者従業員に対して、業務に用いるID及びパスワードその他の個人認証に必要な情報及び媒体について、部外者及び業務に関わらない従業員に漏えいすることがないように、適切に管理することをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | オータケの従業員がISO27001の規定にそって行動するかの話 | 否
③クラウド利用者は、クラウドサービスに関わらない従業員等がクラウド利用者のデータを知り得る状態にならないよう、業務に関わるクラウド事業者従業員に対して秘匿を義務づけることをクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | オータケの従業員がISO27001の規定にそって行動するかの話 | 否
④クラウド利用者は、クラウド利用者のデータ及びデータを格納した端末機器又は電磁的記録媒体の外部持ち出しについて、クラウド利用者の許可なく外部持ち出しできないこと及び外部持ち出しにおける安全管理手順をクラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | オータケの従業員がISO27001の規定にそって行動するかの話 | 否
⑤クラウド利用者は、クラウドサービスを提供する情報システムを構成するサーバ及び運用管理端末等に、マルウェアを侵入させないよう、クラウド事業者に求め、サービス提供定款や契約書面上で確認または合意しなければならない。 | オータケの従業員がサーバーへマルウェアの感染をさせないように抑止する話 | 否
12.0 | サービス終了時等のデータの廃棄及び利用者アカウント抹消について | ① クラウド利用者は、サービス利用終了時等において、クラウド利用者のデータ及び利用者アカウント情報が不用意に残置されないよう、適切に破棄するための流れについてサービス提供定款や契約書面上で確認または合意しておかなければならない。 | P155
サービス終了にともなうユーザー情報の破棄しかたの話
クラウド事業者に預けた個人を特定しうるデータの消去及びデータを格納した機器・媒体等の廃棄について、規約、プライバシーポリシー、契約要件等によってその措置について確認 | 開発側
AWSに登録したアカウント情報はどのように完全抹消されるのか確認

オータケ
定款等に明文化 | - AWS が個人アカウントのデータをどのように削除するのか（完全削除（ハードデリート）か、一時的な削除（ソフトデリート）か）、また、削除される情報の範囲（個人情報、アクセス履歴、保存データなど）を調査。  
- AWS のデータ削除ポリシーが、各種規約、セキュリティポリシー、契約要件を満たしているかを調査。 | 要
② クラウド利用者は、サービス利用終了時等におけるデーの扱いについて、スムーズに回収、次期システムへの移行等を行えるよう、その措置の流れについてサービス提供定款や契約書面上で確認または合意しておかなければならない。 | P155（12）②より「SaaS 型パブリッククラウドサービスの利用終了後に預けたデータを回収することが必要になるが、その回収方法等についてはあらかじめ手順・方法を確認しておくことが必要である。」

しかし、オータケの場合は、データを預かっていないので、その対応の必要はない | 否
③ クラウド利用者は、クラウドサービスで利用する全ての情報資産について、クラウドサービスの利用終了時期を確認し、 クラウドサービスで扱う情報資産（アカウント）が適切に移行及び削除されるよう管理しなければならない。 | クラウド利用者の話ではあるが、情報資産の削除方法について、自治体や学校には知らせておく必要がある
（12）①（定款に明文化）に関連 | 否
13.0 | クラウドサービス要件基準を満たす配慮を含めたネットワーク設計 | ① クラウド利用者は、利用するクラウドサービスの要件規準を確認し、要件規準を満たすネットワークを設計しなければならない。 | クラウド利用者の話ではあるが、オータケのダウンロードサイトがどの程度のネットワークスペック（通信速度）があればつかえるのかを把握する必要はある
つかえるとは、支障なくイラストの絞り込み、検索、選択、DLできるということ
自治体の選定の材料になる | 開発側
ダウンロードに支障が出ない通信速度とはどの程度か？
サイトが問題なく使用でき環境とはどの程度のものか

オータケの
自治体に伝える | 仮実装時に計測 | 要
14.0 | その他
## Sheet: セキュリティ_0228
No | 大項目 | 内容 | 評価 | Scuti 対応要否（想定）
1.0 | 基本方針と組織体制 | GIGAスクール構想とセキュリティ: 1人1台端末、1人1アカウント環境下でのセキュリティ対策の重要性。 | 設計・開発 | 必要
インシデント対応: 情報セキュリティインシデント発生時の拡大防止、迅速な復旧、再発防止策の必要性。 | その他（Scuti） | 確認
リスク管理: 児童生徒による重要情報へのアクセスリスク対応、標的型及び不特定多数を対象とした攻撃等への対策。 | 設計・開発 | 不要
組織体制: 統括教育情報セキュリティ責任者、CISO、教育情報セキュリティ責任者、教育情報セキュリティ管理者、教育情報システム管理者、教育情報システム担当者を網羅する連絡体制の整備。 | 学校 | 不要
2.0 | 情報資産の管理と分類 | 情報資産の分類: 外部漏えいの影響（機密性）、情報の改ざんの影響（完全性）、情報が使えなくなる影響（可用性）の3次元での影響を考慮した情報資産の分類の重要性。重要度に応じた管理の徹底。重要性分類Ⅱ、Ⅲの定義。 | 設計・開発 | 不要
利用目的: 教職員は、業務以外の目的に情報資産を利用してはならない。 | 学校 | 不要
学習記録: 児童生徒の学習記録活用におけるアクセス制限の配慮と、クラウド事業者の無断使用禁止。 | 学校, その他（Scuti） | 不要
保管場所: 情報を記録した媒体は、耐火、耐震、耐熱、耐水、耐湿を講じた施錠可能な場所に保管。電子データも同様の対策。 | その他（Scuti） | 不要
電磁的記録媒体: 情報が保存される必要がなくなった時点で速やかに記録した情報を消去。情報を記録している電磁的記録媒体を利用しなくなった場合、情報を復元できないように処置した上で廃棄。 | 学校, その他（Scuti） | 不要
外部持ち出し: 情報資産の外部持ち出しには、限定されたアクセスの措置設定（アクセス制限や暗号化）を行い、教育情報セキュリティ管理者の個別許可を得なければならない。また、持ち出し持ち帰りの記録をつける。外部持ち出しツールに限定されたアクセスの措置設定（アクセス制限や暗号化）機能を有する場合には、有効にしなければならない。 | 学校, その他（Scuti） | 不要
外部記録媒体の暗号化: 外部電磁的記録媒体の暗号化の徹底。暗号化機能つきの媒体を利用し、暗号化機能を活かす。 | 学校 | 不要
重要性が高い情報に対するインターネットを介した外部からのリスク、児童生徒による重要性が高い情報へのアクセスリスクへの対応:強固なアクセス制御による対策を講じたシステム構成の場合は、各システムにおけるアクセス権管理の徹底。ネットワーク分離による対策を講じたシステム構成の場合は、校務系システム及び学習系システム間の通信経路の論理的又は物理的な分離をするとともに、ウェブ閲覧やインターネットメールなどのインターネットからのリスクの高いシステムと重要性が高い情報（特に校務系）を論理的又は物理的に分離。 | 設計・開発 | 不要
3.0 | 技術的セキュリティ対策の実装 | 暗号化: 児童生徒が活用する情報システムであっても重要性が高い情報を保持する場合、暗号化等の対策を講ずること。通信経路の暗号化を必須とし、データへの適切なアクセス制限を行った上で、データそのもの及びデータ格納先の暗号化については運用を考慮して対策を講ずることが必要。 | 設計・開発 | 必要
アクセス制限: データへの適切なアクセス制限の実施。 | 設計・開発, 学校 | 不要
多要素認証: 取り扱う情報の重要度に応じてパスワード以外に生体認証や物理認証等の多要素認証を設定。特に強固なアクセス制御による対策を講じたシステム構成の場合、校務情報等の重要な情報資産へのアクセスについては、多要素認証を必須とすること。 | 設計・開発, 学校 | 確認
不正アクセス対策: 教育情報システム管理者は、不正アクセス防止のため、ログイン時のIDパスワードによる認証、加えて多要素認証の実施等、使用する目的に応じた適切な物理的措置を講じなければならない。 | 設計・開発, 学校 | 必要
マルウェア対策: パソコンやモバイル端末等のマルウェア感染対策として、ウイルス対策ソフトの導入。OSによっては標準的にウイルス対策ソフトを備えている製品、OSとしてウイルス感染のリスクが低い仕組みとなっている製品などもあるため、実際に運用する端末において適切な対策を講じること。強固なアクセス制御による対策を講じたシステム構成の場合、校務情報等の重要な情報資産を取り扱う端末に対し、当該端末の状況および通信内容を監視し、異常、あるいは不審な挙動を検知する仕組み（ふるまい検知）等の活用を検討し、適切な対策を講じること。 | 設計・開発, 学校 | 確認
ファイル暗号化: パソコンやモバイル端末等におけるデータの暗号化等の機能を有効に利用しなければならない。端末に暗号化機能を持つセキュリティチップが搭載されている場合、その機能を有効に活用しなければならない。 | 学校 | 確認
外部記録媒体の暗号化: 外部電磁的記録媒体の暗号化の徹底。暗号化機能つきの媒体を利用し、暗号化機能を活かす。 | 学校 | 不要
ネットワーク監視: ネットワーク機器のログ監視を強化。不正な通信がないか、ログをチェックする。 | 設計・開発 | 不要
電子署名・暗号化: 暗号技術検討会及び関連委員会CRYPTREC）により安全性及び実装性能が確認された「電子政府推奨暗号リスト」を参照した上で暗号方法は、組織として特定の方法を定める。署名検証者が電子署名を検証するための電子証明書を信頼できる機関からダウンロードできる環境を整備。 | 設計・開発 | 不要
ファイル暗号化機能を持つアプリケーションでの接続のみを許可。 | 設計・開発, 学校 | 確認
4.0 | クラウドサービスの利用に関するセキュリティ | 安全性確認: クラウドサービスの安全性の確認については、情報セキュリティの実態をクラウド利用者が個別に詳細に調査することは困難であることから、第三者による認証やクラウドサービス事業者が提供する監査報告書を利用することが重要であり、クラウドサービスの選定に際しては、求める内容に応じた認証規格等を参考にする仕組みとすることが望ましい。認証制度の例：ISO/IEC 27001, 27002, 27014, 27017, 27018, 米国FedRAMP, AICPA SOC2/SOC3, JASA CSゴールドマーク, ISMAP | その他（Scuti）, 学校 | 必要 | iso27000
SaaSの選択: パブリッククラウドとプライベートクラウドのSaaSの選択は、組織のニーズ、予算、セキュリティ要件に応じて検討。 | 設計・開発 | 不要
脅威対策: SaaS型パブリッククラウドサービスはインターネット接続環境からのアクセスが前提となるため、常にサイバー脅威（ウイルス感染等）に晒されていることに加えて、利用者認証方式に知識認証（ID・パスワード）が多く採用されていることから、利用者認証情報が他者に漏れると、容易に「なりすまし」による不正アクセスが発生する等のリスクが存在することに留意する必要がある。パブリッククラウド上で重要な情報（重要性分類II※以上）を取り扱う際には、多要素認証を含む強固なアクセス制御による対策を講じる必要。 | 設計・開発 | 確認
インターネットアクセス: 校務系システム、校務外部接続系システム、学習系システムにおいてインターネットアクセスを許容しつつも、アクセス管理や不正アクセス検知を行うことでインターネットからのサイバー脅威の侵入を遮断し、IaaS・PaaS を利用する構成も実装し得る。 | 設計・開発 | 不要
データ回収: SaaS 型 パブリッククラウドサービス の利用終了後のデータ回収方法等についてはあらかじめ手順・方法を確認。 | 設計・開発 | 不要
クラウド環境の保護: 教育情報システムのインターネット境界からクラウドサービスまでの通信経路において、情報の盗聴、改ざん、誤った経路での通信、破壊等から保護するために必要な措置をクラウド事業者に求め、合意のうえ、利用。 | 設計・開発, 学校 | 確認
マルチテナント: クラウドサービスでは、当該教育委員会以外の複数の利用者がリソースを共用するため、特定の利用者に対して発生したセキュリティ侵害が、他の利用者に対して影響を及ぼすことがないようにクラウド事業者は対策を講じる必要がある。 | 設計・開発, 学校 | 確認
自然災害対策: クラウドサービスを利用する場合はサービスの機能として自然災害対策がなされていることを確認すること。 | その他（Scuti） | 確認
クラウドに保管するデータの暗号化: データ の暗号化については、特にインターネット接続環境において重要な情報資産を扱う場合における情報漏えいを前提とした出口対策として有効。クラウド事業者が機能を提供する場合とクラウド利用者が自ら機能を整備する場合がある。 | 設計・開発 | 確認
グローバルIPアドレス: クラウドサービスに対し、同一のグローバルIPアドレスから短時間に多数の接続が行われた場合、クラウドサービス事業者側でロボット判定の実施や攻撃と認識しアクセスを一定期間停止させるといった措置を行うことがある。 | 設計・開発 | 確認
通信帯域: オンラインでの学習のみならず、学校内で画面共有や動画の配信等を行うことも想定し、利用するクラウドサービスで必要とされる帯域を確保することが重要になる。 | 設計・開発, 学校 | 確認
5.0 | システム運用と管理 | 教員の業務負担軽減: 教員の業務負担軽減へとつながる運用となるよう配慮する必要がある。 | 設計・開発, 学校 | 必要
バックアップ: ファイルサーバ等に記録された情報について、サーバの冗長化対策に関わらず、校務系情報及び校務外部接続系情報については、必要に応じて定期的にバックアップを実施しなければならない。学習系情報については、必要に応じて定期的にバックアップを実施しなければならない。 | 設計・開発 | 不要
ログ管理: 各種ログ及び情報セキュリティの確保に必要な記録を取得し、一定の期間保存しなければならない。ログとして取得する項目、保存期間、取扱方法及びログが取得できなくなった場合の対処等について定め、適切にログを管理しなければならない。取得したログを定期的に点検又は分析する機能を設け、必要に応じて悪意ある第三者等からの不正侵入、不正操作等の有無について点検又は分析を実施しなければならない。 | 設計・開発 | 不要
文書サーバ: 教育情報システム管理者は、教職員等が使用できる文書サーバの容量を設定し、教職員等に周知しなければならない。文書サーバを学校等の単位で構成し、教職員等が他の学校等のフォルダ及びファイルを閲覧及び使用できないように、設定しなければならない。 | 設計・開発, 学校 | 不要
システム管理記録: 教育情報システム管理者は、所管する教育情報システムの運用において実施した作業について、作業記録を作成しなければならない。統括教育情報セキュリティ責任者及び教育情報システム管理者は、所管するシステムにおいて、システム変更等の作業を行った場合は、作業内容について記録を作成し、詐取、改ざん等をされないように適切に管理しなければならない。 | 学校, その他（Scuti） | 不要
情報システム仕様: 統括教育情報セキュリティ責任者及び教育情報システム管理者は、ネットワーク構成図、情報システム仕様書等について、記録媒体に関わらず、業務上必要とする者以外の者が閲覧したり、紛失等がないよう、適切に管理しなければならない。 | その他（Scuti） | 不要
障害記録: 統括教育情報セキュリティ責任者及び教育情報システム管理者は、教職員等からのシステム障害の報告、システム障害に対する処理結果又は問題等を、障害記録として記録し、適切に保存しなければならない。 | 学校, その他（Scuti） | 不要 | 144頁〜重要
未使用IDの点検: 教育情報システム管理者は、利用されていないIDが放置されないよう、人事管理部門と連携し、点検しなければならない。 | 学校, その他（Scuti） | 不要
6.0 | システム開発・保守のセキュリティ | 調達: 情報システム開発、導入、保守等の調達に当たっては、調達仕様書に必要とする技術的なセキュリティ機能を明記しなければならない。機器及びソフトウェアの調達に当たっては、当該製品のセキュリティ機能を調査し、情報セキュリティ上問題のないことを確認しなければならない。 | 学校 | 不要 | 103.0
環境分離: 教育情報システム管理者は、システム開発、保守及びテスト環境とシステム運用環境を分離しなければならない。システム開発・保守及びテスト環境からシステム運用環境への移行について、システム開発・保守計画の策定時に手順を明確にしなければならない。 | 設計・開発, テスト | 不要 | 105.0
テスト: 新たに情報システムを導入する場合、既に稼働している情報システムに接続する前に十分な試験を行わなければならない。運用テストを行う場合、あらかじめ擬似環境による操作確認を行わなければならない。個人情報及び機密性の高い生データを、テストデータに使用してはならない。 | テスト | 不要
入出力データの正確性: 情報システムの設計において、入力データに対する範囲チェックや不正な文字列の除去、故意または過失による改ざん・漏えい検出、出力データの正確性確保のためのチェック機能を組み込む必要がある。入力処理、内部処理、出力処理の各段階でデータの正確性を確保するように設計を行うこと。 | 設計・開発 | 不要
ドキュメント: システム開発・保守に関連する資料及びシステム関連文書を適切に整備・保管しなければならない。テスト結果を一定期間保管しなければならない。情報システムに係るソースコードならびに使用したオープンソースのバージョン（リポジトリ）を適切な方法で保管しなければならない。 | 設計・開発 | 不要
データ精度: 情報システムに入力されるデータについて、範囲、妥当性のチェック機能及び不正な文字列等の入力を除去する機能を組み込むように情報システムを設計。故意又は過失により情報が改ざんされる又は漏えいするおそれがある場合に、これを検出するチェック機能を組み込むように情報システムを設計。 | 設計・開発 | 不要
変更管理: 情報システムを変更した場合、プログラム仕様書等の変更履歴を作成しなければならない。開発・保守用のソフトウェア等を更新又はパッチの適用をする場合、他の情報システムとの整合性を確認しなければならない。 | 設計・開発 | 不要
システム開発に用いるハードウェア及びソフトウェアの管理: システム開発の責任者及び作業者が使用するハードウェア及びソフトウェアを特定しなければならない。利用を認めたソフトウェア以外のソフトウェアが導入されている場合、当該ソフトウェアをシステムから削除しなければならない。 | 設計・開発 | 不要
7.0 | ネットワークセキュリティ | ネットワークの接続制御: ネットワーク上では、フィルタリング、ルーティング、侵入検知システム等が機能しているが、これらの機能を十分活用するため、ハードウェア及びソフトウェアの設定を適切に行うよう注意する必要がある。また、不正アクセスを防止するため、ネットワークに適切なアクセス制御を施さなければならない。 | 設計・開発, 学校 | 不要
外部ネットワーク接続制限: 接続しようとする外部ネットワークに係るネットワーク構成、機器構成、セキュリティ技術等を詳細に調査しなければならない。ウェブサーバ等をインターネットに公開する場合、教育ネットワークへの侵入を防御するために、ファイアウォール等を外部ネットワークとの境界に設置した上で接続しなければならない。 | 設計・開発 | 不要
重要性が高い情報に対するインターネットを介した外部からのリスク、児童生徒による重要性が高い情報へのアクセスリスクへの対応:強固なアクセス制御による対策を講じたシステム構成の場合は、各システムにおけるアクセス権管理の徹底。ネットワーク分離による対策を講じたシステム構成の場合は、校務系システム及び学習系システム間の通信経路の論理的又は物理的な分離をするとともに、ウェブ閲覧やインターネットメールなどのインターネットからのリスクの高いシステムと重要性が高い情報（特に校務系）を論理的又は物理的に分離。 | 設計・開発, 学校 | 不要
クラウド利用を前提としたネットワーク構成: クラウドサービスでは、クラウドサービス提供事業者側のセキュリティ基準を満たしたサービスがインターネット上で提供される。その際、従来のネットワーク構成では円滑に授業を進めることに支障が出るケースがある。 | 設計・開発 | 確認
8.0 | アクセス制御 | アクセス制御: 情報システム等をアクセス権限のない者に利用できる状態にしておくと、情報漏えいや情報資産の不正利用等の被害が発生し得る。そこで、アクセス制御を業務内容、権限ごとに明確に規定しておく必要がある。また、不用意なアクセス権限付与による不正アクセスを防ぐために、アクセス権限の管理は統括教育情報セキュリティ責任者及び教育情報システム管理者に集約することが重要。 | 設計・開発, 学校 | 不要
外部アクセス制限: 内部のネットワーク又は情報システムに対する外部からのアクセスを、アクセスが必要な合理的理由を有する必要最小限の者に限定しなければならない。民間事業者等の外部組織からのシステムアクセスを認める場合、アクセスする利用者の本人確認、システムアクセスの対象となる児童生徒の本人（保護者）同意を得る等の措置を講じなければならない。 | 設計・開発, 学校 | 不要
ログイン時の表示等: 教育情報システム管理者は、ログイン時におけるメッセージ、ログイン試行回数の制限、アクセスタイムアウトの設定及びログイン・ログアウト時刻の表示等により、正当なアクセス権を持つ教職員等がログインしたことを確認することができるようシステムを設定しなければならない。 | 設計・開発, 学校 | 確認
特権による接続時間の制限: 管理者権限等の特権を利用している際に、システムにログインしたままで端末を放置しておくと、他者に不正利用されるおそれがあることから、システムの未使用時には自動的にネットワーク接続を終了するなどの措置を講じる必要がある。 | 設計・開発, 学校 | 確認
クラウド事業者によるアクセス制御機能の提供: 学校には、学校管理者、一般教職員、児童生徒が存在し、各々の立場・役割に応じてアクセスできる情報が異なる。また、校務系情報と学習系情報を分類して管理する必要があることから、クラウド事業者によるアクセス制御機能の提供とクラウド利用者による適切なアクセス権限の設定は必須な対策。なお、適切なアクセス権限設定を行うためには、情報資産を適切に分類し、情報資産毎に最小限のアクセス権限のみを付与することを原則とする必要がある。 | 設計・開発 | 確認
9.0 | インシデント対応 | 攻撃の予告: 情報システムに対する攻撃予告があり、攻撃を受けることが確実な場合には、システム停止等の措置をとらなければならない。 | 設計・開発 | 確認
サービス不能攻撃: サービス不能攻撃はDoS（Denial of Service）攻撃やDDoS（Distributed Denial of Service）攻撃とも呼ばれている。第三者からサービス不能攻撃を受けた場合でも、情報システムの可用性を維持するために次の例のような対策を行う必要がある。 | 設計・開発 | 確認
情報システムの監視: セキュリティに関する事案を検知するため、情報システムを常時監視しなければならない。特に強固なアクセス制御による対策を講じたシステム構成の場合、重要な情報資産へのアクセスについては、侵入検知システム（IDS）や侵入防御システム（IPS）などの対策を講じなければならない。 | 設計・開発 | 不要
10.0 | IDとパスワードの管理 | パスワード管理: サーバ、ネットワーク機器及びパソコン等の端末にパスワードを記憶させてはならない。 | 学校 | 不要
利用者登録の抹消: 教職員等は、業務上必要がなくなった場合は、利用者登録を抹消するよう、統括教育情報セキュリティ責任者又は教育情報システム管理者に通知しなければならない。 | 学校, その他（Scuti） | 不要
ID削除処理: 転出/卒業/退学時のID削除処理。ユニークなIDは個人を識別できる可能性があるため、個人情報保護の観点から、サービス提供期間を超えて個人を特定する情報を保持しないようにする必要がある。 | 設計・開発 | 不要
特権ID: 統括教育情報セキュリティ責任者及び教育情報システム管理者は、特権を付与されたID及びパスワードについて、その利用期間に合わせて特権IDを作成・削除する、もしくは、入力回数制限を設ける等のセキュリティ機能を強化しなければならない。 | 設計・開発, 学校 | 必要
シングルサインオンのセキュリティ強化: シングルサインオンに利用するID/パスワードは漏洩した際の影響範囲が大きいため、必要に応じて多要素認証と組み合わせることでよりセキュリティリスクを低減することができる。 | 設計・開発 | 確認
11.0 | その他のセキュリティ対策 | 媒体チェック: 外部からデータ又はソフトウェアを取り入れる場合には、必ず不正プログラム対策ソフトウェアによるチェックを行わなければならない。 | 学校 | 必要
重要性分類Ⅱ以上の情報資産の取り扱い制限: 支給以外の端末での作業禁止。 | 学校 | 不要
暗号化アプリケーション: ファイル暗号化機能を持つアプリケーションでの接続のみを許可。 | 学校 | 必要
テレワーク: テレワークを導入する場合は、認証による本人確認手段の確保と、通信する情報の機密性に応じて、ファイル暗号化、通信経路の暗号化等の必要な措置を取ることが求められる。 | 設計・開発, 学校 | 必要
12.0 | 外部委託管理 | 契約: 外部委託事業者との間で必要に応じて次の情報セキュリティ要件を明記した契約を締結しなければならない。 | 学校, その他（Scuti） | 必要
選定: 外部委託事業者の選定にあたり、事業者の情報セキュリティ水準を評価する際には、国際規格の認証取得状況等を参考にして決定することが望ましい。 | 学校, その他（Scuti） | 必要
外部委託先に関するセキュリティ要件のチェックシート: 外部委託先に関するセキュリティ要件のチェックシート。 | 学校, その他（Scuti） | 確認
外部委託事業者に対する監査: 情報システムの運用、保守等を外部委託している場合は、情報資産の管理が契約に従い適切に実施されているかを点検、評価する必要がある。 | 学校, その他（Scuti） | 確認
13.0 | クラウドサービスの提供水準及び品質保証 | クラウドサービスの提供水準及び品質保証:利用しようとするクラウドサービスについて、利用規約、 SLA（ service level agreement）、 SLO（ service level objective） な ど で 示 さ れ た 水 準 等 を 、 業務 内 容 や コ ス ト と 照 ら し 合 わ せ 、 運 用 に 支 障 が な い こ と を 確 認 す る こ と。 | 設計・開発 | 確認
14.0 | 個人情報保護とプライバシー | SaaS 型パブリッククラウド利用者は、個人情報の収集・利用範囲や管理期間、デ ータの統制と所有の在り方等、プライバシー保護に関する事項についてクラウド事業者に確認を行う必要がある。 | 学校, その他（Scuti） | 必要
補足：重要性分類の定義
  重要性分類Ⅰ：
個人アカウント情報、人事情報など、個人の生命・財産に関わるような機密情報
を指す。業務に係る特定の教職員のみがアクセスできる情報である。


 重要性分類Ⅱ：
児童生徒のプライバシー性の高い機微情報（成績、健康関連、家族構成、生徒指
導履歴等）や学校運営に係る校務系情報のなかで機密性の高い情報が相当する。
業務に係る教職員のみがアクセスできる情報である。


 重要性分類Ⅲ：
児童生徒が学習活動で生成する学習系情報や、職員会議資料のような教職員全員
が共有できる校務系情報を指す。
児童生徒の家庭学習や教職員が共有可能な校務系情報であるため、学校内外から
のアクセスを許容する。


 重要性分類Ⅳ：
上記以外の情報であり、万が一セキュリティ侵害が発生しても、ほとんど影響を
無視できる情報である。
## Sheet: 退避_セキュリティ
No | 大項目 | 内容 | 評価 | Scuti 対応要否（想定）
1.0 | 基本方針と組織体制 | 1人1台端末、1人1アカウントとする。 | 設計・開発 | 必要
情報セキュリティインシデント発生時の拡大防止、迅速な復旧、再発防止策の必要性。 | その他（Scuti） | 確認
リスク管理: 児童生徒による重要情報へのアクセスリスク対応、標的型及び不特定多数を対象とした攻撃等への対策。 | 設計・開発
連絡体制の整備。
組織体制: 統括教育情報セキュリティ責任者、CISO、教育情報セキュリティ責任者、教育情報セキュリティ管理者、教育情報システム管理者、教育情報システム担当者を網羅する連絡体制の整備。 | 学校 | 不要
2.0 | 情報資産の管理と分類 | 重要情報を分類する→重要性分類Ⅱ、Ⅲなので、それに合わせた管理を徹底する。 | 設計・開発
教職員は、業務以外の目的に情報資産を利用してはならない。 | 学校 | 不要
生徒の学習記録活用におけるアクセス制限の配慮と、Scutiの無断使用禁止。 | 学校, その他（Scuti）
保管場所: 情報を記録した媒体は、耐火、耐震、耐熱、耐水、耐湿を講じた施錠可能な場所に保管。電子データも同様の対策。 | その他（Scuti）
情報が保存される必要がなくなった時点で速やかに記録した情報を消去。
情報を記録している電磁的記録媒体を利用しなくなった場合、情報を復元できないように処置した上で廃棄。 | 学校, その他（Scuti）
外部持ち出しの際、許可を得る、記録をつける。
外部持ち出しの際に、アクセス制限や暗号化を行う。 | 学校, その他（Scuti）
外部記録媒体の暗号化: 外部電磁的記録媒体の暗号化の徹底。暗号化機能つきの媒体を利用し、暗号化機能を活かす。 | 学校 | 不要
重要な情報を守るために、外部からの攻撃や児童生徒の不正アクセスを防ぐ対策を徹底する。 | 設計・開発
3.0 | 技術的セキュリティ対策の実装 | 暗号化：個人情報、通信経路。 | 設計・開発
アクセス制限: データへの適切なアクセス制限の実施。 | 設計・開発, 学校
多要素認証: 取り扱う情報の重要度に応じてパスワード以外に生体認証や物理認証等の多要素認証を設定。特に強固なアクセス制御による対策を講じたシステム構成の場合、校務情報等の重要な情報資産へのアクセスについては、多要素認証を必須とすること。 | 設計・開発, 学校
不正アクセス対策: 教育情報システム管理者は、不正アクセス防止のため、ログイン時のIDパスワードによる認証、加えて多要素認証の実施等、使用する目的に応じた適切な物理的措置を講じなければならない。 | 設計・開発, 学校
マルウェア対策: パソコンやモバイル端末等のマルウェア感染対策として、ウイルス対策ソフトの導入。OSによっては標準的にウイルス対策ソフトを備えている製品、OSとしてウイルス感染のリスクが低い仕組みとなっている製品などもあるため、実際に運用する端末において適切な対策を講じること。

強固なアクセス制御による対策を講じたシステム構成の場合、校務情報等の重要な情報資産を取り扱う端末に対し、当該端末の状況および通信内容を監視し、異常、あるいは不審な挙動を検知する仕組み（ふるまい検知）等の活用を検討し、適切な対策を講じること。 | 設計・開発, 学校
ファイル暗号化: パソコンやモバイル端末等におけるデータの暗号化等の機能を有効に利用しなければならない。端末に暗号化機能を持つセキュリティチップが搭載されている場合、その機能を有効に活用しなければならない。 | 学校
外部記録媒体の暗号化: 外部電磁的記録媒体の暗号化の徹底。暗号化機能つきの媒体を利用し、暗号化機能を活かす。 | 学校
ネットワーク監視: ネットワーク機器のログ監視を強化。不正な通信がないか、ログをチェックする。 | 設計・開発
電子署名・暗号化: 暗号技術検討会及び関連委員会CRYPTREC）により安全性及び実装性能が確認された「電子政府推奨暗号リスト」を参照した上で暗号方法は、組織として特定の方法を定める。署名検証者が電子署名を検証するための電子証明書を信頼できる機関からダウンロードできる環境を整備。 | 設計・開発
ファイル暗号化機能を持つアプリケーションでの接続のみを許可。 | 設計・開発, 学校
4.0 | クラウドサービスの利用に関するセキュリティ | 安全性確認: クラウドサービスの安全性の確認については、情報セキュリティの実態をクラウド利用者が個別に詳細に調査することは困難であることから、第三者による認証やクラウドサービス事業者が提供する監査報告書を利用することが重要であり、クラウドサービスの選定に際しては、求める内容に応じた認証規格等を参考にする仕組みとすることが望ましい。認証制度の例：ISO/IEC 27001, 27002, 27014, 27017, 27018, 米国FedRAMP, AICPA SOC2/SOC3, JASA CSゴールドマーク, ISMAP | その他（Scuti）, 学校
SaaSの選択: パブリッククラウドとプライベートクラウドのSaaSの選択は、組織のニーズ、予算、セキュリティ要件に応じて検討。 | 設計・開発
脅威対策: SaaS型パブリッククラウドサービスはインターネット接続環境からのアクセスが前提となるため、常にサイバー脅威（ウイルス感染等）に晒されていることに加えて、利用者認証方式に知識認証（ID・パスワード）が多く採用されていることから、利用者認証情報が他者に漏れると、容易に「なりすまし」による不正アクセスが発生する等のリスクが存在することに留意する必要がある。パブリッククラウド上で重要な情報（重要性分類II※以上）を取り扱う際には、多要素認証を含む強固なアクセス制御による対策を講じる必要。 | 設計・開発
インターネットアクセス: 校務系システム、校務外部接続系システム、学習系システムにおいてインターネットアクセスを許容しつつも、アクセス管理や不正アクセス検知を行うことでインターネットからのサイバー脅威の侵入を遮断し、IaaS・PaaS を利用する構成も実装し得る。 | 設計・開発
データ回収: SaaS 型 パブリッククラウドサービス の利用終了後のデータ回収方法等についてはあらかじめ手順・方法を確認。 | 設計・開発
クラウド環境の保護: 教育情報システムのインターネット境界からクラウドサービスまでの通信経路において、情報の盗聴、改ざん、誤った経路での通信、破壊等から保護するために必要な措置をクラウド事業者に求め、合意のうえ、利用。 | 設計・開発, 学校
マルチテナント: クラウドサービスでは、当該教育委員会以外の複数の利用者がリソースを共用するため、特定の利用者に対して発生したセキュリティ侵害が、他の利用者に対して影響を及ぼすことがないようにクラウド事業者は対策を講じる必要がある。 | 設計・開発, 学校
自然災害対策: クラウドサービスを利用する場合はサービスの機能として自然災害対策がなされていることを確認すること。 | その他（Scuti）
クラウドに保管するデータの暗号化: データ の暗号化については、特にインターネット接続環境において重要な情報資産を扱う場合における情報漏えいを前提とした出口対策として有効。クラウド事業者が機能を提供する場合とクラウド利用者が自ら機能を整備する場合がある。 | 設計・開発
グローバルIPアドレス: クラウドサービスに対し、同一のグローバルIPアドレスから短時間に多数の接続が行われた場合、クラウドサービス事業者側でロボット判定の実施や攻撃と認識しアクセスを一定期間停止させるといった措置を行うことがある。 | 設計・開発
通信帯域: オンラインでの学習のみならず、学校内で画面共有や動画の配信等を行うことも想定し、利用するクラウドサービスで必要とされる帯域を確保することが重要になる。 | 設計・開発, 学校
5.0 | システム運用と管理 | 教員の業務負担軽減: 教員の業務負担軽減へとつながる運用となるよう配慮する必要がある。 | 設計・開発, 学校
バックアップ: ファイルサーバ等に記録された情報について、サーバの冗長化対策に関わらず、校務系情報及び校務外部接続系情報については、必要に応じて定期的にバックアップを実施しなければならない。学習系情報については、必要に応じて定期的にバックアップを実施しなければならない。 | 設計・開発
ログ管理: 各種ログ及び情報セキュリティの確保に必要な記録を取得し、一定の期間保存しなければならない。ログとして取得する項目、保存期間、取扱方法及びログが取得できなくなった場合の対処等について定め、適切にログを管理しなければならない。取得したログを定期的に点検又は分析する機能を設け、必要に応じて悪意ある第三者等からの不正侵入、不正操作等の有無について点検又は分析を実施しなければならない。 | 設計・開発
文書サーバ: 教育情報システム管理者は、教職員等が使用できる文書サーバの容量を設定し、教職員等に周知しなければならない。文書サーバを学校等の単位で構成し、教職員等が他の学校等のフォルダ及びファイルを閲覧及び使用できないように、設定しなければならない。 | 設計・開発, 学校
システム管理記録: 教育情報システム管理者は、所管する教育情報システムの運用において実施した作業について、作業記録を作成しなければならない。統括教育情報セキュリティ責任者及び教育情報システム管理者は、所管するシステムにおいて、システム変更等の作業を行った場合は、作業内容について記録を作成し、詐取、改ざん等をされないように適切に管理しなければならない。 | 学校, その他（Scuti）
情報システム仕様: 統括教育情報セキュリティ責任者及び教育情報システム管理者は、ネットワーク構成図、情報システム仕様書等について、記録媒体に関わらず、業務上必要とする者以外の者が閲覧したり、紛失等がないよう、適切に管理しなければならない。 | その他（Scuti）
障害記録: 統括教育情報セキュリティ責任者及び教育情報システム管理者は、教職員等からのシステム障害の報告、システム障害に対する処理結果又は問題等を、障害記録として記録し、適切に保存しなければならない。 | 学校, その他（Scuti）
未使用IDの点検: 教育情報システム管理者は、利用されていないIDが放置されないよう、人事管理部門と連携し、点検しなければならない。 | 学校, その他（Scuti）
6.0 | システム開発・保守のセキュリティ | 調達: 情報システム開発、導入、保守等の調達に当たっては、調達仕様書に必要とする技術的なセキュリティ機能を明記しなければならない。機器及びソフトウェアの調達に当たっては、当該製品のセキュリティ機能を調査し、情報セキュリティ上問題のないことを確認しなければならない。 | 学校
環境分離: 教育情報システム管理者は、システム開発、保守及びテスト環境とシステム運用環境を分離しなければならない。システム開発・保守及びテスト環境からシステム運用環境への移行について、システム開発・保守計画の策定時に手順を明確にしなければならない。 | 設計・開発, テスト
テスト: 新たに情報システムを導入する場合、既に稼働している情報システムに接続する前に十分な試験を行わなければならない。運用テストを行う場合、あらかじめ擬似環境による操作確認を行わなければならない。個人情報及び機密性の高い生データを、テストデータに使用してはならない。 | テスト
入出力データの正確性: 情報システムの設計において、入力データに対する範囲チェックや不正な文字列の除去、故意または過失による改ざん・漏えい検出、出力データの正確性確保のためのチェック機能を組み込む必要がある。入力処理、内部処理、出力処理の各段階でデータの正確性を確保するように設計を行うこと。 | 設計・開発
ドキュメント: システム開発・保守に関連する資料及びシステム関連文書を適切に整備・保管しなければならない。テスト結果を一定期間保管しなければならない。情報システムに係るソースコードならびに使用したオープンソースのバージョン（リポジトリ）を適切な方法で保管しなければならない。 | 設計・開発
データ精度: 情報システムに入力されるデータについて、範囲、妥当性のチェック機能及び不正な文字列等の入力を除去する機能を組み込むように情報システムを設計。故意又は過失により情報が改ざんされる又は漏えいするおそれがある場合に、これを検出するチェック機能を組み込むように情報システムを設計。 | 設計・開発
変更管理: 情報システムを変更した場合、プログラム仕様書等の変更履歴を作成しなければならない。開発・保守用のソフトウェア等を更新又はパッチの適用をする場合、他の情報システムとの整合性を確認しなければならない。 | 設計・開発
システム開発に用いるハードウェア及びソフトウェアの管理: システム開発の責任者及び作業者が使用するハードウェア及びソフトウェアを特定しなければならない。利用を認めたソフトウェア以外のソフトウェアが導入されている場合、当該ソフトウェアをシステムから削除しなければならない。 | 設計・開発
7.0 | ネットワークセキュリティ | ネットワークの接続制御: ネットワーク上では、フィルタリング、ルーティング、侵入検知システム等が機能しているが、これらの機能を十分活用するため、ハードウェア及びソフトウェアの設定を適切に行うよう注意する必要がある。また、不正アクセスを防止するため、ネットワークに適切なアクセス制御を施さなければならない。 | 設計・開発, 学校
外部ネットワーク接続制限: 接続しようとする外部ネットワークに係るネットワーク構成、機器構成、セキュリティ技術等を詳細に調査しなければならない。ウェブサーバ等をインターネットに公開する場合、教育ネットワークへの侵入を防御するために、ファイアウォール等を外部ネットワークとの境界に設置した上で接続しなければならない。 | 設計・開発
重要性が高い情報に対するインターネットを介した外部からのリスク、児童生徒による重要性が高い情報へのアクセスリスクへの対応:強固なアクセス制御による対策を講じたシステム構成の場合は、各システムにおけるアクセス権管理の徹底。ネットワーク分離による対策を講じたシステム構成の場合は、校務系システム及び学習系システム間の通信経路の論理的又は物理的な分離をするとともに、ウェブ閲覧やインターネットメールなどのインターネットからのリスクの高いシステムと重要性が高い情報（特に校務系）を論理的又は物理的に分離。 | 設計・開発, 学校
クラウド利用を前提としたネットワーク構成: クラウドサービスでは、クラウドサービス提供事業者側のセキュリティ基準を満たしたサービスがインターネット上で提供される。その際、従来のネットワーク構成では円滑に授業を進めることに支障が出るケースがある。 | 設計・開発
8.0 | アクセス制御 | アクセス制御: 情報システム等をアクセス権限のない者に利用できる状態にしておくと、情報漏えいや情報資産の不正利用等の被害が発生し得る。そこで、アクセス制御を業務内容、権限ごとに明確に規定しておく必要がある。また、不用意なアクセス権限付与による不正アクセスを防ぐために、アクセス権限の管理は統括教育情報セキュリティ責任者及び教育情報システム管理者に集約することが重要。 | 設計・開発, 学校
外部アクセス制限: 内部のネットワーク又は情報システムに対する外部からのアクセスを、アクセスが必要な合理的理由を有する必要最小限の者に限定しなければならない。民間事業者等の外部組織からのシステムアクセスを認める場合、アクセスする利用者の本人確認、システムアクセスの対象となる児童生徒の本人（保護者）同意を得る等の措置を講じなければならない。 | 設計・開発, 学校
ログイン時の表示等: 教育情報システム管理者は、ログイン時におけるメッセージ、ログイン試行回数の制限、アクセスタイムアウトの設定及びログイン・ログアウト時刻の表示等により、正当なアクセス権を持つ教職員等がログインしたことを確認することができるようシステムを設定しなければならない。 | 設計・開発, 学校
特権による接続時間の制限: 管理者権限等の特権を利用している際に、システムにログインしたままで端末を放置しておくと、他者に不正利用されるおそれがあることから、システムの未使用時には自動的にネットワーク接続を終了するなどの措置を講じる必要がある。 | 設計・開発, 学校
クラウド事業者によるアクセス制御機能の提供: 学校には、学校管理者、一般教職員、児童生徒が存在し、各々の立場・役割に応じてアクセスできる情報が異なる。また、校務系情報と学習系情報を分類して管理する必要があることから、クラウド事業者によるアクセス制御機能の提供とクラウド利用者による適切なアクセス権限の設定は必須な対策。なお、適切なアクセス権限設定を行うためには、情報資産を適切に分類し、情報資産毎に最小限のアクセス権限のみを付与することを原則とする必要がある。 | 設計・開発
9.0 | インシデント対応 | 攻撃の予告: 情報システムに対する攻撃予告があり、攻撃を受けることが確実な場合には、システム停止等の措置をとらなければならない。 | 設計・開発
サービス不能攻撃: サービス不能攻撃はDoS（Denial of Service）攻撃やDDoS（Distributed Denial of Service）攻撃とも呼ばれている。第三者からサービス不能攻撃を受けた場合でも、情報システムの可用性を維持するために次の例のような対策を行う必要がある。 | 設計・開発
情報システムの監視: セキュリティに関する事案を検知するため、情報システムを常時監視しなければならない。特に強固なアクセス制御による対策を講じたシステム構成の場合、重要な情報資産へのアクセスについては、侵入検知システム（IDS）や侵入防御システム（IPS）などの対策を講じなければならない。 | 設計・開発
10.0 | IDとパスワードの管理 | パスワード管理: サーバ、ネットワーク機器及びパソコン等の端末にパスワードを記憶させてはならない。 | 学校
利用者登録の抹消: 教職員等は、業務上必要がなくなった場合は、利用者登録を抹消するよう、統括教育情報セキュリティ責任者又は教育情報システム管理者に通知しなければならない。 | 学校, その他（Scuti）
ID削除処理: 転出/卒業/退学時のID削除処理。ユニークなIDは個人を識別できる可能性があるため、個人情報保護の観点から、サービス提供期間を超えて個人を特定する情報を保持しないようにする必要がある。 | 設計・開発
特権ID: 統括教育情報セキュリティ責任者及び教育情報システム管理者は、特権を付与されたID及びパスワードについて、その利用期間に合わせて特権IDを作成・削除する、もしくは、入力回数制限を設ける等のセキュリティ機能を強化しなければならない。 | 設計・開発, 学校
シングルサインオンのセキュリティ強化: シングルサインオンに利用するID/パスワードは漏洩した際の影響範囲が大きいため、必要に応じて多要素認証と組み合わせることでよりセキュリティリスクを低減することができる。 | 設計・開発
11.0 | その他のセキュリティ対策 | 媒体チェック: 外部からデータ又はソフトウェアを取り入れる場合には、必ず不正プログラム対策ソフトウェアによるチェックを行わなければならない。 | 学校
重要性分類Ⅱ以上の情報資産の取り扱い制限: 支給以外の端末での作業禁止。 | 学校
暗号化アプリケーション: ファイル暗号化機能を持つアプリケーションでの接続のみを許可。 | 学校
テレワーク: テレワークを導入する場合は、認証による本人確認手段の確保と、通信する情報の機密性に応じて、ファイル暗号化、通信経路の暗号化等の必要な措置を取ることが求められる。 | 設計・開発, 学校
12.0 | 外部委託管理 | 契約: 外部委託事業者との間で必要に応じて次の情報セキュリティ要件を明記した契約を締結しなければならない。 | 学校, その他（Scuti）
選定: 外部委託事業者の選定にあたり、事業者の情報セキュリティ水準を評価する際には、国際規格の認証取得状況等を参考にして決定することが望ましい。 | 学校, その他（Scuti）
外部委託先に関するセキュリティ要件のチェックシート: 外部委託先に関するセキュリティ要件のチェックシート。 | 学校, その他（Scuti）
外部委託事業者に対する監査: 情報システムの運用、保守等を外部委託している場合は、情報資産の管理が契約に従い適切に実施されているかを点検、評価する必要がある。 | 学校, その他（Scuti）
13.0 | クラウドサービスの提供水準及び品質保証 | クラウドサービスの提供水準及び品質保証:利用しようとするクラウドサービスについて、利用規約、 SLA（ service level agreement）、 SLO（ service level objective） な ど で 示 さ れ た 水 準 等 を 、 業務 内 容 や コ ス ト と 照 ら し 合 わ せ 、 運 用 に 支 障 が な い こ と を 確 認 す る こ と。 | 設計・開発
14.0 | 個人情報保護とプライバシー | SaaS 型パブリッククラウド利用者は、個人情報の収集・利用範囲や管理期間、デ ータの統制と所有の在り方等、プライバシー保護に関する事項についてクラウド事業者に確認を行う必要がある。 | 学校, その他（Scuti）
補足：重要性分類の定義
  重要性分類Ⅰ：
個人アカウント情報、人事情報など、個人の生命・財産に関わるような機密情報
を指す。業務に係る特定の教職員のみがアクセスできる情報である。


 重要性分類Ⅱ：
児童生徒のプライバシー性の高い機微情報（成績、健康関連、家族構成、生徒指
導履歴等）や学校運営に係る校務系情報のなかで機密性の高い情報が相当する。
業務に係る教職員のみがアクセスできる情報である。


 重要性分類Ⅲ：
児童生徒が学習活動で生成する学習系情報や、職員会議資料のような教職員全員
が共有できる校務系情報を指す。
児童生徒の家庭学習や教職員が共有可能な校務系情報であるため、学校内外から
のアクセスを許容する。


 重要性分類Ⅳ：
上記以外の情報であり、万が一セキュリティ侵害が発生しても、ほとんど影響を
無視できる情報である。
通信の暗号化
## Sheet: Security_VI
No | Items | Nội dung
1.0 | Chính sách cơ bản và cơ cấu tổ chức | Khái niệm và bảo mật của trường GIGA: Tầm quan trọng của các biện pháp bảo mật trong môi trường mà mỗi người có một thiết bị và mỗi người có một tài khoản.
Ứng phó sự cố: Sự cần thiết phải có các biện pháp ngăn chặn sự lây lan của sự cố an toàn thông tin, khôi phục kịp thời và ngăn ngừa tái diễn.
Quản lý rủi ro: Các biện pháp đối phó với rủi ro truy cập thông tin quan trọng của sinh viên và các biện pháp đối phó với các cuộc tấn công có mục tiêu và không xác định.
Cơ cấu tổ chức: Thiết lập hệ thống liên lạc bao gồm nhân viên an toàn thông tin giáo dục phổ thông, CISO, nhân viên an toàn thông tin giáo dục, người quản lý an toàn thông tin giáo dục, quản trị viên hệ thống thông tin giáo dục và người hệ thống thông tin giáo dục.
2.0 | Quản lý và phân loại tài sản thông tin | Phân loại tài sản thông tin: Tầm quan trọng của việc phân loại tài sản thông tin có tính đến tác động ba chiều của rò rỉ bên ngoài (tính bảo mật), làm sai lệch thông tin (tính toàn vẹn) và thông tin trở nên không thể sử dụng được (tính sẵn có). Quản lý kỹ lưỡng theo mức độ quan trọng. Định nghĩa về phân loại tầm quan trọng II và III.
Mục đích sử dụng: Khoa và nhân viên không được sử dụng tài sản thông tin vào mục đích khác ngoài công việc.
Hồ sơ học tập: Xem xét hạn chế quyền truy cập khi sử dụng hồ sơ học tập của học sinh và cấm các nhà cung cấp dịch vụ đám mây sử dụng trái phép.
Vị trí lưu trữ: Phương tiện chứa thông tin phải được lưu trữ ở vị trí có thể khóa, chống cháy, chống động đất, cách nhiệt, chống thấm nước và chống ẩm. Các biện pháp tương tự áp dụng cho dữ liệu điện tử.
Phương tiện ghi điện từ: Xóa thông tin đã ghi ngay khi không cần lưu trữ nữa. Khi phương tiện ghi điện từ ghi lại thông tin không còn được sử dụng thì sau khi thải bỏ phải tiêu hủy để thông tin không thể phục hồi được.
Xuất bên ngoài: Khi đưa tài sản thông tin ra bên ngoài, phải thiết lập các biện pháp truy cập hạn chế (hạn chế truy cập và mã hóa) và phải có sự cho phép cá nhân của người quản lý bảo mật thông tin giáo dục. Ngoài ra, hãy ghi lại những gì bạn lấy ra và mang về nhà. Nếu công cụ có chức năng thiết lập các biện pháp truy cập (hạn chế truy cập hoặc mã hóa) giới hạn ở các công cụ được đưa ra bên ngoài thì phải kích hoạt nó.
Mã hóa phương tiện ghi bên ngoài: Mã hóa triệt để phương tiện ghi điện từ bên ngoài. Sử dụng phương tiện có chức năng mã hóa và tận dụng chức năng mã hóa.
Ứng phó với các rủi ro bên ngoài đối với thông tin cực kỳ quan trọng qua Internet và rủi ro học sinh truy cập thông tin cực kỳ quan trọng: Nếu hệ thống được cấu hình với các biện pháp kiểm soát truy cập mạnh mẽ, hãy quản lý triệt để quyền truy cập trong từng hệ thống. Trong trường hợp cấu hình hệ thống thực hiện các biện pháp thông qua việc tách mạng, hãy tách các tuyến liên lạc giữa hệ thống quản lý trường học và hệ thống học tập về mặt logic hoặc vật lý, đồng thời tách biệt về mặt logic hoặc vật lý các hệ thống có nguy cơ cao khỏi Internet như duyệt web và thư Internet cũng như thông tin cực kỳ quan trọng (đặc biệt là các vấn đề ở trường).
3.0 | Thực hiện các biện pháp an ninh kỹ thuật | Mã hóa: Ngay cả khi hệ thống thông tin được học sinh sử dụng, các biện pháp như mã hóa vẫn cần được thực hiện khi lưu trữ thông tin cực kỳ quan trọng. Điều cần thiết là phải mã hóa đường dẫn liên lạc và sau khi hạn chế quyền truy cập vào dữ liệu một cách thích hợp, cần phải tính đến các cân nhắc về hoạt động khi mã hóa dữ liệu và vị trí lưu trữ dữ liệu.
Hạn chế truy cập: Thực thi các hạn chế truy cập thích hợp vào dữ liệu của bạn.
Xác thực đa yếu tố: Ngoài mật khẩu, hãy thiết lập xác thực đa yếu tố như xác thực sinh trắc học và xác thực vật lý tùy theo tầm quan trọng của thông tin được xử lý. Đặc biệt, nếu hệ thống được cấu hình với các biện pháp kiểm soát truy cập mạnh mẽ, sẽ cần phải có xác thực đa yếu tố để truy cập các tài sản thông tin quan trọng như thông tin trường học.
Các biện pháp chống truy cập trái phép: Để ngăn chặn truy cập trái phép, quản trị viên hệ thống thông tin giáo dục phải thực hiện các biện pháp vật lý phù hợp tùy theo mục đích sử dụng, chẳng hạn như xác thực ID và mật khẩu khi đăng nhập và xác thực đa yếu tố.
Biện pháp chống phần mềm độc hại: Giới thiệu phần mềm chống vi-rút để ngăn ngừa lây nhiễm phần mềm độc hại trên máy tính và thiết bị di động. Tùy thuộc vào HĐH, một số sản phẩm được trang bị phần mềm chống vi-rút theo tiêu chuẩn và một số sản phẩm có hệ thống giúp giảm nguy cơ lây nhiễm vi-rút dưới dạng HĐH, vì vậy hãy thực hiện các biện pháp thích hợp trên thiết bị đầu cuối mà bạn sẽ thực sự sử dụng. Trong trường hợp cấu hình hệ thống thực hiện các biện pháp dựa trên kiểm soát truy cập mạnh mẽ, hãy cân nhắc sử dụng cơ chế (phát hiện hành vi) giám sát trạng thái và nội dung liên lạc của các thiết bị đầu cuối xử lý các tài sản thông tin quan trọng như thông tin trường học và phát hiện hành vi bất thường hoặc đáng ngờ (phát hiện hành vi), v.v. và thực hiện các biện pháp thích hợp.
Mã hóa tập tin: Chức năng mã hóa dữ liệu trên máy tính, thiết bị di động,… phải được sử dụng hiệu quả. Nếu thiết bị của bạn được trang bị chip bảo mật có chức năng mã hóa thì bạn phải sử dụng hiệu quả chức năng đó.
Mã hóa phương tiện ghi bên ngoài: Mã hóa triệt để phương tiện ghi điện từ bên ngoài. Sử dụng phương tiện có chức năng mã hóa và tận dụng chức năng mã hóa.
Giám sát mạng: Giám sát nhật ký nâng cao của các thiết bị mạng. Kiểm tra nhật ký để phát hiện các thông tin liên lạc trái phép.
Chữ ký/mã hóa điện tử: Tổ chức xác định phương thức mã hóa cụ thể bằng cách tham khảo "Danh sách các mật mã được chính phủ điện tử đề xuất" có hiệu suất triển khai và bảo mật đã được xác nhận bởi Ủy ban đánh giá công nghệ mật mã và các ủy ban liên quan (CRYPTREC). Chúng tôi đã tạo một môi trường nơi người xác minh chữ ký có thể tải xuống chứng chỉ điện tử từ các tổ chức đáng tin cậy để xác minh chữ ký điện tử.
Chỉ những ứng dụng có chức năng mã hóa tập tin mới được phép kết nối.
4.0 | Bảo mật liên quan đến việc sử dụng dịch vụ đám mây | Xác nhận an toàn: Khi cần xác nhận tính an toàn của dịch vụ đám mây, người dùng đám mây khó có thể điều tra chi tiết tình trạng bảo mật thông tin thực tế, do đó, điều quan trọng là phải sử dụng các chứng nhận và báo cáo kiểm tra của bên thứ ba do nhà cung cấp dịch vụ đám mây cung cấp. Khi lựa chọn dịch vụ đám mây, mong muốn có một hệ thống đề cập đến các tiêu chuẩn chứng nhận theo nội dung mong muốn. Ví dụ về hệ thống chứng nhận: ISO/IEC 27001, 27002, 27014, 27017, 27018, US FedRAMP, AICPA SOC2/SOC3, JASA CS Gold Mark, ISMAP
Chọn SaaS: Việc lựa chọn giữa SaaS đám mây công cộng và riêng tư tùy thuộc vào nhu cầu, ngân sách và yêu cầu bảo mật của tổ chức bạn.
Các biện pháp đối phó với mối đe dọa: Do các dịch vụ đám mây công cộng kiểu SaaS yêu cầu quyền truy cập từ môi trường kết nối Internet nên chúng thường xuyên phải đối mặt với các mối đe dọa trên mạng (lây nhiễm vi-rút, v.v.). Ngoài ra, do xác thực kiến ​​thức (ID/mật khẩu) thường được sử dụng làm phương thức xác thực người dùng, nên cần lưu ý rằng nếu thông tin xác thực người dùng bị rò rỉ cho bên khác thì sẽ có nguy cơ dễ dàng xảy ra truy cập trái phép bằng '`giả mạo''. Khi xử lý thông tin quan trọng (cấp độ quan trọng II* trở lên) trên đám mây công cộng, cần thực hiện các biện pháp kiểm soát truy cập mạnh mẽ, bao gồm xác thực đa yếu tố.
Truy cập Internet: Trong khi cho phép truy cập Internet đối với các hệ thống quản lý trường học, hệ thống kết nối bên ngoài trường học và hệ thống học tập, cũng có thể triển khai cấu hình sử dụng IaaS/PaaS, ngăn chặn sự xâm nhập của các mối đe dọa mạng từ Internet bằng cách kiểm soát truy cập và phát hiện truy cập trái phép.
Thu thập dữ liệu: Kiểm tra trước các quy trình và phương pháp để biết cách thu thập dữ liệu sau khi sử dụng dịch vụ đám mây công cộng loại SaaS.
Bảo vệ môi trường đám mây: Yêu cầu nhà cung cấp dịch vụ đám mây thực hiện các biện pháp cần thiết để bảo vệ thông tin khỏi bị nghe lén, giả mạo, truyền sai hướng, phá hoại… trong đường truyền từ ranh giới Internet của hệ thống thông tin giáo dục đến dịch vụ đám mây và sử dụng thông tin sau khi đã thỏa thuận.
Nhiều người thuê: Trong các dịch vụ đám mây, tài nguyên được chia sẻ bởi nhiều người dùng không phải là hội đồng nhà trường có liên quan, vì vậy các nhà cung cấp đám mây cần thực hiện các biện pháp để đảm bảo rằng vi phạm bảo mật xảy ra với một người dùng cụ thể sẽ không ảnh hưởng đến những người dùng khác.
Biện pháp đối phó thiên tai: Khi sử dụng dịch vụ đám mây, hãy đảm bảo rằng các biện pháp đối phó thiên tai được triển khai như một chức năng của dịch vụ.
Mã hóa dữ liệu được lưu trữ trên đám mây: Mã hóa dữ liệu có hiệu quả như một biện pháp ngăn chặn rò rỉ thông tin, đặc biệt khi xử lý các tài sản thông tin quan trọng trong môi trường kết nối Internet. Trong một số trường hợp, nhà cung cấp đám mây cung cấp các chức năng và trong những trường hợp khác, người dùng đám mây tự cung cấp các chức năng.
Địa chỉ IP toàn cầu: Nếu một số lượng lớn kết nối được thực hiện với một dịch vụ đám mây từ cùng một địa chỉ IP toàn cầu trong một khoảng thời gian ngắn, nhà cung cấp dịch vụ đám mây có thể thực hiện phán đoán robot hoặc thực hiện các biện pháp như nhận biết đó là một cuộc tấn công và tạm dừng quyền truy cập trong một khoảng thời gian nhất định.
Băng thông liên lạc: Không chỉ xem xét việc học trực tuyến mà còn chia sẻ màn hình và phân phối video trong trường học, điều quan trọng là phải đảm bảo băng thông cần thiết cho dịch vụ đám mây đang được sử dụng.
5.0 | Vận hành và quản lý hệ thống | Giảm khối lượng công việc của giáo viên: Cần thận trọng để đảm bảo rằng các hoạt động giúp giảm khối lượng công việc của giáo viên.
Sao lưu: Đối với thông tin được ghi trên máy chủ tập tin, v.v., bất kể biện pháp dự phòng máy chủ, thông tin công vụ của trường và thông tin kết nối bên ngoài của trường phải được sao lưu thường xuyên khi cần thiết. Thông tin học tập phải được sao lưu thường xuyên khi cần thiết.
Quản lý nhật ký: Phải thu thập và lưu trữ nhiều loại nhật ký và hồ sơ cần thiết để đảm bảo an ninh thông tin trong một khoảng thời gian nhất định. Nhật ký phải được quản lý phù hợp bằng cách chỉ định các mục cần thu thập dưới dạng nhật ký, thời gian lưu giữ, phương pháp xử lý và phải làm gì nếu không thể lấy được nhật ký. Một chức năng phải được thiết lập để thường xuyên kiểm tra hoặc phân tích nhật ký thu được và khi cần thiết, kiểm tra hoặc phân tích xem có bất kỳ hành vi xâm nhập hoặc hoạt động trái phép nào của bên thứ ba độc hại, v.v. hay không.
Máy chủ tài liệu: Người quản trị hệ thống thông tin giáo dục phải thiết lập dung lượng của máy chủ tài liệu mà giảng viên, nhân viên, v.v. có thể sử dụng và thông báo cho họ. Máy chủ tài liệu phải được cấu hình cho từng trường, v.v. và phải được đặt sao cho giảng viên, nhân viên, v.v. không thể xem hoặc sử dụng các thư mục và tập tin của các trường khác, v.v.
Hồ sơ quản lý hệ thống: Người quản trị hệ thống thông tin giáo dục phải lập hồ sơ công việc đối với công việc thực hiện trong quá trình vận hành hệ thống thông tin giáo dục thuộc thẩm quyền của mình. Khi nhân viên an toàn thông tin giáo dục phổ thông và người quản trị hệ thống thông tin giáo dục thực hiện các công việc như thay đổi hệ thống trên hệ thống thuộc thẩm quyền của mình, họ phải tạo hồ sơ chi tiết công việc và quản lý chúng một cách thích hợp để ngăn chặn gian lận, giả mạo, v.v.
Thông số kỹ thuật của hệ thống thông tin: Nhân viên an toàn thông tin giáo dục phổ thông và người quản trị hệ thống thông tin giáo dục phải quản lý phù hợp sơ đồ cấu hình mạng, thông số kỹ thuật hệ thống thông tin, v.v. để ngăn không cho bất kỳ ai khác ngoài những người cần chúng cho công việc xem hoặc bị mất, bất kể phương tiện ghi.
Hồ sơ lỗi: Nhân viên an ninh thông tin giáo dục phổ thông và quản trị viên hệ thống thông tin giáo dục phải ghi lại các báo cáo lỗi hệ thống từ giảng viên và nhân viên, xử lý các kết quả và sự cố liên quan đến lỗi hệ thống dưới dạng hồ sơ lỗi và lưu trữ chúng một cách thích hợp.
Kiểm tra các ID chưa sử dụng: Người quản trị hệ thống thông tin giáo dục phải phối hợp với bộ phận quản lý nhân sự kiểm tra các ID chưa sử dụng để đảm bảo không bị bỏ sót.
6.0 | Bảo mật và phát triển hệ thống | Mua sắm: Khi mua phát triển, lắp đặt, bảo trì hệ thống thông tin, v.v., các chức năng bảo mật kỹ thuật cần thiết phải được chỉ định trong thông số kỹ thuật mua sắm. Khi mua sắm thiết bị và phần mềm, chức năng bảo mật của sản phẩm phải được nghiên cứu để xác nhận rằng không có vấn đề gì về bảo mật thông tin.
Tách biệt môi trường: Người quản trị hệ thống thông tin giáo dục phải tách biệt môi trường phát triển, bảo trì và kiểm tra hệ thống khỏi môi trường vận hành hệ thống. Các quy trình phát triển/bảo trì hệ thống và chuyển đổi từ môi trường thử nghiệm sang môi trường vận hành hệ thống phải được làm rõ khi xây dựng kế hoạch phát triển/bảo trì hệ thống.
Kiểm tra: Khi giới thiệu một hệ thống thông tin mới, phải thực hiện kiểm tra đầy đủ trước khi kết nối nó với hệ thống thông tin đã hoạt động. Khi tiến hành thử nghiệm vận hành, các hoạt động phải được xác nhận trước trong môi trường mô phỏng. Thông tin cá nhân và dữ liệu thô nhạy cảm không được sử dụng làm dữ liệu thử nghiệm.
Độ chính xác của dữ liệu đầu vào/đầu ra: Khi thiết kế hệ thống thông tin cần kết hợp các chức năng kiểm tra để kiểm tra phạm vi dữ liệu đầu vào, loại bỏ các chuỗi ký tự không hợp lệ, phát hiện giả mạo/rò rỉ cố ý hoặc sơ suất, đảm bảo tính chính xác của dữ liệu đầu ra. Thiết kế đảm bảo tính chính xác của dữ liệu ở từng khâu xử lý đầu vào, xử lý nội bộ và xử lý đầu ra.
Tài liệu: Các tài liệu liên quan đến phát triển và bảo trì hệ thống cũng như các tài liệu liên quan đến hệ thống phải được duy trì và lưu trữ thích hợp. Kết quả xét nghiệm phải được lưu giữ trong một thời gian nhất định. Mã nguồn liên quan đến hệ thống thông tin và các phiên bản nguồn mở (kho) được sử dụng phải được lưu trữ theo cách thích hợp.
Độ chính xác của dữ liệu: Hệ thống thông tin được thiết kế để bao gồm các chức năng kiểm tra phạm vi và tính hợp lệ của dữ liệu được nhập vào hệ thống thông tin và loại bỏ đầu vào như chuỗi ký tự không hợp lệ. Hệ thống thông tin được thiết kế bao gồm các chức năng kiểm tra nhằm phát hiện khi có nguy cơ thông tin có thể bị làm sai lệch hoặc rò rỉ do cố ý hoặc vô tình.
Quản lý thay đổi: Khi thay đổi hệ thống thông tin, phải tạo ra lịch sử thay đổi đối với thông số kỹ thuật của chương trình, v.v. Khi cập nhật hoặc áp dụng các bản vá cho phần mềm phát triển và bảo trì, phải xác nhận tính nhất quán với các hệ thống thông tin khác.
Quản lý phần cứng và phần mềm được sử dụng trong phát triển hệ thống: Phần cứng và phần mềm được sử dụng bởi người quản lý và công nhân phát triển hệ thống phải được xác định. Nếu cài đặt phần mềm không phải là phần mềm được ủy quyền thì phần mềm đó phải được gỡ bỏ khỏi hệ thống.
7.0 | an ninh mạng | Kiểm soát kết nối mạng: Các hệ thống lọc, định tuyến, phát hiện xâm nhập, v.v. hoạt động trên mạng, nhưng để tận dụng tối đa các chức năng này, cần phải chú ý cấu hình phần cứng và phần mềm phù hợp. Ngoài ra, các biện pháp kiểm soát truy cập thích hợp phải được áp dụng cho mạng để ngăn chặn truy cập trái phép.
Hạn chế kết nối mạng bên ngoài: Cấu hình mạng, cấu hình thiết bị, công nghệ bảo mật, v.v. của mạng bên ngoài được kết nối phải được nghiên cứu chi tiết. Khi mở máy chủ web, v.v. với Internet, cần cài đặt tường lửa, v.v. ở ranh giới với mạng bên ngoài trước khi kết nối với mạng để ngăn chặn sự xâm nhập vào mạng giáo dục.
Ứng phó với các rủi ro bên ngoài đối với thông tin cực kỳ quan trọng qua Internet và rủi ro học sinh truy cập thông tin cực kỳ quan trọng: Nếu hệ thống được cấu hình với các biện pháp kiểm soát truy cập mạnh mẽ, hãy quản lý triệt để quyền truy cập trong từng hệ thống. Trong trường hợp cấu hình hệ thống thực hiện các biện pháp thông qua việc tách mạng, hãy tách các tuyến liên lạc giữa hệ thống quản lý trường học và hệ thống học tập về mặt logic hoặc vật lý, đồng thời tách biệt về mặt logic hoặc vật lý các hệ thống có nguy cơ cao khỏi Internet như duyệt web và thư Internet cũng như thông tin cực kỳ quan trọng (đặc biệt là các vấn đề ở trường).
Cấu hình mạng dựa trên việc sử dụng đám mây: Dịch vụ đám mây cung cấp dịch vụ qua Internet đáp ứng các tiêu chuẩn bảo mật của nhà cung cấp dịch vụ đám mây. Trong những trường hợp như vậy, có những trường hợp cấu hình mạng thông thường gây ra vấn đề trong quá trình học tập suôn sẻ.
8.0 | kiểm soát truy cập | Kiểm soát truy cập: Nếu hệ thống thông tin được cung cấp cho những người không có thẩm quyền thì thiệt hại có thể xảy ra như rò rỉ thông tin và sử dụng trái phép tài sản thông tin. Vì vậy, cần xác định rõ ràng việc kiểm soát truy cập đối với từng nội dung công việc và thẩm quyền. Ngoài ra, để ngăn chặn truy cập trái phép do cấp đặc quyền truy cập bất cẩn, điều quan trọng là phải tập trung quản lý đặc quyền truy cập cho nhân viên an ninh thông tin giáo dục phổ thông và quản trị viên hệ thống thông tin giáo dục.
Hạn chế truy cập bên ngoài: Quyền truy cập bên ngoài vào mạng nội bộ hoặc hệ thống thông tin phải được giới hạn ở số lượng người tối thiểu có lý do hợp lý để truy cập. Khi cho phép truy cập vào hệ thống từ các tổ chức bên ngoài như doanh nghiệp tư nhân, phải thực hiện các biện pháp để xác minh danh tính của người dùng truy cập hệ thống và phải có được sự đồng ý từ trẻ em/học sinh (hoặc người giám hộ) sẽ truy cập hệ thống.
Hiển thị khi đăng nhập: Quản trị viên hệ thống thông tin giáo dục phải thiết lập hệ thống để xác nhận rằng giảng viên và nhân viên có quyền truy cập hợp pháp đã đăng nhập, bằng cách hiển thị thông báo khi đăng nhập, giới hạn số lần đăng nhập, đặt thời gian chờ truy cập và hiển thị thời gian đăng nhập và đăng xuất.
Hạn chế thời gian kết nối dựa trên đặc quyền: Nếu bạn không giám sát thiết bị của mình trong khi đăng nhập vào hệ thống trong khi sử dụng các đặc quyền như đặc quyền của quản trị viên, sẽ có nguy cơ bị người khác sử dụng trái phép, do đó cần phải thực hiện các biện pháp như tự động ngắt kết nối mạng khi hệ thống không được sử dụng.
Cung cấp chức năng kiểm soát truy cập bởi các nhà cung cấp đám mây: Trường học bao gồm quản trị viên trường học, nhân viên tổng hợp và sinh viên và thông tin mà mỗi người trong số họ có thể truy cập khác nhau tùy thuộc vào vị trí và vai trò của họ. Ngoài ra, vì cần phải phân loại và quản lý thông tin liên quan đến công việc của trường và thông tin liên quan đến học tập nên nhà cung cấp đám mây phải cung cấp chức năng kiểm soát truy cập và người dùng đám mây phải đặt đặc quyền truy cập phù hợp. Lưu ý rằng để thiết lập các đặc quyền truy cập phù hợp, cần phải phân loại tài sản thông tin một cách thích hợp và chỉ cấp các đặc quyền truy cập tối thiểu cho từng tài sản thông tin như một quy tắc chung.
9.0 | Phản ứng sự cố | Thông báo trước về việc tấn công: Nếu có thông báo trước về việc hệ thống thông tin bị tấn công và chắc chắn hệ thống đó sẽ bị tấn công thì phải thực hiện các biện pháp như tắt hệ thống.
Tấn công từ chối dịch vụ: Tấn công từ chối dịch vụ còn được gọi là tấn công DoS (Từ chối dịch vụ) hoặc tấn công DDoS (Từ chối dịch vụ phân tán). Ngay cả trong trường hợp bị tấn công từ chối dịch vụ từ bên thứ ba, vẫn cần thực hiện các biện pháp như ví dụ sau để duy trì tính sẵn sàng của hệ thống thông tin.
Giám sát hệ thống thông tin: Hệ thống thông tin phải được giám sát liên tục để phát hiện các sự cố an ninh. Đặc biệt trong trường hợp cấu hình hệ thống có các biện pháp kiểm soát truy cập mạnh mẽ, các biện pháp như hệ thống phát hiện xâm nhập (IDS) và hệ thống ngăn chặn xâm nhập (IPS) phải được thực hiện để ngăn chặn quyền truy cập vào các tài sản thông tin quan trọng.
10.0 | Quản lý ID và mật khẩu | Quản lý mật khẩu: Không được lưu trữ mật khẩu trên máy chủ, thiết bị mạng, máy tính hoặc thiết bị đầu cuối khác.
Hủy đăng ký người dùng: Các giảng viên, v.v. phải thông báo cho nhân viên an toàn thông tin giáo dục tổng hợp hoặc quản trị viên hệ thống thông tin giáo dục xóa đăng ký người dùng khi không còn cần thiết cho công việc của họ.
Xử lý xóa ID: Xử lý xóa ID tại thời điểm chuyển trường/tốt nghiệp/rút lui. Vì ID duy nhất có thể nhận dạng cá nhân, từ góc độ bảo vệ thông tin cá nhân, cần đảm bảo rằng thông tin nhận dạng cá nhân không được lưu giữ ngoài thời gian cung cấp dịch vụ.
ID đặc quyền: Giám đốc an ninh thông tin giáo dục và quản trị viên hệ thống thông tin giáo dục phải tăng cường chức năng bảo mật của ID và mật khẩu đặc quyền, chẳng hạn như tạo và xóa ID đặc quyền theo thời gian sử dụng hoặc đặt giới hạn về số lần có thể nhập chúng.
Tăng cường bảo mật của đăng nhập một lần: Vì ID/mật khẩu được sử dụng cho đăng nhập một lần có tác động lớn nếu bị rò rỉ nên rủi ro bảo mật có thể được giảm thiểu hơn nữa bằng cách kết hợp nó với xác thực đa yếu tố nếu cần.
11.0 | Các biện pháp an ninh khác | Kiểm tra phương tiện: Mọi dữ liệu hoặc phần mềm bên ngoài phải được kiểm tra bằng phần mềm chống phần mềm độc hại.
Hạn chế trong việc xử lý các tài sản thông tin có tầm quan trọng loại II trở lên: Cấm làm việc trên các thiết bị đầu cuối không được cung cấp.
Ứng dụng mã hóa: Chỉ những ứng dụng có chức năng mã hóa tập tin mới được phép kết nối.
Telework: Khi giới thiệu telework, cần đảm bảo phương tiện xác minh danh tính thông qua xác thực và thực hiện các biện pháp cần thiết như mã hóa tập tin và mã hóa tuyến đường liên lạc tùy thuộc vào tính bảo mật của thông tin được truyền đạt.
12.0 | Quản lý thuê ngoài | Hợp đồng: Nếu cần thiết, phải ký kết hợp đồng với công ty gia công trong đó nêu rõ các yêu cầu bảo mật thông tin sau.
Lựa chọn: Khi lựa chọn một công ty gia công và đánh giá mức độ bảo mật thông tin của công ty đó, nên tham khảo tình trạng chứng nhận tiêu chuẩn quốc tế, v.v.
Bảng kiểm tra các yêu cầu bảo mật liên quan đến các công ty gia công phần mềm: Bảng kiểm tra các yêu cầu bảo mật liên quan đến các công ty gia công phần mềm.
Kiểm toán các công ty gia công: Nếu việc vận hành, bảo trì hệ thống thông tin… được thuê ngoài thì cần kiểm tra, đánh giá xem tài sản thông tin có được quản lý phù hợp theo đúng hợp đồng hay không.
13.0 | Mức độ cung cấp dịch vụ đám mây và đảm bảo chất lượng | Mức độ cung cấp dịch vụ đám mây và đảm bảo chất lượng: Đối với dịch vụ đám mây bạn định sử dụng, hãy so sánh các tiêu chuẩn được nêu trong điều khoản sử dụng, SLA (thỏa thuận cấp độ dịch vụ), SLO (mục tiêu cấp độ dịch vụ), v.v. với nội dung kinh doanh và chi phí để xác nhận rằng không có vấn đề gì khi vận hành. điều.
14.0 | Bảo vệ thông tin cá nhân và quyền riêng tư | Người dùng đám mây công cộng loại SaaS cần kiểm tra với nhà cung cấp đám mây của họ về các vấn đề liên quan đến bảo vệ quyền riêng tư, chẳng hạn như phạm vi thu thập và sử dụng thông tin cá nhân, thời gian quản lý, kiểm soát và quyền sở hữu dữ liệu.
Bổ sung: Định nghĩa phân loại tầm quan trọng
Phân loại tầm quan trọng I:
Thông tin bí mật liên quan đến cuộc sống và tài sản cá nhân, chẳng hạn như thông tin tài khoản cá nhân và thông tin nhân sự
đề cập đến Thông tin này chỉ có thể được truy cập bởi các giảng viên cụ thể tham gia vào công việc.
 Mức độ quan trọng II:
Thông tin mang tính riêng tư và nhạy cảm cao của học sinh (điểm số, thông tin liên quan đến sức khỏe, thành phần gia đình, thông tin học sinh)
Điều này bao gồm thông tin có tính bảo mật cao như lịch sử giáo dục, v.v.) và thông tin công việc của trường liên quan đến quản lý trường học.
Thông tin này chỉ có thể được truy cập bởi các giảng viên và nhân viên tham gia vào công việc.
 Phân loại tầm quan trọng III:
Thông tin liên quan đến học tập do sinh viên tạo ra thông qua các hoạt động học tập và tất cả nhân viên, chẳng hạn như tài liệu họp nhân viên.
đề cập đến thông tin công việc của trường có thể được chia sẻ bởi
Đây là thông tin công việc của trường có thể được chia sẻ bởi học sinh học tại nhà và giáo viên, nhân viên nên có thể chia sẻ từ cả trong và ngoài trường.
cho phép truy cập.
 Phân loại tầm quan trọng IV:
Đây là thông tin khác với những thông tin trên và ngay cả khi xảy ra vi phạm bảo mật thì nó cũng sẽ ít ảnh hưởng.
Đây là thông tin có thể bỏ qua.
## Sheet: O_QA50,51
GoogleWorkSpace / Microsoft | 名前 | 説明
Microsoft | userPrincipalName | ユーザーの名前。この属性はアカウント作成時に必須であり、設定後に変更できません。
displayName | ユーザーの表示名。最大長 256。
surname | ユーザーの姓（名字または姓）。最大長 64。
mail | メールアドレス
givenName | ユーザーの名（名前）。最大長 64。
objectId | グローバル一意識別子（GUID）は、ユーザーごとの一意の識別子です。例: 12345678-9abc-def0-1234-56789abcde。読み取り専用、変更不可。
userType | ディレクトリ内でユーザーの種類を分類するための文字列値。値は "Member" である必要があります。読み取り専用。
jobTitle | ユーザーの職務タイトル。最大長 128。
学校側で先生、生徒、管理者ごとに分けて登録していたら、先生、生徒、管理者それぞれで別々の職務が表示される。
department | ユーザーが所属する部署の名前。最大長 64。
学校側で先生、生徒、管理者ごとに分けて登録していたら、先生、生徒、管理者それぞれで別々の部署が表示される。
accountEnabled | ユーザーアカウントが有効か無効か。アカウントが有効な場合は "true"、それ以外の場合は "false"。
usageLocation | ライセンスを付与されたユーザーは、法的要件により、サービスの可用性を確認するために国/地域の指定が必要です。この設定は省略できません。2文字の国/地域コード（ISO 3166 規格）。例: US（アメリカ）、JP（日本）、GB（イギリス）。
streetAddress | ユーザーの勤務先の住所。最大長 1024。
state | ユーザーの住所の州または県。最大長 128。
country | ユーザーの居住国/地域。例: US（アメリカ）、GB（イギリス）。最大長 128。
physicalDeliveryOfficeName | ユーザーの勤務先のオフィス所在地。最大長 128。
city | ユーザーの居住市。最大長 128。
postalCode | ユーザーの郵送先住所の郵便番号。郵便番号は国/地域ごとに固有です。米国では ZIP コードが含まれます。最大長 40。
telephoneNumber | ユーザーの勤務先の主な電話番号。
mobile | ユーザーの主な携帯電話番号。最大長 64。
authenticationAlternativePhoneNumber | 多要素認証（MFA）やアカウント復旧用の代替電話番号。ユーザーがパスワードを忘れたり、アカウントがロックされた場合に、認証コードがこの番号に送信されることがあります。
authenticationEmail | 次の場合に認証コードを受信するためのメールアドレス: アカウントの復旧（パスワードを忘れた場合）、多要素認証（MFA）、Microsoft からのセキュリティ通知。
alternateEmailAddress | ユーザーの補助メールアドレス。認証のためではなく、連絡用として利用できます。重要な情報やシステム通知の受信用として使用されることが多い。
ageGroup | ユーザーの年齢グループを特定し、児童保護ポリシーの適用や、不適切なコンテンツの制限に利用される。
consentProvidedForMinor | 未成年のユーザーに対して、保護者や後見人がアカウントの利用を許可したかどうかを確認する。
legalAgeGroupClassification | ユーザーの国の法律に基づく年齢グループを特定する。
Google
Workspace | First Name [Required] | ユーザーの名前
Last Name [Required] | ユーザーの姓
Email Address [Required] | ユーザーのメールアドレス
Password Hash Function [UPLOAD ONLY] | パスワードのハッシュ方法（アップロード時のみ）
Org Unit Path [Required] | ユーザーが所属する組織単位のパス。
学校側で先生、生徒、管理者ごとに組織を分けて登録していたら、先生、生徒、管理者それぞれで別々のパスが表示される。
New Primary Email [UPLOAD ONLY] | 新しいメールアドレス（アップロード時のみ）
Status [READ ONLY] | アカウントのステータス（読み取り専用）
-アクティブの場合：Active
-アーカイブ済みの場合：Archived
-停止中の場合：Suspended
Last Sign In [READ ONLY] | 最終ログイン（読み取り専用）
Home Secondary Email | ユーザーの自宅の補助メールアドレス
Work Secondary Email | ユーザーの職場の補助メールアドレス
Work Phone | 勤務先の電話番号
Home Phone | 自宅の電話番号
Mobile Phone | 携帯電話番号
Work Address | 勤務先の住所
Home Address | 自宅の住所
Employee ID | 従業員コード
Employee Type | 従業員の種類（例：フルタイム、パートタイム）
Employee Title | 従業員の職務タイトル
Manager Email | 直属の管理者のメールアドレス
Department | ユーザーが所属する部署
Cost Center | ユーザーに関連するコストセンター
2sv Enrolled [READ ONLY] | 2段階認証の登録ステータス（読み取り専用）
2sv Enforced [READ ONLY] | 2段階認証の義務付けステータス（読み取り専用）
Building ID | ユーザーが勤務する建物のコード
Floor Name | 建物内の階の名前
Floor Section | フロア内のエリア
Email Usage [READ ONLY] | メールの使用状況（読み取り専用）
Drive Usage [READ ONLY] | Google Drive の使用状況（読み取り専用）
Photos Usage [READ ONLY] | Google Photos の使用状況（読み取り専用）
Storage limit [READ ONLY] | ストレージの上限（読み取り専用）
Storage Used [READ ONLY] | 使用済みのストレージ容量（読み取り専用）
Change Password at Next Sign-In | 次回ログイン時にユーザーにパスワード変更を要求
New Status [UPLOAD ONLY] | アカウントの新しいステータス（アップロード時のみ）
New Licenses [UPLOAD ONLY] | ユーザーに付与された新しいライセンス（アップロード時のみ）
Advanced Protection Program enrollment | 高度な保護プログラムの参加ステータス
Gemini Limit Status [READ ONLY] | Gemini の制限ステータス（読み取り専用）
Gemini Last Usage [READ ONLY] | 最後に Gemini を使用した日時（読み取り専用）
## Sheet: O_QA39
差分の修正ができるかどうかでパフォーマンスの違いが出る
左はパフォーマンスが悪い　右が推奨
動作の主が異なっていて、どっちが操作をするかでパフォーマンスへの影響が変わる
## Sheet: O_QA41
## Sheet: O_QA46
デジタル教具のダウンロード機能の実装方法の比較
1. 要求
・学校関係者（学校管理者、先生、生徒）が最小限の操作でデジタル教具ページにアクセスできるようにしたい。
・学校側、もしくはオータケ様側がEdu管理画面にユーザー情報を入力する手間を省きたい。
・学校の先生や生徒情報が変更になった場合、Edu の管理画面に情報を手動で入力しないようにしたい
・先生や生徒は学校でも家でも使える
・セキュリティが担保されている
・契約金額に関わるユーザー数の情報を収集できる
1.2 要求と各方法についてのまとめ
No | 方法 | 詳細 | 学校関係者（学校管理者、先生、生徒）が最小限の操作でデジタル教具ページにアクセスできるようにしたい。 | 学校側、もしくはオータケ様側がEdu管理画面にユーザー情報を入力する手間を省きたい。 | 学校の先生や生徒情報が変更になった場合、Edu の管理画面に情報を手動で入力しないようにしたい | 先生や生徒は学校でも家でも使える | セキュリティが担保されている | 契約金額に関わるユーザー数の情報を収集できる
1.0 | IPアドレスでアクセスするユーザを制限する | - 先生や生徒が登録されているIP アドレスを使用すると、デジタル教具画面を表示できる。 
- Eduの管理画面でIPアドレスを管理（登録・編集）する必要がある。 | 非常に速い
（URLにアクセスするだけ） | できません。

IPアドレスで制限する場合、アカウントは作成しないので、ユーザに特有の情報を取得できません。

そのため、ユーザ情報（名前、人数、メールアドレス）を取得するためには学校側もしくはオータケ様側がEdu管理画面にユーザ情報を入力する必要があります。 | IP アドレスでアクセスする場合、IP アドレスからユーザーの情報を取得できません。
そのため、手動で入力する必要があります。 | 可能

ただ、以下の2つの設定のうち、どちらかを行う必要があり、あまり現実的ではありません。

1. 生徒の家のIPアドレスを登録する必要がある
2. 学校側がVPNを設定し、先生・生徒の端末で使用できる必要がある。 | いいえ
 
- ユーザーは偽の IP を使用できる | できません。

- 複数のユーザーが同じ IP アドレス内に存在します
- IP アドレスは変更される可能性があります。
2.0 | Google、Microsoft でSSOログインする | - Google、Microsoft でログインします。
- ログインに成功したら、デジタルツール画面に進みます。 | 普通

以下のいずれかを行う必要があります。
1. オータケ様側がEduの管理画面にドメインを登録する
2. オータケ様側がユーザ情報（先生、生徒）のリストをEduの管理画面に登録する | 省けます。

- Edu システムは、ユーザーが初めてログインするときに情報（メールアドレス、名前）を自動的に保存します。 
- ユーザーに関するメールや名前以外の情報が必要な場合は、Edu管理画面で情報を入力する必要があります。

※誰がアクセスできるかを制御したい場合、以下の2通りがあります。
1. メールアドレスのドメインでログイン制御する
2. CSV、手入力で管理画面に登録した先生・生徒のみをログイン可能とする | TrustedIDとAPIの設定を学校管理者側で行っている場合
・自動同期

TrustedIDとAPIの設定を学校管理者側で行っていない場合
・学校管理者/オータケ様にユーザ情報のCSVアップロードいただく
・ドメインでユーザの制御（非推奨） | 可能 | はい | できる
3.0 | ログインせず、アクセスコードを使用する | - ログインする必要はありません。 
- ユーザーはEduの管理ページで提供されるアクセスコードを使用します（別の機能） | 普通

以下両方を行う必要があります。
1. 先生はアクセスコードを管理画面から発行
2. 生徒にアクセスコードを配布 | ユーザ情報は取得していないので、別途学校側がユーザ情報を入力する必要があります。 | Eduの管理画面で入力していただく必要があります。 | 可能 | いいえ 

- ユーザーはアクセス コードを共有し、関係ない方に漏れてしまうと新しいコードを発行する必要があります。 | できません。

- 1つのアクセスコードを複数のユーザーで共有できます。 
- 1 つのデバイスで 1 回のみアクセスできる 1 つのアクセス コードを付与することによってのみ制限できますが、あまり現実的ではありません。
## Sheet: Q&A_
NO | Data | Status | 機能 | 質問・具体的な内容・現在の課題 | 回答 | 宛先 | 質問者 | 優先度 | 希望回答期限 | 画像
1.0 | MUST FOLLOW
Question format | Function to ask:
- Screen ID/Name, API ID/Name, Batch ID/Name, etc
- What part of the doc you want to ask by text or screenshot

Background:
- xxx information is missing in order to implement xxx function or
- xxx description is not consistent with xxx description of xxx doc or
- this doc says xxx but it's unclear for me I want to make it more detailed
- other issue to confirm

Question or request: 
- In order to resolve the problem above, can I have xxx?
- In order to resolve the problem above, let me confirm xxx. I understant that is xxx but is it correct? | Màu đen, chữ trắng là đã update detail design, checklist
50.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Khi admin trường login vào hệ thống Edu, có thể liên kết thông tin của tất cả tài khoản giáo viên và học sinh trên tài khoản WS của admin trường không? | Có thể, khi Admin trường login vào Edua với tài khoản Google Workspace với role là Admin, thì có thể gọi Api google để lấy danh sách tất cả người dùng và tạo người dùng mới trong hệ thống Edua
51.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Thông tin tài khoản cảu GV, HS trên tài khoản WS của admin trường có thể được đồng bộ kịp thời không? | Nếu là đồng bộ theo thời gian thực (real-time) thì không thể, việc đồng bộ sẽ có độ trễ, sẽ mất thời gian lấy dữ liệu về, thời gian phụ thuộc vào google, mạng của người dùng
52.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Có thể quản lý tương tự với tài khoản Microsoft không? | Có thể
53.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Khó khăn khi triển khai là gì ? | Mỗi account của Google Workspace khi đăng ký với Edua, cần phải bật api, cấp quyền cho người dùng sử dụng api, config oauth và lấy TrustedID của tài khoản Google Workspace,
Đây sẽ là khó khăn khi một trường học đăng ký với hệ thống Edua, giống với link: https://help.schooltakt.com/ja/articles/5525025-%E7%AE%A1%E7%90%86%E8%80%85-google-workspace-%E9%80%A3%E6%90%BA%E3%81%AE%E6%B5%81%E3%82%8C
54.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Tài khoản google workspace với role nào có thể gọi Api google để lấy danh sách tất cả người dùng và tạo người dùng mới trong hệ thống Edua ? | Trả lời: Chỉ tài khoản Google Workspace có vai trò Admin và phải bật API thì mới có thể gọi API của Google để lấy danh sách tất cả người dùng và tạo người dùng mới trong hệ thống Edua
55.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Hệ thống Edua có thể tự động đồng bộ ngầm dữ liệu người account google workspace với account của hệ thống Edua? | Trả lời: Có thể, hệ thống Edua cần lưu lại access token (hạn sử dụng là 60 phút) và refresh token (hạn sử dụng là 6 tháng) Google của người dùng Google Workspace có vai trò Admin mới có thể đăng nhập và truy cập dữ liệu.

Hệ thống Edua sẽ cần tìm cách để làm mới hạn sử dụng của access token người dùng admin bằng cách sử dụng refresh token. 

Nhưng nếu access token và refresh token bị hủy bỏ, hết hạn, thì không thể sử dụng để lấy được dữ liệu
56.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Khi người dùng Admin tạo/xóa tài khoản trên Google Workspace, có cách nào để tự động gửi thông tin đó tới hệ thống Edua không ? | Trả lời: Có thể thiết lập để tự động gửi thông tin khi Admin tạo tài khoản trên Google Workspace. 

Tuy nhiên, việc thiết lập khá phức tạp và mất nhiều thời gian trên nhiều tài khoản Admin Workspace khác nhau, vì mỗi tài khoản cần được cấu hình riêng lẻ
57.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Khi tạo tài khoản trên Edua, có cách nào để tự động tạo trên Google Workspace không ? | Trả lời: Có thể, người dùng đăng nhập với google vào hệ thống Edua với quyền Admin Google Workspace, nếu người dùng tạo tài khoản trên Edua, tài khoản đó cũng sẽ được tạo với Google Workspace.
58.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Quy trình để đồng bộ trên các role người dùng tốt nhất là gì ? | Trả lời:

1. Với quyền Admin:
Hệ thống Edua sẽ sử dụng Admin API để quản lý tài khoản.
Người dùng cần đăng nhập bằng tài khoản có quyền Admin trong Google Workspace.
Tài khoản Admin trong Google Workspace phải có quyền tạo tài khoản trong Edua.
1.1. Nếu trong Google Workspace đã có sẵn tài khoản người dùng:
Admin đăng nhập vào hệ thống Edua và bấm đồng bộ danh sách tài khoản từ Google Workspace xuống Edua.
Lưu ý:
Quá trình đồng bộ chỉ nên thực hiện một lần đầu tiên, vì nếu số lượng tài khoản lớn, quá trình có thể diễn ra chậm.
Sau lần đầu tiên, Edua khuyến khích tạo tài khoản mới trực tiếp trên hệ thống, thay vì đồng bộ lại toàn bộ danh sách.
1.2. Sau khi đồng bộ:
Admin có thể thêm, sửa, xóa tài khoản trong hệ thống Edua.
Edua sẽ tự động đồng bộ các thay đổi này với Google Workspace, nghĩa là:
Tài khoản được tạo hoặc chỉnh sửa trên Edua cũng sẽ được cập nhật trên Google Workspace.
2. Với quyền User:
Nếu người dùng thay đổi tên cá nhân trên Google Workspace:
Hệ thống Edua sẽ tự động cập nhật tên mới mỗi khi người dùng đăng nhập vào Edua bằng tài khoản Google.
Điều này giúp đồng bộ thông tin giữa hai hệ thống.
59.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Trường hợp 1 email sử dụng cho cả google và microsoft thì sao ? | Trả lời: khi tạo tài khoản cho người dùng, sẽ định nghĩa luôn người dùng này từ google hay microsoft
60.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Có thể lấy được từ user những thông tin gì ? | Trả lời: 	
	- User Agent: Lấy thông tin về trình duyệt, hệ điều hành, kiến trúc CPU.
	- Ngôn ngữ trình duyệt
	- Loại trình duyệt
	- Nền tảng hệ điều hành
	- Địa chỉ IP
	- Tốc độ mạng
	- Trạng thái kết nối mạng
	- Độ phân giải màn hình
	- Số lõi CPU
	- Dung lượng RAM
	- Múi giờ
	- Giờ hệ thống
	- Vị trí địa lý (cần người dùng cho phép, có thể sai)
	- Pin
	- Chuyển động và định hướng
61.0 | Đồng bộ tất cả tài khoản trong Admin Google Workspace | Phương pháp hạn chế bằng địa chỉ IP có phù hợp không? Có phương pháp tốt hơn không?
Có cách nào hạn chế truy cập chỉ từ địa chỉ IP trong trường nhưng vẫn cho phép truy cập từ nhà không? (trường hợp học sinh học ở nhà )
Có rủi ro bảo mật nào không?
Có thể thu thập thông tin về số lượng người truy cập (vd: đo lường bằng ID thiết bị, v.v.) không? (Để Otake quản lý số lượng người dùng)

Câu trả lời sẽ được viết thành bảng | Trả lời: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit?gid=733878479#gid=733878479
## Sheet: Webのアカウント
権限 / Quyền | Name | ID | Password
学校管理者 / QLT | qlt1@gmail.com | rmzJTW79
先生 / GV | UC93NKNSY111899 | gv2@gmail.com | lkqBQA67
先生 / GV | UC9356RWL111898 | gv1@gmail.com | pnkYSH63
生徒 / HS | HS 1 | UC93UDVXC111902 | lpyUNJ78
生徒 / HS | HS 6 | UC93WGN9T111907 | hkaLJB36
生徒 / HS | HS 14 | UC93E1LQE111915 | btpJKW56
生徒 / HS | HS 12 | UC93IHN7T111913 | yfnXJH74
生徒 / HS | HS 9 | UC93EXSEU111910 | jzeCWD59
生徒 / HS | HS 10 | UC93FHC4P111911 | jgkMAC93
生徒 / HS | HS 7 | UC93HWHN4111908 | dgvMFQ98
生徒 / HS | HS 8 | UC93FQMR2111909 | xmqYCK56
生徒 / HS | HS 3 | UC93HRGIZ111904 | rkjPUZ49
生徒 / HS | HS 4 | UC93LI0XC111905 | fuk2ZV97
生徒 / HS | HS 11 | UC93TSAXL111912 | uylRYJ83
生徒 / HS | HS 13 | UC932FLOI111914 | xktQLC36
生徒 / HS | HS 5 | UC93QYOIH111906 | wzl2CU68
生徒 / HS | HS 2 | UC93FEFTN111903 | qzrXKQ69
オータケ / Otake | Otake | otake2001@gmail.com | fvmWNM58
## Sheet: Copy of QA61
SO SÁNH CÁC PHƯƠNG PHÁP TRIỂN KHAI KHI PHÁT TRIỂN TÍNH NĂNG DOWNLOAD DIGITAL TOOL
1. Background
Phía Otake mong muốn chỉ tập trung bán Digital Tool.
2. Các phương án bán Digital tool.
2.1 Phương án đã nghiên cứu nhưng bị reject:
- Phương án sử dụng Add-on/ Extention.
- Phương án phát triển trang web mới để GV/ HS copy trực tiếp Digital Tool vào Google Slide/ Docs/ Sheet
2.2 Phương án Otake đã quyết định phát triển ở thời điểm hiện tại:
- Phương án phát triển trang web mới để GV/ HS download Digital Tool và sử dụng ở local
Ưu điểm:
- Thời gian phát triển nhanh.
- Không phát sinh nhiều risk về mặt công nghệ.
Nhược điểm:
- User sau khi download ảnh thì có thể chia sẻ cho nhau.
- Việc quản lý user thực tế sử dụng có thể không chính xác.
- Về quản lý bản quyền ảnh có thể gặp khó khăn, hoàn toàn phụ thuộc vào điều khoản bằng giấy tờ ký kết với phía trường học.
3. So sánh các phương án triển khai với tính năng download digital tool.
3.1 Yêu cầu từ khách hàng.
- Cho phép enduser truy cập trang digital tool ít thao tác nhất.
- Tránh việc trường phải nhập thông tin user vào màn hình quản lý phía Edu.
- Tránh việc Otake tự nhập thông tin vào màn hình quản lý phía Edu khi GV/HS của trường thay đổi
- Có thể sử dụng cả ở trường và ở nhà.
- Đảm bảo an toàn bảo mật.
- Có thể thu thập thông tin về số lượng người sử dụng.
3.2 Đánh giá các phương án bảo mật và quản lý người dùng.
Phương án | Cho phép enduser truy cập trang digital tool ít thao tác nhất. | Tránh việc trường phải nhập thông tin của User vào màn hình quản lý phía Edu. | Tránh việc Otake tự nhập thông tin vào màn hình quản lý phía Edu khi GV/HS của trường thay đổi | Có thể sử dụng cả ở trường và ở nhà. | Đảm bảo an toàn bảo mật. | Có thể thu thập thông tin về số lượng người sử dụng. | Nếu có 2 tài khoản
- one@scuti.asia
- two@scuti.asia
có phân biệt được trong lần đăng nhập đầu tiên không? | Nếu có 2 tài khoản
- one@scuti.asia
- two@scuti.asia
có phân biệt được trong lần đăng nhập thứ 2 trờ đi không?
- Hạn chế truy cập bằng địa chỉ IP
- Sau khi user dùng đúng địa chỉ IP thì vào thẳng màn hình digital tool. 
- Cần quản lý địa chỉ IP trên trang quản lý của Edu. 
- Nếu sử dụng ở nhà thì có hai phương án nhưng triển khai rất khó triển khai là sử dụng vpn hoặc quản lý IP của học sinh ở nhà | Rất nhanh | Phương án đã nghiên cứu: 
Tự động lấy thông tin của enduser thông qua tài khoản admin workspace
=> Không khả quan, vì khi truy cập bằng địa chỉ IP thì từ đỉa IP không thể lấy thông tin của User

Ngoài phương án trên, nếu muốn quản lý thông tin User mà không muốn nhập thủ công thì không còn phương án nào cả. | Phương án đã nghiên cứu: 
- Tự động đồng bộ thông tin User từ Google workspace về hệ thống Edu. 
=> Không khả quan, vì khi truy cập bằng địa chỉ IP thì từ đỉa IP không thể lấy thông tin của User

Ngoài phương án trên, nếu muốn đồng bộ thông tin user khi thông tin của trường thay đổi thì không còn phương án nào cả. | Đáp ứng được | Không đảm bảo do: 
- Người dùng có thể bị fake IP | Không thể vì: 
- Nhiều người dùng có thể có chung 1 địa chỉ IP
- Địa chỉ IP có thể thay đổi. | Không thể vì: 
- Trong hệ thống Edu không có dữ liệu. 
- Từ địa chỉ IP không thể phân biệt được 2 tài khoản. | Không thể vì: 
- Trong hệ thống Edu không có dữ liệu. 
- Từ địa chỉ IP không thể phân biệt được 2 tài khoản.
- Đăng nhập bằng google, microsoft.
- Sau khi đăng nhập thành công thì vào thằng màn hình digital tool. | Trung bình | Tránh được do:
- Hệ thống Edu có thể tự động lưu thông tin khi user đăng nhập lần đầu. 
- Nếu muốn có thêm thông tin về User thì mới cần nhập thông tin ở màn hình quản lý phía Edu. | Tránh được do: 
- Khi GV/ HS của trường thay đổi thì bản thân trường cần inactive tài khoản google, khi đó không thể đăng nhập được từ hệ thống Edu. 
- Có thể áp dụng phương án nếu user trong vòng 1 tháng không đăng nhập thì sẽ xóa tài khoản đó đi tránh cho trường bị chặn do vượt quá số lượng đã đăng ký. | Đáp ứng được | Đảm bảo tốt | Có thể. | Có thể nếu: 
- Trước khi user đăng nhập lần đầu tiên thì phía Admin trường học phải gửi trước danh sách user để Otake tạo sẵn tài khoản. | Có thể
- Không cần đăng nhập. 
- User dùng Mã Truy Cập (Access Code) được cấp trên trang quản lý của Edu | Trung bình | Không tránh được do: 
- User truy cập theo mã code được cấp sẵn, muốn quản lý thông tin thì bắt buộc phải nhập thủ công. | Tránh được do: 
- Việc quản lý thông tin user thay đổi sẽ được phía trường học tự quản lý, phía Edu không cần quan tâm thông tin này. | Đáp ứng được | Không đảm bảo do: 
- User khả năng cao chia sẻ mã truy cập. | Không thể vì: 
- Nhiều người dùng có thể dùng chung 1 mã truy cập. 
- Chỉ có thể hạn chế bằng cách cho 1 mã truy cập chỉ truy cập được tại 1 thời điểm trên 1 thiết bị. | Không thể vì: 
- Trong hệ thống Edu không có dữ liệu. | Không thể vì: 
- Trong hệ thống Edu không có dữ liệu.
- Admin trường học cung cấp danh sách account cho Otake. 
- Otake tạo toàn bộ tài khoản cho 1 trường học hoặc tạo trang quản lý cho Admin trường tự nhập. | Trung bình | Tránh được do: 
- Việc nhập thông tin có thể do Otake đảm nhiệm. | Tránh được do: 
- Việc nhập thông tin có thể do admin trường đảm nhiệm. | Đáp ứng được | Đảm bảo tốt | Có thể. | Có thể. | Có thể.
## Sheet: QA104
## Sheet: QA102
## Sheet: Q&A-CR15
1.0 | 音量が開いていない状態: スピーカーをクリックすると、2のように音量設定バーが表示されます。
2.0 | 音量設定バーの表示: 音量バーをドラッグして音量を上げることができます。
3.0 | 音量ボタンをドラッグして音量を上げています
4.0 | 音量ボタンを再度押下すると、音量ゲージは閉じます
5.0 | iPadでの表示は以下のようになります。（音声ボタンはありません）
## Sheet: QA90
90_1 | NG link: https://docs.google.com/spreadsheets/d/1Yzg-oQLgjUMgbMTup7GAZxyJT7SFuNxF1xzPQPGq_Ao/edit?gid=33741826#gid=33741826&range=165:165 | 2.0
修正後の表示 | 修正方法：グリーン線が各文字の中心を通るように修正
90_2 | NG link: https://docs.google.com/spreadsheets/d/1Yzg-oQLgjUMgbMTup7GAZxyJT7SFuNxF1xzPQPGq_Ao/edit?gid=33741826#gid=33741826&range=36:36
修正後の表示 | 修正方法：グリーン線が各文字の中心を通るように修正
90_3 | NG link: https://docs.google.com/spreadsheets/d/1Yzg-oQLgjUMgbMTup7GAZxyJT7SFuNxF1xzPQPGq_Ao/edit?gid=33741826#gid=33741826&range=177:177
修正後の表示 | 修正方法：グリーン線が各文字の中心を通るように修正 | 修正方法：グリーン線が各文字の中心を通るように修正
3.0
## Sheet: QA87
## Sheet: QA79
既存仕様踏襲実装② | BD上の記載①
「はい」を押下後
## Sheet: QA78
①アップロードした直後画面
②先生の検索画面
③登録済の一覧画面
## Sheet: QA75
## Sheet: QA30
1.0 | オブジェクト1つのとき | オブジェクト2つ以上のとき
オブジェクトが画面下に近づきロックアイコンが隠れそうになる | オブジェクトが画面上に近づきロックアイコンが隠れそうになる | オブジェクトが画面下に近づきロックアイコンが隠れそうになる | オブジェクトが画面上に近づきロックアイコンが隠れそうになる
ロックされているとき | 赤枠
ロックされていないとき | 既存通り。青枠。
## Sheet: QA33
## Sheet: QA34
## Sheet: QA35
1.0
2.0
水平反転
3.0
垂直反転→水平反転
4.0
垂直反転
## Sheet: QA36
## Sheet: QA37
移動させたい意図（動画）
https://drive.google.com/file/d/16tmE-DV2c1Aq1bIpxTtzK7vv6V3cov4-/view?usp=sharing
## Sheet: QA41
## Sheet: QA44
デモビデオ
https://drive.google.com/file/d/1JiQGOPw1IWKo09JVmGbqc-c6VFwX4HRs/view?pli=1&google_abuse=GOOGLE_ABUSE_EXEMPTION%3DID%3D2d27592f5389072f:TM%3D1705905599:C%3Dr:IP%3D27.72.100.4-:S%3DLsgJDkx1WbFIiD_G81cZyfo;+path%3D/;+domain%3Dgoogle.com;+expires%3DMon,+22-Jan-2024+09:39:59+GMT
現状のデジタルボード
縦25px、横157pxのサイズのメニュー
## Sheet: QA48
## Sheet: QA49
iPadで修正前 | iPadで修正後
Lenovoで修正前
Lenovoで修正後
## Sheet: QA50
## Sheet: QA52
## Sheet: QA53
iPad | Web
## Sheet: QA55


---
**Nguồn:** `Kinh nghiệm PM\スプリックス様_森塾悟空_マイグレーション案件_v1.0.pptx`

## Slide 1
森塾悟空マイグレーション案件
キックオフMTG
2025年11月19日
株式会社カオピーズ
Keep Innovating
株式会社スプリックス　御中
## Slide 2
2
アジェンダ
## Slide 3
3
1. プロジェクト概要
①概要​
　　悟空案件　PHP8、CakePHP5のアップグレード開発を行います。
②作業範囲​​
　・開発：​
　　→コーディング​
　　→ソースコードレビュー
　　→単体テスト​

　・結合テスト：​
　　→テストケース作成​
　　→テストケースレビュー
　　→結合テスト​
③お客様から頂くもの
・エンドクライアントの概要要件資料
・ステージング環境（システムテスト開始前）と本番環境（最終リリース前）
・その他必要とされる情報（Q&Aなど）
※上記がご提供されない場合、納期、工数を調整させて頂く場合がございます。
## Slide 4
4
1. プロジェクト概要
④開発環境​
　・開発言語／フレームワーク：
　バックエンド：CakePHP 2からCakePHP5.xにアップグレード（PHP）
　※開発着手時の最新版を使用する
　・インフラ環境： Amazon AWS
　・利用ツール：PHP Storm、Xdebug、Docker、Bamboo CI、Bitbucket
⑤動作環境：​
以下の動作環境に対応いたします。
Google Chrome (開発時点の最新版)
⑥テスト環境：​
結合テストでの動作確認は、以下の機種とWebブラウザーで実施いたします。
Microsoft Windows 10上のGoogle Chrome (開発時点の最新版)
※テスト機器はテスト着手時の在庫状況により上記機種と違う場合があります。
## Slide 5
5
2. 開発工数見積
こちらはAIツール適用による20％削減
を反映する前の初期工数となります。
## Slide 6
6
3. 成果物・納品物
## Slide 7
7
4. プロジェクト体制
開発チーム（ベトナム側）

　　　　　　　システムエンジニア　　　　テスター
全体進捗の把握
【カオピーズ 】
貴社
ご担当者様
BrSE/プロジェクトマネージャー
営業担当
(アイン)
・契約対応
・課題ヒアリング、対応
・お客様とコミュニケーション対応（報・連・相）
・進捗管理、タスク割り当てなど
・成果最終チェック
契約連絡
要件変更、
スケジュールの調整
緊急連絡
・システム開発作業対応
・単体テスト
・技術サポート
・結合テスト
## Slide 8
8
5. スケジュール（案）
業務開始日	：2025年11月01日
仮納品日の予定：2026年04月30日
◉検収完了の予定日：2026年05月31日
緑色：弊社の担当
黄色：貴社のご担当
## Slide 9
9
6. 進行方法
## Slide 10
10
6. 進行方法
プロジェクトを円滑に進行するため、やり取りを行う際に想定しているコミュニケーションツールは以下となります。
※緊急対応の場合、開発チームに連絡がつかなければ、スラック「ext-カオピーズ緊急対応用」チャンネルにて、
弊社の全てのメンバーをメンションして頂けますようよろしくお願い致します。
## Slide 11
11
7. 現状について
コードベース部分の実装：50％（11/26 完了予定）

ソースコードおよびシステム全体仕様の確認：70％

タスク実行スケジュール作成：50％（11/28 完了予定）
現在の状況は以下の通りになります。
## Slide 12
12
8. Q&A・お客様にお願い
①納品方法について

・タスク完了後、都度納品する形でよろしいでしょうか、それともまとめて一括納品する形でよろしいでしょうか。
Q&A
## Slide 13
13
8. Q&A・お客様にお願い
お客様にお願い
1.ソースコードのベースラインについて

現在利用中のGitリポジトリに、弊社を追加いただき現行コードを取得させていただければと思います。
案件用の新規Gitリポジトリの作成をお願い致します。
ソースコードのマイグレーションについて下記の認識すり合わせお願いいたします。
コードのマイグレーションについては、お客様と合意した特定の時点のソースコードを基準として実施いたします。
その後、ラボチームまたはお客様側で追加の修正や更新が入った場合は、マイグレーション対象には含まれません。
基準日以降の変更分については、追加対応として対応させていただきます。

2.単体テストについて

弊社にて単体テストを作成 →相談チャネルにて御社へお送り→御社は内容をご確認いただければと思います。
## Slide 14
14
ご視聴ありがとうございました


---
**Nguồn:** `Kinh nghiệm PM\新体制説明_Member taisei.pptx`

## Slide 1
CONFIDENTIAL
‹#›
アジェンダ
新メンバーの紹介(赤井)
新開発体制・役割の紹介
定例会議・Slackの確認
現行タスクの確認
## Slide 2
CONFIDENTIAL
‹#›
新メンバーの紹介
赤井 大志 / AKAI TAISHI
日本でネイティブモバイルアプリ開発および顧客折衝業務を経験後、IT業界に携わりつつ語学力を活かしたいため、ベトナムに移住しました。ベトナムではフロントエンドのWebアプリ開発者、BrSEとして業務に携わっています。
顧客折衝、要件分析、基本設計、開発、リリース、保守に至る様々な工程での経験があります。
ベトナムでの業務では日本語、英語、ベトナム語を使用してPM、エンジニア、テスター各々に対して「簡潔」かつ「結論から話す」ことを心がけてコミュニケーションを取っています。
語学資格：TOEFL-ITP 607（英語）、TOEIC 955（英語）、VNU level-5（ベトナム語）、HSK6級 230（中国語）
IT資格：Information Security Foundation based on ISO/IEC 27001(EXIN)、Excel VBA スタンダード、App Development With Swift、OSS-DB Silver、CCNA200-301、基本情報技術者
## Slide 3
CONFIDENTIAL
‹#›
新開発体制の紹介
## Slide 4
CONFIDENTIAL
‹#›
各メンバーの役割
## Slide 5
CONFIDENTIAL
‹#›
定例会議の確認
## Slide 6
CONFIDENTIAL
‹#›
Slackに関するコミュニケーションの確認


---
**Nguồn:** `Kinh nghiệm PM\週間報告書_template.xlsx`

## Sheet: 進捗報告
プロジェクト進捗報告書 | トピックス | 承認 | 審査 | 作成
プロジェクト名 | FDB Upgrade
作業期間 | 1/10/2025 ~ 3/11/2025
報告日 | 4/11/2025
1.進捗状況
№ | 小分類 | 対応項目 | 作業状況 | 遅延有無 | リカバリプラン | 備考
1
2
3
4
5
6
2.来週の予定
№ | 小分類 | 対応項目 | 作業状況 | 遅延有無 | リカバリプラン | 備考
1
2
3
4
5
6
8
3.問題点/懸念事項
№ | 問題点　/　懸念事項 | 対策　/　状況
1
2
3
4
4.連絡事項など
№ | 内容 | 備考
1
2
3
4
5
6


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\3. Tiếng Nhật giúp bạn đi vào cuộc chơi_Nháp.docx`

BrSE không bao giờ hết thời — và tiếng Nhật + AI chính là tấm vé đưa bạn bước vào cuộc chơi đó
Bài này mình viết cho một nhóm khá cụ thể — những bạn đang làm hoặc từng làm IT Comtor, có tiếng Nhật ổn, nhưng đứng trước ngã rẽ: “Có nên đi tiếp vào BrSE không, hay dừng lại vì nghe nói nghề này sắp bị AI thay thế?”
Nếu bạn thấy mình đâu đó trong câu hỏi này, thì đọc tiếp.
Mình làm trong ngành IT cũng đủ lâu để không còn nhìn mọi thứ bằng sự hào hứng ban đầu nữa. 15 năm, đi lên từ một BrSE non-tech — nghĩa là không có nền tảng lập trình, không có “gốc tech” rõ ràng, chỉ có tiếng Nhật và một chút BA nghiệp vụ — và nếu nói thật lòng, hành trình đó không hề “đẹp” như những gì người ta hay kể.
Có những giai đoạn mình đi rất chậm. Chậm đến mức nhìn xung quanh ai cũng tiến, còn mình vẫn loay hoay ở những thứ cơ bản. Có những ngày họp xong, đầu óc quay cuồng vì không hiểu hết hệ thống, không nắm rõ nghiệp vụ, mà ngày hôm sau vẫn phải ngồi trước khách, vẫn phải trả lời, vẫn phải “đứng giữa” hai bên như thể mình hiểu rất rõ mọi thứ.
Và cái cảm giác khó chịu nhất không phải là không biết.
 Mà là không biết nhưng vẫn phải làm như biết.
Nhưng rồi một năm trở lại đây, có một thứ làm thay đổi gần như toàn bộ cách mình học và cách mình làm nghề: AI.
Không phải theo kiểu “AI thay mình làm hết”. Mà là lần đầu tiên trong 15 năm, mình có một “người thầy” mà mình có thể hỏi bất cứ lúc nào, hỏi bao nhiêu lần cũng được, hỏi cả những câu rất ngô nghê mà trước đây mình ngại không dám hỏi ai.
Công cụ mình dùng nhiều nhất là Cursor IDE. Và điều làm mình bất ngờ không phải là nó “giỏi”, mà là nó kiên nhẫn. Nó giải thích lại cho mình từ những thứ rất cơ bản: hệ thống chạy như thế nào, API là gì, dữ liệu đi từ đâu đến đâu, tại sao chỗ này design như vậy…
Những thứ mà trước đây, chỉ cần gặp một người không nhiệt tình hoặc giải thích khó hiểu một chút, là mình bỏ cuộc giữa chừng.
Còn bây giờ, mình có thể đào tới cùng.
Và kết quả là gì?
 Trong 1 năm, tốc độ hiểu hệ thống, viết tài liệu, làm SRS, basic design, thậm chí dựng prototype… nhanh hơn cả chục năm trước cộng lại (không tính tiếng Nhật).
Không phải vì mình giỏi lên đột biến.
 Mà vì mình không còn bị kẹt lại ở chỗ “không biết hỏi ai” nữa.
Quay lại câu chuyện chính.
Dạo gần đây, mình thấy một kiểu comment lặp đi lặp lại trong các group nghề:
 “AI phát triển rồi, BrSE sắp hết thời.”
Nghe thì hợp lý. Nhưng nếu bạn đã thực sự đứng trong vai trò này, bạn sẽ thấy nó… lệch.
Lệch không phải vì AI không mạnh.
 Mà vì người ta đang hiểu sai bản chất của BrSE.
BrSE không phải là một “task”.
Không phải là dịch.
 Không phải là viết tài liệu.
 Không phải là truyền đạt thông tin.
Nếu bạn chỉ làm từng việc rời rạc như vậy, thì đúng — AI có thể làm nhanh hơn bạn, gọn hơn bạn, thậm chí ít sai hơn bạn.
Nhưng nếu bạn thực sự làm đúng vai trò BrSE, bạn sẽ thấy mình không đứng ở một điểm.
 Bạn đứng ở giữa một hệ thống sống.
Một bên là khách hàng — với kỳ vọng, áp lực kinh doanh, cảm xúc, deadline.
 Một bên là team dev — với logic kỹ thuật, giới hạn hệ thống, và những thứ “không thể làm ngay”.
Và ở giữa là bạn — người phải làm cho hai thế giới đó không chỉ hiểu nhau, mà còn tin nhau và đi cùng nhau.
Ở điểm này, BrSE không còn là một vai trò đơn lẻ nữa.
 Nó là một “tổ hợp”.
Bạn cần phân tích nghiệp vụ như BA.
 Cần tư duy Why/What như PM (không chỉ How/When).
 Cần kiểm soát chất lượng như tester.
 Cần giao tiếp như comtor.
Nhưng bạn không phải là từng vai trò đó riêng lẻ.
 Bạn là điểm nối của tất cả chúng.
Và đây là chỗ AI khó chạm tới.
AI rất giỏi xử lý thông tin.
 Nhưng BrSE không chỉ xử lý thông tin.
Bạn xử lý ngữ cảnh — những thứ không được nói ra nhưng lại quyết định toàn bộ cuộc họp.
 Bạn xử lý mối quan hệ — khi khách đang khó chịu nhưng không nói thẳng, khi dev đang quá tải nhưng vẫn cố nhận task.
 Bạn xử lý mâu thuẫn — khi yêu cầu kinh doanh va vào giới hạn kỹ thuật.
 Và bạn xử lý cả những thứ rất “đời” — những câu hỏi mơ hồ, những yêu cầu chưa rõ, những thứ mà nếu không có con người tham gia làm rõ thì sẽ trượt từ đầu.
AI có thể giúp bạn nhanh hơn.
 Nhưng AI không thể “đứng giữa” thay bạn.
Nhưng nói vậy không có nghĩa con đường này dễ.
Thực tế là ngược lại.
Bạn sẽ có những giai đoạn:
 – Không hiểu nhưng vẫn phải làm
 – Bị hỏi dồn từ cả hai phía
 – Và luôn có cảm giác mình đang “đứng giữa làn đạn”
Có khó không? Có.
 Có gập ghềnh không? Rất.
 Có stress không? Nhiều.
Nhưng chính vì vậy, nếu bạn đi qua được, bạn không chỉ có một công việc.
 Bạn có một lợi thế mà rất khó thay thế.
Và đây là phần nhiều bạn đang có sẵn mà chưa tận dụng hết: tiếng Nhật.
Tiếng Nhật không phải là đích đến.
 Nó là tấm vé vào cửa.
Khi bạn có tiếng Nhật + biết tận dụng AI + hiểu cách hệ thống vận hành, bạn không chỉ “dịch tốt hơn”.
 Bạn bước vào cuộc chơi sớm hơn.
Bạn được chạm vào dự án thật nhanh hơn.
 Được đứng gần hơn với khách hàng.
 Được học trực tiếp từ những tình huống thật, thay vì chỉ học lý thuyết.
Và từ đó, tốc độ phát triển của bạn sẽ khác.
—------------------
Nên nếu phải tóm lại quan điểm của mình trong một câu:
BrSE không phải là một nghề “sắp hết thời”.
 Nó là một con đường — khó, nhiều áp lực, nhưng nếu đi được, nó mở ra một năng lực rất hiếm.
Còn đi như thế nào, bắt đầu từ đâu, và làm sao để không “chết giữa đường”…
 Mình sẽ kể tiếp ở bài sau.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\4. Khó khăn lớn nhất và ngộ nhận của thị trường-nháp.docx`

Khó khăn lớn nhất của BrSE nontech — và ngộ nhận phổ biến mà thị trường đang hiểu
Có một hình ảnh mà rất nhiều người - đặc biệt là các bạn base tech - vẫn đang gán cho BrSE thông thường.
Một người biết tiếng Nhật, ngồi giữa hai bên, và… transfer thông tin.
Nghe thì đơn giản. Nhưng nếu bạn đã từng đứng ở vị trí đó, bạn sẽ biết: Đó chỉ là lớp bề mặt nổi, là cái mà người ta nhìn thấy, phần chìm dưới tảng băng, cái khó thì người ta chưa nhìn thấy.
Khó khăn lớn nhất: Làm việc trong trạng thái “không thật sự hiểu”
Giai đoạn đầu của một BrSE, đặc biệt là non-tech, chúng ta sẽ luôn có cảm giác mình hoàn thành được việc là cầu nối trao đổi được thông tin, nhưng trao đổi xong là thôi, là xong, chúng ta không thực sự hiểu được, không thực sự “nắm được” câu chuyện dự án. Chúng ta không giải thích lại được bằng ngôn ngữ của chúng ta - tức là chúng ta chưa thực sự hiểu cái mà chúng ta đang làm, sản phẩm mà chúng ta đang chạy. 
Bạn nghe khách nói. Bạn hiểu câu chữ. Bạn truyền đạt lại cho team.
Nhưng ở một tầng sâu hơn:
Bạn chưa hiểu hệ thống đang vận hành như thế nào
Bạn chưa hiểu nghiệp vụ thực sự của khách là gì
Bạn chưa biết yêu cầu đó có khả thi hay không
Và quan trọng nhất: bạn chưa chuyển hóa được yêu cầu đó thành ngôn ngữ mà developer có thể code
Thế nên bạn rơi vào một trạng thái rất đặc trưng: Làm được việc — nhưng không làm chủ được công việc.
Một ngày làm việc
Ban ngày: họp.
Họp với khách.
 Họp với team.
 Họp để clear yêu cầu.
 Họp để update tiến độ.
Bạn nói tiếng Nhật liên tục.
 Nghe — trao đổi — truyền đạt — trả lời.
Đến mức, có những ngày…
Bạn đi ngủ, và vẫn đang “họp” trong giấc mơ. Nói tiếng Nhật trong lúc mơ ngủ.
Có ai như vậy không? Mình đã từng như vậy rồi đó ạ. Thậm chí là nhiều lần chứ ko phải 1 2 lần. 
Đêm rồi còn suy nghĩ.
“Không biết hôm nay lúc họp, chỗ đấy mình hiểu đúng chưa?”
“Nếu mai khách hỏi sâu hơn thì trả lời như nào nhỉ?”
“Dev vặn thì mình trả lời kiểu gì?”
“Yêu cầu hơi có vấn đề mà chưa biết làm rõ như thế nào, đau đầu…”
Và cái cảm giác nặng nhất không phải là bận. Mà tức là: Không chắc mình đang hiểu đúng. Cảm giác biết là cái chỗ đấy sai, chỗ đấy chưa đúng ý khách hàng, mà không biết giải thích, phân tích như thế nào để chứng mình điều mình cảm nhận. 
Điểm nghẽn nằm ở tiếng Nhật
Rất nhiều người nghĩ:
“Tiếng Nhật tốt là làm được BrSE.”
Đúng — nhưng chỉ đúng một nửa.
Tiếng Nhật giúp bạn đi vào cuộc chơi.
Nhưng để ở lại, bạn cần nhiều hơn thế.
Bạn cần:
Biết cách bóc tách yêu cầu
Biết đặt câu hỏi đúng
Biết phản biện khi cần
Biết tổng hợp và cấu trúc lại thông tin
Và quan trọng nhất: dịch “ý” chứ không chỉ dịch “lời”
Nếu không, bạn sẽ mãi chỉ là một “ống truyền”.
Thông tin đi qua bạn. Nhưng không được xử lý bởi bạn.
4. Ngộ nhận lớn nhất của thị trường
BrSE không phải là người truyền đạt. 
Và nếu bạn làm công việc này chỉ như một người truyền đạt, bạn sẽ rất nhanh chạm trần và chới với. 
Một BrSE đúng nghĩa là một vai trò “lai”:
Một chút PM → để hiểu tiến độ, ưu tiên, rủi ro
Một chút BA → để phân tích và viết tài liệu
Một chút Tester → để kiểm soát chất lượng đầu ra
Rất nhiều Comtor → để giao tiếp trôi chảy, chính xác
Và rất nhiều communication skill → để giữ cho hai phía hiểu nhau
Bạn không cần giỏi nhất ở từng phần.
 Nhưng bạn phải đủ hiểu để kết nối tất cả lại.
5. Vị trí thực sự của BrSE
Nếu phải mô tả một cách đơn giản nhất,
 BrSE giống như một “lớp đệm” ở giữa.
Ở dưới là team dev.
 Ở trên là khách hàng.
Bạn ở giữa —
 không chỉ để truyền đạt,
 mà để điều phối.
Để:
Khách nói → dev hiểu đúng
Dev làm → khách nhận đúng thứ họ cần
Và cả hai bên… không “lệch pha” với nhau
Nó giống như một chiếc hamburger.
Bạn là lớp thịt ở giữa.
Không phải phần “trang trí”.
 Mà là phần quyết định món đó có ăn được hay không.
6. Một điều cần nói thẳng
Nếu bạn bước vào BrSE với suy nghĩ:
“Chỉ cần biết tiếng Nhật là đủ”
→ Bạn sẽ rất nhanh thấy mình bị quá tải.
Nhưng nếu bạn hiểu rằng:
Đây là một vai trò cần tư duy hệ thống + khả năng học nhanh + giao tiếp sâu
→ Bạn sẽ bắt đầu đi đúng hướng.
7. Và cuối cùng
Khó khăn của BrSE không nằm ở việc “việc nhiều”.
Mà nằm ở việc:
Bạn phải trưởng thành rất nhanh trong một môi trường mà sai một nhịp là cả hệ thống lệch theo.
Nhưng cũng chính vì thế,
 nếu bạn đi qua được giai đoạn này…
Bạn sẽ không chỉ học được một công việc.
Bạn học được cách:
Hiểu một hệ thống
Hiểu một con người
Và đứng vững ở giữa những thứ phức tạp
Nếu bạn đang ở trong giai đoạn “làm mà chưa thật sự hiểu”
 thì bạn không phải là người duy nhất.
Đó không phải là dấu hiệu bạn không phù hợp.
Đó là dấu hiệu bạn đang ở đúng điểm bắt đầu.
Vấn đề chỉ là:
 Bạn có đi tiếp đủ lâu để vượt qua nó hay không.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\AI giúp gì cho BrSE-Nháp.docx`

AI giúp gì cho BrSE — đặc biệt là BrSE nontech?
Có một giai đoạn mình nhìn AI giống như cách rất nhiều người đang nhìn nó bây giờ: nhiều công cụ quá, nhiều lời quảng cáo quá, ai cũng nói về nó, ai cũng khoe dùng nó, và mình thì… mở ra rồi lại đóng lại, thử một chút rồi bỏ dở, vì không biết rốt cuộc nó thực sự giúp mình ở đâu trong công việc hàng ngày.
Cho đến khi mình nhận ra một điều rất đơn giản, nhưng nếu không đi qua đủ va vấp thì khá khó để hiểu: AI không tự nhiên tạo ra giá trị, nó chỉ thực sự trở nên “đáng tiền” khi bạn biết mình đang cần gì, đang giải quyết bài toán gì, và quan trọng hơn hết là bạn có đủ năng lực để kiểm tra, chỉnh sửa và chịu trách nhiệm với thứ nó tạo ra.
Nói cách khác, AI không làm bạn giỏi lên một cách thần kỳ, nó chỉ khuếch đại năng lực sẵn có của bạn. Và hai chữ “chỉ khi” ở đây, với mình, là điều quan trọng nhất.
Chỉ khi bạn hiểu rõ nghiệp vụ mình đang làm.
 Chỉ khi bạn biết đặt câu hỏi đúng.
 Chỉ khi bạn đủ tỉnh táo để review output thay vì copy-paste một cách vô thức.
Thì lúc đó, kết quả nó mang lại mới thực sự “xuất sắc”.
—
Mình thấy có một cái bẫy rất phổ biến khi mọi người bắt đầu tiếp cận AI, đó là FOMO.
Hôm nay thấy người ta nói về tool này, mai thấy người khác review tool kia, rồi lại nhảy sang một nền tảng khác, cuối cùng sau một vòng quay khá mệt, thứ còn lại chỉ là… một đống tài khoản đăng ký dở dang và một cảm giác “AI cũng vậy thôi, không giúp được gì nhiều”.
Nhưng vấn đề không nằm ở công cụ.
Vấn đề nằm ở việc bạn chưa đủ thời gian ở lại với một công cụ để thực sự hiểu nó.
Với mình, thay vì thử 10 thứ mỗi thứ một chút, mình chọn một hướng rất “cổ điển”: chọn 1–2 công cụ, dùng nó mỗi ngày, dùng trong công việc thật, va vào những tình huống thật, sai cũng được, sửa cũng được, miễn là không bỏ cuộc giữa chừng.
Và khi vượt qua được giai đoạn “lúng túng ban đầu”, bạn sẽ bắt đầu thấy một thứ rất thú vị: AI không còn là công cụ nữa, nó bắt đầu giống một người đồng hành.
—
Nếu bạn làm HR, bạn sẽ thấy việc viết JD, xây khung đào tạo, hay chuẩn hóa tài liệu nội bộ nhẹ đi rất nhiều.
Nếu bạn làm Sales, bạn sẽ thấy việc tạo proposal, customize tài liệu cho từng khách hàng không còn là một quá trình tốn hàng giờ đồng hồ.
Nếu bạn là Manager, phải xử lý nhiều loại tài liệu với format khác nhau, bạn sẽ thấy mình có thể tạo ra một “hệ thống” thay vì mỗi lần lại làm lại từ đầu.
Và nếu bạn là BrSE, Comtor, Tester hay Developer — tức là những người đứng trong dòng chảy của một dự án phần mềm — thì câu chuyện còn rõ hơn nữa.
Bạn bắt đầu dùng AI để:
 viết function list nhanh hơn,
 dựng SRS rõ ràng hơn,
 phác thảo basic design có cấu trúc hơn,
 thậm chí tạo prototype để trao đổi với khách và team trước khi đi quá xa.
Những thứ trước đây mất rất nhiều thời gian để “bắt đầu”, giờ đây bạn có thể đi từ con số 0 đến một bản nháp khá đầy đủ chỉ trong thời gian rất ngắn.
Nhưng, và mình nhắc lại, cái giá trị thật không nằm ở tốc độ tạo ra bản nháp.
Nó nằm ở khả năng bạn đọc lại, chỉnh lại, hiểu nó và biến nó thành “của mình”.
—
Cá nhân mình đang trong quá trình sử dụng và thử nghiệm khá nhiều trong công việc hàng ngày, và nếu bạn hỏi mình nên bắt đầu từ đâu, mình sẽ gợi ý hai cái tên khá thực tế ở thời điểm hiện tại là Cursor IDE và Claude.
Mình dùng Cursor khá nhiều vì nó fit trực tiếp vào workflow công việc, còn Claude thì mình chưa dùng sâu, nhưng khi đã hiểu cách làm việc với AI rồi thì việc chuyển sang bất kỳ công cụ nào khác cũng chỉ là vấn đề thời gian.
—
Có những lúc mình cảm giác như mình vừa mở ra một “tầng mới” trong công việc của mình.
Không phải kiểu học thêm một kỹ năng nhỏ, mà là cảm giác có thêm:
 một người thầy để hỏi bất cứ lúc nào,
 một người đồng hành không biết mệt,
 một trợ lý có thể cùng mình mổ xẻ vấn đề đến khi ra được câu trả lời.
Và có lẽ vì cảm giác đó, mình muốn bắt đầu chia sẻ lại — không phải theo kiểu lý thuyết, mà theo đúng những gì mình đang làm, đang thử, đang sai và đang sửa mỗi ngày.
Mình sẽ đi từ những thứ rất cụ thể trước: cách mình dùng AI để tạo proposal, viết SRS, dựng prototype, làm basic design… những thứ rất “đời thường” trong công việc BrSE.
Nếu bạn cũng đang đứng ở một điểm tương tự — biết AI là quan trọng, nhưng chưa biết bắt đầu từ đâu, hoặc đã thử nhưng chưa thấy “đã” — thì có thể những chia sẻ này sẽ giúp bạn rút ngắn được một đoạn đường.
Còn nếu chưa hợp, cũng không sao.
Vì như mình nói từ đầu, AI không phải phép màu.
Nó chỉ trở nên có giá trị… khi bạn thực sự bước vào và dùng nó một cách nghiêm túc.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\BrSE có cần quan tâm Stakeholder không.docx`

Chúng ta thường thấy nói về việc PM phải quan tâm đến Stakeholder. -> Điều này đúng. 
Nhưng trong dự án Nhật, BrSE có phải quan tâm đến Stakeholder không. 
Thực ra là có, phải quan tâm mạnh ấy chứ. 
BrSE là contactpoint, là cầu nối, là người đối ứng tứ tung các bên 8 phương tứ hướng. Đặc biệt cần phải biết cách quản lý Stakeholder, cần mạnh hơn PM nữa kìa. 
PM không biết tiếng Nhật, thì cũng ko cần quan tâm lắm đển bên phía khách hàng. 
nhưng BrSE phải biết dự án mình đang làm việc với những ai bên khách, ai là quản lý ai là nhân viên, ai là người nói “chốt”, ai chỉ là trung gian. Khách làm trực tiếp với mình là dev hay là tester hay là nhân viên phụ trách nghiệp vụ…Phải biết rõ role và chú ý tìm hiểu phong cách làm việc của từng người. 
khách là dev thì stype trao đổi kiểu dev, hay nói về code và cho hình ảnh source code là họ dễ hiểu hơn. 
Khách là tester thì nói chuyện về nghiệp vụ và màn hình, về DB. Evidence hay sample thì đưa ảnh màn hình, dữ liệu DB thay vì nói về code. 
Khách là con gái thì nên đưa BrSE là con gái vào làm việc cùng cho dễ nói chuyện. Còn khách là con trai thì BrSE càng nên là con gái để cho lỡ dự án có gì khách hàng còn thương…
Kiểu kiểu đại ý như vậy. 
Nên là BrSE phải nắm rõ Stakeholder nha. Nên đưa phần quản lý Stakeholder vào phần đào tạo BrSE mới phải đạo làm người.
Brse là người review toàn bộ output của team trước khi gửi cho KH , phải control dự án như PM nên Brse phải hiểu và làm dc việc của các role khác trong dự án(BA,DEV,Tester,BA)
Nhưng nhìn nội dung giảng dạy thì chỉ toàn focus vào các kĩ năng của DEV, thế những kĩ năng của các role khác ở đâu? Hay output của BA, Tester không cần review ném thẳng cho KH? Rồi tiến độ, chất lượng, stakeholder không cần control à?
Rồi other skill của Brse rất rất nhiều


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\BrSE nontech-câu chuyện thị trường-Nháp.docx`

BrSE nontech-câu chuyện thị trường - có cầu ắt có cung
Dạo gần đây, lượn quanh các hội nhóm BrSE, nhìn vào các bài đăng tuyển dụng, mình thường bắt gặp tin tuyển dung BrSE nontech, hay tuyển IT Comtor định hướng BrSE, hay tuyển BA biết tiếng Nhật định hướng BrSE. 
Dưới các bài đăng, thường dễ bắt gặp một vài comment bỉ bôi nontech, kiểu dạng như: nontech thì chỉ dịch thôi chứ làm BrSE sao được, nontech mà gọi là BrSE, nontech thì chỉ truyền đạt thông tin thôi…


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\BrSE sẽ lỗi thời chứ_.docx`

Bài viết là quan điểm/kinh nghiệm/trải nghiệm cá nhân, không có tính chất gây tranh cãi hay đặt nặng vai trò này vai trò kia. 
Mong mọi người comment thêm quan điểm đa chiều, cùng mở rộng tầm nhìn và phát triển lẫn nhau. 
BrSE sẽ không lỗi thời ở mọi thời đại
BrSE hiểu câu chữ bề mặt: thì ăn lương theo kiểu BrSE câu chữ bề mặt, mười mấy 2 mấy. Lúc này vai trò nghiêng về chữ Br - tức cầu nối.
BrSE hiểu nghiệp vụ phân tích dự án tốt: thì ăn lương theo kiểu BrSE nghiệp vụ: 3 mấy 4 mấy - cũng có thể hiểu gọi là nghiêng về chữ Br. 
Ngược lại, BrSE tech, biết coding mà tiếng Nhật không thông thạo, không meeting được với khách hàng: cũng chỉ ăn lương 2 mấy 3 mấy - lúc này là nghiêng về chữ SE - kỹ sư. 
(Mình không bàn đến: BrSE quản lý dự án ,hiểu sâu domain, tech giỏi nhiề u năm kinh nghiệm thì ăn lương 4 mấy 5 mấy 9 mấy,  trăm triệu cả rồi, làm lãnh đạo công ty cả rồi -  ko bàn vì là nhân sự excellent. )
Quan trọng là phải cân bằng giữa năng lực giao tiếp và khả năng kỹ thuật. 
Thị trường vẫn có BrSE nghiệp vụ BA tốt, kiểm thử tốt, hỗ trợ presale bidding dự án tốt, làm proposal thạo, ăn lương 5 mấy 6 mấy triệu. Thì tại sao lại phân biệt tech và nontech. 
Bản chất vai trò BrSE đã là 1 vị trí đa nhiệm, cân bằng nhiều vai trò: 1 chút PM, 1 chút BA, 1 chút tester, 1 chút comtor. Thử hỏi, có vai trò nào khác mà yêu cầu phải giỏi/phải biết nhiều kỹ năng đến thế không? 
Và khi bạn hội tụ nhiều kỹ năng tốt như vậy, bạn có dễ bị thay thế được không?
Hoàn toàn không. Thị thường sẽ cần nhiều BrSE hơn nữa. Thời nào, ngành nào cũng luôn cần 1 người giỏi ngoại ngữ, giỏi giao tiếp, biết quản lý dự án quản lý con người, biết hệ thống, biết kiểm soát chất lượng hệ thống, biết điều phía dẫn dắt dự án về đích. Nếu thị trường có thay đổi về nhu cầu, thì chỉ là thay đổi về cái tên, cái vỏ, giả sử không còn gọi là BrSE nữa, mà sẽ là một cái tên nào đó khác, nhưng cốt lõi vẫn cần người có đủ yếu tố như vậy, không AI nào thay thế được. Do vậy, BrSE là vị trí an toàn nhất, là role khó bị thay thế nhất, là role thời đại nào, ngành nghề nào cũng cần nhất. 
Không chỉ trong lĩnh vực IT. Giả sử, bạn đang làm trong thị trường xuất khẩu lao động, bạn giỏi tiếng Nhật, giao tiếp rất tốt với các lãnh đạo/khách hàng Nhật, bạn hiểu về nghề, bạn quản lý tu nghiệp sinh tốt, xử lý vấn đề trôi chảy, biết kiểm soát và điều phối… thì bản chất, nếu cần 1 cái tên để gọi, bạn cũng là 1 BrSE cầu nối trong thị trường xuất khẩu lao động, chỉ có điều hiện nay, trong ngành này, họ không dùng cái tên đó mà thôi. 
Hoặc, bạn làm trong công ty sản xuất Nhật Bản, tiếng Nhật của bạn tốt, bạn hiểu rõ quy trình sản xuất, bạn không phải là công nhân sản xuất, nhưng trao đổi đến bước nào bạn hiểu rõ công việc của bước đó, bạn quản lý điều phối công nhân tốt, kiểm soát được chất lượng trong dây chuyền, đại diện cho cả phòng/cả đội nhóm không ai biết tiếng Nhật để họp hành trao đổi với lãnh đạo/quản lý người Nhật, thì về bản chất, bạn cũng được gọi là BrSE cầu nối trong ngành sản xuất đó. Chỉ có điều, thị trường đó không cần một cái tên là BrSE. Mà sẽ là vai trò quản lý - manager. 
Thị trường cần 1 vai trò làm cầu nối, và thị trường gọi đó là BrSE. Ban đầu, cái tên BrSE chỉ hướng đến các SE - system engineer biết tiếng Nhật. Nhưng nhu cầu thị trường thay đổi do cung không đáp ứng nổi cầu. Không có nhiều nhân lực vừa code giỏi, vừa làm programing giỏi, vừa tiếng Nhật giỏi, nên thị trường hướng đến đội ngũ nhân lực có tiếng Nhật tốt và có thể đào tạo/tự học/hiểu về hệ thống hiểu về phần mềm, làm việc được với khách hàng là đảm bảo đáp ứng nhu cầu. Tức là lúc này thị trường nghiêng về vế đầu, nghiêng về từ Br
Nếu bạn chỉ có tech mà tiếng Nhật không thành thạo, khách nói 10 hiểu 4, thì bạn nghiêng về vế sau, nghiêng về từ SE, không thể sử dụng làm BrSE được. 
Do vậy BrSE chỉ là 1 tên gọi, bạn đừng quan tâm danh xưng quá nhiều. Không nên bám chấp vào con chữ. Nếu bạn hội tụ đầy đủ năng lực và kỹ năng nói trên, hãy chỉ cần nghĩ đến lượng công việc mà bạn có thể xử lý cho công ty. Bạn có thể giao tiếp tốt, hiểu đúng đủ yêu cầu của khách, đề xuất được cho khách, đảm bảo chất lượng tốt, quản lý đội ngũ mượt, thì có gọi bạn là BrSE, là BA, hay là PM… cũng chỉ là 1 cái tên gọi mà thôi. 
Và cuối cùng, điều mình muốn truyền tải nhất vẫn là, nếu bạn làm trong ngành, bạn có thể tự trả lời, vị trí này có dễ bị đào thải không?
Một cách nghiêm túc và nhất quán, mình vẫn khăng khăng bảo vệ quan điểm: Ở mọi thời đều cần vai trò như thế, chỉ có tên gọi là khác đi.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Case Study_Q&A khó hiểu-Nháp.docx`

Đây là câu Q&A dev gửi: 
—-----------
Quyền truy cập SSH
 khách hang có thể cấp quyền SSH vào server hosting cho bên mình không? Bên mình cần điều tra / xác nhận production đang chạy: phiên bản PHP, phiên bản WordPress .  

Giới hạn PHP của hosting
 Một số hosting chưa hỗ trợ PHP 8.3 (chỉ lên tới 8.2 hoặc thấp hơn). Bên mình cần xác nhận với hosting / IT PHP tối đa có thể chọn là bao nhiêu, để đề xuất lộ trình nâng cấp
—---------
## Dưới đây là nội dung BrSE đã làm rõ và gửi cho khách hàng:
—----------
Liên quan đến việc chuẩn bị phương án release phù hợp và xác nhận một số thông tin như phiên bản PHP, phiên bản WordPress hiện đang sử dụng, chúng tôi muốn truy cập vào server production để điều tra và kiểm tra môi trường hiện tại. Bạn có thể cấp quyền SSH để bên chúng tôi truy cập vào server production được không? Ngoài ra, để xây dựng phương án nâng cấp WordPress phù hợp, chúng tôi cần xác nhận server production hiện tại có thể hỗ trợ tối đa phiên bản PHP nào. Ví dụ: một số môi trường chỉ hỗ trợ tới PHP 8.2 và chưa hỗ trợ PHP 8.3. Thông tin này sẽ ảnh hưởng trực tiếp đến phiên bản WordPress có thể nâng cấp cũng như phương án release. Ví dụ, nếu mục tiêu nâng cấp yêu cầu sử dụng PHP 8.3 nhưng server hiện tại chưa hỗ trợ phiên bản này, thì sẽ cần xem xét thêm phương án nâng cấp môi trường server hoặc điều chỉnh phạm vi nâng cấp phù hợp. Nếu có thể, nhờ phía IT / đơn vị quản lý server xác nhận giúp: Hiện tại server đang sử dụng phiên bản PHP nào Có thể nâng cấp tối đa lên phiên bản PHP nào 
—---------------------------------
お世話になっております。
以下２点について、ご確認・ご対応をお願いいたします。
① リリース方針の検討および、現在利用されているPHPバージョン・WordPressバージョンなどの
情報を確認するため、現行の本番環境へアクセスのうえ、環境調査・確認を実施したいと考えております。
弊社側から本番環境へアクセスできるよう、SSH権限をご提供いただくことは可能でしょうか。
② 適切なWordPressアップグレード方針を検討するため、
現在の本番環境でサポート可能なPHPの最大バージョンを確認したいと考えております。
例えば、一部の環境ではPHP 8.2までしかサポートされておらず、PHP 8.3には未対応の場合があります。
この情報は、アップグレード可能なWordPressバージョンおよびリリース方針に直接影響いたします。
例えば、アップグレード要件としてPHP 8.3の利用が必要である一方、
現在のサーバー環境がPHP 8.3をサポートしていない場合、
サーバー環境自体のアップグレードや、アップグレード対象範囲の調整について追加検討が必要となります。
そのため、以下をご確認いただけますと幸いです。
・現在サーバーで利用されているPHPバージョン
・サーバーでサポート可能なPHPの最大バージョン
なお、上記については、御社のIT担当者様／サーバー管理担当者様へご確認いただく形でも問題ないし、
①のSSH権限をご提供いただけましたら、弊社側にて調査を実施することも可能です。
よろしくお願いいたします。 
—----------------
## Tại sao cần phải viết Q&A chi tiết và cụ thể như vậy
 Tránh cộc lốc
Giải thích rõ bối cảnh lý do cần
Giải thích dễ hiểu cho khách không hiểu kỹ thuật, họ đọc và hiểu luôn ý đồ trong 1 lần tiếp nhận thông tin. Họ biết cần tìm ai để lấy thông tin cho team offshore. 
Trong câu BrSE tinh chỉnh và review, đã nói rõ khách cần hỏi IT担当者様またはserver管理担当者様に để lấy thông tin. 
=> Dev sẽ nói ngắn gọn, cụt lủn, ko bối cảnh. Trong đầu họ diễn giải rất nhiều nhưng họ viết ra rất ít và nghĩ là đối phương sẽ tự hiểu. Thực tế là: đối phương ko tự hiểu được vì dev ko mô tả có bối cảnh và mục đích rõ ràng. => Nhiệm vụ của BrSE phải làm rõ bối cảnh, mục đích, viết sao cho khách hàng hiểu luôn trong 1 lần đọc. 
—------------------
Ko phải là viết dài dòng, mà là BrSE phải làm rõ bối cảnh cho khách hàng hiểu. Để khách chỉ cần đọc nội dung trao đổi trong 1 lần là hiểu ý đồ, họ cung cấp đúng thông tin, hoặc nếu ko cung cấp được thông tin vì bảo mật hay vì lý do nào đó, họ cũng sẽ biết định hướng của chúng ta để đưa ra phương án phù hợp. => Túm lại là: cố gắng giải quyết dứt điểm Q&A trong 1 lần thay vì để nó kéo dài ra nhiều lần về sau. Nếu chỉ dịch word by word nội dung dev gửi sang cho khách thì dễ quá, chỉ việc dịch, khâu xử lý thông tin là ko cần làm. Lúc này, chúng ta lại quay về vai trò của Comtor - không phải BrSE.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Case study list.docx`

Case 1：
01 - Member publish source code lên GIT để chế độ public, vì không nắm được về bảo mật security -> bất kể công ty đã đào tạo người mới thế nào, PM/BrSE để đảm bảo an toàn cho dự án của chính mình, hãy làm thêm 1 lượt nữa: khi kickoff dự án nội bộ, hãy chia sẻ các rule trong dự án cho toàn bộ member, hoặc khi có member mới join dự án giữa chùng, hãy yêu cầu đọc rule và yêu cầu mọi người phải trả lời là đã hiểu hết rule hay chưa, rồi mới bắt tay vào công việc dự án. 
Bộ rule của PM/BrSER mà mình tự tạo như sau: 1 bộ rule về quy tắc giao tiếp/chát trong nhóm chát
1 bộ rule về quy định bảo mật thông tin
nếu bạn có rule cho dev/tester thì nhờ dev lead/tester lead đưa cho bạn tổng hợp cả vào.  
02 -  BrSE 
Nếu các bạn thấy có rule nào cần thiết thì comment cho mình để mình bổ sung với nhé. 
Một cây làm chẳng nên non, 1 cây chụm lại nên hòn núi cao. 
Hi vọng những tips nhỏ của mình sẽ giúp bạn làm việc chỉn chu hơn mỗi ngày. 
Bạn cũng chia sẻ để cho mình làm việc chuẩn chỉnh hơn với nhé.
お互い様！
Case 2: Dự án Labo fix số người, BrSE không nắm được và bất chợt 1 ngày khách hàng hỏi BrSE, hôm nay team dự án có bao nhiêu người đi làm. BrSE trả lời số người đi làm thực tế.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Khung phân tích dự án-nháp.docx`

Bài viết này dành cho các bạn mới onboarding hoặc dành cho các bạn mới được assign vào dự án phát triển phần mềm mới mà chưa biết bắt đầu tìm hiểu dự án từ đâu, như thế nào, tạo output ra sao cho đúng. 
Bài viết này cũng dành cho PM hoặc cấp quản lý nhưng chưa có khung định hướng cho member tìm hiểu dự án.
Thì ở đây mình đưa ra 1 khung phân tích dự án để có thể ốp vào các dự án khi chúng ra mới ở giai đoạn đầu tìm hiểu dự án. 
Bài toán thực tế số 1: vấn đề của người mới
Member mới vào dự án, PM đưa cho bạn bộ source code hoặc thông tin login hệ thống và 1 2 file tài liêu khái quá, và chỉ bảo: em tìm hiểu hệ thống và nghiệp vụ trong vòng 1 tuần nhé. Sau đó giải thích lại cho team.
PM không nói rõ cho bạn biết bạn cần tìm hiểu từ đâu, như thế nào, có cần tạo tài liệu ko, output ra sao, kế hoạch thế nào. Việc của bạn là phải tự túc, tự lên kế hoạch, tự đọc source (đọc thế nào nhỉ?) hoặc tự mò vào hệ thống tìm hiểu. Và thông thường người mới sẽ login vào hệ thống, tìm hiểu hệ thống, sau đó giải thích lại cho team vào cuối giai đoạn tìm hiểu. Có bạn sẽ vào buổi họp với 1 tài liệu text sơ sài ghi không đầy đủ ý, có bạn vào buổi họp với toàn bộ kiến thức ở trong đầu, không có tài liệu, có bạn sau 1 tuần vẫn chưa tìm hiểu hết vì bị mắc ở một số chỗ và cứ đứng dậm chân ở đó, không tìm hiểu tiếp được nữa… => Vấn đề là không có khung định hướng để biết nên làm như thế nào, bắt đầu từ đâu, output ra sao.
Bài toán thực tế số 2: Vấn đề của PM, người quản lý
Bạn yêu cầu member mới vào tìm hiểu hệ thống, bạn không có kế hoạch cụ thể, không có khung tìm hiểu dự án, không có template hướng dẫn. Bạn chỉ bảo member cách tìm hiểu sơ bộ là: em tìm hiểu xem hệ thống này nó làm về cái gì, có những role nào, nghiệp vụ như thế nào, sau 1 tuần báo cáo giải thích lại cho anh và team. Bạn không đưa ra được 1 templae, 1 khung tìm hiểu dự án cho member, để meber tự bơi. Mỗi member sẽ tìm hiểu dự án theo 1 cách khác nhau. Và bạn cứ mãi ko bao giờ có được 1 bộ khung chuẩn để định hướng cho member của mình. => Vấn đề là bạn không chuẩn hóa document, bạn không có khung định hướng cho member.
Bài toán thực tế số 3:  Khách mới order dự án maitain và phát triển thêm chức năng cho hệ thống hiện tại/hoặc làm mới hệ thống từ một hệ thống cũ hiện có. Khách gửi cho bạn bộ source cũ và một số rất ít tài liệu vì dự án cũ không chuẩn hóa document. Giai đoạn đầu khách order 1 tháng tìm hiểu hệ thống cũ. Bạn sẽ tìm hiểu theo hướng như thế nào và tạo tài liệu gì để chuẩn hóa document, báo cáo output tìm hiểu hệ thống cho khách ở giai đoạn cuối? Bạn có biết khung tìm hiểu hệ thống không?
Tất nhiên, người có kinh nghiệm chắc chắn là luôn tìm được cách làm. Nhưng vấn đề là thông thường mình chưa thấy mọi người làm được như vậy. Nghĩa là mười mấy năm đi làm, mình thấy vẫn cứ mỗi người mỗi cách, mỗi lúc 1 kiểu. Vậy thì, thay vì như vậy, mình đưa ra 1 temple, đóng gói thành 1 cái khung chung cho mọi người đều có thể bám theo đó chạy theo, như vậy sẽ cái base vào để đánh giá hiệu quả + chất lượng tìm hiểu dự án.
Nếu bạn cần thì có thể tham khảo nội dung giải quyết bài toán ở link này:
Template dùng được ngay, mình để ở đây: 
Tài liệu được share public trong 2 tuần. Sau 2 tuần mình sẽ đóng. 
Nếu bạn thấy nội dung chia sẻ này nó dễ quá, bạn đã biết tự làm và biết định hướng cho member của mình rồi, thì chúc mừng bạn vì bạn đã làm việc rất chắc tay.
Nếu bạn hiểu nội dung này, nhưng bạn chưa biết tự làm ra nó, cũng chưa biết định hướng cho member của mình, thì hi vọng bạn và team bạn có thể dùng nó trong công việc. Có thể customize tùy theo nhu cầu/mong muốn của bạn. Cái lõi vẫn là những nội dung kiểu như này thôi.
Còn nếu bạn thấy nội dung rất mới mẻ và tuyệt vời, thì cảm ơn bạn, đó là niềm vui của mình, hãy dùng nó vào ngay công việc của bạn nhé. Bạn cũng có thể tùy chỉnh nó chứ ko phải dùng y nguyên vậy cũng không sao, miễn bạn hiểu được cái lõi là được.
Hi vọng bạn có thể tìm được điều hữu ích ở đây.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Làm việc chỉn chu để làm gì_-Nháp.docx`

Làm việc chỉn chu để làm gì? Trước hết là vì ai?
Trước hết là vì mình, để mình ko bị ngộp lặn trong 1 mớ bòng bong, để mình làm chủ được công việc của mình, để mình đứng từ trên bao quát xuống toàn bộ dự án, đặt mình ra khỏi dự án, và nhìn vào dự án của chính mình, để xem dự án đang chạy như thế nào, ở đâu đã ổn, ở đâu chưa tốt, mình cần làm gì để tốt hơn, cho mọi người có thể thể hiện được năng lực của mọi người và cùng nhau làm việc chill chill mà hiệu suất như mong muốn.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\N2 bắt đầu làm BrSE từ đâu_.docx`

N2 rồi nhưng vẫn không biết bắt đầu làm BrSE từ đâu?
Mình đã gặp rất nhiều bạn có N2, nhưng khi tìm hiểu về BrSE thì lại rất mơ hồ:
Không biết công việc thực tế làm gì
Không rõ cần biết IT đến đâu
Không biết mình có làm được không
Thực ra, đây là giai đoạn gần như ai cũng phải trải qua. Trước đây mình cũng vậy. Có tiếng Nhật, có cơ hội vào dự án, nhưng lại không hiểu rõ mình đang đứng ở đâu trong công việc.
Nếu bạn đang ở giai đoạn này, thì những gì mình chia sẻ ở đây có thể sẽ giúp bạn tiết kiệm được rất nhiều thời gian.
Quỳnh Nga - Mình có 15 năm kinh nghiệm trong ngành IT


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Promt tạo video cuốn hút.docx`

Dọn nhà, đi siêu thị, pha cà phê... Bạn có biết đây chính là những "mỏ vàng" để làm VLOG triệu view không?
Nhiều người bỏ qua chúng vì nghĩ chúng quá "bình thường". Nhưng họ không nhận ra rằng chính sự bình thường đó lại là thứ dễ kết nối nhất với khán giả. Vấn đề không phải là BẠN làm gì, mà là bạn mang lại "GIÁ TRỊ" gì từ những việc đó.
Giá trị đó có thể là một mẹo hữu ích, hoặc đơn giản là một nguồn năng lượng tích cực.
Phần 1: Hiểu bản chất "Tại sao?"
Tại sao có những VLOG về những thứ rất đỗi đời thường như đi siêu thị, nấu ăn, dọn nhà... lại có hàng triệu view?
Nó nằm ở 2 nguyên tắc vàng này:
Thay vì dàn trải, hãy đào sâu: Cái sai của nhiều người là cố quay CẢ MỘT NGÀY. Người xem không quan tâm hết đâu. Thay vào đó, hãy chọn chỉ MỘT HOẠT ĐỘNG duy nhất và biến nó thành "sân khấu chính". Khi bạn tập trung, bạn sẽ tìm ra được nhiều thứ hay ho trong một hoạt động nhỏ bé đó. Đó gọi là biến cái bình thường thành phi thường.
Phải có "giá trị" mang về: Người xem chỉ ở lại khi họ nhận được gì đó. Giá trị ở đây có 2 loại:
Giá trị Lý tính (Cho đi kiến thức): Đây là cách dễ nhất. VLOG bạn làm về pha cà phê? Hãy chia sẻ mẹo để cà phê ngon hơn. VLOG về đi làm bằng xe bus? Hãy chia sẻ cách chọn chỗ ngồi không bị say xe. Cho người ta một cái mẹo, một thông tin hữu ích, họ sẽ nhớ đến bạn.
Giá trị Cảm xúc (Truyền đi năng lượng): Đây là thứ tạo ra sự khác biệt. Công việc của bạn là dọn kho, một việc nghe có vẻ mệt mỏi? Hãy thể hiện nó dưới góc nhìn của một người cực kỳ yêu thích sự ngăn nắp, vui vẻ và tràn đầy năng lượng. Bạn biến một công việc nhàm chán thành một thứ truyền cảm hứng. Đó là lúc video của bạn không còn "bình thường" nữa.
Tóm lại, công thức chung là: CHỌN 1 HOẠT ĐỘNG + THÊM 1 LỚP GIÁ TRỊ = VLOG HẤP DẪN.
Phần 2: Tặng bạn công cụ "Làm thế nào?"
Bạn chỉ cần copy toàn bộ prompt bên dưới, dán vào ChatGPT (hoặc AI nào cũng được), và điền thông tin của bạn vào chỗ mình đã đánh dấu là xong!
MEGA PROMPT: TÌM NGÁCH VIRAL TỪ LỊCH TRÌNH HÀNG NGÀY
[NHÂN VẬT]
Bạn là một Chuyên gia Phân tích và Sáng tạo Nội dung VLOG. Chuyên môn của bạn là "giải phẫu" các hoạt động đời thường để tìm ra những "viên ngọc ẩn" – những ngách nội dung độc đáo, khác biệt và có tiềm năng viral cao. Bạn tư duy như một chiến lược gia, không chỉ đề xuất ý tưởng mà còn phân tích lý do tại sao ý tưởng đó sẽ hiệu quả.
[BỐI CẢNH]
Bạn đang hỗ trợ một nhà sáng tạo nội dung tìm kiếm con đường riêng trên mạng xã hội. Người này có một cuộc sống bình thường và cần bạn phân tích lịch trình hàng ngày của họ để tìm ra những hoạt động đặc biệt nhất có thể xây dựng thành một kênh VLOG thành công.
[NHIỆM VỤ]
Từ [THÔNG TIN BẠN CẦN CUNG CẤP], bạn phải thực hiện một quy trình phân tích và sáng tạo toàn diện:
Phân tích & Lựa chọn: "Quét" toàn bộ danh sách hoạt động và chọn ra 2-3 hoạt động tiềm năng nhất để làm VLOG. Ưu tiên những hoạt động có vẻ độc đáo, ít người làm, hoặc những hoạt động "nhàm chán" nhưng có thể khai thác dưới góc nhìn mới.
Phát triển Ý tưởng Kép: Với MỖI hoạt động đã chọn, hãy phát triển thành 2 ý tưởng VLOG chi tiết:
Một ý tưởng tập trung vào Giá trị Lý tính (cung cấp thông tin, mẹo hữu ích).
Một ý tưởng tập trung vào Giá trị Cảm xúc (truyền tải cảm xúc tích cực, chuyên nghiệp, hoặc trái ngược).
[CƠ SỞ KIẾN THỨC]
1. Nguyên tắc Cốt lõi
Nguyên tắc 1: Thu hẹp để Chuyên sâu (Narrowing for Depth): Thay vì ghi lại một ngày dài và dàn trải, hãy tập trung vào một hoạt động duy nhất để biến sự "bình thường" trở nên đặc biệt và đáng xem.
Nguyên tắc 2: Tích hợp Giá trị (Value Integration): Một hoạt động đời thường chỉ trở nên hấp dẫn khi được bổ sung một lớp giá trị rõ ràng, hoặc là cung cấp thông tin hữu ích (lý tính), hoặc là truyền tải một cảm xúc độc đáo, tích cực (cảm xúc).
2. Các Công thức và Quy tắc Hành động
Công thức 1: Công thức Xác định Ngách VLOG
Cấu trúc: [Liệt kê các Hoạt động Hàng ngày] → Lựa chọn [1 Hoạt động Yêu thích/Đặc thù] = [Ngách VLOG cốt lõi]
Quy tắc 2: Gia tăng Giá trị Lý tính
Cấu trúc: [Ngách VLOG đã chọn] + [Thông tin/Mẹo/Kiến thức hữu ích] = [VLOG có giá trị thực tiễn]
Quy tắc 3: Tạo khác biệt bằng Cảm xúc
Cấu trúc: [Hoạt động bị xem là "Nhàm chán"] + [Cảm xúc Tích cực/Trái ngược] = [VLOG thu hút và khác biệt]
[TÔNG GIỌNG]
Thông minh, phân tích, sáng tạo, thực tế và khơi gợi cảm hứng.
[HƯỚNG DẪN TỪNG BƯỚC CHO AI]
Đọc và phân tích sâu danh sách hoạt động trong [Daily_Activities_List].
Xác định 2-3 hoạt động nổi bật nhất. Tiêu chí lựa chọn: các hoạt động có không gian để chia sẻ kiến thức (tiềm năng Lý tính), các hoạt động thường bị coi là nhàm chán (tiềm năng Cảm xúc), hoặc các hoạt động có tính độc đáo, ít người khai thác.
Với MỖI hoạt động đã chọn, hãy thực hiện quy trình sau:
Phát triển Ý tưởng Lý tính: Tự động brainstorm các mẹo, kiến thức, hoặc thông tin hữu ích liên quan trực tiếp đến hoạt động đó. Áp dụng "Quy tắc Gia tăng Giá trị Lý tính".
Phát triển Ý tưởng Cảm xúc: Tự động brainstorm các góc nhìn cảm xúc tích cực, chuyên nghiệp, hoặc trái ngược với cảm giác thông thường về hoạt động đó. Áp dụng "Quy tắc Tạo khác biệt bằng Cảm xúc".
Soạn thảo kết quả cho mỗi ý tưởng, đảm bảo có đủ các cấu phần được yêu cầu trong định dạng đầu ra.
Trình bày toàn bộ kết quả theo đúng [ĐỊNH DẠNG ĐẦU RA BẮT BUỘC].
[ THÔNG TIN BẠN CẦN CUNG CẤP]
[Daily_Activities_List]: Liệt kê các hoạt động chính trong một ngày của bạn, càng chi tiết càng tốt.
Ví dụ: 7h sáng pha cà phê phin và đọc sách, 9h bắt đầu công việc thiết kế đồ họa (tại nhà), 12h nấu ăn trưa theo chế độ healthy, 1h chiều họp team online, 3h chiều dành 30 phút sắp xếp lại file & dọn dẹp bàn làm việc, 6h tối đi bộ ở công viên và nghe podcast, 8h tối học chơi đàn Ukulele qua app.
[ĐỊNH DẠNG ĐẦU RA BẮT BUỘC]
Bắt đầu bằng câu: "Dựa trên lịch trình của bạn, đây là những hoạt động tiềm năng nhất để xây dựng kênh VLOG:"
Trình bày kết quả theo từng HOẠT ĐỘNG ĐỀ XUẤT được in đậm.
Dưới mỗi hoạt động, chia thành 2 ý tưởng rõ ràng: Ý tưởng 1 (Hướng Lý tính) và Ý tưởng 2 (Hướng Cảm xúc).
Mỗi ý tưởng phải bao gồm 2 mục con:
Tiêu đề VLOG: (Một tiêu đề hấp dẫn, gợi tò mò)
Kịch bản sơ lược: (Mô tả ngắn gọn nội dung và giá trị cốt lõi của VLOG)
Sử dụng Markdown để định dạng cho dễ đọc.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Sample Contents.docx`

Sample 1
[
 2021, những trăn trở của mình về việc mình ko thể làm mãi freelancer chính thức có câu trả lời bằng khái niệm mình lần mò được lúc ấy "solopreneur". Đó cũng là thời điểm mình đăng ký doanh nghiệp dạng ENK (solopreneur/ sole trader) ở Norway.
Gòi xong mang về nói ở VN thì 10 người sẽ 9 người không hiểu, 1 người hiểu sai  Nhưng kệ, mình đã quá quen với việc phải dành nhiều nỗ lực cho việc dẫn đường và khai phá một con đường mới ko mấy ai đi.
2022, mình đặt mục tiêu nếu thực sự mình vận hành doanh nghiệp 1 người hiệu quả với doanh thu $10k/tháng, mình sẽ mở chương trình đầu tiên về solopreneurship cho người Việt.
10/2022: Becoming a Solopreneur (phiên bản cohort) ra đời 
2023: Sách Kinh doanh chuyên môn của chính mình (với hashtag #solopreneur) được xuất bản, chắc cũng chỉ có RIOBook.vn  chịu chơi và đầu tư vào một hướng hoàn toàn mới như thế cùng với mình.
2024: Becoming a Solopreneur được đổi tên thành Being a Solopreneur và nâng cấp thêm phiên bản membership 1:1.
2025: Bộ sách Việt Nam Solo Expert, vẫn nằm trong dòng hashtag #solopreneur hoàn thành và ra đời, tiếp tục cổ động cho dòng chảy của kinh doanh tri thức, kinh doanh độc lập (nhưng mình tập trung vào nhóm tri thức, expert chứ không tập trung vào nhóm solopreneur nói chung bán SP vật lý).
Bữa nay cô em gửi cho bức ảnh chụp màn hình từ trang Thông tin Chính phủ. Mình muốn nhảy chân sáo :))) Dù sự cập nhật nhật này đã chậm hơn rất nhiều năm so với thế giới, nhưng có lẽ cũng là một nỗ lực của chính phủ và các chính sách công - đã chịu khó lắng nghe thị trường nhiều hơn.
Thị trường sẽ luôn đi trước chính sách, điều này thông cảm được.
Người làm thật thường đi trước định nghĩa, nó tạo ra những con người tiên phong.
Những mô hình mới thường xuất hiện rất lâu khi xã hội có đủ ngôn ngữ để gọi tên nó - miễn là có những người thực sự bền bỉ và nhất quán trong cách họ làm, họ nói và educate thị trường.
Mình cũng tự hào vì, mô hình KD độc lập mà mình build cho tới bây giờ là mix giữa: GÓC NHÌN VÀ TRẢI NGHIỆM QUỐC TẾ (khi mình là người sống ở nước ngoài đã mười mấy năm và luôn chịu khó cập nhật xu hướng) được customized và đưa vào thực thi được LOCALIZED (phù hợp với văn hóa, hành vi khách hàng và môi trường kd ở VN) 
Chả phải vay mượn chuyên gia nước ngoài nào, dành riêng cho người Việt.
Nhưng lại có tính dự đoán, cập nhật và liên tục phát triển để tiệm cận với sự phát triển của thế giới.
Gần 5 năm đồng hành cùng làn sóng kinh doanh độc lập, mình đã nói rất nhiều về kinh doanh chuyên môn, content như một loại tài sản, solo expert, hệ sinh thái sản phẩm tri thức và cách một cá nhân có thể xây một business model tinh gọn nhưng bền vững.
Bây giờ, khi bối cảnh chính thống bắt đầu mở ra, mình nghĩ một phase mới cũng bắt đầu.
Đó là phase đi từ EDUCATOR sang BUILDER.
Sáng nay đã lên 1 bài nói về chuyện Builder này rồi. Giờ nhận tin xong hơi high nên lại biên thêm một bài 
Hi vọng các bác sớm hoàn thịện chính sách, đặc biệt là phần nền tảng quản lý tự động cho thật sự tinh gọn, chặt chẽ, thân thiện với người dùng như khi mình được hỗ trợ bắt đầu ENK ở Norway cách đây 5 năm:
. Mất 10' đăng ký doanh nghiệp
. App kế toán thuế minh bạch và cực kỳ tiện lợi, đồng bộ, dễ hiểu (để 1 đứa mù kế toán như mình cũng có thể làm)
. Các cổng thanh toán mở, dễ dàng kết nối và báo cáo tự động
. Vận hành siêu tinh gọn, hiệu quả
. Thuế hơi cao tí nhưng thôi chấp nhận được :)))
Hết ạ.
]
—---------------------
Sample 2
[KHI CHƯA THỂ RỜI ĐI, HÃY BIẾN CHỖ ĐÓ THÀNH NƠI LUYỆN MÌNH
Rất nhiều người khi gặp một môi trường làm việc khó chịu sẽ nghĩ ngay đến hai lựa chọn: chịu đựng hoặc nghỉ việc.
Nhưng giữa hai lựa chọn đó còn một vùng rất quan trọng: ở lại có chiến lược. Không phải ở lại để cam chịu, cũng không phải ở lại để tự thuyết phục rằng mọi thứ đều ổn. Ở lại có chiến lược là khi bạn hiểu rõ mình chưa thể rời đi ngay, nên quyết định dùng chính hoàn cảnh đó để học thứ mình cần cho chặng tiếp theo.
Gần đây tôi đọc được một chia sẻ của một bạn trẻ mới đi làm. Bạn bước vào công ty đầu tiên sau khi ra trường và bị đồng nghiệp lẫn cấp trên trực tiếp đối xử khá căng thẳng. Thay vì chỉ phản ứng theo cảm xúc, bạn làm một việc khá tỉnh táo: tìm hiểu nguyên nhân.
Sau một thời gian quan sát, bạn nhận ra vấn đề không chỉ nằm ở việc người khác khó tính. Một phần đến từ lương của bạn cao hơn người hướng dẫn, một phần đến từ nỗi lo bạn sẽ thay thế vị trí của họ. Có những điều bạn không thể sửa, như mức lương đã được công ty quyết định. Nhưng có những điều bạn có thể xử lý, như cách làm người khác cảm thấy bạn không đến để tranh giành.
Bạn chọn ghi chép cẩn thận khi được hướng dẫn, sai thì nhận và hỏi lại, thiếu thông tin thì tìm nguồn khác để học thêm. Với người từng khó chịu với mình, bạn vẫn giữ thái độ biết ơn đúng mực. Với trưởng phòng, bạn thể hiện sự tôn trọng, tham khảo ý kiến khi cần và không cố chứng minh mình hơn ai. Sau một thời gian, quan hệ dần dễ thở hơn, còn bạn thì tích lũy được kiến thức nghề nghiệp thật sự.
Trong quyển sách TÁI LẬP TRÌNH THÓI QUEN, tác giả Ginka có bàn đến một ý rất thực tế: muốn thay đổi, ta không thể chỉ ra lệnh cho bản thân phải khác đi, mà cần nhìn vào vòng lặp hành vi đang diễn ra, gồm tín hiệu, hành vi và phần thưởng.
Nếu áp dụng vào câu chuyện công sở, ta sẽ thấy rất rõ. Khi bị xem thường, tín hiệu là thái độ khó chịu của người khác. Hành vi quen thuộc có thể là phản ứng lại, than phiền, thu mình, hoặc làm việc trong tâm thế chống đối. Phần thưởng ngắn hạn là cảm giác được xả bức xúc. Nhưng phần thưởng dài hạn thì gần như không có, vì vấn đề vẫn còn nguyên, thậm chí quan hệ làm việc còn khó xử hơn.
Bạn trẻ trong câu chuyện đã đổi vòng lặp đó. Khi gặp thái độ không thân thiện, bạn không chọn phản ứng ngay, mà chuyển sang quan sát, ghi chép, học việc, tìm hiểu nguyên nhân và điều chỉnh cách giao tiếp. Phần thưởng mới không còn là cảm giác hả giận trong vài phút, mà là năng lực nghề nghiệp, sự tin cậy và một môi trường dễ làm việc hơn.
Điểm quan trọng ở đây không phải là khuyên ai cũng phải chịu đựng môi trường xấu. Có những nơi nên rời đi, nhất là khi nó gây tổn hại nghiêm trọng đến sức khỏe và nhân phẩm. Nhưng nếu bạn chưa thể rời đi ngay, đừng để mỗi ngày chỉ trôi qua bằng ấm ức.
Một công việc chưa yêu thích vẫn có thể trở thành nơi học cách quan sát con người, đọc động cơ, quản lý cảm xúc, xây kỹ năng và hiểu thị trường. Một môi trường khó chịu vẫn có thể cho bạn dữ liệu về cách tổ chức vận hành, cách quyền lực hoạt động, cách năng lực được nhìn nhận, cách quan hệ ảnh hưởng đến cơ hội.
Khi chưa thể chọn hoàn cảnh tốt hơn, ta vẫn có thể chọn cách dùng hoàn cảnh hiện tại cho khôn ngoan hơn. Và đôi khi, sự khác biệt của một người không nằm ở việc họ gặp ít chuyện khó, mà ở chỗ họ không để chuyện khó đi qua vô ích.
  ]
—---------------------
Sample 3
[ Có những quyết định không bắt đầu từ một kế hoạch rõ ràng, chỉ bắt đầu từ cảm giác thôi thúc mơ hồ: “Mình đã đi đủ lâu trong ngành này để khao khát chia sẻ điều gì đó.”
Thế nên, mình quyết định sẽ bắt đầu chia sẻ.
=============================
Mình đang làm trong ngành IT, ở vị trí BrSE.
Định hướng thời gian tới của mình là sẽ chia sẻ nhiều hơn về ngành, về nghề, về khó khăn và cách vượt qua/cách xử lý, cũng như một số bài toán công việc; nên mình sẽ dùng facebook cá nhân này để chia sẻ.
Song song với đó, mình cũng tạo thêm page này, nếu ai có cùng định hướng và yêu nghề, hãy follow và cùng nhau chia sẻ kinh nghiệm nhé.
Những bài viết ở đây sẽ xoay quanh hai trục chính:
01 - Công nghệ thông tin - theo góc nhìn của người không thuần tech.
02 - Và tiếng Nhật - không chỉ dừng ở việc “biết nói”, mà là dùng nó để làm việc, để hiểu, để xử lý vấn đề.
Đối tượng mình hướng tới không phải là một nhóm cụ thể.
Nếu bạn có tiếng Nhật tốt nhưng chưa có nhiều kinh nghiệm IT, bạn có thể đọc.
Nếu bạn đang làm Comtor và muốn bước lên BrSE, bạn có thể đọc.
Nếu bạn là BrSE non-tech, đang loay hoay giữa nghiệp vụ và kỹ thuật, bạn cũng có thể.
Nếu bạn là Tester hay Dev có tiếng Nhật, và đang nghĩ đến chuyện “làm cầu nối”, bạn cũng sẽ tìm thấy một vài điều quen thuộc.
Đơn giản là chỉ cần hợp tần số.
Mình bản chất không phải BrSE tech, nên không dám múa rìu qua mắt thợ, chỉ là chia sẻ kinh nghiệm trong công việc mình từng trải qua. Từ trải nghiệm cá nhân, từ những dự án mình từng làm, những sai lầm mình từng gặp, những cách mình từng xử lý - có cái hiệu quả, có cái không. Có thể đúng, có thể sai, có thể ba phải ở giữa.
Vẫn hi vọng có bạn tìm thấy thứ bạn cần.
Nếu bạn đọc và có góc nhìn khác với mình, hãy comment cho mình cùng học hỏi nhé. Mình tin rằng, trong một ngành mà mọi thứ thay đổi rất nhanh như IT, không ai có thể đi xa nếu chỉ giữ một góc nhìn của riêng mình.
=============================
Bài viết nhanh trong đêm muộn!
Có thể là một khởi đầu dài hơn mình nghĩ.
Không sao, cứ khởi đầu đã =))) ]
—----------------------
Sample 4
[Vì sao mình tạo page này?
Chào bạn,
Cảm ơn bạn đã dừng lại ở đây, giữa rất nhiều lựa chọn và hướng đi ngoài kia.
Có thể bạn tình cờ thấy page này.
 Hoặc có thể bạn đang ở một giai đoạn mà bạn bắt đầu tự hỏi: “Tiếp theo mình nên đi đâu trong sự nghiệp?”
Dù lý do là gì, mình tin nếu bạn đọc đến đây, ít nhiều chúng ta đang đứng ở những điểm giao nhau.
Về mình - một BrSE “đi vòng” 
Mình không bắt đầu từ chuyên ngành IT.
Mình xuất phát điểm là dân tiếng Nhật.
Trước đây mình bước chân vào ngành IT với vị trí là Comtor - một vị trí mà nếu nhìn từ bên ngoài, mọi thứ có vẻ cũng khá ổn: công việc hoàn thành tròn vai, “chạy” được với team phát triển. Lương cũng gọi là ổn định hơn so với các ngành nghề khác trên thị trường nói chung. 
Nhưng khi đó mình luôn biết rõ là: Mình làm việc trong trạng thái không thật sự hiểu. Bạn nào làm Comtor chắc cũng đồng điệu với nhau ở điểm này. 
Không phải là không làm được. Mà là làm mà không nắm được bản chất hệ thống, không hiểu sâu về kỹ thuật, không biết phía sau những gì mình đang truyền đạt thực sự vận hành như thế nào.
Cảm giác “không thật sự hiểu” đó, nó khiến mình bị bí bách, bị bực tức, bị khó chịu…Nói điều mà mình không thực sự clear, có lúc mình cảm giác cái ý mà người nói muốn mình phải truyền đạt ấy - nó không đúng đâu, nó sai sai thế nào - mà mình vẫn phải truyền đạt… nó thật sự là một sự khó chịu day dứt và âm ỉ đấy bạn ạ. 
Con đường mình đã đi - và những vòng lặp không cần thiết
Mình bắt đầu tìm cách tự bù lấp những chỗ “không thật sự hiểu” đó. Mình học lung tung cả lên, mỗi thứ một tí, mỗi lúc 1 kiểu, ko có hệ thống. 
Mình học test - tăng cường hỏi tester, chủ động tự tham gia vào việc test hệ thống để hiểu cách mọi thứ hoạt động.
Mình học BA - phân tích nghiệp vụ, chức năng, học cách một hệ thống được thiết kế và vận hành từ góc nhìn tổng thể.
Mình học PM - quản lý kế hoạch, quản lý dự án, quản lý tiến độ chất lượng, quản lý con người.
Vân vân và mây mây…
Nhìn lại cả quá trình, thật sự là một hành trình tự mò mẫm dò dẫm mà bước đi. 
Học cái này một chút, thử cái kia một chút, lan man lý thuyết không có môi trường thực hành. Học mà không có hành, không có thực chiến thì kiến thức cũng chỉ là trên giấy mà thôi. Có những thứ đáng ra nên học sớm hơn thì lại học muộn. Có những thứ chỉ cần hiểu sơ bộ thì lại bị lún vào mất quá nhiều thời gian.
Không có một bản đồ rõ ràng. Không có mentor định hướng cho mình biết: “Ở giai đoạn này, nên tập trung vào cái gì?”. Và mình đã mất khá nhiều thời gian để đi vòng như vậy.
Điều mình nhận ra sau nhiều năm làm trong ngành
Có rất nhiều người giống mình ngày trước. Đặc biệt là những bạn trái ngành bước vào IT, các bạn ngành ngôn ngữ học tiếng Nhật, các bạn Comtor. 
🚨  Làm việc chăm chỉ. Có trách nhiệm - nhưng luôn có cảm giác thiếu, cảm giác không thật sự hiểu. Và không rõ nên đi tiếp theo hướng nào.
Vấn đề không phải là bạn không đủ năng lực.
Mà là bạn không có định hướng đúng, không có đủ thông tin đúng, vào thời điểm đúng.
Nếu có một nơi:
Tổng hợp lại kinh nghiệm thực tế
Chỉ ra nên học gì, ở mức nào là đủ
Và giúp bạn nhìn rõ các hướng đi trong ngành
…thì rất nhiều người có thể tiết kiệm được vài năm “đi vòng”.
Đây là lý do page này tồn tại
Mình tạo page này để chia sẻ lại:
Những gì mình đã trải qua trong công việc
Những kỹ năng thực sự cần thiết khi làm BrSE
Những sai lầm mình từng gặp để bạn tránh lặp lại
Và cách công việc này diễn ra ngoài thực tế
Mình không tô vẽ màu hồng về nghề, cũng không nói quá về những khó khăn. Mình muốn bạn nhìn thấy nó đúng như nó là.
Để bạn có thể tự trả lời:
Công việc này có phù hợp với mình không?
Nếu phù hợp, mình nên bắt đầu từ đâu?
Và làm thế nào để đi nhanh hơn/hoặc từ tốn cũng được, nhưng chắc chắn hơn
(Mình là type có xu hướng đi theo cửa này: từ tốn cũng được, nhưng chắc chắn và chill chill)
Page này dành cho ai
Page này có thể phù hợp với bạn nếu:
Bạn giao tiếp tiếng Nhật tốt nhưng xuất phát điểm không phải chuyên ngành IT
Bạn đang làm Comtor /Dev / BA /Tester
Bạn đã đi làm một thời gian nhưng vẫn thấy mơ hồ về định hướng
Hoặc bạn đang muốn chuyển hướng nhưng chưa biết bắt đầu từ đâu
Nếu bạn đang ở một trong những điểm đó, có thể bạn sẽ thấy mình đâu đó trong những gì mình chia sẻ.
Điều mình hướng đến (và cũng là giới hạn của page này)
Mình không hứa sẽ đưa bạn đến một con đường “nhanh nhất”. 
Vì trong sự nghiệp, “nhanh” nhưng sai hướng thì chỉ khiến bạn đi xa hơn khỏi điểm mình muốn đến.
Nhưng mình tin mình có thể giúp bạn:
Hiểu rõ hơn về ngành về nghề
Biết mình đang ở đâu
Và rút ngắn một phần con đường mà mình đã từng phải đi vòng
Chỉ vậy thôi.
Mọi bài viết và quan điểm ở trang của mình, đều xuất phát từ trải nghiệm/kinh nghiệm/tầm nhìn và đúc kết cá nhân. Với tư cách là người đi trước chia sẻ lại cho người đi sau. 
Nếu bạn có quan điểm khác, hoặc quan điểm trái chiều -  mình rất welcome. Hãy comment chia sẻ với tinh thần xây dựng - tích cực - thiện chí, để mình mở rộng viewpoint với nhé. Và cũng là để cho các bạn khác đang tìm hiểu về ngành về nghề có góc nhìn đa dạng hơn.
Nếu bạn đọc đến đây và cảm thấy:
“Ừ, mình cũng đang giống như vậy.”
Thì có lẽ chúng ta sẽ còn gặp nhau qua những bài viết tiếp theo.
Và nếu một ngày nào đó, bạn nhận ra đã tiết kiệm được nhiều năm loay hoay nhờ những gì mình chia sẻ - thì page này đã hoàn thành đúng mục tiêu của nó.
Cảm ơn bạn đã ở đây.
]
—---------------------
Sample 5
[Bài viết này hướng đến phát triển phần mềm. 
Bài viết này dành cho IT Comtor tiếng Nhật, biên phiên dịch viên tiếng Nhật ở ngành khác, người có tiếng Nhật giao tiếp tốt. Nhấn mạnh là cần giao tiếp tốt. 
—-----------------
FAQ: Tiếng Nhật tốt, trái ngành — có bước vào BrSE IT được không?
 Đây là một trong những câu hỏi mình nhận được lặp đi lặp lại, từ rất nhiều người.
Mọi người có một điểm chung là Tiếng Nhật tốt, đã từng sống hoặc làm việc tại Nhật, nhưng không đi từ nền tảng IT.
Có người làm HR.
Có người làm quản lý tu nghiệp sinh.
Có người mới ra trường, hoặc đã đi làm vài năm… rồi bắt đầu nhìn sang IT và băn khoăn không biết có chuyển sang IT được không?
Câu trả lời của mình là: Không có độ tuổi nào ngăn bạn bước vào ngành này.
Người hạn chế mình — thường chính là bản thân mình.
Vấn đề chưa bao giờ nằm ở “trái ngành”
Mình thấy rất nhiều bạn đang tự đánh giá thấp một tài sản mà mình đã mất nhiều năm để xây dựng: tiếng Nhật giao tiếp tốt.
Trong một dự án IT có khách hàng Nhật, khả năng nghe — hiểu — phản xạ — truyền đạt
 không phải là “phần phụ”. Nó là một nửa cuộc chơi. 
Phần còn lại là gì?
Là hiểu hệ thống.
Hiểu cách phần mềm vận hành.
Hiểu cách một dự án chạy từ đầu đến cuối.
Và tin mình đi — phần đó học được.
Cái bạn thiếu không phải là năng lực.
Mà là một bức tranh rõ ràng.
Rất nhiều bạn đang đứng ở một trạng thái lưng chừng:
Biết mình có thể học
Nhưng không biết nên bắt đầu từ đâu
Không biết học đến mức nào là đủ
Và không biết bao lâu thì “có thể apply được”
Thế nên bạn đi hỏi.
Và khi hỏi một câu kiểu:
> “Em hơn 30 rồi, chuyển ngành có được không?”
Bạn sẽ luôn nhận được 3 kiểu trả lời:
Người từng thất bại → khuyên bạn đừng làm
Người lạc quan → nói bạn cứ thử đi
Người trung lập → trả lời kiểu “tùy em”
Nhưng tất cả những câu trả lời đó… không giải quyết được gì cả.
Vì câu hỏi thực sự không phải là:
 “Có nên không?”
Mà là:
 “Bạn có muốn đủ nhiều để làm đến cùng không?”
Nếu đã có tiếng Nhật tốt — bạn đã đi được nửa đường
Nếu bạn giao tiếp tốt,
 bạn có khả năng vượt qua vòng phỏng vấn tiếng Nhật.
Vậy phần còn lại bạn cần làm gì?
Không phải học tất cả. Cũng không phải trở thành dev.
Bạn chỉ cần đủ để hiểu và kết nối
Trong 1–2 tháng, bạn nên tập trung vào điều gì?
Không phải học lan man. Mà là học có mục tiêu. 
Bạn cần:
Xác định công ty nào sẽ cần bạn: công ty làm outsource thị trường Nhật, công ty Nhật làm product phần mềm. Nhất định phải liên quan đến tiếng Nhật. 
Hiểu một khâu sản xuất phần mềm trong các công ty outsource chạy như thế nào, từ khâu sales tiếp cận khách hàng - đến khâu sản phẩm đến được tay end-user. 
Hiểu một hệ thống phần mềm hoạt động như thế nào
Hiểu một dự án IT chạy ra sao (flow cơ bản)
Biết test một số chức năng cơ bản
Nắm được khái niệm tổng quan để có thể trao đổi với team và khách
Không cần quá sâu. Nhưng phải đủ để bạn không còn “làm mà không hiểu”.
Giai đoạn đầu khi vào dự án — sẽ không dễ
Và mình nghĩ bạn nên biết trước điều này.
Bạn sẽ phải:
Tự tìm hiểu rất nhiều
Chuẩn bị trước mỗi buổi họp
Dự đoán câu hỏi khách có thể hỏi
Và có lúc… không hiểu gì thật
Nhưng đó không phải là dấu hiệu bạn “không hợp”.
Đó là trạng thái bình thường của người đang bước vào một hệ mới.
Vậy rốt cuộc, bạn có làm BrSE được không?
Nếu bạn:
Có tiếng Nhật giao tiếp tốt
Sẵn sàng học phần hệ thống ở mức cần thiết
Chấp nhận giai đoạn đầu hơi “đuối”
Và không bỏ cuộc giữa chừng
Thì câu trả lời là: Có. Bạn làm được.
Một điều cuối cùng
Bạn có thể dành thêm vài tháng, vài năm để tiếp tục hỏi:“Mình có nên không?”
Hoặc bạn có thể dừng lại ở một câu đơn giản hơn: “Mình có làm không?”
Nếu câu trả lời là Cób → thì bắt đầu.
Tìm đúng người đã đi trước.
 Đi theo một hướng rõ ràng.
 Và đi đủ lâu. Tối thiểu: Qua được 1 năm là pass được vào nghề 
Còn nếu bạn để những lời khuyên nhiễu giữ bạn lại, thì rất có thể vài năm nữa bạn vẫn đứng ở đúng chỗ này, với cùng một câu hỏi.
Và như thế, thật sự là lãng phí một nghề tốt. 
BrSE thực sự là một nghề tốt.
(IT Comtor cũng là một nghề tốt theo quan điểm của mình. Tuy nhiên, vai trò này bắt buộc phải dịch chuyển và tiến lên) 
 ]
—-----------------
Sample 6
[Thời cuộc đang bắt đầu mở ra một dòng chảy mới.
Trong phong thủy Huyền Không Phi Tinh, từ năm 2024 đến 2043, thế giới bước vào Vận 9, chu kỳ gắn với hành Hỏa: ánh sáng, công nghệ, trí tuệ, cái đẹp, sự lan tỏa, tính hiện diện và Quẻ Thuần Ly (liên quan tới năng lượng tĩnh nữ trường thành/ middle daughter/ nữ trung niên).
Nếu nhìn bằng ngôn ngữ kinh doanh thì đây cũng sẽ là giai đoạn mà chuyên môn cá nhân, AI, tài sản số, cộng đồng và thought leadership bắt đầu kết hợp với nhau mạnh hơn bao giờ hết.
Với mình tất nhiên những điều này không nên được hiểu như một lời tiên tri, nhưng hoàn toàn có thể vay mượn để dùng như một bản đồ phản tư chiến lược.
Điểm thú vị là trước khi tìm đọc kỹ hơn về vận 9 trong huyền học, mình đã bắt đầu thay đổi bio của mình từ Business Mentor sang thành Solo Business Mentor/Investor từ cuối năm 2024. Tức là không phải vì số mệnh đã định, mà vì nhiều tín hiệu, từ cá nhân tới thị trường, từ năng lực nội tại đến dịch chuyển công nghệ (hãy thử quan sát sự dịch chuyển nhanh chóng trong bối cảnh VN thôi cũng thấy rõ), đã tới lúc mô hình chuyên gia truyền thống chuẩn bị khép lại và mở ra một thời kỳ mới cho hệ sinh thái kinh doanh tri thức có đòn bẩy mạnh hơn.
Mình tin rằng cũng có một làn sống những chuyên gia cũng đang cảm nhận được rằng: giỏi chuyên môn và những mô hình cũ không còn đủ nữa.
Tự dưng sáng nay vừa mở mắt, lúc còn đang nằm trên giường và mở đồng hồ thấy mới 2:35 phút, một câu hỏi bật ra rất ngẫu nhiên và bất ngờ nhưng mà mình sực tỉnh khỏi cơn ngái ngủ: Những năm tiếp theo, bản thân mình và thế giới sẽ trôi về đâu.
Lật đật mò sang phòng làm việc để biên nhanh vài dòng dự đoán. Mình nghĩ nó sẽ có 3 sự dịch chuyển lớn:
---
+ Dịch chuyển năng lượng.
Vận 9 được gắn với sao Cửu Tử, hành Hỏa. Hỏa không chỉ là sự bùng cháy. Hỏa còn là ánh sáng, tầm nhìn, sự khai mở, khả năng làm người khác nhìn thấy điều trước đó còn mờ tối. Nếu như giai đoạn trước mình là người dạy solo expert làm kinh doanh thì đến giờ có vẻ chiếc áo đó đã hơi chật. Trong gần 2 năm qua, thứ mình làm nhiều nhất là kiến tạo một hệ tư tưởng cho solo expert mới: không mắc kẹt với danh tính trong corporate, không muốn kinh doanh kiệt sức (life-first business), cũng không còn chỉ là đóng gói spdv nhỏ lẻ, rời rạc (ecosystem building).
Nếu ở giai đoạn trước, sức mạnh của mình nằm ở việc giúp ng khác bắt đầu. Thì giai đoạn sắp tới, có lẽ sức mạnh nằm ở việc giúp họ tái cấu trúc (nhờ tận dụng 2/3 kỹ năng cốt lõi và mạnh mẽ nhất của mình là tư duy chiến lược và tư duy hệ thống).
Tái cấu trúc lại cách nhìn chuyên môn, cách ng ta đóng gói tri thức, cách xây sp, cách tạo ảnh hưởng.
---
+ Dịch chuyển kinh tế và công nghệ: từ chăm chỉ -> có đòn bẩy
Nếu vài năm trước, solopreneur thường được hiểu là một người làm mọi thứ một mình, thì giai đoạn mới buộc định nghĩa này phải thay đổi.
AI, automation, no-code tools, creator platform, paid content, micro-course, community platform, newsletter, chatbot, assistant bot, knowledge base, digital product, licensing, template, toolkit... đang tạo ra một khả năng rất mới: một người có thể vận hành một hệ sinh thái kinh doanh tinh gọn nhưng có sức mở rộng lớn hơn rất nhiều so với mô hình chuyên gia truyền thống.
Điều này không có nghĩa ai cũng có thể trở thành “one-person unicorn”. Khái niệm đó hấp dẫn, nhưng cũng dễ bị thổi phồng. Cách nhìn tỉnh táo hơn là: AI sẽ giúp mọi ng khuyếch đại rất mạnh, nhưng chỉ dành cho những ng đã có chuyên môn thật sự, có sự từng trải, gai góc, dữ liệu, phương pháp và thị trường.
Vậy nên muốn đi tiếp, bạn sẽ phải thiết kế một hệ thống thông minh hơn. Đặc biệt là biến quy đổi chuyên môn thành tài sản hữu hình: tài sản nội dung, phương pháp, sp, dữ liệu, cộng đồng, công cụ, thương hiệu cá nhân. Đều là những nơi AI và Automation trở nên hữu ích. Không phải để thay thế con người, mà để giải phóng con người khỏi những phần lặp lại, vụn vặt, tốn năng lượng và khó mở rộng.
---
+ Dịch chuyển nhận thức: từ attention economy -> nền kinh tế cộng hưởng
Cuộc chơi nhiều năm trước bị ám ảnh bởi attention. Nhưng tới giờ, attention thô ngày một rẻ mạt.
Ng ta ko còn khát thông tin, công cụ, lời khuyên mà họ khát khao hiểu điều gì thực sự quan trọng, công cụ nào đúng cho giai đoạn của mình và một không gian đủ an toàn để thành thật, có ng chỉ ra điểm nghẽn và có bản lĩnh đi tiếp.
Cộng đồng ko còn là nơi chỉ để học kiến thức. Nó là yếu tố bắt buộc để phát triển. Nơi người ta không chỉ học cách làm solo business, mà học cách trở thành một con người có khả năng làm chủ chuyên môn, làm chủ lựa chọn, làm chủ năng lượng và làm chủ hệ sinh thái kinh doanh của mình.
Đây cũng là lý do những trải nghiệm như retreat, camp, mastermind, nhóm thực hành, peer feedback, mentor circle vẫn rất quan trọng. Càng nhiều AI, con người càng cần nơi được nhìn thấy như một con người. Càng nhiều tự động hóa, người ta càng trân trọng sự hiện diện thật. Càng nhiều nội dung miễn phí trôi nổi, người ta càng cần những không gian có chọn lọc, có chiều sâu và có sự nâng đỡ đúng lúc. (Có lẽ vì thế mà các chương trình business retreat, camp, mastermind, cohort của mình luôn được mọi người ủng hộ và yêu thích rất nhiều).
----------
Những điều này có lẽ không chỉ dành cho riêng Linh.
Đừng để bản thân trở thành một chuyên gia rất giỏi nhưng vẫn mặc kẹt trong mô hình cũ.
Giỏi tư vấn nên cứ tư vấn mãi.
Giỏi viết nên cứ viết mãi.
Giỏi dạy nên cứ mở lớp mãi.
Giỏi gồng nên cứ tưởng đó là năng lực cạnh tranh.
+ Ở kỷ nguyên của ánh sáng và visibility này, bạn đã theo đuổi hệ tư tưởng nào hay chỉ tạo thêm nội dung thông tin giá rẻ?
+ Ở kỷ nguyên AI và đòn bẩy này, chuyên môn của bạn đã trở thành tài sản, công cụ, quy trình, sản phẩm hay chưa?
+ Ở kỷ nguyên cộng hưởng và đòi hỏi sự chân thực này, cộng đồng của bạn có thật sự được nuôi dưỡng bằng niềm tin, chiều sâu và sự chuyển hóa không? Hay chỉ là một đám đông quen mặt nhau?
----------
Disclaimer 
Bài viết này sử dụng một số hệ quy chiếu như phong thủy, huyền học  như những lớp biểu tượng để phản tư và mở rộng góc nhìn chiến lược. Đây không phải là dự báo chắc chắn, lời khẳng định định mệnh, hay cơ sở duy nhất để ra quyết định kinh doanh.
Mọi định hướng quan trọng vẫn cần được soi chiếu bằng dữ liệu thị trường, năng lực thật, nguồn lực hiện có, phản hồi từ khách hàng và khả năng thực thi trong thực tế. Huyền học, nếu dùng đúng, nên là một chiếc gương để nhìn sâu hơn vào bản thân và thời cuộc, không phải là cái cớ để buông quyền chủ động của mình.
]
—-----------------
Sample 7
[Hôm thứ Hai tuần này, tôi có một deadline khá "ngược đời".
Deadline đó không phải là duyệt báo cáo, tuyển dụng hay xử lý những đầu việc "đậm chất sếp". Tôi ngồi viết landing page copy và góp ý offer cho... trợ lý của mình.
Bạn ấy sắp ra mắt một chuỗi workshop riêng.
Một bạn trợ lý khác nhờ tôi tư vấn cho kế hoạch bán sách của bạn, tôi lao vô làm file dự toán P&L xem bạn nên in bao nhiêu cuốn cho phù hợp và vận hành kiểu gì.
Theo "lẽ thường", chuyện này nghe thật kỳ cục. Một người ở vị trí làm chủ có vẻ không nên ngồi nghĩ thông điệp bán hàng cho dự án cá nhân của nhân viên. Sếp thì giao việc. Nhân viên thì cống hiến cho công ty. Ai ở đúng vị trí người nấy.
Nhưng tôi chưa bao giờ thích vận hành theo những lối mòn an toàn hay "lẽ thường" ấy.
Người trợ lý đầu tiên của tôi, sau một thời gian đi cùng, đã tách ra mở agency riêng.
Người trợ lý thứ ba, sau hơn một năm làm việc đã quyết định đi du học ngành tiếp thị. Tôi là người viết recommendation letter cho bạn và bạn được học bổng toàn phần.
Người trợ lý thứ ba, đi lên từ một học viên học viết, bắt đầu với mức lương 4 triệu đồng/tháng năm 2021. Đến năm 2023, lần đầu tiên trong đời,  bạn chạm mốc 100 triệu đồng/tháng từ ngách đào tạo trợ lý từ xa. Đó là một dự án tôi đã gợi ý, định hướng và dẫn dắt từ những viên gạch đầu tiên cho tới khi cộng đồng ấy đạt 10.000 thành viên. Năm 2025, bạn mua được nhà và xin nghỉ để all-in cho công ty của chính mình.
Tôi thấy điều đó hết sức bình thường. Thậm chí, tôi mừng.
Ở Việt Nam, chắc hiếm có mô hình nào cho phép nhân sự vừa làm công ty, vừa nuôi dự án cá nhân song song, mà vẫn hưởng trọn vẹn lương thưởng, bảo hiểm, bao thầu đi đây đi đó và tháng lương thứ 13.
Nhưng với tôi, đây không phải là sự dễ dãi. Đó là một lựa chọn có chủ đích.
Tôi không muốn xây một "cái lồng" bắt con người phải thu nhỏ cuộc đời họ lại cho vừa vặn với công việc. Tôi sợ cảnh ai đó đi làm cùng mình, sau vài năm chỉ giỏi lên ở việc làm đúng quy trình, trả lời tin nhắn, nhưng lại hoàn toàn mù mờ về giá trị bản thân và không biết tự đứng vững ở đâu.
Tôi luôn tâm niệm, mỗi người đều sở hữu tiềm năng vô hạn và không ai giới hạn việc chúng ta được là ai hay làm gì. Một người thầy, một người mentor tốt không chỉ trao đi kiến thức. Họ phải thiết kế được một hành trình. Một hành trình mà ở đó, người ta cảm thấy an toàn để thử, để sai, để sửa và trưởng thành mà không phải sống trong nỗi sợ bị phán xét.
Và có lẽ, tôi đã vô thức mang triết lý life-first business - để công việc phục vụ cuộc sống chứ không phải ngược lại - vào cách mình xây team.
Bản thân tôi từng rất ghét sự ràng buộc khi đi làm thuê. Tôi tin mình có thể vượt xa mọi kết quả được yêu cầu, miễn là tôi có không gian sáng tạo và được nuôi dưỡng các dự án ngách của riêng mình. Vậy nên khi xây công ty, tôi không muốn tạo ra một chiếc lồng khác cho bất kỳ ai.
Tôi muốn tạo ra một hệ sinh thái để mỗi người vẫn có thể lớn lên theo nhịp điệu riêng. Có bạn dành nửa thời gian cho dự án cá nhân. Có bạn tranh thủ học văn bằng hai buổi tối. Có bạn làm full-time ở nơi khác với mức lương 5.000 euro/tháng, nhưng vẫn dành thời gian quán xuyến trơn tru công việc cùng team tôi.
Nghe rất phi truyền thống. Nhưng kỳ lạ là, nó cực kỳ "work".
4 tháng đầu năm 2026, doanh thu của team hoàn thành 100% target cả năm mà tôi đã đặt ra cho năm 2026 (cũng là con số đủ làm kế toán hơi choáng váng xí hehe). Tôi vẫn thấy điều đó có phần thần kỳ.
Tất cả chúng tôi đều khá "solo". Ai cũng có đời sống riêng, dự án riêng, tham vọng riêng. Mãi sang năm nay chúng tôi mới bắt đầu họp mỗi tháng một lần. Còn lại, ai làm việc nấy. Tự chịu trách nhiệm. Tự xử lý đầu việc. Tự biết điều gì cần làm. Tôi gần như không bao giờ phải đốc thúc ai.
Trưởng thành không phải là lúc cần bị quản lý chặt hơn. Trưởng thành là khi tự do luôn đi kèm với trách nhiệm và kỷ luật. Là khi tự do không biến thành sự tùy tiện. Là khi bạn vừa thuộc về một điều gì đó lớn lao, vừa không đánh mất đời sống của chính mình.
Thứ gắn kết chúng tôi không phải là sự kiểm soát. Mà là niềm tin.
Tôi tin rằng một người trưởng thành sẽ làm việc tốt hơn khi được đối xử như một người trưởng thành. Tôi tin rằng tự do không làm con người lười đi nếu bên trong họ có nội lực và trách nhiệm. Và tôi tin, một đội ngũ mạnh không phải là đội ngũ bị giữ thật chặt, mà là nơi mỗi người được nuôi dưỡng để trở thành phiên bản rộng lớn hơn của chính họ.
Sẽ có ngày, dự án solo của họ đủ lớn, năng lực đủ vững, và họ rời đi. Điều đó là bình thường.
Tôi không muốn giữ chân ai bằng sự phụ thuộc. Tôi càng không muốn công ty của mình biến thành nơi khiến người ta sợ rời đi, sợ thử cái mới, sợ lớn hơn chiếc ghế hiện tại.
Nếu một ngày họ rời đi vì đam mê đã thực sự nuôi sống được họ và gia đình, với tôi, đó không phải là mất mát nhân sự. Đó là bằng chứng sống động nhất cho thấy: Hành trình này đã thực sự phát huy tác dụng.
Một môi trường tốt không ép con người nhỏ lại để vừa với chiếc ghế. Nó khiến họ lớn lên, đến mức chiếc ghế cũ không còn vừa nữa. Suy cho cùng, thành công thực sự được đánh giá bằng xu hướng phát triển và sự tiến bộ thật sự của một người.
Năm sau, tôi đang nghĩ tới một chuyến working trip ở châu Âu cho team. Đi vài nước, trong vài tuần. Cùng học tập, trải nghiệm, mở mang góc nhìn, rồi mang năng lượng ấy về.
Để làm việc cùng tôi.
Làm việc cùng nhau.
Và làm việc cho chính cuộc đời riêng của họ.
Mười năm trước, tôi chưa từng nghĩ mình sẽ tạo ra một nơi thế này. Không hẳn là công ty truyền thống, không vận hành bằng mệnh lệnh, cũng chẳng phải nhóm làm việc tùy hứng. Nó giống như một trò chơi tôi tự thiết lập: nơi người ta được tự do nhưng không vô trách nhiệm, được có dự án riêng nhưng vẫn cam kết với việc chung, được phép lớn lên, lớn đến mức một ngày nào đó họ sẽ rời đi.
Và có vẻ, tôi đã làm được rồi.
Bài viết này tất nhiên không dùng để tuyển dụng. Nó chỉ là một sự trân trọng tôi dành cho những con người đã dũng cảm chọn đi cùng tôi qua những nốt thăng trầm.
Tôi không phải là một người quản lý giỏi theo kiểu truyền thống. Tôi không thích họp hành, không thích kiểm soát, không thích nhắc nhở, thậm chí không thích cả việc báo cáo. Nhưng tôi vẫn có công cụ để biết họ đang làm gì, làm tới đâu. Họ vẫn biết ngày mai thức dậy, tháng sau họ cần làm gì, phải đạt những mục tiêu nào. Tôi ghét việc biến công ty thành nơi người ta bước vào rồi dần đánh mất phần sống động nhất của mình.
Tôi chỉ đang cố gắng sống và làm việc theo những giá trị mà tôi tin tưởng. Để những người đồng hành cùng tôi nhìn vào và thấy rằng: họ hoàn toàn có thể sống tự do hơn, hạnh phúc hơn, vừa làm việc mình thích, vừa có không gian sáng tạo theo cách họ muốn.
Vai trò sâu sắc nhất của một người mentor, một người lãnh đạo, rốt cuộc không phải là giữ ai đó phụ thuộc vào mình mãi mãi.
Mà là thiết kế một bệ phóng đủ vững, để họ đi qua đó và trở thành một bản thể rộng hơn, tự do hơn, có năng lực hơn.
Đến một ngày, họ có thể không còn cần mình nữa.
Và nếu điều đó xảy ra, có lẽ, mình đã làm đúng.
-
Một chút ghi chú nhỏ:
Chia sẻ câu chuyện này, tôi không có ý định định chuẩn hay cổ xúy rằng đây là "mô hình lý tưởng" mà ai cũng có thể hay nên làm theo.
Tôi cũng không có ý định chê bai hay hạ thấp mô hình quản lý truyền thống.
Trong kinh doanh hay xây dựng đội ngũ, không có cái gọi là đúng sai tuyệt đối, chỉ có sự phù hợp. Bạn không thể mặc một chiếc áo của người khác rồi hy vọng nó vừa vặn với mình. Cách tôi vận hành công ty là sự phản chiếu của chính những giá trị, sự đánh đổi và giới hạn mà tôi chấp nhận. Nó là câu trả lời cho bài toán của riêng tôi.
Nên nếu bạn thấy hợp lý, hãy lấy đó làm một góc nhìn tham khảo. Nếu thấy kỳ cục hay rủi ro, cứ mỉm cười cho qua.
Cuối cùng thì, kinh doanh là trò chơi của riêng mỗi người, và luật chơi là do chính chúng ta thiết lập!
 ]
—-------------------
Sample 8
[Có một mô hình phát triển con người khá thú vị trong anthroposophy và giáo dục Waldorf, thường được gắn với Rudolf Steiner: Đời người có thể được quan sát qua những nhịp khoảng 7 năm.
Tôi dùng chữ “quan sát” rất có chủ ý.
Đây không phải một công thức cứng nhắc kiểu cứ đúng sinh nhật 28, 35 hay 42 tuổi là cuộc đời bạn tự động rẽ hướng. Nó cũng không phải tâm lý học thực chứng theo nghĩa mọi người đều phải phát triển theo cùng một lịch trình. Tôi thích nhìn nó như một bản đồ phản tư hơn: đủ gợi mở để ta soi chiếu, nhưng không nên dùng để đóng khung cuộc đời ai.
Steiner cho tôi một chiếc bản đồ về nhịp phát triển. Còn những người thầy khác, cho tôi những ngôn ngữ để định danh hành trình ấy:
+ Erik Erikson cho tôi một ngôn ngữ khác về những xung đột tâm lý xã hội mà con người cần đi qua.
+ Daniel Levinson nói về “life structure”, tức cấu trúc đời sống mà mỗi người xây nên trong từng giai đoạn trưởng thành.
+ Carl Jung nhìn nửa sau cuộc đời như một hành trình individuation, nơi con người không chỉ sống để thích nghi với bên ngoài, mà bắt đầu quay về tích hợp những phần sâu hơn của chính mình.
+ Robert Kegan thì cho rằng người trưởng thành không chỉ lớn lên bằng cách biết thêm nhiều thứ, mà bằng cách thay đổi cả cấu trúc tạo nghĩa của mình.
Nói đơn giản hơn: con người không chỉ đổi việc, đổi nghề, đổi thành phố hay đổi mối quan hệ. Sẽ có những giai đoạn, ta buộc phải đổi cách hiểu về chính mình.
Và đó là lý do tôi thích gọi những đoạn chuyển pha này là những cuộc thay da.
Không phải vì phiên bản cũ của mình sai mà là phiên bản đó chỉ được thiết kế phù hợp cho một đoạn đường cũ.
-------------------
Nếu mượn tinh thần của bản đồ 7 năm để soi vào đời sống hiện đại, tôi thấy giai đoạn 21 đến 28 tuổi thường là lúc nhiều người đi “thử đời”.
Ta thử nghề, thử yêu, thử sống độc lập, thử kiếm tiền, thử chứng minh mình có năng lực. Đây là giai đoạn rất nhiều năng lượng, rất nhiều lựa chọn, nhưng cũng rất dễ sống bằng một bản sắc đi mượn. Ta chọn thứ xã hội bảo là tốt. Chọn thứ gia đình thấy yên tâm. Chọn thứ thị trường đang trọng vọng. Chọn thứ khiến mình có cảm giác: Ít nhất mình đang đi đúng đường.
Nếu nhìn qua Erikson, đây là đoạn con người vừa thoát khỏi bài toán bản sắc của tuổi trẻ, vừa bước vào bài toán thân mật, cam kết và xây dựng các mối quan hệ người lớn. Nếu nhìn qua Levinson, đây là lúc ta bắt đầu dựng nên một cấu trúc đời sống đầu tiên: một nghề, một nhóm quan hệ, một nơi chốn, một hình dung sơ bộ về “tôi sẽ trở thành ai trong xã hội này”.
Nhưng đến khoảng 28 đến 35 tuổi, một câu hỏi khác bắt đầu nổi lên, âm thầm nhưng dai dẳng.
Nó không còn là: “Tôi có làm được không?”
Mà là: “Cái tôi đang làm có thật sự là của tôi không?”
Đây là giai đoạn rất nhiều người bắt đầu tỉnh ra khỏi những lựa chọn cũ. Họ nhận ra mình giỏi, nhưng không chắc mình đang đi đúng hướng. Họ có kinh nghiệm, nhưng chưa biết gọi tên năng lực lõi. Họ có thể kiếm tiền, nhưng vẫn thấy bản thân bị kéo lê trong một cấu trúc nghề nghiệp không còn phù hợp.
Herminia Ibarra, trong các nghiên cứu về chuyển đổi bản sắc nghề nghiệp, có một ý rất hay: Nhiều người không tìm thấy bản sắc nghề nghiệp mới bằng cách ngồi yên suy nghĩ cho thật kỹ rồi mới hành động. Họ tìm ra nó bằng cách thử các “provisional selves”, tức những phiên bản tạm thời của chính mình trong công việc mới, vai trò mới, cộng đồng mới, cách hiện diện mới.
-------------------
Điều này rất đúng với những gì tôi quan sát được ở các chuyên gia, founder, creator và solopreneur.
Câu chuyện chưa bao giờ là thiếu năng lực. Họ thiếu một không gian đủ an toàn để thử một phiên bản nghề nghiệp mới. Họ chưa biết mình có thể đi từ người làm chuyên môn sang người đóng gói chuyên môn. Từ người giải quyết vấn đề trong nội bộ tổ chức sang người bán năng lực giải quyết vấn đề đó cho thị trường. Từ một người được công nhận trong corporate sang một người có thể tự đứng vững bằng tài sản tri thức của mình.
Vấn đề của họ không chỉ là “Tôi nên làm nghề gì?”.
Vấn đề sâu hơn là: “Tôi có cho phép mình trở thành một kiểu người mới không?”
Và điều thú vị là phần lớn khách hàng tìm đến tôi cũng nằm ở chính đoạn này: 28 đến 42 tuổi.
Họ không phải những người mới bắt đầu từ số 0. Nhiều người đã đi làm 7, 10, 15 năm. Có người đã có chuyên môn rất tốt. Có người đã có doanh thu, có khách hàng, có danh tiếng, thậm chí có một sự nghiệp nhìn từ bên ngoài là rất ổn.
Nhưng bên trong họ bắt đầu có một câu hỏi rất khó chịu:
“Đây có thật sự là cuộc đời mình muốn tiếp tục sống thêm 10 năm nữa không?”
Trước đây, tôi hay gọi đây là khủng hoảng nghề nghiệp. Nhưng càng làm việc với nhiều người, tôi càng thấy từ “khủng hoảng” đôi khi chưa đủ chính xác.
William Bridges có một phân biệt rất đáng suy nghĩ: Thay đổi là thứ xảy ra bên ngoài, còn chuyển tiếp là thứ xảy ra bên trong. Bạn có thể đổi việc rất nhanh, nhưng bên trong vẫn chưa thật sự rời khỏi bản sắc cũ. Bạn có thể mở business riêng, nhưng vẫn vận hành bằng tâm thế của một người đi làm thuê. Bạn có thể gọi mình là founder, mentor, consultant, creator... nhưng hệ điều hành bên trong vẫn là người chờ được công nhận, được giao việc, được cho phép.
Một cuộc chuyển pha thật sự không bắt đầu khi ta đổi danh xưng. Nó bắt đầu khi ta buộc phải buông một cách hiểu cũ về chính mình.
Vì thế, có thể đó không chỉ là khủng hoảng. Có thể đó là một cuộc thay da.
Ở tuổi 25, ta có thể còn chịu được việc làm sai để học. Ta nhảy việc, thử ngành, cày đêm, làm nhiều, sai nhiều, sửa nhiều. Nhưng đến tuổi 32, ta bắt đầu thấy làm sai thêm vài năm nữa là quá đắt. Đến tuổi 38, ta hiểu cái giá thật sự không chỉ là tiền.
Nó là sinh lực. Là thời gian. Là sức khỏe. Là gia đình. Là cảm giác mình đang bị chính công việc của mình tiêu hao. Là cảm giác mình đã thành công theo một cách mà bản thân không còn muốn tiếp tục nữa.
-------------------
Từ những quan sát đó, tôi rút ra 4 bài học rất quan trọng:
#Bài học 1: Bạn đang lớn nhanh hơn cấu trúc cũ của mình
Nếu bạn đang ở một giai đoạn thấy mọi thứ từng đúng bỗng dưng không còn đúng nữa, đừng vội nghĩ mình yếu đuối, thiếu biết ơn hay quá tham lam. Có thể bạn chỉ đang lớn nhanh hơn cấu trúc cũ của mình.
Levinson gọi đó là lúc “life structure” cần được xem xét lại. Cấu trúc đời sống là cách ta sắp xếp công việc, tình yêu, gia đình, tham vọng, trách nhiệm, tiền bạc, cộng đồng và hình ảnh về chính mình vào cùng một đời sống. Một cấu trúc từng rất đúng ở giai đoạn này có thể trở nên chật chội ở giai đoạn khác.
Một công việc từng cho bạn cảm giác an toàn có thể trở thành cái lồng. Một kỹ năng từng giúp bạn kiếm tiền có thể trở thành cái bẫy. Một hình ảnh cá nhân từng giúp bạn được công nhận có thể trở thành bộ áo quá chật. Một mô hình kinh doanh từng giúp bạn sống sót có thể bắt đầu bòn rút chính bạn khi bạn muốn trưởng thành hơn.
Đó là lý do nhiều người rất khó giải thích cảm giác mắc kẹt của mình. Nhìn từ bên ngoài, họ đâu có gì để than. Họ có nghề, có tiền, có vị trí, có khách hàng, có một danh tính xã hội khá ổn. Nhưng bên trong, họ biết có điều gì đó không còn đúng nữa.
Cảm giác ấy không phải lúc nào cũng là dấu hiệu bạn nên bỏ hết để bắt đầu lại. Đôi khi, nó là dấu hiệu bạn cần nhìn lại cấu trúc mình đang sống trong đó: cách làm việc, cách kiếm tiền, cách dùng năng lực, cách định nghĩa thành công, cách cho phép công việc bước vào đời mình.
Không phải mọi cuộc thay da đều cần một cú đập bỏ. Nhưng cuộc thay da nào cũng cần một sự thành thật.
--
#Bài học 2: Phát triển là biết kiểm toán lại đời mình
Ở một số giai đoạn, phát triển không còn là học thêm, làm thêm, cố thêm. Phát triển là biết kiểm toán lại đời mình.
Kiểm toán xem năng lực nào thật sự là lõi.
Kiểm toán xem công việc nào đang tạo năng lượng, công việc nào đang lấy đi sinh lực.
Kiểm toán xem doanh thu hiện tại đến từ tài sản hay đến từ việc bạn phải liên tục có mặt.
Kiểm toán xem thương hiệu cá nhân của bạn đang phản ánh con người thật, hay chỉ phản ánh một phiên bản cũ từng rất giỏi sinh tồn.
Nếu dùng ngôn ngữ của Kegan, đây là lúc con người cần đi từ “socialized mind” sang “self-authoring mind”. Tức là đi từ một bản thân được viết bởi kỳ vọng của gia đình, tổ chức, thị trường và cộng đồng, sang một bản thân bắt đầu tự viết lấy nguyên tắc sống, định nghĩa thành công và cấu trúc nghề nghiệp của mình.
Rất nhiều người tưởng mình tự do vì không còn ai quản lý trực tiếp. Nhưng bên trong, họ vẫn bị quản lý bởi những tiêu chuẩn đi mượn. Phải thành công theo cách thị trường vỗ tay. Phải bán thứ người khác dễ hiểu. Phải giữ một danh tính đã được công nhận. Phải tiếp tục làm điều đang tạo tiền, dù điều đó đang âm thầm rút cạn sinh lực.
Khủng hoảng ở tuổi trưởng thành có thể đến vì ta làm được quá nhiều thứ, nhưng chưa biết thứ nào thật sự đáng trở thành con đường.
Đây là điều tôi thấy ở rất nhiều chuyên gia lâu năm rấ giàu năng lực. Họ thiếu một cấu trúc để năng lực ấy trở thành tài sản. Họ không thiếu kinh nghiệm. Họ thiếu một ngôn ngữ để gọi tên kinh nghiệm đó. Họ không thiếu giá trị. Họ thiếu một mô hình để giá trị ấy được đóng gói, truyền đạt và thương mại hóa một cách đúng đắn.
Vấn đề của họ không còn là "Tôi có giỏi không?".
Vấn đề là "Tôi sẽ dùng cái giỏi của mình để xây một đời sống như thế nào?".
Đây là một câu hỏi hoàn toàn khác. Nó không chỉ là câu hỏi nghề nghiệp. Nó là câu hỏi thiết kế đời sống.
--
#Bài học 3: Thành tựu cũ không được phép trở thành nhà tù mới
Giai đoạn 35 đến 42 thường mở ra một lớp chuyển hóa khác. Nhiều người đã có thành tựu nhưng bắt đầu mệt vì chính thành tựu của mình. Công việc có tiền nhưng bào mòn. Sản phẩm bán được nhưng không thành hệ thống. Nội dung vẫn ra đều nhưng ngày càng giống một cái máy phải vận hành không ngừng.
Nhìn từ bên ngoài, họ đang ổn. Nhưng bên trong, họ biết mình không thể tiếp tục sống bằng một mô hình được xây từ phiên bản cũ của chính mình.
Và đây là cái bẫy rất tinh vi của người có năng lực: Vì mình làm được, nên mình cứ tiếp tục làm. Vì mình kiếm được tiền từ thứ đó, nên mình ngại dừng lại. Vì người khác vẫn công nhận mình trong vai đó, nên mình không dám tháo bỏ vai diễn ấy xuống.
Nhưng một thành tựu từng giúp bạn tự hào cũng có thể trở thành nhà tù nếu bạn không còn được lớn lên bên trong nó. Có những người không bị mắc kẹt vì thất bại. Họ bị mắc kẹt vì chính thành công của mình.
Thành công tạo ra danh tính. Danh tính tạo ra kỳ vọng. Kỳ vọng tạo ra quán tính. Và quán tính, nếu không được kiểm toán thường xuyên, sẽ kéo ta đi rất xa khỏi đời sống mình thật sự muốn sống.
Jung từng nhìn giai đoạn giữa đời như một lời gọi quay vào trong. Nửa đầu cuộc đời, con người thường bận xây dựng cái tôi xã hội: nghề nghiệp, vị trí, gia đình, thành tựu, sự công nhận. Nhưng đến một lúc nào đó, nếu chỉ tiếp tục sống bằng lớp vỏ đã xây, ta sẽ bắt đầu thấy rỗng. Không phải vì thành tựu vô nghĩa, mà vì thành tựu không còn đủ để trả lời câu hỏi về ý nghĩa.
Đó là lúc một người không chỉ hỏi "Tôi đã đạt được gì?", mà bắt đầu hỏi "Tôi đã trở thành ai trong quá trình đạt được những điều đó?".
Câu hỏi này không dễ chịu. Nhưng nó cần thiết.
--
#Bài học 4: Trưởng thành là tái thương lượng với chính mình
Đến một giai đoạn nào đó, thứ con người cần không chỉ là thêm kiến thức mà cần một cuộc tái thương lượng với chính mình.
Tái thương lượng với tham vọng. Tái thương lượng với định nghĩa thành công. Tái thương lượng với cách kiếm tiền. Tái thương lượng với lượng công việc mình cho phép bước vào đời. Tái thương lượng với cái tôi từng được nuôi bằng sự công nhận, thành tích và khả năng chịu đựng.
Có những tham vọng từng rất đúng ở tuổi 25 nhưng bắt đầu trở nên thô ráp ở tuổi 35. Có những cách kiếm tiền từng rất hợp khi mình cần sống sót, nhưng không còn hợp khi mình muốn xây tài sản. Có những định nghĩa thành công từng giúp mình đi nhanh, nhưng không còn giúp mình đi sâu.
Bridges gọi giai đoạn chuyển tiếp là một hành trình có ba phần: kết thúc cái cũ, đi qua vùng trung gian, rồi mới bước vào khởi đầu mới. Điều khó nhất không phải lúc nào cũng là khởi đầu. Nhiều khi cái khó nhất là thừa nhận có một phần cũ của mình cần được kết thúc.
Không phải vứt bỏ. Không phải phủ nhận. Không phải quay lưng với tất cả những gì đã có. Mà là biết nói: Phiên bản ấy đã làm rất tốt rồi, nhưng nó không thể đưa mình đi hết đoạn đường phía trước.
Đây là lý do việc thiết kế lại đời sống nghề nghiệp ở tuổi trưởng thành thường rất khó.
Ta không chỉ đang đổi nghề. Ta đang đổi hệ điều hành.
Ta không chỉ đang chỉnh lại sản phẩm. Ta đang chỉnh lại cách dùng năng lực.
Ta không chỉ đang đổi mô hình kinh doanh. Ta đang đổi mối quan hệ giữa mình với tiền, thời gian, tự do, sức khỏe và ý nghĩa.
Và trong kinh doanh tri thức, đây là một bước ngoặt rất lớn:
. Một chuyên gia không chỉ cần hỏi: "Tôi biết gì?" Họ cần hỏi: "Tri thức nào của tôi có thể trở thành tài sản?"
. Một founder không chỉ cần hỏi: "Tôi bán gì?" Họ cần hỏi: "Mô hình nào cho phép tôi tạo giá trị mà không tiếp tục bào mòn chính mình?"
. Một creator không chỉ cần hỏi: "Tôi nên làm nội dung gì?" Họ cần hỏi: "Tôi đang xây một kênh để được nhìn thấy, hay đang xây một hệ sinh thái để được tin tưởng, lựa chọn và tự do hơn?"
Những câu hỏi này không dành cho người mới bắt đầu. Nó dành cho người đã đi đủ xa để hiểu rằng thêm một chút thành công nữa không chắc đã khiến đời mình đúng hơn.
Nếu bạn đang ở giai đoạn 28 đến 42 và thấy mình vừa biết ơn những gì đã có, vừa thấy không thể tiếp tục như cũ, có thể bạn không lạc đường.
Có thể bạn đang đứng trước một vòng đời mới.
Không phải vòng đời của việc cố thêm, chứng minh thêm, gồng thêm.
Mà là vòng đời của việc thiết kế lại.
Thiết kế lại chuyên môn thành tài sản.
Thiết kế lại công việc thành một cấu trúc sống được.
Thiết kế lại thương hiệu cá nhân để nó không chỉ phản ánh điều bạn từng làm tốt, mà còn mở đường cho con người bạn đang trở thành.
Câu hỏi không còn là: "Mình phải cố thêm bao nhiêu nữa?"
Câu hỏi đúng hơn có lẽ là: "Mình cần thiết kế lại đời mình như thế nào để 10 năm tới không chỉ có thành tựu, mà còn có tự do, chiều sâu và cảm giác đây thật sự là đời mình?"
]


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Tâm sự chuyện nghề-Case study.docx`

Tâm sự chuyện nghề của Comtor build lên BrSE
Chị ơi hôm nay buồn quá, tụt mood cả ngày. 
“Dev gửi cho em mỗi cái ảnh capture màn hình, chẳng nói năng gì thêm mà bắt e phải hiểu. Làm sao mà e hiểu được, phải nói rõ ra thì mới hiểu được chứ. “
Sau khi mình tâm sự sâu với em, thì câu chuyện vỡ lẽ ra thế này. 
Trước đó khách hàng đã gửi Database 1 lần, em Comtor cứ thế đẩy về team, ko quan tâm ngày tháng hay DB đó có gì, nội dung như thế nào. 
Hôm qua, khách hàng gửi DB mới nhất lần 2, team check thì thấy thiếu bảng nên đã xác nhận lại với dev lead và hỏi em ấy xem đã là DB mới nhất chưa mà lại thiếu. Bạn dev lead chỉ gửi lại thông tin như ảnh dưới và bảo dev member check lại. Đồng thời mention em ấy mà ko nói gì thêm. Em ấy ko hiểu là dev lead muốn nói điều gì, không trả lời mà chỉ gửi cho 1 cái ảnh như bên dưới ý là gì.
Nếu e ấy ko hiểu, thì khả năng sẽ bị kêu là ảnh rõ ràng như vậy mà ko hiểu. 
Vì e ko phải là dev, nên làm sao mà hiểu được. 
Mình đã phân tích cho em hiểu ý đồ của dev lead. Thật ra case này ko khó hiểu, nếu như mình để tâm thực sự vào dự án, thay vì chỉ làm ống truyền câu từ, khách gửi gì mình đẩy sang team là xong, mình ko quan tâm khách nói gì, gửi gì, team hỏi gì, xác nhận gì, mà mình cần thực hiện thêm 1 bước xử lý nữa, không hề khó, đó là tiếp nhận và hiểu thông tin, xử lý thông tin trước khi đẩy về team. Nếu em xử lý được bước này, em sẽ hiểu ảnh kia mà ko cần hỏi lại. 
Nhìn vào ảnh, dev lead muốn nói là bạn ấy đã import DB mới nhất khách gửi hôm qua. Em có thể nhìn vào nội dung tên DB trong ảnh là biết, và bạn ấy muốn dev check lại trên DB mới thay vì DB cũ. Em đừng báo khách vội vì dev chưa check DB mới import. 
Khi nào dev phản hồi lại có thực sự thiếu bảng ko thì e mới hỏi. 
E check lại DB cũ là ngày bao nhiêu đi. Mình hướng dẫn qua cách đọc ảnh trên. Do e không biết đọc, mình lại hướng dẫn e kĩ năng hỏi ChatGTP để ra vấn đề. Sau 1 hồi tâm sự nhiều nước mắt và em đã clear. Em vẫn thấy khổ vì làm việc với team toàn gửi capture code với ảnh terminal dev thao tác, bắt e phải tự hiểu. 
=> Chỗ này, mình thấy vấn đề nằm ở cả 2 phía: 1 là phía e cần lọc và xử lý thông tin/tìm hiểu những kiến thức cơ bản, 2 là vấn đề nằm phía dev lead, không thông cảm và ko đồng điệu với các bạn BrSE nontech build lên. Cơ bản các em ấy cũng ăn lương comtor mà thôi, và đang trong quá trình hoàn thiện phát triển. Nếu là dev lead hiểu câu chuyện, tính chất dự án mình chỉ cần brSE nontech như vậy, nên thêm 1 bước nữa là giải thích trả lời bằng text, bằng lời văn, chứ ko phải bắt đối phương tự hiểu 1 vấn đề mà họ chưa từng tiếp xúc. 
Phần liên quan đến dev lead, công ty cần triển khai mindset mới cho toàn PM leader hỗ trợ BrSE nontech để công việc trôi. Phần BrSE nontech nên tự mình giải đáp thắc mắc, học hỏi thêm và phải luôn có buocs xử lý thông tin


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\V1.2.brse-insight-report (QA).html`

Báo cáo Insight & Đề xuất Khoá học BrSE
*{box-sizing:border-box;margin:0;padding:0;}
:root{
  --ink:#16161e;
  --ink2:#2c2c3a;
  --muted:#6b6b82;
  --muted2:#9898aa;
  --border:#e4e4ec;
  --bg:#f8f8fc;
  --white:#ffffff;
  --blue:#2563eb;
  --blue-s:#eff6ff;
  --blue-b:#bfdbfe;
  --green:#16a34a;
  --green-s:#f0fdf4;
  --green-b:#bbf7d0;
  --amber:#d97706;
  --amber-s:#fffbeb;
  --amber-b:#fde68a;
  --red:#dc2626;
  --red-s:#fef2f2;
  --red-b:#fecaca;
  --purple:#7c3aed;
  --purple-s:#f5f3ff;
  --purple-b:#ddd6fe;
  --coral:#e55a2b;
  --coral-s:#fff4f0;
  --font:'Be Vietnam Pro',sans-serif;
  --jp:'Noto Serif JP',serif;
}
body{font-family:var(--font);background:var(--bg);color:var(--ink);font-size:14px;line-height:1.6;}

/* ── COVER ── */
.cover{
  background:var(--ink);
  padding:64px 72px 56px;
  position:relative;
  overflow:hidden;
}
.cover::before{
  content:'橋';
  position:absolute;right:-20px;top:-30px;
  font-family:var(--jp);font-size:280px;color:rgba(255,255,255,0.03);
  font-weight:700;line-height:1;pointer-events:none;
}
.cover-label{
  font-size:11px;font-weight:600;letter-spacing:2.5px;text-transform:uppercase;
  color:rgba(255,255,255,0.35);margin-bottom:20px;
}
.cover-title{
  font-size:38px;font-weight:800;color:#fff;
  line-height:1.15;letter-spacing:-1px;margin-bottom:12px;
}
.cover-title em{font-style:italic;font-family:var(--jp);font-weight:400;color:rgba(255,255,255,0.5);}
.cover-sub{font-size:15px;color:rgba(255,255,255,0.45);margin-bottom:40px;font-weight:400;}
.cover-meta{display:flex;gap:32px;flex-wrap:wrap;}
.cm-item{display:flex;flex-direction:column;gap:4px;}
.cm-label{font-size:10.5px;font-weight:600;letter-spacing:1px;text-transform:uppercase;color:rgba(255,255,255,0.3);}
.cm-val{font-size:14px;font-weight:600;color:rgba(255,255,255,0.8);}

/* ── LAYOUT ── */
.container{max-width:900px;margin:0 auto;padding:56px 40px 80px;}

/* ── SECTION HEADING ── */
.section{margin-bottom:56px;}
.sec-eyebrow{
  font-size:10.5px;font-weight:700;letter-spacing:2px;text-transform:uppercase;
  color:var(--muted2);margin-bottom:10px;display:flex;align-items:center;gap:10px;
}
.sec-eyebrow::after{content:'';flex:1;height:1px;background:var(--border);}
.sec-h2{font-size:24px;font-weight:800;color:var(--ink);letter-spacing:-.5px;margin-bottom:6px;}
.sec-desc{font-size:13.5px;color:var(--muted);line-height:1.7;margin-bottom:28px;}

/* ── STAT ROW ── */
.stat-row{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin-bottom:28px;}
.stat-card{background:var(--white);border:1px solid var(--border);border-radius:14px;padding:20px 18px;text-align:center;}
.stat-n{font-size:36px;font-weight:800;color:var(--ink);line-height:1;margin-bottom:6px;}
.stat-l{font-size:12px;color:var(--muted);line-height:1.4;}

/* ── INSIGHT GROUPS ── */
.insight-group{margin-bottom:16px;border-radius:14px;overflow:hidden;background:var(--white);border:1px solid var(--border);}
.ig-hdr{padding:16px 20px;display:flex;align-items:center;gap:12px;border-bottom:1px solid var(--border);}
.ig-stripe{width:4px;height:36px;border-radius:2px;flex-shrink:0;}
.ig-info{flex:1;}
.ig-name{font-size:14px;font-weight:700;color:var(--ink);}
.ig-sub{font-size:12px;color:var(--muted);margin-top:2px;}
.ig-count{font-size:12px;font-weight:600;padding:4px 12px;border-radius:20px;white-space:nowrap;}
.ig-body{padding:4px 0;}
.q-row{display:flex;gap:12px;padding:11px 20px;border-bottom:1px solid var(--bg);}
.q-row:last-child{border-bottom:none;}
.q-num{
  width:22px;height:22px;border-radius:6px;flex-shrink:0;
  font-size:10.5px;font-weight:700;display:flex;align-items:center;justify-content:center;
  background:var(--bg);color:var(--muted);margin-top:1px;
}
.q-text{font-size:13px;color:var(--ink2);line-height:1.55;}

/* ── KEY FINDINGS ── */
.findings{display:grid;grid-template-columns:1fr 1fr;gap:14px;margin-bottom:28px;}
.finding-card{background:var(--white);border:1px solid var(--border);border-radius:14px;padding:20px;}
.fc-tag{display:inline-block;font-size:10.5px;font-weight:700;padding:3px 10px;border-radius:6px;margin-bottom:12px;letter-spacing:.3px;}
.fc-title{font-size:14px;font-weight:700;color:var(--ink);margin-bottom:6px;}
.fc-desc{font-size:12.5px;color:var(--muted);line-height:1.6;}
.fc-qs{display:flex;gap:5px;flex-wrap:wrap;margin-top:10px;}
.fc-q{font-size:11px;font-weight:600;background:var(--bg);color:var(--muted);padding:2px 8px;border-radius:4px;}

/* ── ALERT ── */
.alert{display:flex;gap:14px;border-radius:12px;padding:16px 18px;margin-bottom:28px;border:1px solid;}
.al-icon{font-size:18px;flex-shrink:0;margin-top:1px;}
.al-title{font-size:13.5px;font-weight:700;color:var(--ink);margin-bottom:4px;}
.al-desc{font-size:13px;color:var(--muted);line-height:1.6;}

/* ── DIVIDER ── */
.divider{height:1px;background:var(--border);margin:48px 0;}

/* ── COURSE CONCEPT ── */
.concept-header{
  background:linear-gradient(135deg,#1e293b 0%,#0f172a 100%);
  border-radius:18px;padding:36px 40px;margin-bottom:28px;position:relative;overflow:hidden;
}
.concept-header::after{
  content:'BrSE';position:absolute;right:-10px;bottom:-20px;
  font-size:120px;font-weight:800;color:rgba(255,255,255,0.04);
  letter-spacing:-4px;line-height:1;
}
.ch-label{font-size:10.5px;font-weight:700;letter-spacing:2px;text-transform:uppercase;color:rgba(255,255,255,0.35);margin-bottom:12px;}
.ch-name{font-size:28px;font-weight:800;color:#fff;line-height:1.2;letter-spacing:-.5px;margin-bottom:8px;}
.ch-name em{font-style:italic;font-family:var(--jp);font-weight:400;color:rgba(255,255,255,0.5);}
.ch-tagline{font-size:14px;color:rgba(255,255,255,0.5);margin-bottom:24px;line-height:1.6;}
.ch-pills{display:flex;gap:8px;flex-wrap:wrap;}
.ch-pill{
  background:rgba(255,255,255,0.08);border:1px solid rgba(255,255,255,0.12);
  color:rgba(255,255,255,0.65);font-size:12px;font-weight:500;
  padding:5px 14px;border-radius:20px;
}

/* ── 2 TRACKS ── */
.tracks{display:grid;grid-template-columns:1fr 1fr;gap:14px;margin-bottom:28px;}
.track{background:var(--white);border:1.5px solid var(--border);border-radius:14px;overflow:hidden;}
.track-hdr{padding:18px 20px 14px;border-bottom:1px solid var(--border);}
.track-badge{display:inline-block;font-size:10.5px;font-weight:700;padding:3px 10px;border-radius:6px;margin-bottom:10px;}
.track-name{font-size:16px;font-weight:800;color:var(--ink);margin-bottom:4px;}
.track-who{font-size:12.5px;color:var(--muted);line-height:1.5;}
.track-body{padding:16px 20px;}
.tl{font-size:10.5px;font-weight:700;letter-spacing:1px;text-transform:uppercase;color:var(--muted2);margin-bottom:10px;}
.track-items{list-style:none;display:flex;flex-direction:column;gap:7px;}
.track-items li{font-size:12.5px;color:var(--ink2);padding-left:16px;position:relative;line-height:1.5;}
.track-items li::before{content:'→';position:absolute;left:0;font-size:11px;color:var(--muted2);}
.track-pain{
  margin-top:14px;padding:12px 14px;border-radius:8px;
  font-size:12.5px;font-style:italic;color:var(--muted);line-height:1.55;
  background:var(--bg);border-left:3px solid;
}

/* ── MODULES ── */
.modules{display:flex;flex-direction:column;gap:10px;margin-bottom:28px;}
.mod{background:var(--white);border:1px solid var(--border);border-radius:12px;overflow:hidden;}
.mod-hdr{display:grid;grid-template-columns:44px 1fr auto;align-items:center;gap:0;padding:0;}
.mod-num{
  width:44px;height:100%;display:flex;align-items:center;justify-content:center;
  font-size:13px;font-weight:700;color:var(--white);padding:16px 0;
}
.mod-info{padding:14px 16px;}
.mod-name{font-size:13.5px;font-weight:700;color:var(--ink);margin-bottom:3px;}
.mod-desc{font-size:12px;color:var(--muted);line-height:1.5;}
.mod-tags{display:flex;gap:5px;flex-wrap:wrap;margin-top:7px;}
.mod-meta{padding:14px 16px;text-align:right;white-space:nowrap;}
.mod-duration{font-size:12px;font-weight:600;color:var(--muted);}
.mod-track{font-size:11px;color:var(--muted2);margin-top:3px;}

/* ── TAG ── */
.tag{font-size:11px;font-weight:600;padding:2px 8px;border-radius:5px;}
.tag-blue{background:var(--blue-s);color:var(--blue);}
.tag-green{background:var(--green-s);color:var(--green);}
.tag-amber{background:var(--amber-s);color:var(--amber);}
.tag-red{background:var(--red-s);color:var(--red);}
.tag-purple{background:var(--purple-s);color:var(--purple);}
.tag-gray{background:var(--bg);color:var(--muted);}

/* ── ANSWERS TABLE ── */
.ans-table{width:100%;border-collapse:collapse;background:var(--white);border-radius:14px;overflow:hidden;border:1px solid var(--border);}
.ans-table th{background:var(--bg);font-size:11px;font-weight:700;color:var(--muted);text-transform:uppercase;letter-spacing:.8px;padding:11px 16px;text-align:left;border-bottom:1px solid var(--border);}
.ans-table td{padding:13px 16px;font-size:12.5px;color:var(--ink2);border-bottom:1px solid var(--bg);vertical-align:top;line-height:1.55;}
.ans-table tr:last-child td{border-bottom:none;}
.ans-table tr:hover td{background:var(--bg);}
.concern{font-size:12px;color:var(--muted);font-style:italic;margin-top:3px;}

/* ── KPI ── */
.kpi-row{display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-bottom:28px;}
.kpi-card{background:var(--white);border:1px solid var(--border);border-radius:12px;padding:18px;}
.kpi-phase{font-size:10.5px;font-weight:700;letter-spacing:1px;text-transform:uppercase;margin-bottom:8px;}
.kpi-north{font-size:13px;font-weight:700;color:var(--ink);margin-bottom:6px;}
.kpi-val{font-size:32px;font-weight:800;line-height:1;margin-bottom:6px;}
.kpi-desc{font-size:11.5px;color:var(--muted);line-height:1.5;}

/* ── FOOTER ── */
.report-footer{background:var(--ink);border-radius:16px;padding:28px 32px;display:flex;align-items:center;justify-content:space-between;flex-wrap:gap;}
.rf-left .rf-label{font-size:11px;color:rgba(255,255,255,0.3);letter-spacing:1px;text-transform:uppercase;margin-bottom:4px;}
.rf-left .rf-val{font-size:15px;font-weight:600;color:rgba(255,255,255,0.8);}
.rf-note{font-size:12px;color:rgba(255,255,255,0.25);max-width:320px;line-height:1.6;text-align:right;}

@media(max-width:700px){
  .cover{padding:40px 28px 36px;}
  .container{padding:36px 20px 60px;}
  .stat-row,.findings,.tracks,.kpi-row{grid-template-columns:1fr;}
  .cover-title{font-size:26px;}
  .sec-h2{font-size:20px;}
}
Báo cáo nội bộ · Nghiên cứu người dùng
Insight Khách Hàng &
Đề xuất Concept
Khoá học BrSE
Phân tích 20 câu hỏi từ khách hàng tiềm năng có N2 — đề xuất cấu trúc khoá học phù hợp
Đối tượng khảo sát
Có JLPT N2, đang tìm hiểu BrSE
Số câu hỏi
20 câu · 5 nhóm chủ đề
Mục đích
Định hình concept khoá học
Phiên bản
v1.0 · Tháng 4/2025
Phần 01 · Phân tích insight
Tổng hợp 20 câu hỏi từ khách hàng
Toàn bộ câu hỏi giữ nguyên ý nghĩa gốc, được phân nhóm theo 5 chủ đề để dễ phân tích và ưu tiên xử lý.
20
câu hỏi thu thập
5
nhóm chủ đề
7
câu hỏi về đãi ngộ & phúc lợi
4
câu hỏi về yêu cầu chuyên môn
Nhóm 1 — Yêu cầu chuyên môn & kỹ năng
Khách hàng cần biết mình đang đứng ở đâu so với yêu cầu thực tế
4 câu
1
Trình độ tiếng Nhật yêu cầu tối thiểu là gì? Có cần bằng chứng chỉ quốc tế không?
3
Chuyên về nghe dịch hay chỉ cần giao tiếp bình thường là được?
5
Có cần biết code chuyên sâu không? Hay chỉ cần biết sơ qua là được?
6
Kỹ năng cần có là gì? (phân tích nghiệp vụ?)
Nhóm 2 — Nội dung & phương thức làm việc
Khách hàng cần hình dung cụ thể công việc hàng ngày trông như thế nào
4 câu
2
Có file tổng hợp từ vựng hay dùng cho IT không? Nếu có các trường hợp ví dụ cụ thể trong công việc thì tốt.
4
Báo cáo cho bên VN bằng tiếng Việt hay cả Việt–Nhật? Tài liệu báo cáo làm bằng PowerPoint, Excel hay các phần mềm khác?
7
Có làm việc theo team không? Hay mỗi team chỉ cần 1 người biết tiếng Nhật hỗ trợ?
8
Đối với người mới làm BrSE khi có vấn đề không biết xử lý thì có người hỗ trợ không?
Nhóm 3 — Đào tạo & học tập
Khách hàng đang đánh giá xem khoá học có đáp ứng đúng nhu cầu phát triển của họ không
3 câu
9
Có được dạy kiến thức nền tảng cho IT không? Có chuyên về 1 mảng nào đó không? (ví dụ: làm app điện thoại, apps điều khiển phương tiện giao thông, nhà thông minh...)
10
Thời gian đào tạo có linh hoạt không? (học online hay offline, học ngày hay tối?)
11
Có được cấp chứng chỉ sau khi học xong không?
Nhóm 4 — Điều kiện & môi trường làm việc
Khách hàng đang cân nhắc tính phù hợp với cuộc sống cá nhân
5 câu
12
Thời gian làm việc thế nào? (đến công ty làm hay WFH?) Có yêu cầu laptop cá nhân hay sử dụng máy công ty cung cấp?
13
Có phải làm thứ 7 không? Nếu làm thì làm mấy buổi/tháng?
15
Có giới hạn độ tuổi tuyển dụng không?
16
Đi làm ở nội thành hay khu công nghiệp? Nếu xa thì có xe đưa đón không?
18
Lịch đi làm của công ty như thế nào? Có phải đi làm thứ 7 không? Nếu làm thì làm bao nhiêu ngày 1 tháng?
Nhóm 5 — Lương, đãi ngộ & phúc lợi
Nhóm câu hỏi nhiều nhất — khách hàng đang tính toán tổng thu nhập thực nhận
4 câu
14
Ngoài lương thì còn có các trợ cấp gì không? (ngoại ngữ, đi lại, ăn trưa?)
17
Lương đầu vào là bao nhiêu? Làm thêm có được tính lương ngoài giờ không? Có hay phải làm thêm không? Công ty đóng bảo hiểm bao nhiêu %?
19
Ngoài làm việc ra thì công ty có chương trình gì cân bằng cuộc sống cho nhân viên không? (liên hoan, du lịch, hoạt động cho gia đình nhân viên...)
20
Có được khám bệnh hàng năm không? Công ty có hoạt động gì giúp nhân viên giảm thiểu các bệnh văn phòng như đau lưng, thoái hoá khớp cổ... không?
Phần 02 · Nhận định
4 điểm nổi bật từ insight
Các pattern quan trọng cần lưu ý khi thiết kế khoá học và chiến lược tiếp cận.
⚠ Nỗi lo lớn nhất
Thứ 7 và giờ làm được hỏi hai lần
Câu hỏi về thứ 7 xuất hiện ở câu 13 và lặp lại ở câu 18 theo cách khác nhau. Đây không phải hỏi cho có — khách hàng đang thực sự lo ngại về cân bằng cuộc sống. Cần giải đáp rõ và sớm.
Câu 13
Câu 18
💡 Nhận thức chưa rõ
Chưa phân biệt được BrSE Tech và Non-tech
Câu hỏi "có cần code không" và "kỹ năng cần gì" cho thấy khách hàng chưa biết con đường nào phù hợp với mình. Đây là cơ hội để khoá học định vị rõ 2 track ngay từ đầu.
Câu 5
Câu 6
📊 Đang tính toán ROI
Quan tâm tổng thu nhập, không chỉ lương cơ bản
7/20 câu hỏi liên quan đến tiền — trợ cấp, OT, bảo hiểm, phúc lợi. Khách hàng đang so sánh tổng thu nhập thực nhận với công việc hiện tại trước khi quyết định chuyển nghề.
Câu 14
Câu 17
Câu 19
Câu 20
✅ Tín hiệu tốt
Hỏi về tài liệu học — sẵn sàng bắt đầu ngay
Câu hỏi xin file từ vựng IT kèm ví dụ thực tế (câu 2) cho thấy khách hàng không chỉ tìm hiểu chung — họ đang ở giai đoạn sẵn sàng bắt đầu học nếu được cung cấp tài liệu phù hợp.
Câu 2
Câu 9
Câu 11
💡
Nhận định tổng thể: Khách hàng đang ở giai đoạn "cân nhắc nghiêm túc", chưa phải "đã quyết định"
Câu hỏi thiên về điều kiện làm việc và đãi ngộ nhiều hơn nội dung học cho thấy họ đang đánh giá xem BrSE có phải lựa chọn đúng không — trước khi hỏi học cái gì. Khoá học cần trả lời câu hỏi "tại sao nên làm BrSE" trước khi đi vào "học như thế nào".
Phần 03 · Đề xuất concept
Concept khoá học BrSE
Được thiết kế trực tiếp từ các câu hỏi trên — mỗi module trả lời ít nhất 1 nỗi lo cụ thể của khách hàng.
Tên khoá học đề xuất
Lộ trình BrSE
Thực chiến
từ Nhật ngữ đến Bridge Engineer
Khoá học duy nhất có 2 track rõ ràng — dành cho người có nền Nhật ngữ (N2+)
muốn trở thành BrSE trong môi trường IT Nhật một cách có hệ thống
Online linh hoạt
2 track: Tech & Non-tech
Tài liệu thực chiến
Cấp chứng chỉ
Mentor 1-1
⚙ Track 1 — BrSE Tech
Từ Dev / Tester → BrSE
Đã có nền lập trình, có N2–N1. Cần thêm kỹ năng bridge và tiếng Nhật IT chuyên ngành.
Điều kiện đầu vào
Kinh nghiệm Dev / Tester 1 năm trở lên
Tiếng Nhật JLPT N3 trở lên
Hiểu cơ bản quy trình phát triển phần mềm
"Mình code được, tiếng Nhật tạm ổn — nhưng không biết BrSE thực sự làm gì và bắt đầu từ đâu."
🇯🇵 Track 2 — BrSE Non-tech
Từ Nhật ngữ → BrSE
Nhật ngữ tốt (N2+), ít hoặc chưa có kinh nghiệm IT. Cần kiến thức IT nền tảng và kỹ năng bridge.
Điều kiện đầu vào
Tiếng Nhật JLPT N2 trở lên
Không yêu cầu biết lập trình
Có khả năng giao tiếp tốt, tư duy logic
"Tiếng Nhật mình tốt nhưng không biết IT — công ty Nhật có nhận không? BrSE có cần phải code không?"
Cấu trúc chương trình — 6 module
M1
BrSE là gì — Vai trò, lộ trình và cơ hội nghề nghiệp
Giải đáp toàn bộ câu hỏi "tại sao": lương, career path, môi trường làm việc thực tế. Khách hàng tự xác định track phù hợp với bản thân.
Cả 2 track
Trả lời câu 1, 5, 6, 7
2 tuần
Bắt buộc
M2
Tiếng Nhật IT thực chiến — Từ vựng, keigo và tài liệu kỹ thuật
Bộ từ vựng IT theo domain (banking, logistics, app...) kèm ví dụ tình huống thật. Cách đọc spec, viết email, dẫn họp bằng tiếng Nhật.
Nhấn mạnh Track 2
Trả lời câu 2, 3, 4
3 tuần
Cốt lõi
M3
Kiến thức IT nền tảng dành cho BrSE Non-tech
Không cần học code — cần hiểu đủ để bridge hiệu quả: quy trình phát triển phần mềm, các loại testing, database cơ bản, đọc tài liệu kỹ thuật.
Track 2
Trả lời câu 5, 9
3 tuần
Track 2 only
M4
Kỹ năng bridge — Phân tích nghiệp vụ, quản lý kỳ vọng, xử lý conflict
Kỹ năng mềm quan trọng nhất của BrSE: viết tài liệu báo cáo (PowerPoint/Excel), làm cầu nối giữa khách Nhật và dev Việt, xử lý tình huống khó.
Cả 2 track
Trả lời câu 4, 6, 7, 8
3 tuần
Cốt lõi
M5
Thực chiến theo domain — Case study dự án thật
Chọn 1 trong 3 domain: Banking/Finance · Logistics/E-commerce · Smart Device/IoT. Thực hành với tài liệu và tình huống thật từ các dự án Nhật–Việt.
Cả 2 track
Trả lời câu 9
2 tuần
Chuyên sâu
M6
Chuẩn bị đi làm — CV, phỏng vấn và tuần đầu làm BrSE
Viết CV BrSE chuẩn Nhật, luyện phỏng vấn với câu hỏi thật, cấp chứng chỉ hoàn thành. Kết nối với cộng đồng BrSE alumni để hỗ trợ sau khoá.
Cả 2 track
Trả lời câu 8, 11
1 tuần
Tốt nghiệp
Khoá học trả lời trực tiếp các nỗi lo của khách hàng
Câu hỏi khách hàng
Khoá học giải quyết bằng cách nào
Module
Cần trình độ tiếng Nhật tối thiểu nào?
Câu 1
Mô tả rõ điều kiện đầu vào theo từng track. Track 2 yêu cầu N2 — phù hợp với khách hàng hiện tại.
M1
Có file từ vựng IT kèm ví dụ thực tế?
Câu 2
Module 2 cung cấp bộ từ vựng IT theo domain, có ví dụ câu trong tình huống thật (họp, email, ticket).
M2
Có cần code chuyên sâu không?
Câu 5
Track 2 không yêu cầu code. Module 3 dạy đủ kiến thức IT để bridge hiệu quả mà không cần lập trình.
M3
Người mới có được hỗ trợ không?
Câu 8
Mentor 1-1 trong suốt khoá. Cộng đồng alumni hỗ trợ sau khi tốt nghiệp. Không bị "thả trôi".
M4, M6
Đào tạo có linh hoạt không?
Câu 10
100% online, học theo tốc độ cá nhân. Video học lại được. Live session tối 2 buổi/tuần để không ảnh hưởng giờ làm.
Toàn khoá
Có cấp chứng chỉ không?
Câu 11
Chứng chỉ hoàn thành khoá học. Có thể dùng trong CV khi apply BrSE.
M6
Chuyên về domain nào?
Câu 9
Module 5 cho phép chọn 1 trong 3 domain: Banking · Logistics · Smart Device/IoT.
M5
Phần 04 · Mục tiêu
North Star Metric theo giai đoạn
Từ insight này đến khi khoá học vận hành ổn định — 3 mốc đo lường quan trọng nhất.
Tháng 1–2 · Xây trust
Waitlist đăng ký
50
Người đăng ký danh sách chờ khoá học. Ưu tiên từ nhóm có N2 như khách hàng này.
Tháng 3–4 · Launch
Học viên đầu tiên
20
Học viên khoá pilot. Đủ để validate curriculum và thu thập feedback chỉnh sửa trước khi scale.
Tháng 5–6 · Tối ưu
Tỷ lệ giới thiệu
40%
Học viên giới thiệu người quen. Chỉ số sức khoẻ dài hạn — khoá tốt thì học viên tự trở thành kênh marketing.
Phần 05 · Insight bổ sung
Khó khăn thực tế & Mong muốn học cụ thể
Insight bổ sung từ cùng khách hàng — đây là lớp thông tin sâu hơn, phản ánh đúng pain point trong công việc BrSE hàng ngày, không phải câu hỏi tuyển dụng.
🔔
Đây là insight có giá trị nhất trong toàn bộ dữ liệu thu được
Khác với 20 câu hỏi trước phần lớn là hỏi về điều kiện tuyển dụng — phần này phản ánh
trải nghiệm thật trong công việc
. Người này đã hoặc đang làm BrSE và đang gặp khó khăn cụ thể. Đây chính xác là nội dung cần thiết kế khoá học.
Nhóm A — Khó khăn đang gặp phải
Ngôn ngữ & Giao tiếp
Rào cản cơ bản nhất — ảnh hưởng trực tiếp đến hiệu quả công việc
3 điểm
A
Ngôn ngữ chưa tốt — chưa biết nên dùng ngữ pháp, từ vựng, câu văn nào để truyền đạt đúng ý
B
Nghe hiểu chưa tốt — không nghe kịp, người Nhật nói mơ hồ hoặc nói nhanh
C
Chưa diễn đạt được theo kiểu business — lịch sự, chuyên nghiệp, đúng ngữ cảnh công việc
Kỹ năng Bridge thực chiến
Không phải vấn đề tiếng Nhật — là vấn đề xử lý tình huống
2 điểm
A
Trình bày thế nào để ngắn gọn — đủ ý — rõ ràng trong văn phòng Nhật
B
Cách nói tránh làm mất lòng, tránh bị đánh giá tiêu cực trong văn hoá Nhật
Lăn tăn trong công việc hàng ngày
Các tình huống cụ thể chưa biết xử lý — đây là nội dung khoá học cần giải quyết trực tiếp
3 tình huống
1
Khi muốn hỏi hoặc đề xuất:
không biết mở đầu như thế nào cho đúng ngữ cảnh và lịch sự
2
Cách nói giảm nói tránh mà không làm sai nội dung:
ví dụ thay vì nói thẳng できません thì diễn đạt thế nào để lịch sự nhưng vẫn đúng nghĩa
3
Nhận yêu cầu và truyền đạt lại cho team:
nên dịch sát tiếng Nhật hay truyền đạt theo cách hiểu của mình? Nếu hiểu sai dẫn đến làm sai yêu cầu
Nhóm B — Muốn được học cụ thể
Ngữ pháp theo tình huống cụ thể
Không muốn học ngữ pháp trừu tượng — muốn mẫu câu dùng được ngay
3 case
1
Câu ngữ pháp khi
báo cáo tiến độ
với khách Nhật
2
Câu ngữ pháp khi
muốn xác nhận
yêu cầu hoặc thông tin
3
Câu ngữ pháp khi
nhờ vả / xin thêm thông tin
: log, database, tài liệu...
Mẫu câu trình bày thực chiến
Những câu dùng hàng ngày trong văn phòng IT Nhật — học viên đưa ví dụ cụ thể
6 mẫu
→
Liên quan tới... / Ở tại màn hình, chức năng...
→
Tôi hiểu rằng... / Tôi đang băn khoăn về...
→
Chúng tôi dự định sẽ làm như này...
→
Như dưới đây / Như ví dụ dưới đây / Xét về...
→
Nơi xảy ra: tại phạm vi, tại màn hình, tại chức năng...
→
Cách trình bày viết và nói có những lưu ý gì?
Từ vựng IT thường dùng
Từ vựng theo ngữ cảnh thực tế — không phải danh sách từ điển chung chung
Nền tảng
→
Các từ vựng hay được sử dụng trong môi trường IT — đặc biệt trong giao tiếp với khách Nhật hàng ngày
Nhóm C — Kỳ vọng cụ thể về Mentor
Đây là insight quan trọng nhất để thiết kế phần Mentor trong khoá học
Nội dung mentor cần có
→
Tình huống thường xuyên gặp: làm rõ yêu cầu, báo cáo, confirm spec
→
Ngữ pháp và từ vựng theo tình huống thực tế
→
Cách trình bày và đưa ra vấn đề đúng ngữ cảnh
Hình thức luyện tập
→
Practice theo tình huống thực tế
→
Luyện nói và viết trong ngữ cảnh IT
→
Nghe và truyền đạt lại bằng tiếng Nhật
Kỳ vọng về feedback
→
Được review cách nói và cách viết
→
Được chỉnh sửa trực tiếp
→
Feedback cụ thể: sai ở đâu, sửa thế nào
✅ Xác nhận nhu cầu thật
Pain point rõ ràng hơn nhiều so với 20 câu hỏi đầu
Không còn hỏi về lương hay WFH — đây là người đang thực sự làm việc và đang gặp khó khăn cụ thể trong từng tình huống. Nhu cầu học là có thật và cấp thiết.
💡 Điểm vàng cho khoá học
Tình huống "dịch sát hay diễn đạt theo ý hiểu" là chủ đề khoá học đắt giá
Đây là vấn đề cốt lõi của BrSE mà không sách giáo khoa nào dạy. Ai giải quyết được vấn đề này bằng nội dung thực chiến — người đó có lợi thế cạnh tranh lớn nhất.
⚡ Thiết kế khoá học ngay từ đây
Mẫu câu theo tình huống là sản phẩm miễn phí đầu tiên có thể làm ngay
Học viên đã đưa sẵn 6 mẫu câu muốn học. Làm bộ 30–50 mẫu câu IT tiếng Nhật theo tình huống thực chiến — đây là lead magnet tốt nhất để thu waitlist.
🎯 Định hình phần Mentor
Học viên không cần mentor giải thích lý thuyết — cần người review và sửa bài thực tế
Kỳ vọng rất cụ thể: practice theo tình huống, được review, được sửa, được biết sai ở đâu. Đây là mô hình coaching 1-1 — không phải giảng dạy trên lớp.
Tài liệu nội bộ
Báo cáo Insight & Concept Khoá học BrSE · v1.1
Cập nhật v1.1: Bổ sung insight chi tiết về khó khăn thực tế và mong muốn học cụ thể từ cùng khách hàng.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\[FB] BrSE_Content Plan.xlsx`

## Sheet: Định hướng chung
KẾ HOẠCH XÂY DỰNG NỘI DUNG FANPAGE
ĐỐI TƯỢNG MỤC TIÊU | Người có tiếng Nhật muốn làm BrSE
Comtor đã làm trong ngành muốn phát triển lên BrSE
Lên plan mở bán khóa live,
CHIẾN LƯỢC NỘI DUNG | Nội dung được chia thành 3 trụ cột chính,
Kiến thức & vai trò | Câu chuyện/Kinh nghiệm thực tế | Lộ trình
Mục đích | Xây dựng uy tín chuyên môn, người đọc follow vì học được điều gì đó cụ thể, rõ ràng | Người đọc share, cảm thấy được kết nối vì có trải nghiệm đúng với KH mục tiêu | Mục tiêu thu lead, tạo chuyển đổi qua các tương tác bài đọc, đăng ký workshop
MỤC TIÊU KỲ VỌNG | Tạo bài đăng đều đặn, đạt ít nhất 10b trong tháng đầu tiên
Tăng 100 followers
## Sheet: Content Plan
FACEBOOK - CONTENT PLAN (4 TUẦN)
Ngày | Done | Trụ nội dung | Chủ đề | Trạng thái | Link bài viết
Tuần 1
Thứ 2 | False | Tại sao mình lập kênh này — câu chuyện từ kinh nghiệm thực tế | Lý do lập kênh
Thứ 5 | False | Tiếng Nhật giao tiếp tốt vào BrSE như thế nào
Tuần 2
Thứ 2 | False | Lương BrSE thực tế ở Việt Nam — con số mình biết sau [X năm] trong nghề
Thứ 4 | False | BrSE Non-tech là vai trò gì? Tại sao thị trường cần? — Câu trả lời từ người trong ngành
Thứ 6 | False | BrSE khác Dev, Comtor, PM ở điểm nào từ góc nhìn thực tế?
Tuần 3
T2 | False | 3 sai lầm mình thấy ứng viên BrSE hay mắc khi phỏng vấn
T4 | False | Kỹ năng quan trọng nhất của BrSE không ai dạy?
T6 | False | Checklist: Bạn cần gì để trở thành BrSE?
Tuần 4
Thứ 2 | False | Case study: Lần đầu xử lý conflict giữa dev Việt và khách Nhật — mình đã làm gì?
Thứ 4 | False | Mình đang xây khoá học BrSE — bạn muốn học gì nhất?
## Sheet: Kho ý tưởng
STT | Done | Trụ nội dung | Chủ đề | Nội dung chính | Trạng thái | Link bài viết
False | Kiến thức & vai trò | Domain nào đang cần BrSE nhất?
False | Các dự án phổ biến BrSE hay tham gia là?
False | BrSE cần JLPT mấy để đi làm?
False | Carrer Path của BrSE trong 3-5 năm
False | Công ty Nhật tuyển BrSE - họ thực sự cần gì?
False
False
False | Case thực tế | Sai lầm mình mắc trong dự án đầu làm BrSE?
False | Xử lý conflict khách Nhật & Team Việt
False | 3 sai lầm ứng viên BrSE hay mắc khi phỏng vấn
False | Hành trình từ (Vị trí cũ) đến BrSE
False
False
False
False
False | Lộ trình & khoá học | Cách build Portfolio khi chưa có kinh nghiệm làm BrSE?
False | Roadmap học từ vựng IT từ con số 0
False | Lộ trình 12 tháng từ N2 JLPT - BrSE Nontech
False | Tool và tài liệu mình dùng hàng ngày khi làm BrSE
False | AI hỗ trợ thế nào trong công việc BrSE
False
False
False


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\kỹ thuật xử lý khách hàng khó tính-nháp.docx`

Các kỹ thuật xử lý khách hàng khó tính sử dụng các kỹ thuật giao tiếp tích cưc, trong môi trường kinh doanh hiện đại 
Các kỹ năng được dạy trong khóa học:
Kỹ năng giao tiếp hiệu quả: Sử dụng ngôn ngữ và âm điệu phù hợp.
Kỹ năng lắng nghe: Hiểu rõ nhu cầu và mong muốn của khách hàng.
Kỹ năng xử lý phản hồi: Đón nhận và giải quyết phê bình từ khách hàng một cách tích cực.
Kỹ năng quản lý cảm xúc: Giữ bình tĩnh trong tình huống căng thẳng.
Kỹ năng thuyết phục: Thuyết phục khách hàng một cách tinh tế và hiệu quả.
Cách áp dụng những kiến thức này trong công việc của bạn (làm việc với khách hàng Nhật):
Sử dụng ngôn ngữ lịch sự và trang trọng, vì văn hóa Nhật Bản rất coi trọng phép lịch sự.
Lắng nghe cẩn thận và thể hiện sự tôn trọng khi giao tiếp, bởi người Nhật thường có xu hướng giao tiếp gián tiếp.
Nếu nhận phản hồi hoặc phê bình, hãy đón nhận một cách hòa nhã và tìm cách giải quyết nhanh chóng.
Giữ sự điềm tĩnh, ngay cả khi khách hàng không hài lòng. Điều này sẽ giúp bạn duy trì sự tôn trọng và chuyên nghiệp.
Thuyết phục khách hàng bằng các luận điểm rõ ràng và có dữ liệu hỗ trợ, vì khách hàng Nhật thường chú trọng đến sự logic và chi tiết.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Ý tưởng bài viết hoặc bài học_.docx`

Chào bạn, với vai trò là một chuyên gia thiết kế chương trình học (Instructional Designer), tôi đã phân tích câu chuyện 15 năm làm nghề của bạn — từ một Comtor "không thật sự hiểu" bản chất hệ thống đến một BrSE làm chủ công nghệ nhờ AI.
Dưới đây là 8 ý tưởng workshop được thiết kế theo tiêu chí M.V.W (Minimum Viable Workshop): tập trung vào một vấn đề siêu nhỏ, thực hiện trong 90–120 min và có kết quả ngay lập tức.
1. Quy trình 4 bước "phá băng" dự án mới dành cho BrSE Non-tech
Vấn đề giải quyết: Sự bế tắc và loay hoay khi bị "ném" vào một đống tài liệu dự án mà không biết bắt đầu từ đâu.
Kết quả đạt được: Học viên tự lập được một bản kế hoạch tìm hiểu dự án cá nhân (Self-plan) gồm: Từ vựng hệ thống, Nghiệp vụ, Function List và Screen Design.
Tại sao chọn: Đáp ứng đúng nỗi đau "không có bản đồ rõ ràng" mà bạn từng gặp phải.
2. Cursor AI: Biến BrSE "mù tech" thành người đọc hiểu Code trong 90 min
Vấn đề giải quyết: Cảm giác "biết là sai nhưng không biết giải thích" vì thiếu kiến thức kỹ thuật nền tảng.
Kết quả đạt được: Học viên biết cài đặt Cursor IDE và sử dụng AI để giải thích luồng dữ liệu (API, DB) của một tính năng cụ thể.
Tại sao chọn: Tận dụng "người thầy kiên nhẫn" AI để xóa bỏ khoảng cách kỹ thuật cho người trái ngành.
3. Tuyệt chiêu "Dịch ý - Không dịch lời" khi tiếp nhận yêu cầu từ khách Nhật
Vấn đề giải quyết: Lỗi "ống truyền" — chỉ truyền đạt câu chữ mà không xử lý ngữ cảnh, dẫn đến team Dev hiểu sai.
Kết quả đạt được: Hoàn thành bài tập bóc tách 1 yêu cầu mơ hồ của khách thành 5 thành phần: Hiện trạng, Mong muốn, Phản biện, Câu hỏi làm rõ và Mô tả cho Dev.
Tại sao chọn: Đây là kỹ năng cốt lõi giúp BrSE nâng tầm từ "người truyền tin" lên "người điều phối".
4. Xây dựng "Kho Skill" tự động hóa báo cáo Daily/Weekly cho BrSE
Vấn đề giải quyết: Tốn quá nhiều thời gian cho các tác vụ lặp lại như viết email, báo cáo tiến độ, tóm tắt biên bản cuộc họp.
Kết quả đạt được: Học viên thiết lập được bộ Prompt/Skill mẫu trên AI để tạo báo cáo nhanh và chuyên nghiệp theo chuẩn Nhật.
Tại sao chọn: Giải quyết bài toán tăng Productivity mà bạn đã thực chứng.
5. Kỹ năng "Hỏi để hiểu": Cách BrSE Non-tech đặt câu hỏi khiến Dev muốn trả lời
Vấn đề giải quyết: Xung đột giữa BrSE và Dev khi BrSE không biết cách hỏi hoặc hỏi những câu quá ngây ngô gây ức chế cho team.
Kết quả đạt được: Nắm vững cấu trúc hỏi Q&A logic: Bối cảnh -> Vấn đề -> Giả thuyết -> Câu hỏi.
Tại sao chọn: Xử lý trực tiếp vấn đề "mất đồng điệu" giữa phía quản lý và kỹ thuật.
6. 60 min tạo Prototype "chữa cháy" khi khách hàng yêu cầu gấp
Vấn đề giải quyết: Khó khăn trong việc diễn đạt ý tưởng hệ thống bằng lời nói khiến khách hàng khó hình dung.
Kết quả đạt được: Sử dụng AI (như Gamma hoặc Cursor) để dựng một bản thảo UI/UX cơ bản (Mockup/Prototype) để khách hàng feedback ngay.
Tại sao chọn: Giúp BrSE chủ động trong khâu Upstream và "chốt" yêu cầu nhanh hơn.
7. Checklist kiểm soát chất lượng (Testing) dành riêng cho BrSE/Comtor
Vấn đề giải quyết: BrSE không biết test gì ngoài việc check câu chữ, dẫn đến sản phẩm bàn giao vẫn còn lỗi logic cơ bản.
Kết quả đạt được: Xây dựng được Checklist test luồng chính (Normal case) và biết cách sử dụng AI để hỗ trợ verify báo cáo điều tra lỗi từ Dev.
Tại sao chọn: BrSE đóng vai trò là "lớp thịt" quyết định chất lượng cuối cùng của món ăn.
8. BrSE Career Path: Lộ trình từ 10M đến 50M cho người xuất phát điểm tiếng Nhật
Vấn đề giải quyết: Sự mơ hồ về tương lai của nghề BrSE trước làn sóng AI và không biết cần học gì để tăng lương.
Kết quả đạt được: Tự vẽ được "Bản đồ kỹ năng" cá nhân và xác định được mình thuộc track nào (Tech hay Non-tech) để tập trung bồi dưỡng.
Tại sao chọn: Trả lời trực tiếp câu hỏi "Có nên đi tiếp không?" của rất nhiều bạn trẻ hiện nay.
Nguồn:
1. Lí do lập kênh_Done
3. Tiếng Nhật giúp bạn đi vào cuộc chơi_Nháp
BrSE Lý Thuyết Nghề
Input tạo tài liệu khóa BrSE
4. Khó khăn lớn nhất và ngộ nhận của thị trường-nháp
Tâm sự chuyện nghề-Case study
AI giúp gì cho BrSE-Nháp
Workshop 1
Ý tưởng cho workshop
BrSE sẽ lỗi thời chứ?
QuynhNga_Workbook-mini-challenge-workshop_ThuAki.docx
2. FAQ: Tiếng Nhật giao tiếp tốt vào BrSE IT như thế nào?_Done
V1.2.brse-insight-report (QA).html


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Ý tưởng về bài viết.docx`

Câu chuyện về nhân vật, hành trình luôn đi theo luồng 4 bươcs: xuất phát- thử thách - giải pháp- trưởng thành. 
đóng gói 3 công thức viết bài (Templates) mà các copy writer thường xuyên sử dụng. Đây là những dạng bài viết an toàn, khiêm tốn nhưng cực kỳ hiệu quả để xây dựng niềm tin chuyên gia. (Tham khảo nguồn: Linh Phan trên substack)
Dưới đây là 3 công thức viết bài (templates) rất phổ biến mà copywriter và chuyên gia nội dung thường dùng để xây dựng uy tín chuyên môn (expert authority).
 Đây là những dạng bài an toàn, khiêm tốn, không phô trương nhưng tạo niềm tin rất tốt.
1. Template 1: “Sai lầm phổ biến mà nhiều người mắc phải”
Cấu trúc
Nêu vấn đề / niềm tin phổ biến

Chỉ ra sai lầm

Giải thích vì sao sai

Đưa ra cách làm đúng

Kết luận + bài học

Template viết bài
Nhiều người nghĩ rằng: [niềm tin phổ biến].
Nhưng trong thực tế, điều này thường dẫn đến:
- [hệ quả 1]
- [hệ quả 2]
Sai lầm nằm ở chỗ: [giải thích].
Thay vào đó, cách hiệu quả hơn là:
1. [cách làm đúng 1]
2. [cách làm đúng 2]
3. [cách làm đúng 3]
Bài học rút ra:
[kết luận ngắn gọn].
Ví dụ
Sai lầm khi học tiếng Nhật
Nhiều người nghĩ rằng phải học thật nhiều từ vựng thì mới giỏi tiếng Nhật.
Nhưng thực tế điều này thường dẫn đến:
Học nhanh quên nhanh

Không dùng được trong công việc

Sai lầm nằm ở chỗ: từ vựng không gắn với ngữ cảnh.
Cách hiệu quả hơn là:
Học từ vựng theo tình huống thực tế

Học qua tài liệu thật (email, tài liệu dự án)

Luyện dịch và phản xạ

Bài học rút ra:
 Chất lượng ngữ cảnh quan trọng hơn số lượng từ vựng.
2. Template 2: “Tôi từng nghĩ… nhưng sau đó tôi nhận ra…”
Đây là dạng bài khiêm tốn + rất dễ tạo sự đồng cảm.
Cấu trúc
Quan điểm cũ của bạn

Trải nghiệm thực tế

Điều bạn nhận ra

Bài học

Template viết bài
Trước đây tôi từng nghĩ rằng:
[quan điểm cũ].
Nhưng sau khi [trải nghiệm / làm việc / thất bại], tôi nhận ra:
[insight mới].
Ví dụ:
[minh họa thực tế].
Từ đó tôi thay đổi cách làm:
- [cách làm 1]
- [cách làm 2]
Bài học:
[kết luận].
Ví dụ
Bài học khi làm IT Comtor
Trước đây tôi từng nghĩ rằng:
 Comtor chỉ cần giỏi tiếng Nhật là đủ.
Nhưng sau khi làm trong dự án IT, tôi nhận ra:
Khả năng hiểu hệ thống và hiểu ngữ cảnh kỹ thuật quan trọng hơn rất nhiều.
Ví dụ:
 Khi dev nói:
「この処理は非同期で動きます」
Nếu chỉ dịch là
 “Xử lý này chạy bất đồng bộ”
 thì người nghe có thể không hiểu gì.
Một comtor giỏi phải giải thích thêm:
→ xử lý chạy nền, không chờ kết quả.
Từ đó tôi thay đổi cách làm:
Học kiến thức IT cơ bản

Đọc tài liệu design

Hiểu logic hệ thống

Bài học:
 Ngôn ngữ chỉ là công cụ, hiểu hệ thống mới là giá trị.
3. Template 3: “3 điều tôi học được sau khi…”
Đây là template cực kỳ phổ biến trên LinkedIn và blog chuyên môn.
Cấu trúc
Bối cảnh trải nghiệm

3 bài học

Tổng kết

Template viết bài
Sau khi [trải nghiệm X], tôi rút ra 3 điều:
1️⃣ [bài học 1]
Giải thích ngắn.
2️⃣ [bài học 2]
Giải thích ngắn.
3️⃣ [bài học 3]
Giải thích ngắn.
Kết luận:
[một insight tổng kết].
Ví dụ
3 điều tôi học được sau 5 năm làm IT Comtor
Sau 5 năm làm IT Comtor, tôi rút ra 3 điều:
1️⃣ Hiểu bối cảnh quan trọng hơn dịch đúng từng chữ
Người nghe cần hiểu vấn đề, không phải bản dịch hoàn hảo.
2️⃣ Comtor là người kết nối chứ không chỉ là người dịch
Nhiều khi phải giải thích lại cho cả hai bên.
3️⃣ Tài liệu dự án là kho học tiếng Nhật tốt nhất
Design document, ticket, bug log đều là tài liệu thật.
Kết luận:
Một IT Comtor giỏi không chỉ dịch, mà còn giúp dự án hiểu nhau nhanh hơn.
Tóm tắt 3 template cực mạnh
💡 Nếu bạn muốn, tôi có thể tiếp tục đóng gói thêm:
10 templates viết bài xây dựng thương hiệu cá nhân cực mạnh trên LinkedIn / Facebook / Blog
 (đây là bộ framework mà rất nhiều chuyên gia nội dung sử dụng).
tiếp tục đóng gói thêm: 10 templates viết bài xây dựng thương hiệu cá nhân cực mạnh trên LinkedIn / Facebook / Blog
Dưới đây là 10 templates viết bài xây dựng thương hiệu cá nhân rất mạnh, thường được dùng trên LinkedIn, Facebook, Blog chuyên môn.
 Những template này giúp thể hiện chuyên môn, kinh nghiệm thực tế và tạo niềm tin lâu dài.
1. Template: “Những điều người mới thường hiểu sai về…”
Cấu trúc
Nêu chủ đề

Liệt kê các hiểu lầm phổ biến

Giải thích đúng

Kết luận

Template
Nhiều người mới bắt đầu [lĩnh vực] thường hiểu sai một số điều:
❌ Hiểu lầm 1: [quan điểm sai]
✔ Thực tế: [giải thích]
❌ Hiểu lầm 2: [quan điểm sai]
✔ Thực tế: [giải thích]
❌ Hiểu lầm 3: [quan điểm sai]
✔ Thực tế: [giải thích]
Nếu bạn mới bắt đầu, hãy nhớ:
[kết luận].
2. Template: “Checklist để làm tốt…”
Dạng bài rất dễ lưu lại và chia sẻ.
Template
Nếu bạn muốn làm tốt [kỹ năng / công việc], đây là checklist tôi thường dùng:
□ [bước 1] 
□ [bước 2] 
□ [bước 3] 
□ [bước 4] 
□ [bước 5]
Nếu thiếu một trong những bước trên, kết quả thường sẽ:
[hệ quả].
Checklist đơn giản, nhưng cực kỳ hiệu quả.
3. Template: “Case study thực tế”
Bài viết tăng uy tín rất mạnh.
Template
Một tình huống thực tế tôi gặp trong công việc:
Bối cảnh:
[mô tả vấn đề].
Vấn đề chính:
[problem].
Cách chúng tôi xử lý:
1. [bước]
2. [bước]
3. [bước]
Kết quả:
[result].
Bài học:
[insight].
4. Template: “Before – After”
Dạng bài thể hiện sự phát triển cá nhân.
Template
3 năm trước tôi:
- [trạng thái]
- [khó khăn]
- [thiếu kỹ năng]
Hiện tại:
- [kỹ năng]
- [kinh nghiệm]
- [thành quả]
Điều tạo ra sự thay đổi:
1. [yếu tố]
2. [yếu tố]
3. [yếu tố]
Nếu bạn đang ở giai đoạn đầu:
[khích lệ].
5. Template: “Những điều tôi ước mình biết sớm hơn”
Template rất mạnh để chia sẻ kinh nghiệm thật.
Template
Nếu quay lại thời điểm tôi bắt đầu [nghề/lĩnh vực], tôi muốn nói với bản thân 5 điều:
1. [bài học]
2. [bài học]
3. [bài học]
4. [bài học]
5. [bài học]
Nếu bạn đang ở giai đoạn đầu,
hy vọng những điều này sẽ giúp bạn đi nhanh hơn.
6. Template: “Framework đơn giản để giải quyết vấn đề”
Dạng bài rất chuyên gia.
Template
Khi gặp vấn đề [X], tôi thường dùng framework này:
Bước 1 — [tên bước] 
Giải thích.
Bước 2 — [tên bước] 
Giải thích.
Bước 3 — [tên bước] 
Giải thích.
Framework này giúp:
- [lợi ích]
- [lợi ích]
Bạn có thể thử áp dụng.
7. Template: “Một ngày làm việc của tôi”
Dạng bài tăng độ gần gũi.
Template
Một ngày làm việc của tôi thường diễn ra như thế này:
08:30 – [công việc] 
10:00 – [công việc] 
13:00 – [công việc] 
15:00 – [công việc] 
17:00 – [công việc]
Nhiều người nghĩ công việc này là:
[nhận định].
Nhưng thực tế:
[insight].
8. Template: “3 công cụ tôi luôn sử dụng”
Rất phổ biến trên LinkedIn.
Template
3 công cụ tôi dùng gần như mỗi ngày trong công việc:
1️⃣ [tool]
Dùng để:
[ứng dụng].
2️⃣ [tool]
Dùng để:
[ứng dụng].
3️⃣ [tool]
Dùng để:
[ứng dụng].
Những công cụ nhỏ nhưng giúp tiết kiệm rất nhiều thời gian.
9. Template: “Một lỗi nhỏ nhưng gây hậu quả lớn”
Dạng bài gây chú ý tốt.
Template
Một lỗi nhỏ tôi từng thấy trong [công việc]:
[lỗi].
Thoạt nhìn có vẻ không nghiêm trọng.
Nhưng hậu quả là:
- [hệ quả]
- [hệ quả]
Cách tránh lỗi này:
1. [cách]
2. [cách]
Chi tiết nhỏ thường tạo ra khác biệt lớn.
10. Template: “Nguyên tắc cá nhân của tôi”
Dạng bài xây dựng thương hiệu cá nhân rõ nét.
Template
Trong công việc tôi luôn giữ 5 nguyên tắc:
1. [nguyên tắc]
2. [nguyên tắc]
3. [nguyên tắc]
4. [nguyên tắc]
5. [nguyên tắc]
Những nguyên tắc này giúp tôi:
- [lợi ích]
- [lợi ích]
Không phải lúc nào cũng hoàn hảo,
nhưng tôi luôn cố gắng giữ chúng.
Tổng kết
10 templates mạnh để xây dựng thương hiệu cá nhân
Hiểu lầm phổ biến

Checklist

Case study

Before–After

Điều tôi ước biết sớm

Framework giải quyết vấn đề

Một ngày làm việc

Công cụ tôi dùng

Một lỗi nhỏ

Nguyên tắc cá nhân

💡 Với lĩnh vực IT Comtor / dịch thuật IT (đúng chuyên môn của bạn), nếu áp dụng các template này, bạn có thể viết khoảng 200–300 bài mà không bị bí ý tưởng.
Nếu bạn muốn, tôi có thể tiếp tục đóng gói thêm:
30 ý tưởng bài viết cực dễ viral cho người làm biên phiên dịch IT

20 hooks mở đầu bài viết khiến người đọc dừng lại ngay lập tức

Framework viết bài LinkedIn đạt 50k–100k reach.
Dưới đây là 30 ý tưởng bài viết rất dễ thu hút người đọc dành cho người làm biên phiên dịch trong ngành CNTT (IT Comtor / IT Translator).
 Các ý tưởng này phù hợp đăng trên LinkedIn, Facebook, blog chuyên môn và giúp xây dựng hình ảnh người có kinh nghiệm thực tế trong dự án IT.
1. Sai lầm phổ biến của người mới làm IT Comtor
Ví dụ:
 “5 sai lầm tôi thấy người mới làm IT Comtor thường mắc phải.”
2. Một câu tiếng Nhật khiến cả team hiểu sai
Chia sẻ tình huống dịch sai gây hiểu nhầm trong dự án.
3. Một ngày làm việc của IT Comtor
Timeline từ sáng đến tối trong dự án.
4. 10 thuật ngữ IT tiếng Nhật người mới thường dịch sai
Ví dụ:
環境

処理

仕様

5. Khi Dev nói một câu nhưng thực ra có nghĩa khác
Ví dụ:
Dev nói:
 「ちょっと難しいですね」
Ý thật có thể là:
 “Không làm được.”
6. Điều khác biệt giữa người biết tiếng Nhật và IT Comtor
So sánh:
7. 5 kỹ năng quan trọng nhất của IT Comtor
Ví dụ:
nghe hiểu

phân tích

tóm tắt

hiểu hệ thống

giao tiếp

8. 3 loại tài liệu IT khó dịch nhất
Ví dụ:
design document

bug report

system log

9. Một bug nhỏ nhưng khiến team tranh luận 2 giờ
Chia sẻ câu chuyện thực tế.
10. 5 câu tiếng Nhật Dev Nhật hay dùng trong họp
Ví dụ:
念のため

一旦

別途

11. Những câu nói “nguy hiểm” trong dự án IT
Ví dụ:
「多分大丈夫です」
12. 5 dấu hiệu bạn đang tiến bộ trong nghề IT Comtor
13. 3 điều tôi học được sau X năm làm IT Comtor
14. Những điều người ngoài ngành thường hiểu sai về IT Comtor
15. Một lỗi dịch nhỏ có thể gây hậu quả lớn
Ví dụ:
nhầm 同期 / 非同期

16. Checklist chuẩn bị trước khi phiên dịch cuộc họp IT
17. Tại sao IT Comtor cần hiểu kỹ thuật
Ví dụ minh họa cụ thể.
18. 5 loại câu hỏi Dev Nhật hay hỏi trong meeting
Ví dụ:
なぜですか

どういう意味ですか

19. 10 cụm từ tiếng Nhật xuất hiện rất nhiều trong tài liệu design
20. Cách tôi học thuật ngữ IT tiếng Nhật
Chia sẻ phương pháp cá nhân.
21. Khi khách hàng Nhật hỏi câu “khó trả lời”
Ví dụ:
「いつ直りますか？」
22. Những tình huống khó xử của IT Comtor
Ví dụ:
Dev Việt nói nhanh

Khách Nhật hỏi sâu

23. Sự khác biệt giữa phiên dịch meeting và dịch tài liệu
24. 5 kỹ năng mềm giúp IT Comtor làm việc tốt hơn
Ví dụ:
lắng nghe

tóm tắt

25. Điều tôi học được từ Dev Nhật
26. Những câu tiếng Nhật lịch sự trong môi trường IT
27. 3 cách giải thích thuật ngữ IT cho người không chuyên
28. Sai lầm khi dịch từng chữ trong tài liệu IT
29. 5 loại meeting phổ biến trong dự án IT
Ví dụ:
daily meeting

review meeting

design meeting

30. Điều khiến một IT Comtor trở nên cực kỳ giá trị trong dự án
Ví dụ:
khả năng giúp hai bên hiểu nhau nhanh hơn.
💡 Mẹo quan trọng
Mỗi ý tưởng trên có thể viết thành 3–5 bài khác nhau, ví dụ:
“5 sai lầm của IT Comtor” có thể tách thành:
Sai lầm khi dịch meeting

Sai lầm khi dịch tài liệu

Sai lầm khi giao tiếp với Dev

→ chỉ riêng danh sách trên có thể tạo 100–150 bài viết.
Nếu bạn muốn, tôi có thể tiếp tục giúp bạn đóng gói thêm:
50 tiêu đề bài viết cực dễ viral cho IT Comtor

20 hooks mở đầu khiến người đọc dừng lại trong 3 giây

Công thức viết bài LinkedIn đạt 100k view cho người làm chuyên môn.

Dưới đây là 20 hooks mở đầu (câu mở đầu) giúp bài viết thu hút sự chú ý ngay trong 3 giây đầu.
 Những hooks này rất phổ biến trên LinkedIn, Facebook, blog chuyên môn vì chúng tạo tò mò, đồng cảm hoặc bất ngờ.
1. Hook: “Hầu hết mọi người đều nghĩ…”
Hầu hết mọi người đều nghĩ rằng [niềm tin phổ biến].
Nhưng thực tế trong công việc, điều này thường không đúng.
2. Hook: “Tôi từng nghĩ rằng…”
Tôi từng nghĩ rằng [quan điểm cũ].
Cho đến khi tôi gặp tình huống này trong dự án.
3. Hook: “Sai lầm lớn nhất mà người mới mắc phải…”
Sai lầm lớn nhất mà người mới làm [lĩnh vực] thường mắc phải là:
[sai lầm].
4. Hook: “Một câu nói trong meeting khiến tôi nhớ mãi…”
Một câu nói trong cuộc họp đã khiến tôi nhớ mãi:
[câu nói].
5. Hook: “Tôi đã học được bài học này theo cách khá đau đớn.”
Tôi đã học được bài học này theo cách khá đau đớn.
6. Hook: “Nếu bạn đang làm [nghề], hãy cẩn thận với điều này.”
Nếu bạn đang làm [nghề], hãy cẩn thận với điều này.
7. Hook: “Nhiều người làm việc nhiều năm nhưng vẫn không nhận ra…”
Nhiều người làm việc nhiều năm trong ngành này nhưng vẫn không nhận ra điều này.
8. Hook: “Một lỗi nhỏ có thể gây hậu quả rất lớn.”
Một lỗi nhỏ có thể gây hậu quả rất lớn trong dự án.
9. Hook: “Có một sự thật ít người nói về…”
Có một sự thật ít người nói về [lĩnh vực].
10. Hook: “Sau nhiều năm làm việc, tôi nhận ra…”
Sau nhiều năm làm việc trong ngành này, tôi nhận ra một điều:
11. Hook: “Nếu quay lại thời điểm bắt đầu, tôi sẽ làm khác.”
Nếu quay lại thời điểm tôi bắt đầu công việc này, tôi sẽ làm khác đi một điều.
12. Hook: “Một điều khiến tôi bất ngờ trong dự án.”
Có một điều trong dự án khiến tôi khá bất ngờ.
13. Hook: “Nhiều người hiểu sai điều này.”
Nhiều người hiểu sai điều này về [chủ đề].
14. Hook: “Đây là điều tôi thường nói với người mới.”
Đây là điều tôi thường nói với những người mới bắt đầu.
15. Hook: “Một câu hỏi tôi thường nhận được là…”
Một câu hỏi tôi thường nhận được là:
16. Hook: “Trước khi làm công việc này, tôi không biết rằng…”
Trước khi làm công việc này, tôi không biết rằng:
17. Hook: “Có 3 điều rất quan trọng nhưng ít người chú ý.”
Có 3 điều rất quan trọng nhưng ít người chú ý.
18. Hook: “Một tình huống thú vị trong công việc hôm nay.”
Một tình huống thú vị trong công việc hôm nay.
19. Hook: “Một bài học nhỏ nhưng rất đáng giá.”
Một bài học nhỏ nhưng rất đáng giá tôi học được gần đây.
20. Hook: “Có một điều tôi luôn nhắc bản thân.”
Có một điều tôi luôn nhắc bản thân trong công việc.
💡 Mẹo quan trọng khi dùng hook
Một hook tốt thường có ít nhất 1 trong 3 yếu tố:
1️⃣ Tò mò
 → “Có một điều ít người biết…”
2️⃣ Mâu thuẫn với niềm tin phổ biến
 → “Hầu hết mọi người đều nghĩ… nhưng…”
3️⃣ Câu chuyện cá nhân
 → “Tôi từng nghĩ rằng…”
Template | Mục tiêu | Dễ viết | Hiệu quả
Sai lầm phổ biến | Thể hiện expertise | ⭐⭐⭐⭐ | ⭐⭐⭐⭐
Tôi từng nghĩ... | Tạo đồng cảm | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐
3 điều tôi học được | Chia sẻ kinh nghiệm | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐
Người biết tiếng Nhật | IT Comtor
Dịch | Hiểu hệ thống
Dịch câu | Dịch ngữ cảnh


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Đã đăng\1. Lí do lập kênh_đã đăg.docx`

Vì sao mình tạo page này?
Chào bạn,
Cảm ơn bạn đã dừng lại ở đây, giữa rất nhiều lựa chọn và hướng đi ngoài kia.
Có thể bạn tình cờ thấy page này.
 Hoặc có thể bạn đang ở một giai đoạn mà bạn bắt đầu tự hỏi: “Tiếp theo mình nên đi đâu trong sự nghiệp?”
Dù lý do là gì, mình tin nếu bạn đọc đến đây, ít nhiều chúng ta đang đứng ở những điểm giao nhau.
Về mình - một BrSE “đi vòng” 
Mình không bắt đầu từ chuyên ngành IT.
Mình xuất phát điểm là dân tiếng Nhật.
Trước đây mình bước chân vào ngành IT với vị trí là Comtor - một vị trí mà nếu nhìn từ bên ngoài, mọi thứ có vẻ cũng khá ổn: công việc hoàn thành tròn vai, “chạy” được với team phát triển. Lương cũng gọi là ổn định hơn so với các ngành nghề khác trên thị trường nói chung. 
Nhưng khi đó mình luôn biết rõ là: Mình làm việc trong trạng thái không thật sự hiểu. Bạn nào làm Comtor chắc cũng đồng điệu với nhau ở điểm này. 
Không phải là không làm được. Mà là làm mà không nắm được bản chất hệ thống, không hiểu sâu về kỹ thuật, không biết phía sau những gì mình đang truyền đạt thực sự vận hành như thế nào.
Cảm giác “không thật sự hiểu” đó, nó khiến mình bị bí bách, bị bực tức, bị khó chịu…Nói điều mà mình không thực sự clear, có lúc mình cảm giác cái ý mà người nói muốn mình phải truyền đạt ấy - nó không đúng đâu, nó sai sai thế nào - mà mình vẫn phải truyền đạt… nó thật sự là một sự khó chịu day dứt và âm ỉ đấy bạn ạ. 
Con đường mình đã đi - và những vòng lặp không cần thiết
Mình bắt đầu tìm cách tự bù lấp những chỗ “không thật sự hiểu” đó. Mình học lung tung cả lên, mỗi thứ một tí, mỗi lúc 1 kiểu, ko có hệ thống. 
Mình học test - tăng cường hỏi tester, chủ động tự tham gia vào việc test hệ thống để hiểu cách mọi thứ hoạt động.
Mình học BA - phân tích nghiệp vụ, chức năng, học cách một hệ thống được thiết kế và vận hành từ góc nhìn tổng thể.
Mình học PM - quản lý kế hoạch, quản lý dự án, quản lý tiến độ chất lượng, quản lý con người.
Vân vân và mây mây…
Nhìn lại cả quá trình, thật sự là một hành trình tự mò mẫm dò dẫm mà bước đi. 
Học cái này một chút, thử cái kia một chút, lan man lý thuyết không có môi trường thực hành. Học mà không có hành, không có thực chiến thì kiến thức cũng chỉ là trên giấy mà thôi. Có những thứ đáng ra nên học sớm hơn thì lại học muộn. Có những thứ chỉ cần hiểu sơ bộ thì lại bị lún vào mất quá nhiều thời gian.
Không có một bản đồ rõ ràng. Không có mentor định hướng cho mình biết: “Ở giai đoạn này, nên tập trung vào cái gì?”. Và mình đã mất khá nhiều thời gian để đi vòng như vậy.
Điều mình nhận ra sau nhiều năm làm trong ngành
Có rất nhiều người giống mình ngày trước. Đặc biệt là những bạn trái ngành bước vào IT, các bạn ngành ngôn ngữ học tiếng Nhật, các bạn Comtor. 
🚨  Làm việc chăm chỉ. Có trách nhiệm - nhưng luôn có cảm giác thiếu, cảm giác không thật sự hiểu. Và không rõ nên đi tiếp theo hướng nào.
Vấn đề không phải là bạn không đủ năng lực.
Mà là bạn không có định hướng đúng, không có đủ thông tin đúng, vào thời điểm đúng.
Nếu có một nơi:
Tổng hợp lại kinh nghiệm thực tế
Chỉ ra nên học gì, ở mức nào là đủ
Và giúp bạn nhìn rõ các hướng đi trong ngành
…thì rất nhiều người có thể tiết kiệm được vài năm “đi vòng”.
Đây là lý do page này tồn tại
Mình tạo page này để chia sẻ lại:
Những gì mình đã trải qua trong công việc
Những kỹ năng thực sự cần thiết khi làm BrSE
Những sai lầm mình từng gặp để bạn tránh lặp lại
Và cách công việc này diễn ra ngoài thực tế
Mình không tô vẽ màu hồng về nghề, cũng không nói quá về những khó khăn. Mình muốn bạn nhìn thấy nó đúng như nó là.
Để bạn có thể tự trả lời:
Công việc này có phù hợp với mình không?
Nếu phù hợp, mình nên bắt đầu từ đâu?
Và làm thế nào để đi nhanh hơn/hoặc từ tốn cũng được, nhưng chắc chắn hơn
(Mình là type có xu hướng đi theo cửa này: từ tốn cũng được, nhưng chắc chắn và chill chill)
Page này dành cho ai
Page này có thể phù hợp với bạn nếu:
Bạn giao tiếp tiếng Nhật tốt nhưng xuất phát điểm không phải chuyên ngành IT
Bạn đang làm Comtor /Dev / BA /Tester
Bạn đã đi làm một thời gian nhưng vẫn thấy mơ hồ về định hướng
Hoặc bạn đang muốn chuyển hướng nhưng chưa biết bắt đầu từ đâu
Nếu bạn đang ở một trong những điểm đó, có thể bạn sẽ thấy mình đâu đó trong những gì mình chia sẻ.
Điều mình hướng đến (và cũng là giới hạn của page này)
Mình không hứa sẽ đưa bạn đến một con đường “nhanh nhất”. 
Vì trong sự nghiệp, “nhanh” nhưng sai hướng thì chỉ khiến bạn đi xa hơn khỏi điểm mình muốn đến.
Nhưng mình tin mình có thể giúp bạn:
Hiểu rõ hơn về ngành về nghề
Biết mình đang ở đâu
Và rút ngắn một phần con đường mà mình đã từng phải đi vòng
Chỉ vậy thôi.
Mọi bài viết và quan điểm ở trang của mình, đều xuất phát từ trải nghiệm/kinh nghiệm/tầm nhìn và đúc kết cá nhân. Với tư cách là người đi trước chia sẻ lại cho người đi sau. 
Nếu bạn có quan điểm khác, hoặc quan điểm trái chiều -  mình rất welcome. Hãy comment chia sẻ với tinh thần xây dựng - tích cực - thiện chí, để mình mở rộng viewpoint với nhé. Và cũng là để cho các bạn khác đang tìm hiểu về ngành về nghề có góc nhìn đa dạng hơn.
Nếu bạn đọc đến đây và cảm thấy:
“Ừ, mình cũng đang giống như vậy.”
Thì có lẽ chúng ta sẽ còn gặp nhau qua những bài viết tiếp theo.
Và nếu một ngày nào đó, bạn nhận ra đã tiết kiệm được nhiều năm loay hoay nhờ những gì mình chia sẻ - thì page này đã hoàn thành đúng mục tiêu của nó.
Cảm ơn bạn đã ở đây.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Đã đăng\2. FAQ_ Tiếng Nhật giao tiếp tốt vào BrSE IT như thế nào__đã đăng.docx`

Bài viết này hướng đến phát triển phần mềm. 
Bài viết này dành cho IT Comtor tiếng Nhật, biên phiên dịch viên tiếng Nhật ở ngành khác, người có tiếng Nhật giao tiếp tốt. Nhấn mạnh là cần giao tiếp tốt. 
=> Dùng bài này làm tiền đề cho workshop. 
—-----------------
FAQ: Tiếng Nhật tốt, trái ngành — có bước vào BrSE IT được không?
 Đây là một trong những câu hỏi mình nhận được lặp đi lặp lại, từ rất nhiều người.
Mọi người có một điểm chung là Tiếng Nhật tốt, đã từng sống hoặc làm việc tại Nhật, nhưng không đi từ nền tảng IT.
Có người làm HR.
Có người làm quản lý tu nghiệp sinh.
Có người mới ra trường, hoặc đã đi làm vài năm… rồi bắt đầu nhìn sang IT và băn khoăn không biết có chuyển sang IT được không?
Câu trả lời của mình là: Không có độ tuổi nào ngăn bạn bước vào ngành này.
Người hạn chế mình — thường chính là bản thân mình.
Vấn đề chưa bao giờ nằm ở “trái ngành”
Mình thấy rất nhiều bạn đang tự đánh giá thấp một tài sản mà mình đã mất nhiều năm để xây dựng: tiếng Nhật giao tiếp tốt.
Trong một dự án IT có khách hàng Nhật, khả năng nghe — hiểu — phản xạ — truyền đạt
 không phải là “phần phụ”. Nó là một nửa cuộc chơi. 
Phần còn lại là gì?
Là hiểu hệ thống.
Hiểu cách phần mềm vận hành.
Hiểu cách một dự án chạy từ đầu đến cuối.
Và tin mình đi — phần đó học được.
Cái bạn thiếu không phải là năng lực.
Mà là một bức tranh rõ ràng.
Rất nhiều bạn đang đứng ở một trạng thái lưng chừng:
Biết mình có thể học
Nhưng không biết nên bắt đầu từ đâu
Không biết học đến mức nào là đủ
Và không biết bao lâu thì “có thể apply được”
Thế nên bạn đi hỏi.
Và khi hỏi một câu kiểu:
> “Em hơn 30 rồi, chuyển ngành có được không?”
Bạn sẽ luôn nhận được 3 kiểu trả lời:
Người từng thất bại → khuyên bạn đừng làm
Người lạc quan → nói bạn cứ thử đi
Người trung lập → trả lời kiểu “tùy em”
Nhưng tất cả những câu trả lời đó… không giải quyết được gì cả.
Vì câu hỏi thực sự không phải là:
 “Có nên không?”
Mà là:
 “Bạn có muốn đủ nhiều để làm đến cùng không?”
Nếu đã có tiếng Nhật tốt — bạn đã đi được nửa đường
Nếu bạn giao tiếp tốt,
 bạn có khả năng vượt qua vòng phỏng vấn tiếng Nhật.
Vậy phần còn lại bạn cần làm gì?
Không phải học tất cả. Cũng không phải trở thành dev.
Bạn chỉ cần đủ để hiểu và kết nối
Trong 1–2 tháng, bạn nên tập trung vào điều gì?
Không phải học lan man. Mà là học có mục tiêu. 
Bạn cần:
Xác định công ty nào sẽ cần bạn: công ty làm outsource thị trường Nhật, công ty Nhật làm product phần mềm. Nhất định phải liên quan đến tiếng Nhật. 
Hiểu một khâu sản xuất phần mềm trong các công ty outsource chạy như thế nào, từ khâu sales tiếp cận khách hàng - đến khâu sản phẩm đến được tay end-user. 
Hiểu một hệ thống phần mềm hoạt động như thế nào
Hiểu một dự án IT chạy ra sao (flow cơ bản)
Biết test một số chức năng cơ bản
Nắm được khái niệm tổng quan để có thể trao đổi với team và khách
Không cần quá sâu. Nhưng phải đủ để bạn không còn “làm mà không hiểu”.
Giai đoạn đầu khi vào dự án — sẽ không dễ
Và mình nghĩ bạn nên biết trước điều này.
Bạn sẽ phải:
Tự tìm hiểu rất nhiều
Chuẩn bị trước mỗi buổi họp
Dự đoán câu hỏi khách có thể hỏi
Và có lúc… không hiểu gì thật
Nhưng đó không phải là dấu hiệu bạn “không hợp”.
Đó là trạng thái bình thường của người đang bước vào một hệ mới.
Vậy rốt cuộc, bạn có làm BrSE được không?
Nếu bạn:
Có tiếng Nhật giao tiếp tốt
Sẵn sàng học phần hệ thống ở mức cần thiết
Chấp nhận giai đoạn đầu hơi “đuối”
Và không bỏ cuộc giữa chừng
Thì câu trả lời là: Có. Bạn làm được.
Một điều cuối cùng
Bạn có thể dành thêm vài tháng, vài năm để tiếp tục hỏi:“Mình có nên không?”
Hoặc bạn có thể dừng lại ở một câu đơn giản hơn: “Mình có làm không?”
Nếu câu trả lời là Cób → thì bắt đầu.
Tìm đúng người đã đi trước.
 Đi theo một hướng rõ ràng.
 Và đi đủ lâu. Tối thiểu: Qua được 1 năm là pass được vào nghề 
Còn nếu bạn để những lời khuyên nhiễu giữ bạn lại, thì rất có thể vài năm nữa bạn vẫn đứng ở đúng chỗ này, với cùng một câu hỏi.
Và như thế, thật sự là lãng phí một nghề tốt. 
BrSE thực sự là một nghề tốt.
(IT Comtor cũng là một nghề tốt theo quan điểm của mình. Tuy nhiên, vai trò này bắt buộc phải dịch chuyển và tiến lên)


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Đã đăng\Bài viết khởi động-đã đăng fb cá nhân.docx`

Có những quyết định không bắt đầu từ một kế hoạch rõ ràng, chỉ bắt đầu từ cảm giác thôi thúc mơ hồ: “Mình đã đi đủ lâu trong ngành này để khao khát chia sẻ điều gì đó.”
Thế nên, mình quyết định sẽ bắt đầu chia sẻ.
=============================
Mình đang làm trong ngành IT, ở vị trí BrSE.
Định hướng thời gian tới của mình là sẽ chia sẻ nhiều hơn về ngành, về nghề, về khó khăn và cách vượt qua/cách xử lý, cũng như một số bài toán công việc; nên mình sẽ dùng facebook cá nhân này để chia sẻ.
Song song với đó, mình cũng tạo thêm page này, nếu ai có cùng định hướng và yêu nghề, hãy follow và cùng nhau chia sẻ kinh nghiệm nhé.
Những bài viết ở đây sẽ xoay quanh hai trục chính:
01 - Công nghệ thông tin - theo góc nhìn của người không thuần tech.
02 - Và tiếng Nhật - không chỉ dừng ở việc “biết nói”, mà là dùng nó để làm việc, để hiểu, để xử lý vấn đề.
Đối tượng mình hướng tới không phải là một nhóm cụ thể.
Nếu bạn có tiếng Nhật tốt nhưng chưa có nhiều kinh nghiệm IT, bạn có thể đọc.
Nếu bạn đang làm Comtor và muốn bước lên BrSE, bạn có thể đọc.
Nếu bạn là BrSE non-tech, đang loay hoay giữa nghiệp vụ và kỹ thuật, bạn cũng có thể.
Nếu bạn là Tester hay Dev có tiếng Nhật, và đang nghĩ đến chuyện “làm cầu nối”, bạn cũng sẽ tìm thấy một vài điều quen thuộc.
Đơn giản là chỉ cần hợp tần số.
Mình bản chất không phải BrSE tech, nên không dám múa rìu qua mắt thợ, chỉ là chia sẻ kinh nghiệm trong công việc mình từng trải qua. Từ trải nghiệm cá nhân, từ những dự án mình từng làm, những sai lầm mình từng gặp, những cách mình từng xử lý - có cái hiệu quả, có cái không. Có thể đúng, có thể sai, có thể ba phải ở giữa.
Vẫn hi vọng có bạn tìm thấy thứ bạn cần.
Nếu bạn đọc và có góc nhìn khác với mình, hãy comment cho mình cùng học hỏi nhé. Mình tin rằng, trong một ngành mà mọi thứ thay đổi rất nhanh như IT, không ai có thể đi xa nếu chỉ giữ một góc nhìn của riêng mình.
=============================
Bài viết nhanh trong đêm muộn!
Có thể là một khởi đầu dài hơn mình nghĩ.
Không sao, cứ khởi đầu đã =)))


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Đã đăng\Bạn sẽ làm corp mãi chứ-da dang.docx`

Bạn sẽ làm corp mãi chứ?
Plan B, tại sao không?
------------------------------
Ngoài trời mưa to quá.
Tháng trời nay mình đều thức muộn, bỏ bê con cái, bỏ bê gia đình…để mong ước xây được 1 điều gì đó lớn hơn bây giờ.
Hôm nay có em thân hỏi mình: Sao dạo này chị quyết định xuất hiện trên mạng xã hội thế?
Không có gì em ơi. Chỉ là đột nhiên một ngày nhìn lại mình, chẳng lẽ làm công nhân mãi sao, thấy đời cũng tàng tàng, hay là làm thứ gì đó mới đi.
4 năm nay mình muốn phát triển thêm về mảng đào tạo, máy tính đầy tài liệu training, nhưng rồi cũng chỉ là những buổi training nội bộ. Và business cá nhân vẫn chỉ ở trên giấy. Khóa học Udemy ký hợp đồng và không public. Cho đến năm nay nó trỗi dậy mạnh hơn, nếu không xuất hiện và buộc mình vào thế đã rồi, thì 2 năm hay 5 năm nữa mình vẫn làm công nhân thế này thôi. Thế là mình xuất hiện. Xem đến đầu năm 2027 mình đi được đến đâu không…
Nếu không đi được đến đâu, thì chắc là sẽ xấu hổ lắm.
Và vì sợ xấu hổ như vậy, nên mình tuyên bố xuất hiện để buộc mình vào thế đã rồi phải tiến lên.
Bây giờ cũng đã tháng 5 rồi, chẳng mấy chốc mà hết năm…Việc trên giấy vẫn nhiều và lộn xộn quá.
Sẽ có những ngày bạn thấy mình đăng contents dồi dào lắm, tuần vài bận luôn. Thì đó là những nội dung đã được chuẩn bị từ trước theo kế hoạch, đến lịch sẽ có người hỗ trợ mình up lên.
Và cũng sẽ có những thời điểm mình lại lặn sủi tăm vì công m*ng với dự án và niềm vui dành cho con cái. Nói chung là làm theo nhịp của riêng mình thôi…
Plan B nói chung là không nhàn!
Cứ đi đã, thế thôi.
Không nên nghĩ nhiều.
Đi xây nghề BrSE, không biết có thành hình hài gì không.
Nếu không thành hình gì, thì chắc là sẽ xấu hổ lắm!


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\1. Bài viết\Đã đăng\Cas study-AI dịch sai và prompt chuẩn- đã đăng.docx`

Ban đầu mình định viết bài viết theo từng tuyến nội dung. Từ basics đến nâng cao, nhưng đi theo kế hoạch này cần đầu tư thời gian ngồi sắp xếp, điều chỉnh lại tài liệu tài nguyên… các kiểu. Nên mình thay đổi kế hoạch thành: sẽ chia sẻ về công việc hàng ngày, gặp gì chia sẻ đó. Nó sẽ nhanh hơn, và cũng là tips thực tế để các bạn có thể ứng dụng luôn. Thì case này là một ví dụ đơn giản nhưng điển hình. 
Nếu bạn thấy hữu ích trong công việc thì cho mình 1 like và 1 follower để đẩy page lên với nhé. 
Xin cảm ơn bạn nhiều. 
Hôm nay có em thân của mình chát với mình như ảnh.
Lỗi như này khá nhiều khi bạn dùng AI nhờ dịch. 
Mình cũng hay gặp nhưng mình nghĩ là đơn giản rồi ai cũng biết prompt để hạn chế mà. Nhưng thật ra có những cái đơn giản quá, mọi người lại hay bỏ qua, bất kể cả các bạn tech giỏi hay các bạn pro nhiều năm kinh nghiệm thì cũng dễ bỏ sót. Thực tế là vậy. 
Khi cần dịch, chúng ta hay prompt đơn giản kiểu như thế này:
 [Hãy dịch tuyệt đối chính xác nội dung sau sang tiếng Nhật/hoặc Việt. Không bịa đặt so với nội dung gốc]
Hay đại lại bạn dùng 1 prompt khác đi nữa, thì cũng khá đơn giản và không bao phủ hết yêu cầu, nên AI nó sẽ để lại các lỗi nhỏ mà chết người nếu không review kỹ lại. 
Những nội dung nó hay dịch sai và lừa mình là: số liệu/number, ngày tháng, trích dẫn source code, command, path, URL, tên biến…vân vân…
Thế thì cách của mình là chuẩn hóa prompt dịch và lưu lại thành 1 file, lúc nào cần dịch là copy paste thôi. Bạn tham khảo nhé:

Prompt dịch tài liệu kỹ thuật IT: 
—------------------
Prompt tiếng Việt:
[Hãy dịch tuyệt đối chính xác nội dung dưới đây sang [ngôn ngữ đích].
Yêu cầu bắt buộc:
Không được tự ý thêm ý, suy diễn, diễn giải hoặc bịa đặt thông tin ngoài nội dung gốc.
Phải dịch toàn bộ nội dung, bao gồm cả phần tiếng Anh nếu có.
Giữ nguyên tuyệt đối các nội dung sau:
number / số liệu
source code
command
path
URL
tên biến
tên table / column
log
message
format
ký hiệu
nội dung trích dẫn

Không được thay đổi format của nội dung gốc nếu không có yêu cầu.
Các thuật ngữ kỹ thuật, tên hệ thống, tên màn hình, tên project phải dịch thống nhất theo glossary/project convention nếu đã được định nghĩa.
Nếu nội dung gốc có phần mơ hồ hoặc khó hiểu, vẫn phải dịch sát nguyên văn, không được tự ý bổ sung để “cho dễ hiểu”.
Ưu tiên độ chính xác hơn văn phong tự nhiên.
Nghiêm cấm làm sai số liệu, ngày tháng, version, environment name, branch name, endpoint, query, source code.
Nội dung cần dịch: Tôi sẽ gửi lần lượt các nội dung cần dịch. Nếu bạn đã hiểu yêu cầu: Hãy trả lời "Đã hiểu" và hỏi tôi câu đầu tiên.]
Prompt tiếng Anh
[Translate the following content into [target language].
Strict requirements:
Do NOT add, omit, interpret, summarize, or invent any information.
Translate ALL contents including English text.
Preserve EXACTLY:
numbers
source code
commands
URLs
file paths
variable names
table/column names
logs/messages
quoted text
formatting
Keep terminology consistent with the project glossary/conventions.
Accuracy is prioritized over natural wording.
Never modify technical values such as:
dates
versions
environment names
endpoints
branch names
queries
configuration values
Content: I will send the content to be translated one by one. If you understand the request, please reply with "Understood" and ask me for the first sentence.]
—----------------
Đây là cách làm đơn giản cho 1 nhiệm vụ đơn giản nhất của BrSE là dịch. 
Bạn cần prompt nhanh thì bạn lưu lại từng prompt riêng và xử lý 1 task dịch như vậy cho nhanh. 
Còn thì mình đang làm là tạo bộ skills cho toàn bộ các công việc mà mình thường hay phải làm là: dịch, phân tích yêu cầu, chuẩn hóa yêu cầu, chuẩn hóa Q&A, viết srs, tạo prototype, tạo tài liệu báo cáo điều tra, chuẩn hóa báo cáo, tìm hiểu ngược specs từ source code…
Khi cần thì dùng bộ skills này sẽ nhanh hơn. 
Tùy mỗi lúc mà mình dùng cách làm nào. 
Mình cũng sẽ chia sẻ dần nha.


---
**Nguồn:** `Udemy\15-8-2025-Ứng dụng AI trong xử lý nhanh tài liệu dịch\Ứng dụng AI trong xử lý nhanh tài liệu dịch.pptx`

## Slide 1
Ứng dụng AI trong xử lý nhanh tài liệu dịch
Quỳnh Nga IT
Khởi động hành trình của bạn!
## Slide 2
Thiết lập ChatGPT cá nhân hóa việc dịch
## Slide 3
Dùng ChatGPT
✅ Hiểu ngữ cảnh rất tốt, dịch mượt, giữ mạch văn
✅ Có thể huấn luyện bằng thuật ngữ riêng, chuyên nghiệp, đúng ngữ cảnh
✅ Phù hợp dịch từng đoạn
➖ Tốc độ xử lý: chậm hơn Google dịch 
➖ Không phù hợp dịch dạng file
👉 Nên dùng trong trường hợp dịch từng đoạn, độ chính xác cao, cần sử dụng đúng thuật ngữ chuyên ngành
## Slide 4
(Personalization) Là tính năng giúp bạn giới thiệu một chút về bản thân để ChatGPT có thể phản hồi gần gũi hơn, phù hợp hơn với hoàn cảnh và nhu cầu của bạn.
Tùy chỉnh ChatGPT
## Slide 5
Tạo Thread dịch riêng biệt
Tạo file thuật ngữ:
Thuật ngữ không còn là vấn đề, ChatGPT xử lý thuật ngữ rất tốt. 
Chỉ cần tạo file thuật ngữ cần dùng cố định cho từng dự án. 
Tạo 2 thread dịch cho mỗi dự án: 1 thread dịch Việt Nhật, 1 thread dịch Nhật Việt, ghi rõ yêu cầu đặc điểm cần dịch
## Slide 6
Hướng dẫn sử dụng
Chuẩn bị file thuật ngữ.
Mở thread ChatGPT mới, đính kèm file thuật ngữ (hoặc paste danh sách thuật ngữ) và nhập prompt sau:—---[LMS] Dịch Nhật-ViệtTừ bây giờ tôi sẽ sử dụng thread này để dịch tài liệu IT từ tiếng Nhật sang tiếng Việt.File đính kèm là bảng thuật ngữ cần được ưu tiên sử dụng trong mọi bản dịch.
Hãy đọc toàn bộ nội dung file, sau đó lưu tất cả cặp Tiếng Nhật – Tiếng Việt để áp dụng một cách nghiêm ngặt và nhất quán vào mọi bản dịch trong thread này. 
             Yêu cầu DỊCH TUYỆT ĐỐI CHÍNH XÁC bám theo câu gốc, KHÔNG thêm bớt nội dung, KHÔNG suy diễn.
Tôi sẽ gửi lần lượt các đoạn yêu cầu dịch. Nếu đã ghi nhớ và sẵn sàng thực hiện dịch, hãy trả lời “Sẵn sàng”.—---
Paste câu cần dịch vào thread đó (không cần ghi lại yêu cầu). Sử dụng thread này cho mọi lần dịch trong dự án.


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\Bài kiểm tra ở mỗi chương.docx`

Slide: Phát triển phần mềm là gì?
Câu hỏi:
 Phát triển phần mềm là gì?
A. Quá trình thiết kế giao diện đồ họa cho phần mềm.
 B. Quá trình sử dụng phần mềm để kiểm thử các hệ thống khác.
 C. Quá trình tạo ra và duy trì các ứng dụng phần mềm thông qua các bước như phân tích, thiết kế, lập trình, kiểm thử và bảo trì.
 D. Quá trình quảng bá và tiếp thị sản phẩm phần mềm đến người dùng cuối.
✅ Đáp án đúng: C
Slide Quy trình phát triển phần mềm
Câu hỏi:
 Quy trình phát triển phần mềm thông thường bao gồm các bước nào sau đây?
A. Thiết kế, viết tài liệu, đào tạo người dùng, triển khai.
 B. Lập kế hoạch, lập trình, tiếp thị, bán hàng.
 C. Phân tích yêu cầu, thiết kế, lập trình, kiểm thử, triển khai và bảo trì.
 D. Khảo sát thị trường, lập ngân sách, đào tạo, tuyển dụng.
✅ Đáp án đúng: C
Tại sao việc thu thập yêu cầu (requirement gathering) lại quan trọng trong phát triển phần mềm?
A. Giúp chọn công nghệ phù hợp
 B. Giúp hiểu rõ nhu cầu người dùng để phát triển đúng sản phẩm
 C. Giúp thiết kế logo cho ứng dụng
 D. Giúp lập kế hoạch tuyển dụng nhân sự
✅ Đáp án đúng: B
Slide: Mô hình phát triển phần mềm
Câu 1:
Điểm đặc trưng chính của mô hình Waterfall là gì?
A. Các giai đoạn được lặp đi lặp lại không theo thứ tự cố định.
 B. Các giai đoạn phát triển diễn ra đồng thời.
 C. Các giai đoạn phát triển tuần tự, giai đoạn sau chỉ bắt đầu khi giai đoạn trước kết thúc.
 D. Ưu tiên thay đổi liên tục yêu cầu từ khách hàng.
✅ Đáp án đúng: C
Mục tiêu chính của kiểm thử phần mềm (testing) là gì?
A. Tăng tốc độ lập trình
 B. Tìm và sửa lỗi trong phần mềm
 C. Thiết kế giao diện đẹp hơn
 D. Thêm tính năng mới cho phần mềm
✅ Đáp án đúng: B
Trong phát triển phần mềm, "bảo trì" (maintenance) có nghĩa là gì?
A. Cập nhật và sửa lỗi phần mềm sau khi phát hành
 B. Thiết kế phần mềm mới từ đầu
 C. Lưu trữ mã nguồn trong máy chủ
 D. Kiểm thử phần mềm lần cuối trước khi phát hành
✅ Đáp án đúng: A
Câu 3:
Sự khác biệt chính giữa Waterfall và Agile là gì?
A. Agile chỉ phù hợp với dự án lớn, Waterfall phù hợp với dự án nhỏ.
 B. Waterfall linh hoạt hơn Agile trong việc thay đổi yêu cầu.
 C. Agile cho phép phản hồi nhanh và cải tiến liên tục, còn Waterfall tuân thủ quy trình cố định.
 D. Agile yêu cầu tài liệu chi tiết ngay từ đầu, còn Waterfall không cần tài liệu.
✅ Đáp án đúng: C
Slide: Các vai trò cơ bản trong dự án 
Câu 1:
Vai trò chính của Developer trong một dự án phần mềm là gì?
A. Viết tài liệu và đào tạo người dùng.
 B. Viết mã nguồn, phát triển các tính năng của phần mềm.
 C. Quản lý tiến độ và phân công công việc cho nhóm.
 D. Đảm bảo khách hàng hài lòng với sản phẩm.
✅ Đáp án đúng: B


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\Giới thiệu về khóa học IT Comtor.docx`

Chào bạn,
Đây là khóa học Lý thuyết chung về nghề IT Comtor cho mọi ngôn ngữ Nhật Hàn Anh Thái Trung, v.v…, hướng tới đối tượng là các bạn sinh viên năm 3, năm 4 sắp ra trường muốn định hướng nghề, hoặc các bạn trái ngành và có năng lực ngoại ngữ tốt, muốn chuyển sang nghề IT Comtor, cần tìm hiểu nền tảng và định hướng về nghề.
Dù bạn học chuyên ngành ngôn ngữ nào thì bạn cũng có thể học khóa học này để biết IT Comtor cần làm những công việc gì, nội dung như thế nào.
Công việc chính của IT Comtor là dịch, nên điều kiện tiên quyết đầu tiên là bạn phải CÓ NĂNG LỰC NGOẠI NGỮ đủ dùng. Nếu bạn muốn làm IT Comtor tiếng Hàn, tiếng Hàn của bạn cần ở mức khá trở lên, có thể dịch viết và/hoặc dịch nói. Thậm chí, có công ty chỉ tuyển dịch viết hoặc dịch nói, nên bạn hoàn toàn có thể bắt đầu ở điểm mạnh của mình trước.
Ngoài ra, rất nhiều bạn sợ dịch meeting hoặc lo chưa biết đủ từ vựng IT. Thì, mình muốn nói là: bạn hãy đừng sợ, từ vựng không phải là vấn đề, dịch nói chưa tốt cũng có thể từ từ trau dồi, việc bạn cần làm khi vào dự án, theo kinh nghiệm của mình, là hãy nhanh chóng hiểu về dự án, khi bạn đã hiểu nội dung công việc, ngay cả khi kỹ năng dịch nói của bạn chưa hoàn hảo, bạn vẫn dịch được, bằng một cách nào đó bạn sẽ vẫn truyền đạt được. Hãy tin, bằng một cách nào đó bạn sẽ vẫn truyền đạt được. 
Nên, điều quan trọng thứ 2, là bạn phải HIỂU DỰ ÁN.
---------------------------
Có được 2 điều quan trọng này rồi, mình khuyến khích bạn tiến lên như sau:
Học kỹ khóa học này và trả lời 7 câu hỏi bên dưới.
Lần 1: hiểu và trả lời trôi chảy 7 câu hỏi bằng tiếng Việt. Chú ý: trả lời bằng ý hiểu của mình một cách trôi chảy, không phải là học thuộc.
Lần 2: trả lời bằng ngoại ngữ của bạn. Ví dụ, chuyên ngành của bạn là tiếng Hàn thì bạn hãy luyện tập trả lời bằng tiếng Hàn, dùng đúng thuật ngữ IT tiếng Hàn. 
Dưới đây là 7 câu hỏi.
Quy trình phát triển phần mềm bao gồm các công đoạn nào? Mỗi công đoạn đó làm gì?
Các vai trò chính trong dự án phát triển phần mềm, vai trò đó đảm nhận công việc gì?
Công việc chính của IT Comtor là gì? Các công việc khác là gì?
Dịch nói thì dịch những meeting gì? Nội dung của meeting đó là gì?
Điểm cần chuẩn bị, cần chú ý trước trong sau meeting
Dịch viết thường cần dịch tài liệu gì?
Các bước để IT Comtor tiếp cận dự án nhanh nhất. 
Trả lời được 7 câu hỏi trên, nghĩa là bạn đã hiểu về công việc cần làm, hiểu nội dung công việc, có hình dung khái quát về công việc, cộng với năng lực ngoại ngữ, hãy tự tin ứng tuyển công việc IT Comtor, bạn nhé!
Chúc bạn học vui. 
—----
Tổng kết
Chào bạn, chúc mừng bạn đã đi đến chặng cuối cùng của khóa học. 
Bây giờ là thời điểm củng cố kiến thức và luyện tập. 
Hãy trả lời 7 câu hỏi bên dưới.
Lần 1: Hiểu và trả lời trôi chảy 7 câu hỏi bằng tiếng Việt. 
Lần 2: Trả lời bằng ngoại ngữ của bạn. 
Dưới đây là 7 câu hỏi.
Quy trình phát triển phần mềm bao gồm các công đoạn nào? Mỗi công đoạn đó làm gì?
Các vai trò chính trong dự án phát triển phần mềm, vai trò đó đảm nhận công việc gì?
Công việc chính của IT Comtor là gì? Các công việc khác là gì?
Dịch nói thì dịch những meeting gì? Nội dung của meeting đó là gì?
Điểm cần chuẩn bị, cần chú ý trước trong sau meeting
Dịch viết thường cần dịch tài liệu gì?
Các bước để IT Comtor tiếp cận dự án nhanh nhất. 
Chúc bạn có một khởi đầu với nghề thuận lợi!


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\IT Comtor Lý Thuyết Nghề.pptx`

## Slide 1
Dành cho người thông thoại ngoại ngữ: 
tiếng Anh, tiếng Trung, tiếng Nhật, tiếng Hàn, tiếng Thái…
Mọi tài liệu trong khóa đều là tài liệu giả lập.
IT Comtor
Lý Thuyết Nghề
Quỳnh Nga IT
Khởi động hành trình của bạn!
## Slide 2
Hiểu về Phát triển phần mềm
## Slide 3
Phát triển phần mềm là gì?
Phát triển phần mềm = là hoạt động chuyển nhu cầu của người dùng thành một sản phẩm phần mềm thông qua lập trình máy tính.

📱 Ví dụ:
App đặt đồ ăn (Now, GrabFood)
Phần mềm học tiếng Anh
Game chơi trên điện thoại

Tất cả đều là phần mềm do con người tạo ra bằng cách viết mã lệnh.
## Slide 4
Các loại ứng dụng phần mềm
Destop app
Web app
Mobile app
## Slide 5
Quy trình phát triển phần mềm
## Slide 6
Mô hình phát triển phần mềm
Agile Scrum
Waterfall
Phát triển tuần tự theo từng giai đoạn cố định
Khó thay đổi khi đã hoàn tất một giai đoạn
Phát triển linh hoạt theo từng vòng lặp.
Dễ dàng thay đổi theo phản hồi thực tế.
## Slide 7
Các vai trò “tiêu biểu” trong dự án
PM
BrSE
BA
DESIGNER
TESTER
COMTOR
DEV
Quản lý dự án
(Project Manager)
Lập trình viên 
(Developer)
Phân tích nghiệp vụ
(Business Analyst)
Kỹ sư cầu nối
Nhân viên kiểm thử
(QA, QC)
Phiên dịch viên
(Communicator)
Phụ trách thiết kế
UI UX
## Slide 8
Công việc của IT Comtor
## Slide 9
Giao tiếp khách hàng
Biên dịch tài liệu
Công việc của IT Comtor
## Slide 10
Giao tiếp trực tiếp (họp trực tiếp, mặt đối mặt, customer care…)
Giao tiếp qua Video (họp online qua Googlemeet, zoom…)
Giao tiếp qua chat (Slack, Teams, Chatwork…)
Giao tiếp qua email (gửi thư điện tử)
Giao tiếp khách hàng
## Slide 11
Biên dịch tài liệu
## Slide 12
Một số công việc khác
## Slide 13
Quản Lý Đào Tạo (Senior Comtor, Comtor Leader)
## Slide 14
Giao tiếp với khách hàng
## Slide 15
Giao tiếp trực tiếp - phiên dịch
1. Chuẩn bị trước buổi gặp
Trang phục: Lịch sự, trang nhã, phù hợp hoàn cảnh (không quá xuề xòa, cũng không quá phô trương).
Đến sớm: Có mặt trước 5–10 phút để ổn định, tránh vội vã.
Dụng cụ: Mang theo sổ, bút, laptop nếu cần để ghi chép. Chuẩn bị danh thiếp để trao đổi.
Tìm hiểu khách hàng: Nắm sơ lược về công ty, dự án, người tham gia trước khi gặp.
2. Trong khi giao tiếp
Vị trí ngồi/đứng: Gần đối tượng dịch/chủ trì, giữ vị thế thuận lợi để trao đổi.
Giới thiệu: Giới thiệu bản thân và team dự án, nhất là lần gặp đầu tiên.
Thái độ: Vui vẻ, thân thiện, ánh mắt tập trung vào đối phương.
Chú ý lắng nghe: Không ngắt lời, nhắc lại ý chính để xác nhận.
Tránh làm việc riêng: Không sử dụng điện thoại, laptop khi chưa được phép.
Ngôn ngữ cơ thể: Tư thế thẳng, gật đầu khi lắng nghe, không khoanh tay hoặc nhìn quanh.
Khi phiên dịch: giữ giọng rõ ràng, trung lập, không thêm/bớt nội dung.
3. Sau buổi gặp
Tóm tắt lại nội dung chính: Ghi chú ngay khi xong buổi họp để tránh quên.
Xác nhận thông tin: Gửi lại email recap (minutes of meeting) để khách hàng xác nhận.
Theo dõi hành động tiếp theo: Thống nhất ai làm gì, deadline bao giờ.
## Slide 16
Giao tiếp qua video
1. Chuẩn bị trước buổi họp
Lên lịch rõ ràng: Thống nhất thời gian, gửi link meeting, đặt phòng họp (nếu cần), mời đúng người tham gia.
Chuẩn bị nội dung: Đọc trước tài liệu, trao đổi trước với team, list câu hỏi & câu trả lời.
Tham gia sớm: Vào phòng họp trước 5–10 phút, mang theo sổ, bút để ghi chú.
Mở sẵn tài liệu cần chia sẻ: Đặt ở chế độ dễ truy cập để tránh mất thời gian tìm kiếm trong buổi họp, chỉ mở đúng tài liệu cần thiết, tránh lộ file nội bộ.
2. Trong khi họp
Không gian họp: Chọn nơi yên tĩnh, ánh sáng đủ, nền gọn gàng (tránh hình ảnh gây phân tâm).
Kiểm tra thiết bị: Đảm bảo mạng ổn định, webcam rõ, mic và tai nghe hoạt động tốt.
Bật camera: Giúp khách hàng thấy thái độ chuyên nghiệp, thân thiện.
Ghi âm/Ghi hình (nếu được phép): Để tiện tổng hợp nội dung sau buổi họp.
Thái độ giao tiếp: Nhìn vào camera khi nói, gật đầu, mỉm cười thể hiện sự tập trung.
3. Sau buổi họp
Gửi recap ngay: Tóm tắt nội dung, các điểm đã thống nhất, công việc tiếp theo và deadline.
Theo dõi action items: Đảm bảo có người chịu trách nhiệm từng đầu việc.
## Slide 17
Giao tiếp qua email
1. Khi viết email
Lời chào: Luôn chào hỏi mở đầu (ví dụ: Dear Mr. Tanaka, hoặc Kính gửi Anh Nam,).
Thời gian phản hồi: Trả lời trong vòng 24h. Nếu chưa có câu trả lời chính thức, phản hồi tạm: “Chúng tôi đã nhận được email và sẽ phản hồi chi tiết trước 10h sáng mai”.
Ngắn gọn, rõ ràng: Viết đoạn dễ đọc, nội dung chính trong khoảng 1/3 màn hình (dễ theo dõi trên desktop/mobile).
Phong cách: Lịch sự, khiêm nhường, tránh từ ngữ suồng sã.
2.  Đính kèm file
Kích thước file: Không vượt quá 20MB.
Nếu file lớn: Sử dụng dịch vụ chia sẻ file (Google Drive, OneDrive, Dropbox…).
Bảo mật: Với tài liệu quan trọng, cần mã hóa/đặt mật khẩu và gửi mật khẩu qua kênh khác (chat/phone).
3. Trước khi gửi email
Kiểm tra địa chỉ người nhận: TO, CC, BCC đúng đối tượng.
Tiêu đề email rõ ràng: Nêu đúng nội dung/chủ đề chính (ví dụ: [Project A] Biên bản họp ngày 29/9/2025).
Chuẩn bị nội dung: Sắp xếp ý theo trình tự logic
Kiểm tra chính tả: Đặc biệt là tên khách hàng, công ty khách.
4. Sau khi gửi email
Theo dõi phản hồi: Nếu sau 1–2 ngày chưa có trả lời, cần follow-up nhắc nhở lịch sự.
Lưu trữ email: Đặt nhãn (label) hoặc lưu trong thư mục dự án để tiện tra cứu sau này.
## Slide 18
Giao tiếp qua chát (Slack, Teams, Chatwork …)
1. Khi gửi tin nhắn
Xác định đúng người nhận: Mention đúng người, CC thêm người liên quan nếu cần. Viết đúng tên khách hàng.
Chuẩn bị nội dung: Nghĩ kỹ thông tin cần truyền đạt, viết rõ ràng, tránh gửi dồn dập nhiều tin ngắn gây khó đọc.
Trả lời đúng luồng (thread): Để nội dung dễ theo dõi, tránh thất lạc thông tin.
Nội dung ngắn gọn, súc tích: Nếu thông tin dài, nên chia thành từng đoạn, có bullet point, đánh số.
Chiều dài tin nhắn: Nên giới hạn trong khoảng 1/3 màn hình. Tránh viết dàn trải hết chiều ngang.
Phong cách lịch sự, khiêm nhường: Dù là chat nhanh, vẫn cần giữ ngôn ngữ chuẩn mực.
2. Khi nhận tin nhắn từ khách hàng
Luôn phản hồi xác nhận:
Lần 1: Thông báo đã tiếp nhận thông tin: “Đã nhận được yêu cầu, chúng tôi sẽ xử lý và phản hồi sau”.
Lần 2: Trả lời chính thức sau khi đã xử lý xong.
Giữ tương tác kịp thời: Không để khách hàng chờ quá lâu mà không có phản hồi.
Tránh spam emoji hoặc reaction không phù hợp.
Nếu thảo luận vấn đề phức tạp, nên đề xuất chuyển sang video call để xử lý nhanh.
Không gửi file quan trọng trực tiếp trong chat (dễ trôi), nên upload lên drive và gửi link.
3. Sau khi trao đổi
Lưu lại thông tin quan trọng: Pin hoặc copy vào task tracker (Jira, Trello, Backlog…) để quản lý.
Follow-up: Nếu khách hàng chưa trả lời, có thể nhắc lại lịch sự sau một khoảng thời gian hợp lý.
Đặt status/availability rõ ràng (online, offline, in meeting…) để khách hàng biết khi nào liên hệ.
## Slide 19
Ví dụ không nên
## Slide 20
Ví dụ sửa
## Slide 21
Biên dịch tài liệu
## Slide 22
Quy tắc dịch chung
Đảm bảo các yếu tố sau: 

Tính chính xác (tính đúng và tính đủ): Đảm bảo ý nghĩa được truyền tải chính xác từ bản gốc sang bản dịch.

Tính tự nhiên: Sử dụng cách diễn đạt tự nhiên trong tiếng Việt, tránh dịch máy móc theo cấu trúc.

Tính nhất quán: Duy trì sự nhất quán trong việc sử dụng thuật ngữ và phong cách xuyên suốt bản dịch.
## Slide 23
Các bước xử lý yêu cầu dịch
Bước 1: Tiếp nhận yêu cầu. Copy file cần dịch ở thời điểm nhận yêu cầu về folder lưu trữ riêng của Comtor trong dự án.
Bước 2: Tính toán khối lượng số words. Dùng công cụ đo lường số words chính xác, khi cần. Không ước tính theo cảm tính.
Bước 3: Ước tính thời gian 
Estimate theo công thức tốc độ dịch trung bình:
+ Dịch xuôi (ngôn ngữ khác -> tiếng Việt): 800 words/giờ
+ Dịch ngược (tiếng Việt -> ngôn ngữ khác): 400 words/giờ
Bước 4: Thông báo thời gian dự kiến có thể trả file dịch cho team. Sau đó tiến hành dịch.
Bước 5: Sau khi hoàn thiện dịch, thực hiện check format file, check hiển thị trước khi gửi cho khách hàng.
## Slide 24
Xử lý dịch
Xác định khối lượng tài liệu: 

Trường hợp tài liệu khoảng < 1,5 page, 1~2 sheet: Có thể dịch và trả file hoàn thiện được -> dịch và trả luôn 1 lần. 

Trường hợp tài liệu dài > 2 pages, > 2 sheets trở lên, tốn thời gian dịch và chờ đợi, có khả năng ảnh hưởng tiến độ phát triển: Dịch và trả file 2 lần.

+ Lần 1: Xử lý nhanh tài liệu bằng tool và trả file nhanh chóng. Báo trước là file chưa được review, team đọc tạm trước. 
+ Lần 2: Review và trả team file hoàn thiện.
## Slide 25
Ứng dụng AI vào xử lý dịch nhanh
Sử dụng Google Dịch
Sử dụng ChatGPT, Claude
Sử dụng Script dịch
Sử dụng dịch trên Google Doc, Google sheet
Trường hợp:
Phụ trách nhiều dự án 
Cần tăng tốc độ dịch thuật gấp 2–3 lần.
Duy trì tính nhất quán.
Hạn chế lỗi và công sức hiệu đính.
Hướng dẫn cụ thể trong khóa Thực Hành Dịch cho BrSE, Comtor
## Slide 27
Một số chú ý khi dịch xuôi từ ngôn ngữ khác -> tiếng Việt
Dịch song ngữ đối với tên item, message, tên button, để lại từ gốc theo công thức [ログイン/Login]
Đặt các phần cố định như tên item, message vào ngoặc “ ”  [ ]
Ví dụ về Message：
パスワードが間違っています。エラーメッセージを確認してください。
Dịch là:
[パスワードが間違っています。エラーメッセージを確認してください。/Mật khẩu không đúng. Vui lòng kiểm tra thông báo lỗi.]
## Slide 28
Ví dụ về tên Item:メール配信設定は有効にしてください。
Dịch là: Hãy thiết lập [メール配信設定/Email Delivery Settings] thành trạng thái "Enable".  (hoặc [メール配信設定/Cài đặt gửi thư])

→ Lý do: khi dịch ngược, nếu không có phần [メール配信設定/Email Delivery Settings] thì có thể không dùng chính xác tên item trong hệ thống. Có thể sẽ dịch là メール送信設定 chẳng hạn.
## Slide 29
Ví dụ về Button
変更内容を保存するボタンのラベルを「下書きとして保存」にしてください。
Hãy để lable của button lưu nội dung thay đổi là「下書きとして保存/Lưu nháp」.

→ Nếu không giữ song ngữ, khi dịch ngược, team viết là "Lưu nháp" có thể bị dịch nhầm thành 一時保存、下書き保存 chẳng hạn
## Slide 30
Giữ nguyên các thuật ngữ tiếng Anh thường dùng, ví dụ như 'class', 'method', 'UT', 'IT', 'file', “enable” “disable”

Ví dụ:
生成: Gen, generate            プルダウン: Pulldown 
非活性: Inactive                   活性: Active
## Slide 31
Một số chú ý khi dịch ngược từ tiếng Việt -> ngôn ngữ khác

Cần giữ nguyên định dạng file gốc, sheet, item, column, không thay đổi thứ tự.  
Cần quản lý thống nhất 1 nguồn với khách hàng.
Nhất quán trong việc sử dụng thuật ngữ.
Chú ý khi dịch con số (hay gặp trong testcase)
＞＝100      ＜＝100     = 100
< 100           > 100
## Slide 32
Mẫu tài liệu thường gặp
## Slide 33
Weekly report
## Slide 34
Testcase
## Slide 35
Q&A
## Slide 36
Kickoff meeting
## Slide 37
Closing meeting
## Slide 38
Mail
## Slide 39
Bug list
## Slide 40
Biên bản họp
## Slide 41
Tài liệu Design
## Slide 42
Tài liệu hợp đồng NDA
## Slide 43
File handover dự án
File handover: https://docs.google.com/spreadsheets/d/1-plLk7BqRHbHQjQZfG5ts_DViXgewozz/edit?usp=sharing&ouid=104416917441975431198&rtpof=true&sd=true 

File sample: https://docs.google.com/spreadsheets/d/1YYWdursZ26ftn7RyM5RO0ge4UZjYWczD/edit?usp=sharing&ouid=104416917441975431198&rtpof=true&sd=true
## Slide 44
Xử lý tài liệu dài như pdf, docx, excel, ảnh
## Slide 45
Định hướng nghề
## Slide 46
Hướng phát triển chính
Phát triển theo chiều dọc
Chuyên sâu về ngôn ngữ: Comtor Leader
Phát triển theo chiều ngang
Mở rộng skills: BrSE, BA, PM
01
02
## Slide 47
Hướng 1: Comtor Leader
- Trau dồi tiếng Nhật nâng cao
- Học quản lý team dịch, mentoring
- Dẫn dắt dự án, xử lý vấn đề với khách hàng
- Phù hợp với người thích ngôn ngữ, tổ chức
## Slide 48
Hướng 2: BrSE / BA / PM
👉 Là người giỏi dịch.
👉 Là người thích hiểu sâu.
👉 Là người có thiên hướng quản lý.
## Slide 49
CHỌN HƯỚNG PHÙ HỢP
Xác định rõ “mình sẽ đi theo hướng nào” 
->  tránh dậm chân tại chỗ sau 2–3 năm.
Không ai giỏi cả tiếng Nhật + kỹ thuật + quản lý ngay từ đầu. -> Phải làm.

Hành động trước 
-> trở nên đủ trong hành trình đó.
## Slide 50
THANK YOU
QUỲNH NGA IT
Cảm ơn bạn đã chọn và đồng hành cùng khóa học IT Comtor. 
Mong rằng những kiến thức hôm nay sẽ trở thành hành trang quý giá cho tương lai của bạn!


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\Khung sườn khóa học IT Comtor.docx`

Khung sườn khóa học: "IT Comtor cho người mới bắt đầu"
🟢 Module 1: Hiểu đúng nghề IT Comtor
🎯 Mục tiêu: Nắm được tổng quan ngành, vai trò Comtor, định vị bản thân
Bài 1.1 – IT Comtor là ai? Làm gì?
Giới thiệu nghề Comtor trong dự án IT

Mô hình làm việc: offshore/on-site/hybrid

Vị trí của Comtor trong team

Bài 1.2 – Tổng quan quy trình phát triển phần mềm
Phần mềm là gì?

Mô hình Waterfall vs Agile vs Scrum

Các vai trò trong dự án (PM, BA, Dev, Tester, Designer, BrSE, Comtor)

Bài 1.3 – Con đường nghề nghiệp & nỗi lo của người mới
“Học Comtor rồi thì làm gì tiếp?”

Định hướng: Comtor Leader / BrSE / PM / BA

Tự tin vào vai trò của mình dù không biết code

✅ Thực hành:
So sánh mô hình Agile vs Waterfall

Vẽ sơ đồ team dự án và xác định vị trí của Comtor

🟡 Module 2: Kỹ năng giao tiếp IT Comtor cần có
🎯 Mục tiêu: Rèn kỹ năng giao tiếp với khách hàng và nội bộ team
Bài 2.1 – Quy tắc giao tiếp cơ bản
Kính ngữ, khiêm nhường ngữ

Cách gọi tên khách hàng – người bên mình

Các lỗi cần tránh khi giao tiếp

Bài 2.2 – Giao tiếp qua các kênh
Họp trực tiếp: cách chuẩn bị, giới thiệu, trang phục, thái độ

Giao tiếp qua video (Zoom/Meet): thiết bị, link, background, ghi chú

Giao tiếp qua email: bố cục email, tiêu đề, cách viết lịch sự

Giao tiếp qua chat: cách nhắn tin đúng luồng, phản hồi 2 bước

Bài 2.3 – Mẫu câu giao tiếp thực tế
Mẫu câu khi mở đầu, báo cáo tiến độ, kết thúc họp

Cách xử lý khi không trả lời được câu hỏi

✅ Thực hành:
Viết 1 email + 1 đoạn chat phản hồi bug

Thực hành phiên dịch mô phỏng cuộc họp

🟠 Module 3: Biên – phiên dịch tài liệu IT
🎯 Mục tiêu: Nắm chắc kỹ thuật biên dịch và xử lý các loại tài liệu thường gặp
Bài 3.1 – Nguyên tắc dịch IT Comtor cần tuân thủ
Tính chính xác – tự nhiên – nhất quán

Cách tiếp nhận request, estimate, trả file dịch

Dịch nhanh + review kỹ bằng AI

Bài 3.2 – Quy tắc dịch tài liệu ngắn: message, alert, error
Dịch song ngữ [JP/VN]

Cách trình bày nút, tên item, giữ định dạng

Bài 3.3 – Dịch testcase, log bug
Cột điều kiện: ～こと

Các bước: ～をクリックする、～を入力する

Kết quả: ～が表示されること、～できないこと

Bài 3.4 – Dịch báo cáo tiến độ, weekly report
Format báo cáo

Cách diễn đạt tình trạng: tiến độ, issue, giải pháp

Bài 3.5 – Dịch Q&A
Trình bày Q&A rõ ràng: vị trí file, dạng câu hỏi, update câu

✅ Thực hành:
Dịch 1 log bug + 1 testcase mẫu

Viết 1 bản Q&A gửi khách hàng

🔵 Module 4: Quản lý dự án và xử lý tài liệu
🎯 Mục tiêu: Biết cách lưu trữ, xử lý tài liệu, làm handover đúng cách
Bài 4.1 – Cách tiếp cận dự án mới
Lấy thông tin từ đâu? Cần chuẩn bị gì?

Bài 4.2 – Handover và quản lý tài liệu
File handover, file thuật ngữ

Cách chia folder: VN, JP, Old, Tracking

Bài 4.3 – Tài liệu thường gặp và cách xử lý
Weekly report

Q&A

File thiết kế, message, spec

✅ Thực hành:
Sắp xếp thư mục tài liệu dự án

Tạo file handover giả lập cho người mới vào team

🟣 Module 5: Tổng kết và định hướng nâng cao
🎯 Mục tiêu: Định hình con đường sự nghiệp và cách học lâu dài
Bài 5.1 – Lộ trình phát triển
Hướng chiều sâu: Comtor Leader

Hướng chiều rộng: BrSE, PM, BA

Bài 5.2 – Học thêm gì sau khóa học?
Gợi ý tiếp: JLPT nâng cao, IT Japanese, kỹ thuật phần mềm cơ bản

Tài liệu và group nên follow

Bài 5.3 – Cách học hiệu quả & tránh bỏ cuộc
Tránh trì hoãn, sợ sai

Luyện tập đều đặn, tìm người hỗ trợ

✅ Thực hành:
Tự vạch lộ trình 6 tháng phát triển nghề nghiệp sau khóa học

📝 Phụ lục: Thực hành mini project
Mô phỏng dự án nhỏ: nhận yêu cầu → viết email → dịch file thiết kế → họp → viết biên bản → Q&A → báo cáo


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\Khó khăn trong ngành IT.docx`

Làm IT, tưởng giỏi code là đủ,
Nhưng làm việc với người khác tính cách, mình lại "ăn đủ"!
1. Code giỏi chưa đủ, phải "code" cả mối quan hệ
- Team có anh "Cực đoan" – chỉ muốn dùng công nghệ mới, bất chấp deadline.
- Cô "Truyền thống" – ghét đổi mới, cứ "Ông bà xưa dùng Java là đủ".
- Ông "Lơ mơ" – yêu cầu không rõ ràng, nhưng khi làm xong lại bảo "Không phải ý em muốn".
→ Bài học: Kỹ năng giải quyết xung đột quan trọng không kém kỹ năng debug.
2. Gặp khách hàng – Trận chiến ngôn ngữ
- Khách nói: "Tôi muốn hệ thống 'mượt như nhung'!"
- Dev ngơ ngác: "Mượt theo nghĩa UX hay tốc độ? DB có cần scale?"
Kết quả: 3 tháng sau, khách hàng quay lại: "Không phải ý tôi!"
→ Bài học: Phải học cách "tới bến" làm rõ yêu cầu mơ hồ thành spec rõ ràng.
3. Scrum Master như "bảo mẫu"
- Stand-up meeting biến thành "trận đấu tố":
- "Sao task này chậm?"
- "Tại API của anh chậm!"
- "Tại tôi không được training!"
→ Bài học: Làm IT phải học cách nói tránh để không thành "ngòi nổ".
4. Làm remote – Thử thách vô hình
Slack toàn tin nhắn khô khan: "Fix đi" → Bị hiểu nhầm là cáu kỉnh.
Không biết dùng emoji đúng lúc → Thả vào cuối câu tưởng khen, ai ngờ thành mỉa mai.
→ Bài học: Giao tiếp online cần học cả ngôn ngữ biểu cảm ảo.
5. Lên level, phải làm leader – Ác mộng mới mở ra
- Team toàn "cá mập" (giỏi nhưng hay cắn nhau).
- Product Manager đòi "làm feature này trong 1 ngày".
- Bản thân từ dev thành "thầy dỗi" – lúc nào cũng phải giải quyết drama.
→ Bài học: Tech lead cần EQ cao hơn IQ.
Kết: Giỏi code giúp bạn không bị đào thải, nhưng giỏi giao tiếp giúp bạn thăng tiến.
Soft skills là framework quan trọng nhất để "chạy" trong môi trường đa nhân cách.
"Lập trình viên giỏi nhất team không phải người viết code nhanh nhất, mà là người khiến cả team không muốn delete code của họ!"
Đừng lo lắng vì đã có chương trình dành riêng cho dân IT muốn cải thiện 5 điểm ý chí mạng trên.
TALK ONE-ONE : WORK SMART-STAY HAPPY (FREE)
3 Giá trị chính:
Làm chủ bản thân (Quản lý thời gian, công việc, sức khỏe & phát triển cá nhân).
Giao tiếp & ứng xử thông minh (Diễn đạt ấn tượng, giải quyết vấn đề, lắng nghe tích cực, teamwork hiệu quả).
Nuôi dưỡng tinh thần hạnh phúc (Rèn luyện sức bền tâm trí, khả năng tập trung & sáng tạo bền vững).
CÁCH THỨC THAM GIA
Đăng ký qua form
Phỏng vấn nhanh 5 phút
Tham gia buổi trò chuyện cùng Chuyên gia HR
THÔNG TIN CHI TIẾT
Thời gian: Các buổi tối (19:30 - 21:00)
Hình thức: Zoom Online
Đối tượng: Bạn trẻ 20-40 tuổi khao khát thay đổi tích cực
Chương trình miễn phí và có chọn lọc, các bạn nhanh tay đăng ký tham gia nhé. Form đăng ký mình để dưới bình luận ạ.


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\Lý thuyết nghề IT Comtor.pptx`

## Slide 1
Dành cho người thông thạo ngoại ngữ như:
tiếng Nhật, tiếng Hàn, tiếng Anh, tiếng Trung, tiếng Thái, v.v…
IT ComtorLý thuyết nghề
Quỳnh Nga IT
Khởi động hành trình của bạn!
## Slide 2
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Section 1
Giới thiệu khóa học
## Slide 3
Đối tượng khóa học
Các bạn sinh viên đang đi học, sắp đi làm muốn tìm hiểu về nghề IT Comtor.
Các bạn đã đi làm nhưng chưa được trang bị về Lý thuyết nghề.
Các bạn trái ngành muốn rẽ sang nghề IT Comtor.
Các bạn Senior Comtor, Comtor Leader muốn đóng gói kiến thức đào tạo member.
Các bạn sử dụng thành thạo ngôn ngữ tiếng Nhật.
Công ty IT quy mô vừa và nhỏ, chưa có bộ phận đào tạo Comtor chính thức.
## Slide 4
Mục tiêu khóa học
Định hình rõ ràng vai trò và công việc của một IT Comtor.
Làm chủ bộ kỹ năng thiết yếu: Giao tiếp chuyên nghiệp, biên dịch chính xác tài liệu IT chuyên sâu.
Hiểu rõ quy trình phát triển phần mềm và cách vận hành của một dự án IT.
Sẵn sàng “NHẢY VIỆC” sang IT Comtor ngay sau khóa học.
## Slide 5
Nội dung
Khóa học
Hiểu về “Phát triển phần mềm”
II. Công việc của IT Comtor
V. Định hướng nghề
III. Giao tiếp với khách hàng
IV. Biên dịch tài liệu
## Slide 6
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Hiểu về 
“Phát triển phần mềm”
## Slide 7
Phát triển phần mềm là gì?
🧠 Phát triển phần mềm = là hoạt động chuyển nhu cầu của người dùng thành một sản phẩm phần mềm thông qua lập trình máy tính.

📱 Ví dụ:
App đặt đồ ăn (Now, GrabFood)
Phần mềm học tiếng Anh
Game chơi trên điện thoại
💡 Tất cả đều là phần mềm do con người tạo ra bằng cách viết mã lệnh.
## Slide 8
Quy trình phát triển phần mềm
## Slide 9
Mô hình phát triển phần mềm
Agile Scrum
Waterfall
Phát triển tuần tự theo từng giai đoạn cố định
Khó thay đổi khi đã hoàn tất một giai đoạn
Phát triển linh hoạt theo từng vòng lặp.
Dễ dàng thay đổi theo phản hồi thực tế.
## Slide 10
Các vai trò “tiêu biểu” trong dự án
PM
BrSE
BA
DESIGNER
TESTER
COMTOR
DEV
Quản lý dự án
(Project Manager)
Lập trình viên 
(Developer)
Phân tích nghiệp vụ
(Business Analyst)
Kỹ sư cầu nối
Nhân viên kiểm thử
(QA, QC)
Phiên dịch viên
(Communicator)
Phụ trách thiết kế
UI UX
## Slide 11
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Công việc của IT Comtor
## Slide 12
Giao tiếp khách hàng
Biên dịch tài liệu
Công việc của IT Comtor
## Slide 13
Giao tiếp trực tiếp (họp trực tiếp, mặt đối mặt, customer care…)
Giao tiếp qua Video (họp online qua Googlemeet, zoom…)
Giao tiếp qua chat (Slack, Teams, Chatwork…)
Giao tiếp qua email (gửi thư điện tử)
Giao tiếp khách hàng
## Slide 14
Biên dịch tài liệu
## Slide 15
Công việc khác
## Slide 16
Quản Lý Đào Tạo (Senior Comtor, Comtor Leader)
## Slide 17
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Cách tiếp cận dự án mới
## Slide 19
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Giao tiếp với khách hàng
## Slide 20
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Các điểm cần chú ý 
trong giao tiếp
## Slide 21
Quy tắc chung
Chào hỏi khi bắt đầu hội thoại.
Ví dụ: お世話になっております。
　　　　 お疲れ様です。
## Slide 22
Quy tắc chung
Khi gọi tên khách hàng:

Tên khách + さん/様
Tên khách + 社長、部長
Tên công ty khách + さん/様

Ví dụ: 山田さん、山田様、山田部長
　　　ABC様、ABC様側
## Slide 23
Quy tắc chung
Khi nói về người phía mình với khách hàng:
Không cần dùng さん

Ví dụ:  Lam は対応させていただきます。

　　　 Lamの方で対応させていただきます。

　　　こちらのLam は対応させていただきます。
## Slide 24
Quy tắc chung
Không dùng vai vế khi nói về người bên mình với khách hàng.　社長、部長、リーダー
Ví dụ:

X：こちらの山田部長から、明日の会議が変更になるとの連絡がありました。

O：こちらの山田さんから、明日の会議が変更になるとの連絡がありました。
## Slide 25
Quy tắc chung
Không sử dụng thể ngắn, thể xuồng xã.
Dùng thể kính ngữ, khiêm nhường ngữ, lịch sự.
Cân nhắc mức độ lịch sự tùy trường hợp.

Ví dụ: する、話す

X：了解です。対応する。
O：承知いたしました。対応させていただきます。
　　Or　かしこまりました。対応いたします。
## Slide 26
Quy tắc chung
Không sử dụng từ lóng, cách nói ngắn, nói tắt.

Ví dụ: 
X：これって何 ？
O：こちらは何でしょうか。
　　これは何ですか。

X：ヤバイ、マジ、わかへん　など

Hạn chế sử dụng えと、あの～、
## Slide 27
Giao tiếp trực tiếp - phiên dịch
Trang phục lịch sự, trang nhã, phù hợp với hoàn cảnh giao tiếp.

　  Luôn đến sớm khoảng 5 - 10 phút trước giờ hẹn/cuộc họp.

　  Luôn mang theo sổ và bút để ghi chép. Trao danh thiếp nếu cần.

　  Ngồi/đứng gần đối tượng dịch (khách hàng, PM…).

　  Giới thiệu bản thân & team dự án rõ ràng, đặc biệt trong lần đầu gặp mặt.

　  Có thái độ vui tươi, thân thiện, ánh mắt tập trung vào đối phương.

　  Không làm việc riêng trong khi trao đổi; tắt tiếng điện thoại, laptop.
## Slide 28
Giao tiếp qua video
Thống nhất lịch họp, book link meeting, book phòng, mời tham gia.

　  Đọc hiểu tài liệu, chuẩn bị trước nội dung họp với team (vd: list up Q&A)

　  Tham gia họp trước 5–10 phút. Mang theo sổ và bút để ghi chú. 

　  Chọn không gian nền gọn gàng, không gian họp yên tĩnh, tránh tiếng ồn. 

　  Kiểm tra kỹ thiết bị trước buổi họp (mạng, webcam, mic, loa, tai nghe).

　  Mở sẵn tài liệu, nội dung cần chia sẻ.

　  Bật camera. Thực hiện record meeting (Công cụ ghi âm và tóm tắt cuộc họp: tl;dv)
## Slide 29
Giao tiếp qua email
Kiểm tra địa chỉ TO, CC đúng đối tượng. Tiêu đề email nêu rõ nội dung/chủ đề chính.

　  Luôn chào hỏi đầu thư.

　  Trả lời email trong vòng 24 giờ, khi chưa có câu trả lời chính thức, thực hiện phản hồi 2 lần.

　  Nội dung ngắn gọn, rõ ràng, chia đoạn dễ đọc, viết trong ⅓ màn hình.

　  Phong cách viết lịch sự, khiêm nhường. Chú ý viết đúng tên Kanji của khách, tên công ty khách. 

　  Tập tin đính kèm không vượt quá dung lượng cho phép (~20MB). 

　  Nếu lớn, dùng dịch vụ chia sẻ file. Bảo mật thông tin: mã hóa file, đặt mật khẩu ttrước khi gửi.
## Slide 30
Giao tiếp qua chát (Slack, Teams, Chatwork …)
TO: đúng người cần gửi, CC: những người liên quan. Viết đúng tên của khách.
Khi nhận được tin nhắn từ khách, thực hiện tiếp nhận 1-2 lần tùy tình huống

Lần 1: Thông báo đã tiếp nhận thông tin và sẽ xử lý. Sau khi xử lý xong sẽ trả lời lại.

Lần 2: Trả lời lại sau khi đã xử lý
Phản hồi đúng luồng, đúng thread để dễ dàng kiểm tra nội dung trao đổi.
Nội dung trình bày ngắn gọn, nếu là nội dung dài, nên phân chia đoạn, đề mục hợp lý.
Nội dung chỉ nên viết trong ⅓ màn hình, không nên viết dài tràn hết chiều ngang màn hình.
Văn phong lịch sự, kính ngữ, khiêm nhường.
## Slide 31
Ví dụ không nên
## Slide 32
Ví dụ sửa
## Slide 33
Giao tiếp qua chát (Slack, Teams, Chatwork …)
## Slide 34
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Mẫu câu dịch họp phổ biến
## Slide 35
Các mẫu câu dịch họp phổ biến
Họp báo cáo tiến độ/weekly report:
Chào mở đầu: お世話になっております。Nga/オフショアチームです。
Trường hợp bên khách chưa tham gia đủ người: xác nhận và chờ đủ người. 皆さん、お揃いではないようですが、しばらくお待ちしましょうか。
Trường hợp bên khách đã tham gia đủ: xin phép vào họp luôn. 皆さん、お揃いのようですので、始めさせていただきます。
Vào chủ đề báo cáo:
Mẫu câu báo cáo tổng quan: まず、今週の進捗について全体的に報告させていただきます。
Mẫu câu xin phép báo cáo chi tiết công việc đã làm tuần trước: 先週の作業を詳しく報告させていただきます。 タスク1は... タスク2は...
Mẫu câu xin phép báo cáo kế hoạch tuần tiếp theo: 続きまして、来週の作業計画について説明させていただきます。
Mẫu câu xác nhận khách có câu hỏi gì về vấn đề abc… không: ~ について、何かご不明な点やご質問などございますでしょうか。
## Slide 36
Các mẫu câu dịch họp phổ biến
Mẫu câu kết thúc cuộc họp:
Khi xác nhận lại lần cuối trước khi kết thúc: 他にご質問・ご要望などはございますでしょうか。なければ、会議を終了させていただきます。
Khi không còn nội dung nào khác: 本日の報告は終了となります。ありがとうございました。
後は特にないようでしたら、本日の会議はこれで終わらせていただきます。ありがとうございました。
Mẫu câu xử lý khi bị hỏi ngoài dự kiến:
Chưa rõ câu trả lời, xin phép xác nhận lại sau: 申し訳ございませんが、すぐにお答えできかねますので、確認してから後ほど連絡させていただいてもよろしいでしょうか。
Xin phép xác nhận lại với người phụ trách: こちらについては担当者に確認した上で、追って連絡いたします。
Khi cần xin thêm thời gian chuẩn bị câu trả lời: 詳細を確認した上で、次回の会議で説明させていただければと思います。
## Slide 37
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Biên dịch tài liệu
## Slide 38
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Quy tắc và Cách xử lý yêu cầu dịch
## Slide 39
Quy tắc dịch chung
Đảm bảo các yếu tố sau: 

Tính chính xác (tính đúng và tính đủ): Đảm bảo ý nghĩa được truyền tải chính xác từ bản gốc sang bản dịch.

Tính tự nhiên: Sử dụng cách diễn đạt tự nhiên trong tiếng Việt, tránh dịch máy móc theo cấu trúc.

Tính nhất quán: Duy trì sự nhất quán trong việc sử dụng thuật ngữ và phong cách xuyên suốt bản dịch.
## Slide 40
Tiếp nhận request dịch và estimate
Bước 1: Get file cần dịch ở thời điểm nhận request về folder lưu trữ riêng của Comtor trong dự án. Tại sao cần get file ở thời điểm này?
Bước 2: Count chính xác số words. Dùng công cụ đo lường số words chính xác, nếu cần. Không ước tính theo cảm tính! Tại sao lại là “nếu cần”?
Bước 3: Estimate nếu cần. Tại sao cần estimate?
Estimate theo công thức:
+ Dịch xuôi (JP-VN): 800 words/giờ
+ Dịch ngược (VN-JP): 400 words/giờ
Bước 4: Thông báo thời gian dự kiến có thể trả file dịch cho team. Sau đó tiến hành dịch.
Bước 5: Sau khi hoàn thiện dịch, thực hiện check format file, check hiển thị trước khi gửi cho khách hàng.
## Slide 41
Cách xử lý tài liệu dịch
Xác định khối lượng tài liệu: 

Trường hợp tài liệu khoảng < 1,5 page, 1~2 sheet: Có thể dịch và trả file hoàn thiện được -> dịch và trả luôn. 

Trường hợp tài liệu dài > 2 pages, > 2 sheets trở lên, tốn thời gian dịch và chờ đợi, có khả năng ảnh hưởng tiến độ phát triển: Dịch và trả file 2 lần.

+ Lần 1: Xử lý nhanh tài liệu bằng tool và trả file nhanh chóng. Báo trước là file chưa được review, team đọc tạm trước. 
+ Lần 2: Review và trả team file hoàn thiện.
## Slide 42
Ứng dụng AI vào xử lý dịch (phiên dịch - biên dịch)
Sử dụng Google Dịch
Sử dụng ChatGPT
Sử dụng Script dịch
Sử dụng dịch trên Google Doc
Để:
Phụ trách nhiều dự án 
Tăng tốc độ dịch thuật gấp 2–3 lần.
Duy trì tính nhất quán
Hạn chế lỗi và công sức hiệu đính.
Hướng dẫn cụ thể trong khóa Thực Hành Dịch cho BrSE, Comtor
## Slide 43
2. Đối với dịch xuôi từ tiếng Nhật → tiếng Việt
Dịch song ngữ đối với tên item, message, tên button, để lại từ gốc theo công thức [ログイン/Login]
Đặt các phần cố định như tên item, message vào ngoặc “ ”  [ ]
Ví dụ về Message：
パスワードが間違っています。エラーメッセージを確認してください。
Dịch là:
[パスワードが間違っています。エラーメッセージを確認してください。/Mật khẩu không đúng. Vui lòng kiểm tra thông báo lỗi.]
## Slide 44
Ví dụ về tên Item:メール配信設定は有効にしてください。
Dịch là: Hãy thiết lập [メール配信設定/Email Delivery Settings] thành trạng thái "Enable".  (hoặc [メール配信設定/Cài đặt gửi thư])

→ Lý do: khi dịch ngược, nếu không có phần [メール配信設定/Email Delivery Settings] thì có thể không dùng chính xác tên item trong hệ thống. Có thể sẽ dịch là メール送信設定 chẳng hạn.
## Slide 45
Ví dụ về Button
 変更内容を保存するには、下書きとして保存ボタンをクリックしてください。
Tiếng Việt: Để lưu lại nội dung chỉnh sửa, hãy nhấn nút [下書きとして保存/Save as Draft]. (hoặc [下書きとして保存/Lưu nháp]

→ Nếu không giữ song ngữ, khi dịch ngược, team viết là "Lưu nháp" có thể bị dịch nhầm thành 一時保存、下書き保存 chẳng hạn
## Slide 46
Dịch ngược:

Cần giữ nguyên định dạng file gốc, sheet, item, column, không thay đổi thứ tự.  
Cần quản lý thống nhất 1 nguồn với khách hàng.
   Nhất quán trong việc sử dụng thuật ngữ.
## Slide 47
Giữ nguyên các thuật ngữ tiếng Anh thường dùng, ví dụ như 'class', 'method', 'UT', 'IT', 'file', “enable” “disable”

Ví dụ:
生成: Gen                    プルダウン: pulldown 
非活性: Inactive            活性: Active
## Slide 48
Nhất quán trong việc sử dụng thuật ngữ.
## Slide 49
Một số chú ý khi dịch con số.
Hay gặp trong testcase

以上、以下、未満
＞＝100
＜＝100
= 100
< 100
> 100
## Slide 50
Dịch thoát nghĩa

Ví dụ:
表示が可笑しい
hiển thị không bình thường

Xác định record cụ thể:
～が正常に完了する
Nの取得に失敗する
## Slide 51
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Quy tắc dịch cụ thể tương ứng với một số tài liệu thường gặp
## Slide 52
Quy tắc dịch message
Information/ Cung cấp thông tin
## Slide 53
Quy tắc dịch message
Xác nhận ( Confirmation)
## Slide 54
Quy tắc dịch message
❗ Lỗi (Error Message)
## Slide 55
Quy tắc dịch message
⏳ Loading / Đang xử lý
## Slide 56
Quy tắc dịch message
✅ Thành công (Success)
## Slide 57
Quy tắc dịch test case
## Slide 58
Quy tắc dịch test case
Cột "Điều kiện tiền đề"
Các điều kiện cần thiết để thực hiện test (login, data đã tồn tại, v.v.)
Mẫu câu thường gặp:
Nên kết thúc bằng 「～こと」
「ユーザーがログインしていること」
「テスト用のデータが登録されていること」
## Slide 59
Quy tắc dịch test case
🔹 Cột "Các bước thực hiện"
Các thao tác cụ thể từng bước (click button, input text, v.v.)
Câu mẫu thường gặp:
「ログイン画面を開く」
「ユーザーIDを入力する」
「[保存]ボタンをクリックする」
Mẫu câu có cấu trúc:
「Vると、～が表示される」→ Khi thao tác A, B sẽ hiển thị
「一度Vたら、～できない」→ Sau khi đã làm A, không thể thực hiện B
## Slide 60
Quy tắc dịch test case
🔹 Cột "Kết quả mong muốn"
Mô tả hệ thống phản hồi ra sao sau thao tác.
Câu mẫu thường gặp:
Cấu trúc cần dùng “～こと” để thể hiện kỳ vọng.
ダッシュボードが表示されること
データが正常に保存されること
エラーメッセージが表示されること
ボタンが非活性になること
## Slide 61
🔹 Các cấu trúc thường gặp khác
Vると、～が表示される
Khi làm A thì B hiển thị
ログインボタンを押すと、ホーム画面が表示される

Vたら、～になる／できない
Sau khi làm A thì B trở nên như thế nào
パスワードを間違えて入力したら、エラーメッセージが表示される
アカウントを削除したら、再ログインできない

～することができる／できない
Có thể/Không thể làm gì
未ログイン状態では、商品を購入することができない

～が完了すること
Hoàn tất điều gì đó
決済が完了すること
データのアップロードが完了することを確認してください
## Slide 62
Ví dụ về file testcase thực tế
## Slide 63
Ví dụ về log bug thực tế
## Slide 64
Quy tắc dịch weekly report/báo cáo tiến độ
Format file Báo cáo tiến độ
Kiểm tra nội dung và tiến độ từng hạng mục, xác nhận lại với PM nếu có chỗ không đúng/không rõ ràng, hoặc thiếu thông tin. Thực hiện chỉnh sửa khi cần. 
Tiến hành dịch. 
Báo cáo: báo cáo tổng thể trước, sau đó mới đi vào chi tiết, thống nhất các tiến độ: inprogress, VN review, JP review.

Giải thích nội dung chung, ký hiệu: %, bôi màu (nếu ko có ý đồ gì đặc biệt thì cần xóa bôi màu nội bộ đi, nếu có ý đồ thì cần giải thích.
Cần focus vào: Nội dung nào đang bị delay/có khả năng delay/đang trở thành issue
Nếu có issue - cần có giải pháp đi kèm.
## Slide 65
Quy tắc dịch Q&A
Luôn trình bày kết luận trước: confirm ý hiểu/ nhờ giải thích/nhờ check kết quả/nhờ sửa tài liệu…
- Tên file:
- Vị trí cần hỏi: 
+ Trường hợp file excel: Line bao nhiêu của excel, hoặc No. bao nhiêu
+ Trường hợp file word, txt: Mục mấy, phần nào, copy đoạn nội dung cần hỏi, đưa vào " ".
- Nội dung cần hỏi: 
+ Trường hợp đã hiểu nhưng không chắc chắn về ý hiểu có đúng hay không, thì đưa câu hỏi về dạng Yes No Question: Về phần ..., chúng tôi hiểu là "...", hiểu như vậy có đúng không? Nếu chưa đúng, nhờ các bạn giải thích.
+ Trường hợp thật sự chưa hiểu: Về phần..., tôi chưa hiểu..., nhờ các bạn giải thích cụ thể cho chúng tôi được không? (nếu có ví dụ thêm thì nhờ giải thích cho ví dụ)
- Update câu hỏi: Nếu đã nhận được trả lời của khách, mà vẫn chưa clear, thì update câu hỏi kên trên cùng, ghi thêm ngày và bôi đỏ nội dung update, không tạo Q&A mới.
----------------------------------------------------
Updated at 2023/11/09
Về phần abcxyz, tôi muốn hỏi lại/hỏi thêm là ....
## Slide 66
Handover dự án
File handover

File thuật ngữ dự án
## Slide 67
V. Định hướng nghề
Phát triển chiều sâu hoặc mở rộng vai trò
Quỳnh Nga IT - Đồng Hành Cùng Bạn
## Slide 68
Nỗi lo của người mới
“Làm Comtor mãi thì sau này làm gì tiếp?”
“Chỉ giỏi tiếng Nhật thôi có đủ sống trong ngành IT?”
“Không code, không test – liệu có thăng tiến được không?”
## Slide 69
Hướng phát triển chính
Chiều dọc: Phát triển lên Comtor Leader
Chiều ngang: Mở rộng skill, phát triển lên BrSE, BA, PM
01
02
## Slide 70
Hướng 1: Comtor Leader
- Trau dồi tiếng Nhật nâng cao
- Học quản lý team dịch, mentoring
- Dẫn dắt dự án, xử lý vấn đề với khách hàng
- Phù hợp với người thích ngôn ngữ, tổ chức
## Slide 71
Hướng 2: BrSE / BA / PM
👉 Là người giỏi dịch.
👉 Là người thích hiểu sâu.
👉 Là người có thiên hướng quản lý.
## Slide 72
CHỌN HƯỚNG PHÙ HỢP
Xác định rõ “mình sẽ đi theo hướng nào”　sẽ tránh được cảm giác dậm chân tại chỗ sau 2–3 năm.
Không ai giỏi cả tiếng Nhật + kỹ thuật + quản lý ngay từ đầu cả. 

Bạn hành động trước, bạn sẽ trở nên đủ trong hành trình đó.
## Slide 73
Nếu như bạn ngại:
- “Mình có đủ khả năng không? Không biết gì về kỹ thuật thì có làm được Comtor không?”
- “Đã học xong khóa lý thuyết rồi, nhưng vẫn mơ hồ – không biết bắt đầu từ đâu.”
- “Tự học mãi không hiệu quả, dễ nản, dễ trì hoãn.”
- “Sợ đi phỏng vấn bị hỏi trúng cái mình không biết – mất tự tin.”
Coaching 1:1
Thì mình ở đây!
## Slide 74
THANK YOU
QUỲNH NGA IT
Cảm ơn bạn đã chọn và đồng hành cùng khóa học IT Comtor. 
Mong rằng những kiến thức hôm nay sẽ trở thành hành trang quý giá cho tương lai của bạn!


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\Tài liệu Edit Video.xlsx`

## Sheet: 1. Checklist edit video
✅ Check list edit video (capcut)
Giai đoạn | Nhiệm vụ | Thông tin cụ thể | Check | Note
Trước khi edit video | Trả lời câu hỏi | WHY: Tại sao bạn cần làm video này? | False
WHAT: Xác định mục tiêu video, Nội dung, ý tưởng chính là gì? | False
WHO: Đối tượng người xem là ai? | False
WHERE: Nền tảng đăng phù hợp? | False
WHEN: Thời gian nào đăng video là phù hợp? | False
Bạn muốn làm video cấp độ nào? | Cấp độ 1: Template Capcut/Canva | False | Hãy luôn nhớ: Lưu các mục yêu thích vào thư viện
Cấp độ 2: Template + chỉnh sửa Capcut/Canva | False
Cấp độ 3: Kết hợp linh hoạt  Template + chỉnh sửa Capcut/Canva | False
Trong khi edit video | Bước 1: Intro - Outro | Tạo intro và outro bằng template Capcut/ Canva | False
Bước 2: Cắt - Ghép | Điều chỉnh âm thanh: Voice chính (-12dB ~ -6dB) | False
Nhạc nền (-30dB ~ -20dB) | False
Hiệu ứng âm thanh (~ -10dB) | False
Điều chỉnh tốc độ video | False
Cắt bỏ phần thừa, nói lặp | False
Note 1: Kéo giãn sóng âm để dễ canh chỉnh | False
Note 2: Không nên lạm dụng quá nhiều hiệu ứng âm thanh | False
Bước 3: Make up | Làm sáng đồng bộ bằng bộ lọc (rực sáng, trong sáng) | False
Làm mịn da, đỏ môi (tự động) | False
Làm mịn da, đỏ môi (thủ công) | False
Làm mờ nền (nếu cần) | False
Bước 4: Chèn hiệu ứng | Thêm chữ thông thường: chọn font chữ, màu chữ, chọn kiểu bong bóng, chọn hiệu ứng chuyển động ra sao | False
Thêm chữ từ mẫu văn bản của capcut: Chọn mẫu chữ và điều chỉnh | False
Chèn nhạc nền và âm thanh hiệu ứng | False
Thêm nhãn dán Capcut | False
Chèn hình ảnh/video từ ngoài | False
Bước 5: Tạo ảnh bìa | Chọn từ video | False
Bộ nhớ thiết bị (tải lên từ máy tính) | False
Dùng form của Capcut | False
Sau khi edit video | Sau khi edit video | Xuất video 1080p HD | False
Lên lịch đăng | False
Rút kinh nghiệm – cải tiến (Kaizen) | False
## Sheet: 2. Tổ hợp phím tắt_Capcut
✅ Danh sách phím tắt trong CapCut (Desktop)
Phím tắt | Chức năng
Space | Phát/Dừng video (Play/Pause)
Delete (Del) | Xoá clip, hình ảnh, âm thanh được chọn
Ctrl + Z | Hoàn tác thao tác trước đó (Undo)
Ctrl + Shift + Z | Làm lại thao tác đã hoàn tác (Redo)
Ctrl + C | Sao chép đoạn clip đã chọn
Ctrl + V | Dán đoạn clip đã sao chép
Ctrl + X | Cắt (Cut) đoạn clip đã chọn
Ctrl + A | Chọn tất cả các đoạn trên timeline
Ctrl + S | Lưu dự án
Ctrl + E | Xuất video (Export)
Ctrl + +/- | Phóng to/thu nhỏ timeline
Alt + cuộn chuột | Zoom timeline (phóng to/thu nhỏ nhanh timeline theo chiều ngang)
↑ / ↓ | Di chuyển giữa các lớp trên timeline
← / → | Di chuyển từng frame video (trái/phải 1 khung hình)
Shift + ← / → | Di chuyển nhanh hơn giữa các frame
B | Công cụ lưỡi dao (Blade/Split tool – để cắt video)
M | Thêm marker vào timeline
Ctrl + M | Tắt tiếng đoạn đã chọn (Mute/Unmute)
Ctrl + D | Nhân bản nhanh đoạn clip (Duplicate)
Ctrl + T | Thêm văn bản (Text)
💡 Lưu ý thêm
Không phải mọi phiên bản CapCut đều hỗ trợ đầy đủ phím tắt.
Một số phím tắt có thể thay đổi tuỳ theo bản cập nhật phần mềm.
Bạn có thể vào mục "Help" hoặc "Settings" > Keyboard Shortcuts trong phần mềm để kiểm tra các phím tắt mới nhất hoặc tuỳ chỉnh theo nhu cầu.
## Sheet: 3. Đường link template
✅ Đường link mẫu Template_Aki Đinh
Template | Đường link
Aki_Intro-Outro_Mẫu 1 (Khó) | https://www.canva.com/design/DAGpkWGMDFE/Rq6CgWEtN7Y2W6snmNC_Og/edit?utm_content=DAGpkWGMDFE&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
Aki_Intro-Outro_Mẫu 2 | https://www.canva.com/design/DAGpkU_2OM4/C6DY94uE2LSSJCjFsR7WlQ/edit?utm_content=DAGpkU_2OM4&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
Aki_Intro-Outro_Mẫu 3 | https://www.canva.com/design/DAGpk-WCPYY/pHVrlIDp6JjPdytR_yWUPg/edit?utm_content=DAGpk-WCPYY&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
Aki_Intro-Outro_Mẫu 4 | https://www.canva.com/design/DAGpk0yBmVM/LezX4-2-a5cfYKYDQxK0ww/edit?utm_content=DAGpk0yBmVM&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
Aki_Slide thuyết trình_Mẫu 1 | https://www.canva.com/design/DAGpk8LieCU/u2QK6dPCWdYlsdhRaC3B6Q/edit?utm_content=DAGpk8LieCU&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton


---
**Nguồn:** `Udemy\Udemy - 4-30 - IT Comtor Lý thuyết Nghề\hieu_ve_phat_trien_phan_mem_20260331094449.pptx`

## Slide 1
Quỳnh Nga IT
Đồng hành cùng bạn !
Bài thuyết trình
Hiểu về 
Phát triển phần mềm
Khám phá các khái niệm cơ bản, quy trình chuẩn và vai trò quan trọng trong một dự án công nghệ thông tin thực tế.
## Slide 2
Quỳnh Nga IT
Đồng hành cùng bạn !
Phát triển phần mềm là gì?
Phát triển phần mềm là hoạt động chuyển nhu cầu của người dùng thành một sản phẩm phần mềm thông qua lập trình máy tính.
Tất cả đều là phần mềm do con người tạo ra bằng cách viết mã lệnh.
App đặt đồ ăn
Now, GrabFood, ShopeeFood
Phần mềm học tập
Học tiếng Anh, Duolingo
Game & Giải trí
Game chơi trên điện thoại
## Slide 3
Các loại ứng dụng phần mềm
Quỳnh Nga IT
Desktop App
Ứng dụng cài đặt và chạy trực tiếp trên hệ điều hành của máy tính (Windows, macOS, Linux).
Web App
Ứng dụng chạy trên trình duyệt web, không cần cài đặt, có thể truy cập từ bất kỳ thiết bị nào có internet.
Mobile App
Ứng dụng được thiết kế đặc biệt để chạy trên các thiết bị di động như điện thoại thông minh và máy tính bảng.
## Slide 4
Phần 3
Quy trình phát triển phần mềm
Quỳnh Nga IT
Đồng hành cùng bạn !
Một dự án phần mềm thường trải qua 6 giai đoạn cơ bản theo trình tự:
Thu thập yêu cầu
Lấy thông tin và mong muốn từ khách hàng
1
Phân tích &
Thiết kế
Lên kiến trúc hệ thống và giao diện UI/UX
2
Lập trình
(Coding)
Viết mã nguồn để tạo ra phần mềm
3
Kiểm thử
(Testing)
Tìm và sửa lỗi (bugs) trước khi ra mắt
4
Triển khai
(Deployment)
Đưa sản phẩm lên môi trường thực tế
5
Vận hành &
Bảo trì
Hỗ trợ người dùng và cập nhật tính năng
6
## Slide 5
Quỳnh Nga IT
Đồng hành cùng bạn !
Mô hình phát triển
Waterfall
Mô hình Thác nước
Tuần tự
Phát triển tuần tự theo từng giai đoạn cố định (từ trên xuống dưới).
Khó thay đổi
Rất khó để thay đổi yêu cầu khi đã hoàn tất một giai đoạn và chuyển sang bước tiếp theo.
Agile Scrum
Mô hình Linh hoạt
Linh hoạt
Phát triển linh hoạt theo từng vòng lặp ngắn (Sprint) liên tục.
Dễ điều chỉnh
Dễ dàng thay đổi, cập nhật và thích ứng nhanh theo phản hồi thực tế từ người dùng.
VS
## Slide 6
Quỳnh Nga IT
Đồng hành cùng bạn !
Hiểu về Phát triển phần mềm
Các vai trò "tiêu biểu" trong dự án
Mỗi thành viên đóng một vai trò quan trọng để tạo nên một sản phẩm phần mềm thành công
PM (Project Manager)
Quản lý toàn bộ dự án, lên kế hoạch, phân bổ nguồn lực và theo dõi tiến độ.
BrSE (Bridge SE)
Kỹ sư cầu nối, kết nối giao tiếp và kỹ thuật giữa khách hàng và đội ngũ phát triển.
BA (Business Analyst)
Chuyên viên phân tích, thu thập và làm rõ các yêu cầu nghiệp vụ từ người dùng.
Designer
Thiết kế giao diện (UI) và tối ưu hóa trải nghiệm người dùng (UX) cho sản phẩm.
Dev (Developer)
Lập trình viên, người trực tiếp viết mã lệnh để xây dựng các tính năng phần mềm.
Tester (QA/QC)
Chuyên viên kiểm thử, tìm kiếm lỗi (bug) và đảm bảo chất lượng phần mềm.
Comtor (Communicator)
Biên phiên dịch viên IT, hỗ trợ dịch thuật tài liệu và trao đổi ngôn ngữ trong dự án.


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Apps Script.pptx`

## Slide 1
Bài 4: Dùng Script (phù hợp Excel, Slide)
✅ Hướng dẫn sử dụng:
File Script: https://docs.google.com/spreadsheets/d/1P41SgnpqNRLUWzJZAwK5TqRvSBAKWH-w/edit?usp=sharing&ouid=104416917441975431198&rtpof=true&sd=true 
Mở Google Sheets của bạn
Vào Tiện ích mở rộng (Extensions) → Apps Script
Xóa toàn bộ nội dung cũ (nếu có) trong Mã.gs, dán đoạn mã trên vào
Nhấn Lưu (Ctrl + S)
Tải lại Google Sheets
Bạn sẽ thấy menu Translate xuất hiện trên thanh công cụ
Chọn một trong các mục để dịch theo nhu cầu:
8.  Bấm "Nâng cao" → "Đi tới... (không an toàn)" → "Cho phép" là xong.


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\ChatGPT.pptx`

## Slide 1
Dùng ChatGPT
✅ Hiểu ngữ cảnh rất tốt, dịch mượt, giữ mạch văn
✅ Có thể huấn luyện bằng thuật ngữ riêng, chuyên nghiệp, đúng ngữ cảnh
✅ Phù hợp dịch từng đoạn
➖ Tốc độ xử lý: chậm hơn Google dịch 
➖ Không phù hợp dịch dạng file
👉 Nên dùng trong trường hợp dịch từng đoạn, độ chính xác cao, cần sử dụng đúng thuật ngữ chuyên ngành
## Slide 2
Hướng dẫn sử dụng
Chuẩn bị file thuật ngữ.
Mở thread ChatGPT mới, đính kèm file thuật ngữ (hoặc paste danh sách thuật ngữ) và nhập prompt sau:—---[LMS] Dịch Nhật-ViệtTừ bây giờ tôi sẽ sử dụng thread này để dịch tài liệu IT từ tiếng Nhật sang tiếng Việt.File đính kèm là bảng thuật ngữ cần được ưu tiên sử dụng trong mọi bản dịch.
Hãy đọc toàn bộ nội dung file, sau đó lưu tất cả cặp Tiếng Nhật – Tiếng Việt để áp dụng một cách nghiêm ngặt và nhất quán vào mọi bản dịch trong thread này. 
             Yêu cầu DỊCH TUYỆT ĐỐI CHÍNH XÁC bám theo câu gốc, KHÔNG thêm bớt nội dung, KHÔNG suy diễn.
Tôi sẽ gửi lần lượt các đoạn yêu cầu dịch. Nếu đã ghi nhớ và sẵn sàng thực hiện dịch, hãy trả lời “Sẵn sàng”.—---
Paste câu cần dịch vào thread đó (không cần ghi lại yêu cầu). Sử dụng thread này cho mọi lần dịch trong dự án.
## Slide 3
Thực hành
Bài 1: Dùng file thuật ngữ sau, tạo thread ChatGPT dịch Nhật - Việt theo hướng dẫn. 
Tạo file thuật ngữ và add link vào đây

Bài 2: Dịch đoạn sau sang tiếng Nhật ở thread ChatGPT vừa tạo.
Kiểm tra xem đoạn ChatGPT dịch có sử dụng chính xác các thuật ngữ trong file không.
Add đoạn cần dịch vào đây


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Checklist kiểm tra email tiếng Nhật.xlsx`

## Sheet: JP
◇メール送信前 チェックリスト
False | 宛先（To、Cc、Bcc）は間違っていないか ？
False | 件名は内容が一目で分かる具体なものになっているか？
False | 添付ファイルは正しいものが添付されているか？
False | 相手は添付ファイルを開けるか？
（ファイルサイズ、ファイル形式）
False | 宛名は「会社名＋部署名＋氏名＋様」となっているか？
False | 書き出しの挨拶は、相手との関係性や送信のタイミングに合っているか？
False | 名乗りは「会社名＋部署名＋氏名」になっているか？
False | 本文を要旨から始めているか？
False | 詳細は読みやすいレイアウトになっているか？
・20～30文字で改行している
・段落と段落の間を空白で区切る
・必要に応じて箇条書きを使う
False | 結びの挨拶で終わっているか？
False | 署名が付いているか？
False | 誤字・脱字がないか？
False | 失礼な表現になっていないか？
## Sheet: VN
◇ Danh sách kiểm tra trước khi gửi email
False | Người nhận (To, Cc, Bcc) đã chính xác chưa?
False | Tiêu đề email đã cụ thể và phản ánh nội dung một cách rõ ràng ngay từ cái nhìn đầu tiên chưa?
False | Tệp đính kèm đã là tệp đúng chưa?
False | Người nhận có thể mở được tệp đính kèm không?
（Kích thước file, định dạng file）
False | Phần xưng tên đầu thư đã ghi đúng "Tên công ty + Phòng ban + Họ tên + kính ngữ (様)" chưa?
False | Lời chào mở đầu đã phù hợp với mối quan hệ với người nhận và thời điểm gửi chưa?
False | Phần giới thiệu bản thân đã ghi đầy đủ "Tên công ty + Phòng ban + Họ tên" chưa?
False | Phần thân bài có bắt đầu bằng nội dung chính (ý chính) không?
False | Phần chi tiết đã được trình bày dễ đọc chưa?
- Ngắt dòng sau mỗi 20–30 ký tự
- Có khoảng trắng giữa các đoạn
- Dùng danh sách/bullet nếu cần
False | Đã kết thúc bằng lời chào cuối thư chưa?
False | Đã chèn chữ ký chưa?
False | Có lỗi chính tả hay thiếu sót không?
False | Có dùng biểu hiện thiếu lịch sự không?


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Danh sách từ vựng.xlsx`

## Sheet: Danh sách từ vựng 
Tiếng Nhật | Tiếng Việt
暗号化 | Mã hóa
通信 | Communicate
通信経路 | Communication route
実装 | Coding
ログ取得 | Get log
ログ | Log
取得 | Get
サーバ | Server
サーバ冗長化 | hệ thống dự phòng Server
AWSのサーバ冗長化 | hệ thống dự phòng Server của AWS
バックアップ | backup
マルウェア | malware (phần mềm độc hại)
マルウェア対策 | phương án phòng chống phần mềm độc hại
ダウンロード | Download
ドミノ倒し | hiệu ứng domino
サーバーの取付け | Lắp đặt Server
サーバーの冗長化 | Dự phòng Server
サーバーの配線 | Hệ thống dây Server
予備電源 | nguồn điện dự phòng
サービス乗っ取りがあった | dịch vụ bị chiếm quyền kiểm soát
不審なふるまい | hành vi đáng ngờ
作品の証券化 | chứng khoán hoá, chuyển thành chứng khoán
証券 | chứng khoán
劇 | Kich,vo kich
劇場 | Nha hat kich
演奏者 | Nguoi bieu dien
作り手
NFT | Tien ao
トークン | Token
ウォレット | Wallet (ví)
出品登録 | đăng ký trưng bày sản phẩm
衣裳 | quần áo, phục trang
間隙の際 | Khi ranh、Khi co thoi gian
隙間の際 | Khi ranh、Khi co thoi gian
転売 | Bán lại
著作権 | Quyền tác giả
観劇 | Xem kich
観劇者 | Nguoi xem (kich), khan gia
熱量 | Khong khi soi noi
作品の熱量 | Khong khi soi noi cua tac pham？
大道具 | đạo cụ lớn
小道具 | đạo cụ nhỏ
応援メッセージ | tin nhắn ủng hộ
バックステージ | Back stage
仕掛けのある絵本 | SÁCH DỰNG HÌNH 3D
セキュリティーホール | lỗ hổng bảo mật
なりすましの抑止 | ngăn chặn việc giả mạo danh tính
デジタル教具 | thiết bị dạy học kỹ thuật số
戻る | trở về
戻り値 | giá trị trả về(của 1 function)
印刷 | In ấn, dấu
参照 | Tham chiếu, tham khảo
更新 | Gia hạn, đối mới, cập nhật
編集 | Biên tập
画面 | màn hình
検索 | Thảo luận, bàn bạc
新規 | Mới lạ, mới mẻ
登録 | Đăng ký, sự đăng ký
新規登録 | Đăng ký mới
修正 | Tu sửa, đính chính
一覧 | Danh sách
追加 | Sự thêm vào
開く | Mở
確認 | Xác nhận
画像 | Hình tượng, hình ảnh
解除 | hủy bỏ
障害 | Trở ngại, chướng ngại
変更 | Biến đổi, thay đổi
仕様書 | bảng thiết kế (document)
削除 | Xóa bỏ, gạch bỏ
項目 | Hạng mục, điều khoản
接続 | Tiếp tục
貼り付け | Dán vào, gắn vào( file vi tính)
降順 | sắp xếp giảm dần
昇順 | sắp xếp tăng dần
木をパースする | duyệt cây
小なり | nhỏ hơn (<)
小なりイコール | nhỏ hơn hoặc bằng (<=)
イコール | bằng (=)
大なり | lớn hơn (>)
大なりイコール | lớn hơn hoặc bằng (>=)
余り | chia lấy dư
暗黙 | mặc định ngầm
演算子 | toán tử
通信 | truyền thông dữ liệu
接続 | kết nối
上り | up
下り | down
トラフィック | thông tin (số lượng) chạy trên mạng
上限 | giới hạn
枯渇 | hết,cạn kiệt
制限 | hạn chế
監視 | giám sát
受信 | nhận(dữ liệu)
送信 | gửi(dữ liệu)
分岐 | phân,chia nhánh
速度 | tốc dộ
経路 | kênh,tuyến đường(traceroute)
帯域 | băng thông
範囲 | phạm vi
変換 | chuyển đổi(NAT)
応答 | trả lời(response)
自動割り当て | tự động cấp phát(DHCP)
保守 | bảo trì
代替 | thay thế(secondary)
優先 | ưu tiên(primary)
無線 | mạng không dây
認証 | xác thực(certificate)
重複 | chồng chéo,trùng lặp
影響 | ảnh hưởng
回線 | đường truyền(line)
干渉 | nhiễu sóng
設置 | lắp đặt
結線 | kết nối dây(LAN)
証明書 | chứng chỉ(SSL)
分離 | ngăn cách
構成図 | sơ đồ cấu hình(diagram)
スパニングツリー | giao thức spanning-tree
設定変更 | thay đổi cài đặt(change)
設定追加 | thêm cài đặt(add)
設定削除 | xóa cài đặt(delete)
詰まる | tắc ngẽn
宛先 | địa chỉ(to)
時刻 | thời gian(NTP)
ホスト名 | hostname
指定 | chỉ định (port)
コミット | lưu lại thay đổi(commit )
特権 | đặc quyền(admin,root)
使用率 | tỷ lệ sử dụng(ram,memory)
疎通 | kết nối
経由 | thông qua
動的IP | IP động(dynamic)
静的IP | IP tĩnh(static)
隣接 | gián tiếp
除外 | loại trừ
構成 | cấu tạo
設計 | thiết kế
スコープ | phạm vi(scope)
仮想 | ảo (virtual)
対象 | đối tượng
障害 | sự cố
対応 | xử lý, đối phó
原因 | nguyên nhân
切り分ける | phân chia
更新 | làm mới
作成 | tạo ra
分散配置 | bố trí phân tán dữ liệu
クラウド | đám mây
構築 | xây dựng
電子メール | email
ファイル共有 | share file
特徴 | đặc trưng
設定 | cài đặt
管理者 | người quản lý(admin)
確認 | kiểm tra, xác nhận
再起動 | khởi động lại(restart)
移動 | di chuyển
削除 | xoá
変更 | thay đổi
アクセス権限 | quyền truy cập
属性 | thuộc tính
読み込み権 | quyền đọc dữ liệu(Read)
書き込み権 | quyền đọc và chỉnh sửa dữ liệu(write)
実行権 | quyền thực hành(run)
容量 | dung lượng
負荷 | chịu tải(stress)
穴あけ | cho phép truy cập
許可 | cho phép truy cập
検索 | tìm kiếm
条件 | điều kiện
ドライブマップ | mapping ổ đĩa (win server)
調査 | điều tra, tìm hiểu
停止 | dừng
制御端末 | máy tính điều khiển
検証 | test, chạy thử
本番 | môi trường thật(production)
環境 | môi trường
公開 | công khai(public,release)
切替 | chuyển đổi từ main⇆backup(fail over)
フェイルオーバー
冗長化 | nhân bản dự phòng(duplication)
名前解決 | giải pháp tên miền dns(name resolution)
可用性 | tính khả dụng
取得 | lấy(get) vd: lấy log
切り戻し | quay về trạng thái cũ
情報収集 | thu thập thông tin
攻撃 | tấn công
なりすまし | ăn cắp danh tính(Identity theft)
フィッシング | hình thức lừa đánh cắp thông tin
sau đó lừa đảo tài chính qua internet
詐欺 | lừa đảo
第三者 | người thứ ba
集約 | tổng hợp
受容 | chấp nhận,tiếp nhận
リスク | rủi ro
内部不正 | ăn cắp, lấy ra, xóa hoặc phá hủy
thông tin bí mật hoặc tài sản
thông tin của những người trong công ty
アクセス不正 | truy cập trái phép
異常 | bất thường,lạ thường
機密保持 | thỏa thuận bảo mật( Non Disclosure Agreement)
是正処理 | quá trình khắc phục
不適合 | không thích hợp,không đúng yêu cầu
発生 | phát sinh,xảy ra
初期パスワード | mật khẩu ban đầu(initial pass)
感染 | lây nhiễm(virus)
侵入 | xâm nhập
低減 | giảm bớt
盗み出す | ăn cắp,đánh cắp thông tin ra bên ngoài
盗み見み | nhìn trộm
ハッシュ値 | giá trị hàm băm(hash value)
脆弱性診断 | chẩn đoán lỗ hổng hệ hống
暗号化 | mã hóa
デジタル署名 | chữ ký điện tử
個人情報 | thông tin cá nhân
情報漏えい | rò rĩ,lộ thông tin
公開鍵 | khóa công khai
秘密鍵 | khóa bí mật
認証コード | mã xác thực
復号 | giải mã,mở khóa
改ざん | làm giả thông tin(data)
誘導 | dẫn dắt,chỉ đạo
詐称 | làm giả thông tin(vd:tên tuổi,địa chỉ)
偽造 | làm giả,chế tạo giả(đồ vật,vd: thẻ gai, pasport)
信頼 | tin cậy
可用性 | tính khả dụng(Availability)
信頼性 | tính tin cậy (Reliability)
完全性 | tính toàn vẹn(Integrity)
保守性 | khả năng bào trì(Serviceability)
規則 | quy tắc,luật lệ
分析 | phân tích
検知 | phát hiện (IDS)
防止 | ngăn chặn(IPS)
損害賠償 | bồi thường thiệt hại
保護 | bảo hộ
接触 | tiếp xúc
遮断 | cắt, chặn lại
標的型 | hình thức tấn công bằng cách gửi mail có chứa virus(Targeted attack)
ネットワーク帯域を圧迫する | bóp băng thông mạng
発注 | Đặt hàng
受注 | Tiếp nhận yêu cầu đặt hàng
架け橋 | Cầu nối
委託開発請負開発 | Phát triển theo hợp đồng uỷ thác
ラボ開発 | Phát triển theo hình thức lab (thuê người trọn gói trong một khoảng thời gian nhất định)
自社開発 | Phát triển sản phẩm nội bộ của công ty
ノートパソコン | máy tính xách tay
デスクトップパソコン | máy tính bàn
タブレット型コンピューター | máy tính bảng
パソコン | máy tính cá nhân
画面 | màn hình
キーボード | bàn phím
マウス | chuột
モニター | phần màn hình
プリンター | máy in
無線ルーター | router
ケーブル | dây
ハードドライブ | ổ cứng
スピーカー | loa
パワーケーブル | cáp nguồn
電子メール | email/thư điện tử
メールする | gửi email
電子メールを送る | gửi
(パソコンの)メールアドレス | địa chỉ email
ユーザー名 | tên người sử dụng
パスワード | mật khẩu
返信する | trả lời
転送する | chuyển tiếp
新着メッセージ | thư mới
添付ファイル | tài liệu đính kèm
(…を)コンセントにつなぐ | cắm điện
(…を)コンセントから外す | rút điện
電源を入れる | bật
電源を切る | tắt
起動する | khởi động máy
電源を切る | tắt máy
再起動する | khởi động lại
インターネット | internet
ウェブサイト、ホームページ | trang web
ブロードバンド | mạng băng thông rộng
インターネット接続サービス業者 | ISP (nhà cung cấp dịch vụ internet)
ファイアウォール | tưởng lửa
ホスティングサーバー | dịch vụ thuê máy chủ
無線インターネット | không dây
ダウンロードする | tải xuống
インターネットを見て回る | truy cập internet
ファイル | tệp tin
フォルダ | thư mục
書類 | văn bản
ハードウェア | phần cứng
ソフトウェア | phần mềm
ネットワーク | mạng lưới
スクロールアップする、画面上方移動する | cuộn lên
スクロールダウンする、画面下方移動する | cuộn xuống
ログインする | đăng nhập
ログオフする | đăng xuất
スペースバー | phím cách
ウイルス | vi rut
ウイルス対策ソフト | phần mềm chống vi rut
プロセッサ速度 | tốc độ xử lý
メモリー | bộ nhớ
ワープロ | chương trình xử lý văn bản
データベース | cơ sở dữ liệu
表計算ソフト、スプレッドシート | bảng tính
印刷する | in
(…を)打ち込む | đánh máy
小文字 | chữ thường
大文字 | chữ in hoa
閾値 (いきち) | Threshold | Ngưỡng
 マジックナンバー | magic number | magic number
栞（しおり） | Bookmarker, marker | Đánh dấu sách (chỗ đã đọc)
論理 | Logic
論理エンティティ名 | Logic entity name
論理演算ユニット（ALU） | Arithmetic-logic unit | Bộ số học logic
論理演算子 | Logical Operators
論理型プログラミング
論理出力数 | Fan-out | Số mô đun ra
論理積 | Logical Conjunction (AND)
論理入力数 | Fan- in | Số mô đung vào
論理和 | Logical sum
論理和 | Logical Disjunction (OR)
労働コスト | labor cost
労働力 | Workforce | Nhân lực
漏れ | Leakage
漏れ（もれ）、リーケージ | leakage | thiếu sót
録画（ろくが） | picture recording, video recording
路線 | Line | Dây, tuyến
連想データオブジェクト | Associative data object | Đối tượng dữ liệu kết hợp
列挙型 | Enumeration type | Kiểu liệt kê | Adaにおけるデータ型の一つ.
例外処理
臨時 | temporary | tạm thời
略語、頭文語 | Abbreviation | Viết tắt
略ブロック図 | Schematic block diagram | Biểu đồ khối, sơ đồ
立ち上げる | start-up | bật lên
利害関係者 | Stakeholder | Người tham gia
乱数（らんすう） | random number | số ngẫu nhiên
頼れる | Dependable | Tính tin cây
要素 | Element | Yếu tố
要件定義書 | SRS | Tài liệu định nghĩa yêu cầu
溶暗（ようあん） | Fade out
溶明（ようめい） | Fade in
予約語 | Reserved word | Trong ngôn ngữ lập trình hoặc trong hệ điều hành, đây là 1 từ-còn gọi là từ khóa-có chức năng không đổi và không thể sử dụng cho bất kì mục đích nào khác. Ví dụ trong các tệp bó của DOS, từ REM được dành riêng để chỉ chỗ bắt đầu của một lời lưu ý (1 dòng văn bản mà DOS sẽ bỏ qua khi thực hiện tệp đó). Chỉ có thể dùng từ dành riêng cho mục đích ở rộng của nó, không dùng từ này để đặt tên tệp, tên biến, hoặc dùng cho các đối tượng khác do người sử dụng đặt tên
問合せ文 | Câu Inquiry
戻り値 | Return value
目的コード | Object code
目印 | Sign, mark, landmark | Ký hiệu,  vị trí nhận diện
網羅 | cover | che phủ | 網羅率 = coverage rate, độ che phủ
Bao trùm được hết (cover), không bỏ sót
命令 | Instruction | Lệnh, hướng dẫn
命令行 | LOC (Line Of Code) | Số dòng mã lệnh
命名規則 | naming rule | Quy tắc đặt tên
名前を付けて保存 | Save as
矛盾 | Inconsistency | Mâu thuẫn, không khớp
無難 | acceptable, safe | an toàn, chấp nhận được | ...の方が無難でしょう。
無線 | wireless | ko dây | 無線インターネット接続：wireless internet access
無効な値 | Invalid data | Giá trị không hợp lệ
無限ループ | infinite loop | Vòng lặp vô tận
末尾（まつび） | ending, tail, postfix, suffix | cuối, đuôi
凡例 | Chú giải, giải thích (bằng tranh ảnh... minh họa)
補助記憶装置 | Secondary storage | Bộ nhớ phụ
補間 | Interpolation | Phép nội suy
保管庫 | Warehouse | Nhà kho
保持 | keep | giữ
変数を宣言する | khai báo biến
グロバル変数= global variable, biến toàn cục
ローカル変数= local variable, biến cục bộ
半角英数 | haftsize alphabet numberic
半角英数字 | hankaku alphanumeric character
半角数字 | haftsize numberic
半角 | Half size
納入する | Delivery
納入する／リリースする | release | giao nộp sản phẩm (cho khách hàng)
認証 | Authentication
二点鎖線 | Nét gạch  2 chấm
二項演算子 | Toán tử 2 ngôi
二次 | Second | Thứ hai
二次元配列 | Mảng 2 chiều
二進数/二進法 | binary | hệ nhị phân
内部監査 | internal audit
読み取り | Read
単体テスト | Unit test
大文字 | Chữ viết hoa
## Sheet: Từ vựng theo giai đoạn phát tri
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
AI (エーアイ) | Trí tuệ nhân tạo | Artificial Intelligenceじんこうちのう
IoT (アイオーティー) | Internet vạn vật | Internet of Things
DX (ディーエック ス) | Chuyển đổi số | Digital Transforma- tion
機械学習 | Học máy | きかいがくしゅう
ディープラーニング | Học sâu | Deep Learning
ドローン | Phương tiện bay không người lái | Drone
ビッグデータ | Dữ liệu lớn | Big Data
ブロックチェーン | Chuỗi khối | Block Chain
仮想通貨 | Tiền ảo | かそうつうか
VR (ブイアール) 仮想現実 | Thực tế ảo | Virtual Realityかそうげんじつ
AR (エーアール) | Thực tế tăng cường | Augmented Realityかくちょうげんじつ
メタバース | Vũ trụ ảo | Metaverse
キャッシュレス決済 | Thanh toán khôngdùng tiền mặt | キャッシュレスけっ さい
QRコード | Mã QR | QRCode
フィンテック | Công nghệ tài chính | FinTech
ローコード | Lập trình không cần nhiều việc viết mã thủ công | Low-Code
ノーコード | Lập trình không cần việc viết mã thủ công | No-Code
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
エンジニア | Kỹ sư | Engineer
ジュニアエンジ ニア | Kỹ sư ít kinh nghiệm | Junior Engineer
シニアエンジニ ア | Kỹ sư nhiều kinh nghiệm | Senior Engineer
プログラマ | Lập trình viên | Programer
開発者 | Lập trình viên, nhà phát triển | かいはつしゃ
テスター | Nhân viên kiểm thử | Tester
ブリッジシステムエンジニア | Kỹ sư cầu nối | Bridge System
コミュニケーター | Phiên dịch viên IT | Communicator
プロジェクトマネージ | Quản lý dự án | Project Manager
コンサルティング | Tư vấn | Consulting
ビジネスアナリティ クス | Chuyên viên phân tích kinh doanh | Business Analyst
QA (キューエー) | Người đảm bảo chất lượng | Quality Assurance
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
システムエンジニア | Kỹ sư hệ thống | System Engineer
インフラエンジニア | Kỹ sư cơ sở hạ tầng | Infrastructure Engineer
データエンジニア | Kỹ sư dữ liệu | Data Engineer
ネットワークエンジ ニア | Kỹ sư mạng | Network Engineer
フロントエンドエンジニア | Kỹ sư đảm nhận chính các công việc liên quan đến giao diện của ứng dụng | Front-end Engineer
バックエンドエンジニア | Kỹ sư đảm nhiệm công việc viết những đoạn code và chương trình để vận hành ứng dụng | Back-end Engineer
案件 | Dự án | あんけん
アウトソーシング | Thuê ngoài (gia công) | Outsourcing
オフショア | Phát triển IT sử dụng nguồn lực ở nước khác | Off-shore
オンショア | Phát triển IT sử dụng nguồn lực trong nước | On-shore
ニアショア | Phát triển IT sử dụng nguồn lực ở quốc gia lân cận | Near-shore
オフショア拠点 | Địa điểm thực hiện phát triển offshore | オフショアき てん
発注 | Đặt hàng | はっちゅう
受注 | Tiếp nhận yêu cầu đặt hàng | じゅちゅう
架け橋 | Cầu nối | かけはし
委託開発請負開発 | Phát triển theo hợp đồng uỷ thác | いたくかいはうけいかい はつ
ラボ開発 | Phát triển theo hình thức lab (thuê người trọn gói trong một khoảng thời gian nhất định) | ラボかいはつ
自社開発 | Phát triển sản phẩm nội bộ của công ty | じしゃかいはつ
オンサイト | Hình thức làm việc tại trụ sở của khách hàng | Onsite
Từ vựng liên quan đến báo giá dự án
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
見積り | Báo giá | みつもり
作業範囲スコープ | Phạm vi công việc | さぎょうはんいScope
前提条件 | Điều kiện tiên đề | ぜんていじょうけん
単価 | Đơn giá | たんか
人月 | Khối lượng công việc một người hoàn thành trong một tháng | にんげつ
人日 | Khối lượng công việc một người hoàn thành trong một ngày | にんにち
工数 | Thời gian bỏ ra để hoàn thành công việc | こうすう
リス | Rủi ro | Risk
バッファ | Phần được tính nhiều hơn để dự phòng | Buffer
フェーズ | Giai đoạn | Phase
納品 | Bàn giao sản phẩm | のうひん
検収 | Nghiệm thu | けんしゅう
Từ vựng về các giai đoạn phát triển phần mềm
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
ウォーターフォールモデル | Mô hình thác nước | Waterfall Model
アジャイルモデル | Mô hình Agile | Agile Model
スパイラルモデル | Mô hình xoắn ốc | Spiral Model
プロトタイピングモ デル | Mô hình thử nghiệm bản mẫu | Prototyping Model
要件定義 | Định nghĩa yêu cầu | ようけんていぎ
基本設計 | Thiết kế cơ bản | きほんせっけい
詳細設計 | Thiết kế chi tiết | しょうさいせっ けい
コーディング | Viết mã (lập trình) | Coding
単体テスト | Kiểm thử đơn vị | たんたいテスト
結合テスト | Kiểm thử tích hợp | けつごうテスト
総合テスト | Kiểm thử toàn hệ thống | そうごうテスト
受け入れテスト | Kiểm thử chấp nhận của người dùng | うけいれテスト
運用 | Vận hành | うんよう
保守メンテナンス | Bảo trì | ほしゅMaintenance
スプリント | Khoảng thời gian trong mô hình Agile | Sprint
Từ vựng về các công việc trong dự án phát triển phần mềm
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
要件定義書 | Tài liệu định nghĩa yêu cầu (thường hướng tới mục đích để lập trình viên hiểu được cơ chế hệ thống) | ようけんていぎ しょ
要求仕様書 | Tài liệu đặc tả yêu cầu (thường hướng tới người không phải là lập trình viên cũng hiểu được yêu cầu) | ようきゅうしようしょ
見積もり書 | Bản ước tính chi phí | みつもりしょ
システム構成図 | Sơ đồ hệ thống | System こうせ いず
業務フロー図 | Sơ đồ luồng nghiệp vụ | ぎょうむFlowず
ユースケース | Chuỗi tương tác giữa người dùng bên ngoài và hệ thống | Use case
機能一覧 | Danh sách chức năng | きのういちらん
画面レイアウト | Bố cục màn hình | がめんLayout
画面遷移図 | Sơ đồ di chuyển màn hình | がめんせんいず
コーディング規約 | Nguyên tắc chung khi lập trình | Coding きやく
バッチ | Chương trình chứa danh sách các lệnh được lên lịch để thực hiện | Batch
データベース | Cơ sở dữ liệu | Database
テーブル | Bảng dữ liệu | Table
開発環境 | Môi trường phát triển | かいはつかんき
ローカル環境 | Môi trường nằm trên máy của lập trình viên | Local かんき よう
クラウド環境 | Môi trường nằm trên hệ thống điện toán đám mây | Cloud かんき ょう
テスト環境 | Môi trường kiểm thử | Test かんきょう
ステージング環境 | Môi trường kiểm thử cuối cùng trước khi sản phẩm đưa vào thực tế sử dụng, là bản sao gần chính xác của môi trường sản phẩm thật | Staging かんきよう
本番環境プロダクション環境 | Môi trường thật | ほんばんかんきようProduction かんきょう
開発ツール | Công cụ phát triển | かいはつTool
負荷 | Phụ tải | ふか
キックオフミーティング | Cuộc họp khởi động dự án | Kick-off Meeting
定例会 | Buổi họp định kỳ | ていれいかい
議事録 | Biên bản cuộc họp | ぎじろく
振り返り会議 | Buổi họp tổng kết dự án | ふりかえりかいぎ
お客様満足度アンケート | Kháo sát mức độ hàilòng khách hàng | おきゃくさままんぞくどアンケ ート
ステークホルダー | Các bên liên quan có
trách nhiệm | Stackholder
マスタスケジュール | Kế hoạch tổng thể | Master Schedule
マイルストーン | Mốc dự án | Milestone
コミュニケーションプラン | Cơ chế giao tiếp, trao đổi | Comunication Plan
マニュアル | Tài liệu hướng dẫn thực tế cách sử dụng | Manual
プロトタイプ | Mẫu thử nghiệm ban đầu | Prototype
ソースコード | Mã nguồn | Source Code
テストケース | Trường hợp, kịch bản kiểm thử | Test Case
バグ不具合 | Lỗi | ふぐあいBug
デバッグ | Tìm lỗi | Debug
デプロイ | Triển khai, cài đặt để hoàn thiện việc sử dụng sản phẩm trong thực tế | Deploy
オープンソース | Mã nguồn mở | Open Source
ライセンス | Bản quyền sử dụng phần mềm | License
セキュリティ | Bảo mật | Security
プラットフォーム | Nền tảng | Platform
フレームワーク | Các đoạn mã đã được viết sẵn, tạo thành bộ khung và các thư viện lập trình được đóng gói | Framework
Từ vựng liên quan đến lập trình
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
アルゴリズム | Thuật toán | Algorithm
値 | Giá trị | あたい
戻り値 | Giá trị trả về | もどりち
コンパイラ | Trình biên dịch | Compiler
キュー | Hàng đợi | Queue
スタック | Ngăn xếp | Stack
配列 | Mảng | はいれつ
整列 | Sắp xếp | せいれつ
検索 | Tìm kiếm | けんさく
順次処理 | Xử lý tuần tự | じゅんじょり
分岐処理 | Xử lý phân nhánh điều kiện | ぶんきしょり
反復处理 | Xử lý theo vòng lặp | はんぷくしょり
オブジェクト指向 言語 | Ngôn ngữ hướng đối tượng | Object しこうげんご
サーバ | Máy chủ | Server
クライエント | Máy khách | Client
ブラウザ | Trình duyệt | Browser
レスポンシブ | Thiết kế trang web thích ứng với nhiều trình duyệt, thiết bị | Responsive
入力 | Đầu vào | にゅうりょく
出力 | Đầu ra | しゅつりょく
引数 | Biến số | ひきすう
関数 | Hàm số | かんすう
文字コード | Mã ký tự | もじCode
空白 | Khoảng trống | くうはく
改行 | Xuống dòng | かいぎょう
フォント | Phông chữ | Font
ドメイン | Tên miền | Domain
ハードコーディング | Nhập dữ liệu trực tiếp vào trong mã nguồn, dữ liệu này không thay đổi và cấu hình được | Hard Coding
Từ vựng về một số lỗi thường gặp liên quan đến công nghệ thông tin
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
フリーズする | Treo máy/ màn hình | Freeze
クラッシュする | Ngừng hoạt động đột ngột và thoát ra | Crash
正常に動かない | Không hoạt động bình thường | せいじょうにうごかない
表示されない | Không hiển thị được | ひょうじされ ない
動作が重い | Chương trình nặng/ chạy chậm | どうさがおもい
異常終了する | Kết thúc bất bình thường | りょうする
画面が真っ黒になる | Màn hình bị đen hoàn toàn | がめんがまっく ろになる
文字化けする | Chữ bị hiển thị lỗi
do sai mã code | もじばけする
メモリ不足になる | Thiếu bộ nhớ | 容量オーバーする
メモリ (ぶ) そくになる | Dung lượng bị vượt quá | ようりょう Over する
読み込みエラー | Lỗi đọc | よみこみ Error
サーバーダウン | Máy chủ bị tạm ngừng hoạt động | Server Down
音が出ない | Không phát ra âm thanh | おとがでない
触れても反応しない | Không có phán ứng khi chạm vào | ふれてもはんのうしない
リンクが機能しない | Đường dẫn không hoạt động | リンクがきのう
ファイルが開けない | Không mở được tệp | ファイルがあけない
無限ループに入る | Bị lặp vô hạn | むげんLoopにはいる
バッテリー消耗が早い | Hao pin nhanh | Battery しょうもうがはやい
タイムアウトエラー | Không thực hiện được trong thời gian yêu cầu | Timeout Error
Từ vựng liên quan đến thiết bị máy tính
Từ vựng | Máy tính | Cách đọc KanjiTừ tiếng Anh tương ứng
コンピューター | Máy tính | Computer
パソコン | Máy tính cá nhân | Personal Computer
スマートフォン | Điện thoại thông minh | Smart Phone
タブレット | Máy tính bảng | Tablet
フィーチャーフォン | Điện thoại với chức năng nghe gọi cơ bản (ở Việt Nam nhiều người gọi là điện thoại cục gạch) | Feature Phone
モバイル | Di động, điện thoại di động | Mobile
ハードウェア | Phần cứng | Hardware
ソフトウェア | Phần mềm | Software
キーボード | Bàn phím | Key Board
メモリ | Bộ nhớ | Memory
マウス | Chuột | Mouse
モニター | Màn hình | Monitor
プリンター | Máy in | Printer
スピーカー | Loa | Speaker
ケーブル | Dây cáp | Cable
ディスプレイ | Hiển thị | Display
ネットワーク | Mạng máy tính | Network
デバイス | Thiết bị (thường sử dụng với thiết bị hoạt động khi kết nối với máy tính như bàn phím, chuột, màn hình,…) | Device
端末 | Thiết bị (thường sự dụng với thiết bị có thể hoạt động độc lập như điện thoại thông minh,máy tính, máy tính bảng,…) | たんまつ
ストレージ | Thiết bị lưu trữ dữ liệu | Storage
アプリケーション | Ứng dụng | Application
Từ vựng về các ngôn ngữ lập trình
Từ vựng | Ý nghĩa | Cách đọc KanjiTừ tiếng Anh tương ứng
パスカル | Pascal
ヴィジュアルベーシック | Visual Basic
ドットネット | .net
シー | C
シープラスプラス | C plus
シーシャープ | C# (CSharp)
パール | Perl
ルビー | Ruby
パイソン | Python
ピー・エイチ・ピー | Php
スウィフト | Swift
ジャバ | Java
ジャバスクリプト | Javascript
Từ vựng tiếng Nhật về các thuật ngữ và ký hiệu ngành công nghệ thông tin
Từ vựng | Từ vựng | Cách đọc KanjiTừ tiếng Anh tương ứng
OS (オーエス) | Hệ điều hành | Operating System
IP (アイピー) | Giao thức Internet | Internet Protocol
UI (ユーアイ) | Giao diện người dùng | User Interface
UX (ユーエクス) | Trải nghiệm người
dùng | User Experience
SNS (エスエヌエス) | Mạng xã hội | social networking service
SEO (エスイー才) | Tối ưu hoá công
cụ tìm kiếm | Search Engine Optimization
CMS (シーアルエス) | Hệ thống quản trịnội dung | Content Manage- ment System
CRM (シーアルエム) | Quản lý quan hệ khách hàng | Customer Relationship Management
EC(イーシー) | Thương mại điện tử | Electronic Commerce
API (エーピーアイ) | Giao diện lập trình ứng dụng (Phương thức trung gian kết nối các ứng dụng và thư viện) | Application Programming Interface
SDK (エスディケ-) | Bộ công cụ phát triển phần mềm | Software Development Kit
MVC(エムビーシ) | Mô hình kiến trúc
sử dụng trong kỹ
thuật phần mềm, phân tách ứng
dụng thành 3
phần: Model (liên
quan đến lưu trữ,
thao tác dữ liệu),
View (trình bày dữ
liệu), Controller
(điều hướng dữ
liệu) | A Model – View – Controller
SQL(エスキューエル) | Ngôn ngữ truy vấn cơ sở dữ liệu có cấu trúc | Structured Query Language
PDCA (ピーディーシーア) | Chu trình PDCA | Plan – Do – Check – Act
URL (ユーアールエル) | Đường dẫn, địa chỉ dùng để thamchiếu đến các tài nguyên trên mạng | Uniform Resource Locator
VPN (ヴィピーエ ヌ) | Mạng riêng ảo | Virtual Private Network
## Sheet: Thuật ngữ viết tắt
NFT | Tien ao
SSH | Secure Shell

セキュアシェル | Hide
SSH (Secure Shell) là một giao thức mạng được sử dụng để thiết lập một kết nối mạng bảo mật giữa máy tính local và remote. Nó cho phép người dùng truy cập và điều khiển từ xa các thiết bị bằng cách mã hóa dữ liệu được gửi qua mạng.

Ví dụ:
1. サーバにSSH接続すると、遠隔地からサーバを操作できます。
(Qua kết nối SSH, bạn có thể điều khiển máy chủ từ xa.)

2. SSHキーを使用して安全にリモートサーバに接続します。
(Kết nối một cách an toàn đến máy chủ từ xa bằng cách sử dụng khóa SSH.)
CICD | Continuous Integration / Continuous Delivery | Hide
継続的インテグレーション / 継続的デリバリー

Continuous Integration / Continuous Delivery (CICD) là một phương pháp phát triển phần mềm trong lĩnh vực IT. CICD kết hợp hai khái niệm liên quan nhau: Continuous Integration (CI) và Continuous Delivery (CD).

- Continuous Integration (CI) đề cập đến việc kết hợp và kiểm tra các thay đổi trong mã nguồn của phần mềm một cách liên tục và tự động. Quá trình này giúp đảm bảo rằng những thay đổi mới không gây ra xung đột hoặc lỗi trong mã nguồn.

- Continuous Delivery (CD) là quá trình tự động triển khai phần mềm vào môi trường sản xuất sau khi hoàn thành quá trình CI. Điều này đảm bảo rằng phần mềm được triển khai nhanh chóng và một cách đảm bảo chất lượng.

Ví dụ:
1. CICDでは、毎日の変更が自動的に統合され、ビルドおよびテストされます。
(Trong CICD, các thay đổi hàng ngày được tự động tích hợp và xây dựng cùng với công việc kiểm tra.)

2. CICDを導入することで、ソフトウェアのリリースサイクルを短縮し、品質を向上させることができます。
(Việc áp dụng CICD cho phép rút ngắn chu kỳ phát hành phần mềm và cải thiện chất lượng.)
PII | Personally Identifiable Information

Thông tin cá nhân

個人情報こじんじょうほう | Hide
Thông tin cá nhân (Personally Identifiable Information) là thông tin có thể được sử dụng để nhận dạng một cá nhân cụ thể. Nó bao gồm những thông tin như tên đầy đủ, địa chỉ, số điện thoại, số CMND, thông tin tài khoản ngân hàng và bất kỳ thông tin nào khác có thể xác định được danh tính của một cá nhân.

Ví dụ:
1. 社内でPIIを収集する場合には、個人の同意が必要です。
(Khi thu thập thông tin cá nhân trong công ty, cần có sự đồng ý của cá nhân đó.)

2. ユーザーから提供されたPIIは、保護するために暗号化することが重要です。
(Việc mã hóa thông tin cá nhân được cung cấp từ người dùng là rất quan trọng để bảo vệ.)
DDoS | Distributed Denial of Service | Hide
DoS (Denial of Service) là một loại tấn công mạng nhằm ngăn cản người dùng truy cập vào dịch vụ trực tuyến bằng cách làm cho một dịch vụ trở nên không khả dụng hoặc chậm chạp. DDoS (Distributed Denial of Service) là "Tấn công từ chối dịch vụ phân tán", trong đó nhiều máy tính đồng thời tham gia vào tấn công để làm cạn kiệt tài nguyên của một hệ thống, làm cho dịch vụ trở nên không khả dụng.

Ví dụ:
1. 最近、取引所のウェブサイトがDDoS攻撃を受けました。
(Gần đây, trang web của sàn giao dịch đã bị tấn công DDoS.)

2. 会社のウェブサーバーがDDoS攻撃によって一時的にダウンしました。
(Máy chủ web của công ty tạm thời bị ngừng hoạt động do tấn công DDoS.)
SNS | Social Networking Service

Dịch vụ mạng xã hội

エスエヌエス | Hide
SNS (Social Networking Service) là dịch vụ mạng xã hội, đây là những nền tảng trực tuyến cho phép người dùng tạo hồ sơ cá nhân, chia sẻ thông tin, kết bạn và tương tác với người khác.

Ví dụ:
1. SNSの中で一番人気なのはFacebookです。
(Facebook là mạng xã hội phổ biến nhất trong số các dịch vụ SNS.)

2. ツイッターは瞬時に情報を共有できるSNSです。
(Twitter là một SNS cho phép chia sẻ thông tin ngay lập tức.)
OS | Operating System

Hệ điều hành

オペレーティングシステム | Hide
Hệ điều hành là phần mềm chính quản lý tất cả phần cứng và phần mềm khác trên máy tính. Nó tương tác với phần cứng máy tính và cung cấp các dịch vụ mà ứng dụng có thể sử dụng.

Ví dụ:
1. このコンピューターはWindows OSを利用しています。
(Máy tính này sử dụng hệ điều hành Windows.)

2. スマートフォンのOSにはAndroidとiOSの2つがあります。
(Hai hệ điều hành cho điện thoại thông minh là Android và iOS.)
ECMP | Equal Cost Multipath Routing | Hide
ECMP (Equal Cost Multipath Routing) là một phương pháp điều hướng gói tin trong mạng máy tính. Nó cho phép các gói tin được chia thành nhiều đường dẫn khác nhau để truyền đi cùng một lúc, đảm bảo tối ưu hóa đường truyền và tăng hiệu suất của mạng.

Đây là một tính năng cho phép thiết bị mạng như router, switch hay firewall sử dụng nhiều đường dẫn tốt nhất có chi phí bằng nhau đến cùng 1 đích. Các tuyến đường này sẽ được ECMP đưa vào bảng định tuyến và cân bằng tải lưu lượng để tăng băng thông của hệ thống.

Ví dụ:
1. ECMP を設定することで、ネットワーク上のトラフィックを複数の経路に均等に分散させることができます。
(Tạo một ECMP cho phép phân phối lưu lượng mạng vào nhiều đường đi khác nhau một cách đồng đều trên mạng.)

2. ECMP を実装することで、冗長性を高めつつ、ネットワークの負荷分散を実現できます。
(Với ECMP, bạn có thể tăng tính dự phòng và đồng thời cân bằng tải trên mạng.)
CIDR | Classless Inter Domain Routing | Hide
CIDR (Classless Inter Domain Routing) là một phương pháp đánh địa chỉ IP mà không phụ thuộc vào các lớp mạng như trước đây. CIDR cho phép phân chia mạng một cách linh hoạt hơn và sử dụng hiệu quả hơn các địa chỉ IP.

Đây là một phương pháp phân bổ các địa chỉ IP và định tuyến IP. lực lượng đặc nhiệm kỹ thuật Internet đã giới thiệu CIDR vào năm 1993 để thay thế kiến trúc địa chỉ trước đây của thiết kế mạng đầy đủ trong Internet. Mục tiêu của nó là làm chậm sự tăng trưởng của bảng định tuyến trên bộ định tuyến trên Internet và để giúp làm chậm sự nhanh chóng sự cạn kiệt địa chỉ IPv4 nhanh chóng.

Ví dụ:
1. このネットワークはCIDR記法で /24 となります。
(Địa chỉ mạng này được biểu diễn theo ký hiệu CIDR là /24.)

2. CIDRを使用することで、IPアドレスの無駄遣いを減少させることができます。
(Khi sử dụng CIDR, có thể giảm thiểu việc lãng phí địa chỉ IP.)
IP | Internet Protocol | Hide
Địa chỉ IP (IP là viết tắt của từ tiếng Anh: Internet Protocol - giao thức Internet) là một địa chỉ đơn nhất mà những thiết bị điện tử hiện nay đang sử dụng để nhận diện và liên lạc với nhau trên mạng máy tính bằng cách sử dụng giao thức Internet.

Ví dụ:
1. インターネットに接続するためには、デバイスのIPアドレスが必要です。
(Để kết nối vào Internet, bạn cần có địa chỉ IP của thiết bị.)

2. IPパケットは情報を分割し、複数のネットワークを経由して送信されます。
(Các gói tin IP được phân mảnh và được gửi đi qua nhiều mạng khác nhau.)
DNS | Domain Name System

Hệ thống phân giải tên miền

ドメインネームシステム | Hide
DNS (Domain Name System) là hệ thống phân giải tên miền, tức là hệ thống giúp định danh địa chỉ IP của một trang web thành một tên miền dễ nhớ. DNS giúp người dùng truy cập internet bằng cách nhập tên miền vào trình duyệt mà không cần phải ghi nhớ địa chỉ IP của trang web đó.

DNS cơ bản là một hệ thống chuyển đổi các tên miền website mà chúng ta đang sử dụng, ở dạng www.example.com sang một địa chỉ IP dạng số tương ứng với tên miền đó và ngược lại.

Ví dụ:
1. インターネットにアクセスするとき、DNSがコンピューターのIPアドレスをドメイン名に変換してくれる。
(Khi truy cập internet, DNS sẽ chuyển đổi địa chỉ IP của máy tính thành tên miền.)

2. ブラウザに「www.google.com」と入力すると、DNSがそのドメイン名をIPアドレスに変換してくれる。
(Khi nhập "www.google.com" vào trình duyệt, DNS sẽ chuyển đổi tên miền đó thành địa chỉ IP.)
NS | Name Server

ネームサーバー | Hide
NS (Name Server) là một máy chủ định danh trong mạng máy tính, có nhiệm vụ chuyển đổi tên miền thành địa chỉ IP và ngược lại. NS là thành phần quan trọng trong hệ thống tên miền để đảm bảo rằng khi người dùng truy cập vào một tên miền, họ sẽ được chuyển hướng đến đúng địa chỉ IP của máy chủ chứa nội dung tương ứng.

Name Server còn gọi được gọi là Domain Name Server, đóng vai trò quan trọng trong việc kết nối URL với địa chỉ IP máy chủ theo cách thân thiện hơn với người dùng. Name Server sẽ chuyển đổi tên miền sang địa chỉ IP, điều phối quá trình hoạt động của Domain

Ví dụ:
1. ドメイン名を変更したので、新しいNSを設定する必要があります。
(Tôi đã thay đổi tên miền, vì vậy cần thiết lập NS mới.)

2. ウェブサイトのドメインを登録した後、NSを設定する必要があります。
(Sau khi đăng ký tên miền cho trang web, cần thiết lập NS.)
FQDN | Fully Qualified Domain Name

Tên miền đầy đủ

フリー・クオリファイド・ドメイン・ネーム | Hide
Địa chỉ tên miền đầy đủ (Fully Qualified Domain Name - FQDN) là một địa chỉ tên miền đầy đủ được sử dụng để xác định một tài nguyên mạng cụ thể trên internet. FQDN bao gồm tên miền cấp cao nhất (top-level domain), tên miền cấp hai (second-level domain), và tên miền cấp ba (third-level domain), cùng với tên của một máy chủ cụ thể.

Một FQDN cũng có thể được gọi là một tên miền tuyệt đối, vì nó cung cấp đường dẫn tuyệt đối của host.
Ví dụ: http://api.www.example.com

Ví dụ:
1. ウェブサイトのFQDNは「www.example.com」です。
(Dịa chỉ tên miền đầy đủ của trang web là "www.example.com".)

2. 電子メールサーバーのFQDNは「mail.example.com」です。
(Dịa chỉ tên miền đầy đủ của máy chủ email là "mail.example.com".)
TLD | Top Level Domain

Tên miền cấp cao nhất

トップレベルドメイン | Hide
TLD (Top Level Domain) là các đuôi tên miền có cấp độ cao nhất trong hệ thống tên miền quốc tế. Có thể hiểu đơn giản là phần sau cùng trong một địa chỉ website, ví dụ ".com", ".org", ".net". TLD xác định đất nước (ví dụ: .jp cho Nhật Bản), loại tổ chức (ví dụ: .edu cho giáo dục), hoặc mục đích sử dụng (ví dụ: .gov cho cơ quan chính phủ).

TLD là phần mở rộng sau cuối của tên miền, nằm sau dấu chấm ở cuối cùng. Ví dụ, trong tên miền www.example.com, phần com chính là TLD

Ví dụ:
1. 日本の企業は多くの場合、.jpのTLDを使用します。
(Các công ty Nhật Bản thường sử dụng TLD ".jp".)

2. グローバルなビジネスを目指す場合は、.comのTLDを選ぶと良いでしょう。
(Nếu bạn muốn kinh doanh toàn cầu, bạn nên chọn TLD ".com".)
SLD | Second Level Domain

Tên miền cấp hai

セカンドレベルドメイン | Hide
SLD (Second Level Domain) là một thuật ngữ trong lĩnh vực IT để chỉ định một phần của tên miền đằng sau phần mở rộng cấp cao nhất.

Nếu tên miền là www.example.com thì phần example.com chính là SLD.

Ví dụ:
1. このウェブサイトのドメインは「example.com」です。ここで、「example」がSLDです。
(Bên dưới tên miền này là "example.com". Trong đó, "example" là SLD.)

2. メールアドレスは「info@example.com」となっています。ここで、「example」がSLDです。
(Địa chỉ email là "info@example.com". Trong đó, "example" là SLD.)
TTL | Time To Live

Thời gian tồn tại | Hide
Time To Live (TTL) là một giá trị được sử dụng trong giao thức Internet Protocol (IP) để xác định thời gian tồn tại của một gói tin trong mạng. Giá trị TTL ban đầu của gói tin được gửi đi là số lượng bước nhảy (hop count) mà gói tin được phép di chuyển qua trước khi bị hủy bỏ hoặc bị xoá bởi một router.

TTL là thời gian bản ghi cấu hình tên miễn (record) có thể tồn tại trên internet được máy chủ DNS trung gian hoặc router ghi nhớ

Trong giao thức IP, mỗi khi gói tin đi qua một router, giá trị TTL sẽ được giảm đi 1. Khi giá trị TTL giảm xuống 0, gói tin sẽ bị hủy bỏ và không được truyền tiếp. Điều này giúp đảm bảo rằng gói tin không lặp lại vô tận trong mạng và giúp kiểm soát lưu lượng mạng.

Ví dụ:
1. ラウターを経由する際、TTL値が1ずつ減少します。
(Khi đi qua router, giá trị TTL giảm đi 1.)

2. TTLを大きく設定すると、データパケットがより長い距離を移動できます。
(Nếu đặt giá trị TTL lớn, gói tin dữ liệu có thể di chuyển trên khoảng cách dài hơn.)
EMS | Express Mail Service | Hide
EMS (Express Mail Service) là dịch vụ gửi thư, bưu phẩm nhanh chóng quốc tế. Đây là một hình thức chuyển phát nhanh, được sử dụng rộng rãi trong ngành công nghiệp vận chuyển và giao nhận hàng hóa. EMS được coi là một dịch vụ đáng tin cậy và nhanh chóng, giúp người gửi và người nhận có thể trao đổi thông tin và hàng hóa một cách an toàn và hiệu quả.

Ví dụ:
1. この書類はEMSで日本に送られます。
(Giấy tờ này sẽ được gửi đi Nhật Bản bằng dịch vụ EMS.)

2. The package will be delivered to the recipient via EMS.
(Bưu kiện này sẽ được giao đến người nhận qua dịch vụ EMS.)
FIFO | First In First Out | Hide
FIFO (First In First Out), vào trước ra trước. Đây là một thuật ngữ IT viết tắt trong lĩnh vực quản lý dữ liệu. Nó dùng để chỉ phương pháp xử lý dữ liệu theo nguyên tắc "nhập trước, xuất trước". Khi một tập dữ liệu được lưu trữ hoặc xử lý theo FIFO, các mục dữ liệu được xử lý hoặc xóa theo thứ tự chúng được thêm vào. Nguyên tắc FIFO được áp dụng rộng rãi trong các ngành công nghiệp cần quản lý hàng hóa, liệu trình hay các tác vụ xử lý dữ liệu.

Ví dụ:
1. 生徒のリストをFIFOで処理する。先に登録された生徒が先に処理される。
(Dữ liệu danh sách học sinh được xử lý theo phương pháp FIFO. Học sinh đăng ký trước sẽ được xử lý trước.)

2. ネットワークパケットのキューはFIFO方式で処理される。
(Hàng đợi gói tin mạng được xử lý theo phương pháp FIFO.)
DEK | Data Encryption Key | Hide
DEK (Data Encryption Key) là một khái niệm trong lĩnh vực bảo mật thông tin. DEK là một khóa được sử dụng để mã hóa và giải mã dữ liệu. Nó được sử dụng trong các thuật toán mã hóa đối xứng để bảo vệ dữ liệu khỏi việc truy cập trái phép.

Ví dụ:
1. ファイルを暗号化するために、DEKを生成しました。
(Tôi đã tạo ra một DEK để mã hóa tập tin.)

2. アプリケーションのデータベースを保護するために、DEKを定期的に変更しています。
(Chúng tôi thay đổi DEK định kỳ để bảo vệ cơ sở dữ liệu của ứng dụng.)
URL | Uniform Resource Locator | Hide
URL (Uniform Resource Locator) là định dạng chuỗi ký tự để định vị một tài nguyên trên mạng. Nó được sử dụng để xác định địa chỉ trang web hoặc file cụ thể trên internet.

URL thường được định nghĩa là một chuỗi ký tự dẫn đến một địa chỉ. Đây là một cách được sử dụng rất phổ biến để định vị tài nguyên trên web. Nó cung cấp một cách để truy xuất vị trí thực, bằng cách mô tả vị trí mạng hoặc cơ chế truy cập chính.

Ví dụ:
1. ホームページのURLは「www.example.com」です。
(URL của trang chủ là "www.example.com".)

2. 画像のURLをクリックしてください。
(Vui lòng nhấp vào URL của hình ảnh.)
URI | Uniform Resource Identifier | Hide
URI (Uniform Resource Identifier) - định danh tài nguyên thống nhất

Tương tự như URL, URI cũng là một chuỗi ký tự xác định một tài nguyên trên web bằng cách sử dụng vị trí, tên hoặc cả hai yếu tố này. Nó cho phép việc xác định đồng nhất các tài nguyên. URI cũng được nhóm lại dưới dạng một locator, tên hoặc cả hai.

URI là một chuỗi ký tự định danh đồng nhất một tài nguyên trên mạng, bao gồm URL và URN. URL (Uniform Resource Locator) là một dạng đặc biệt của URI được sử dụng để chỉ định vị trí của tài nguyên trên internet, trong khi URN (Uniform Resource Name) là một dạng khác của URI được sử dụng để định danh tài nguyên mà không liên quan đến vị trí.

Ví dụ:
1. このウェブサイトのURIは「https://www.example.com」です。
(URI của trang web này là "https://www.example.com".)

2. 私たちは、URIを使用してインターネット上のリソースにアクセスします。
(Chúng tôi sử dụng URI để truy cập vào các nguồn tài nguyên trên internet.)
URN | Hide
URN (Uniform Resource Name) là một chuỗi ký tự duy nhất và không thay đổi, được sử dụng để định danh tài nguyên trên Internet. Ứng với một URN cụ thể, không có thông tin về vị trí của tài nguyên được chỉ định, chỉ đơn giản là một tên định danh.

URN là “định danh tài nguyên” hay nói dễ hiểu là nó chỉ ra tên của tài nguyên.

Ví dụ:
1. このドキュメントのURNは "urn:isbn:0-486-27557-4" です。
(URN của tài liệu này là "urn:isbn:0-486-27557-4".)

2. URNはリソースを一意に識別するために使われます。
(URN được sử dụng để định danh độc nhất các tài nguyên.)
CORS | Cross Origin Resource Sharing

オリジン間リソース共有 | Hide
CORS (Cross Origin Resource Sharing) là một cơ chế cho phép truy cập tài nguyên từ một nguồn gốc khác trong web browser. CORS được sử dụng để giải quyết vấn đề an ninh của Same-Origin Policy trong trình duyệt web. Nó cho phép một trang web ở một nguồn gốc (origin) gọi các tài nguyên từ một nguồn gốc khác mà không bị chặn bởi trình duyệt.

Ví dụ:
1. ウェブアプリケーションでAPIを呼び出すために、CORSを設定する必要があります。
(Để gọi API trong ứng dụng web, cần thiết lập CORS.)

2. サーバーからのデータを異なるドメインからフェッチするために、CORSが必要です。
(Để fetch dữ liệu từ server từ một domain khác, cần CORS.)
DRY | Don't Repeat Yourself | Hide
DRY (Dont't Repeat Yourself) là một nguyên tắc trong lập trình, khuyến nghị rằng mỗi phần tử logic (block of code, class...) không nên được lặp lại nhiều lần. Điều này giúp giảm sự trùng lặp và tăng tính nhất quán, dễ bảo trì và tiết kiệm công sức trong quá trình phát triển phần mềm.

DRY nghĩa là hạn chế tối thiểu việc viết các đoạn code lặp đi lặp lại nhiều lần chỉ để thực hiện các công việc giống nhau trong ứng dụng

Ví dụ:
1. コードに冗長性があると、DRYの原則に違反しています。
(Nếu mã có sự trùng lặp, nó vi phạm nguyên tắc DRY.)

2. DRYを守ることで、コードのメンテナンスが容易になります。
(Tuân thủ DRY giúp việc bảo trì mã trở nên dễ dàng hơn.)
FTP | File Transfer Protocol | Hide
FTP (File Transfer Protocol) là một giao thức truyền tải file dùng để chuyển file giữa máy tính và máy chủ trên mạng Internet. FTP cho phép người dùng tải lên và tải xuống file thông qua các phiên đăng nhập được xác thực.

Ví dụ:

1. FTPサーバーに接続するためのユーザー名とパスワードを教えてください。
(Xin vui lòng cho tôi biết tên người dùng và mật khẩu để kết nối với máy chủ FTP.)

2. FTPクライアントを使用して、ファイルをサーバーにアップロードします。
(Sử dụng ứng dụng khách FTP để tải file lên máy chủ.)
FTPS | File Transfer Protocol over SSL | Hide
FTPS (File Transfer Protocol over SSL) là một giao thức truyền tải file được mã hóa bằng SSL (Secure Sockets Layer). Nó được sử dụng để an toàn hóa quá trình truyền tải file giữa máy tính của người dùng và máy chủ. FTPS sử dụng chứng chỉ SSL để thiết lập kênh truyền tải an toàn và mã hóa dữ liệu trên đường truyền.

FTPS sử dụng cùng một giao thức trao đổi dữ liệu như FTP nhưng bổ sung hỗ trợ cho Bảo mật lớp vận chuyển/ Transport Layer Security (TLS) và tiền thân của nó, Secure Sockets Layer để tăng tính bảo mật.

Ví dụ:
1. FTPSは、ファイルを安全に転送するためにSSLで暗号化されたプロトコルです。
(FTPS là một giao thức được mã hóa bằng SSL để truyền tải file một cách an toàn.)

2. FTPSを使用すると、ファイルをサーバーにアップロードする際に暗号化された接続を確立できます。
(Khi sử dụng FTPS, bạn có thể thiết lập một kết nối được mã hóa khi tải lên file lên máy chủ.)
SFTP | Secure File Transfer Protocol | Hide
SFTP (Secure File Transfer Protocol) là một giao thức truyền tải file an toàn. Nó cung cấp các phương thức mã hóa dữ liệu và xác thực đảm bảo rằng các file được chuyển đến và từ máy chủ một cách an toàn. SFTP thường được sử dụng để truyền tải file giữa máy tính cá nhân và máy chủ từ xa hoặc giữa các hệ thống trong một mạng nội bộ. Bạn cũng có thể sử dụng giao thức này để sửa, tạo hoặc xóa các tập tin và thư mục trên máy chủ Linux.

Ví dụ:
1. SFTPを使用して、リモートサーバーに安全にファイルを転送できます。
(Bạn có thể truyền tải file an toàn đến máy chủ từ xa bằng SFTP.)

2. クライアントはSFTPを使用してサーバーからファイルをダウンロードできます。
(Khách hàng có thể tải xuống file từ máy chủ bằng SFTP.)
OLTP | Online Transactional Processing | Hide
OLTP (Online Transactional Processing), xử lý giao dịch trực tuyến. Đâylà một hệ thống xử lý giao dịch trực tuyến trong công nghệ thông tin. Nó là một công nghệ giúp xử lý giao dịch trực tuyến một cách nhanh chóng và hiệu quả. Hệ thống OLTP thường được sử dụng trong các hệ thống ngân hàng, bán lẻ, thương mại điện tử và các ứng dụng tương tự.

Ví dụ:
1. オンラインでの取引処理にはOLTPが必要です。
(Để xử lý giao dịch trực tuyến, cần sử dụng OLTP.)

2. OLTPシステムは大量のトランザクションを高速に処理することができます。
(Hệ thống OLTP có thể xử lý một lượng lớn giao dịch một cách nhanh chóng.)
OLAP | Online Analytical Processing | Hide
OLAP (Online Analytical Processing), xử lý phân tích trực tuyến. Đây là một thuật ngữ trong lĩnh vực IT, được sử dụng để chỉ phương pháp và công cụ cho việc phân tích dữ liệu trong thời gian thực. OLAP cho phép người dùng truy xuất, xem xét và phân tích dữ liệu từ các góc độ khác nhau, giúp tạo ra các báo cáo và thông tin hữu ích để hỗ trợ quyết định kinh doanh.

Ví dụ:
1. OLAPシステムは、大量のデータを複数の視点から分析し、ビジネスの意思決定に活用するための重要なツールです。
(OLAP systems là một công cụ quan trọng để phân tích một lượng lớn dữ liệu từ nhiều góc độ khác nhau và ứng dụng trong quyết định kinh doanh.)

2. OLAPを使用すると、販売データや顧客情報などの重要なデータをダッシュボードやグラフなどの可視化ツールを通じて効果的に分析できます。
(Với việc sử dụng OLAP, dữ liệu quan trọng như dữ liệu bán hàng và thông tin khách hàng có thể được phân tích một cách hiệu quả thông qua các công cụ hình ảnh hoặc biểu đồ.)
TCP | Transmission Control Protocol | Hide
Giao thức TCP (Transmission Control Protocol) là một trong hai giao thức cốt lõi của bộ giao thức TCP/IP được sử dụng trong mạng máy tính. Nó được sử dụng để thiết lập, duy trì và chấm dứt các kết nối giữa các thiết bị trên mạng. TCP đảm bảo việc truyền dữ liệu tin cậy, xác nhận mỗi gói tin đã gửi và đảm bảo các gói tin đến đúng thứ tự.

Giao thức điều khiển truyền vận, là một trong các giao thức cốt lõi của bộ giao thức TCP/IP. Sử dụng TCP, các ứng dụng trên các máy chủ được nối mạng có thể tạo các "kết nối" với nhau, mà qua đó chúng có thể trao đổi dữ liệu hoặc các gói tin. Giao thức này đảm bảo chuyển giao dữ liệu tới nơi nhận một cách đáng tin cậy và đúng thứ tự. TCP còn phân biệt giữa dữ liệu của nhiều ứng dụng (chẳng hạn, dịch vụ Web và dịch vụ thư điện tử) đồng thời chạy trên cùng một máy chủ.

Ví dụ:
1. ファイルをサーバーに送信するために、TCPプロトコルを使用しました。
(Tôi đã sử dụng giao thức TCP để gửi tệp tin lên máy chủ.)

2. ウェブブラウザはTCPを使用して、Webサーバーからデータを受け取ります。
(Trình duyệt web sử dụng giao thức TCP để nhận dữ liệu từ máy chủ web.)
SFTP | Secure File Transfer Protocol | Hide
SFTP (Secure File Transfer Protocol) là một giao thức an toàn để chuyển tệp tin giữa máy tính và máy chủ. Nó sử dụng mã hóa để bảo vệ dữ liệu trên đường truyền và đảm bảo tính toàn vẹn của tệp tin. SFTP thường được sử dụng để truyền tệp tin qua mạng công cộng hoặc qua Internet.

Secure File Transfer Protocol hoặc SSH File Transfer Protocol, là một giao thức mạng giúp bạn có thể upload hoặc download dữ liệu trên máy chủ.

Ví dụ:
1. データを安全に転送するために、SFTPを使用してください。
(Vui lòng sử dụng SFTP để chuyển tệp tin một cách an toàn.)

2. ファイルをサーバーにアップロードする時、SFTPを利用してください。
(Hãy sử dụng SFTP khi tải lên tệp tin lên máy chủ.)
BASH | Bourne Again Shell | Hide
BASH (Bourne Again SHell) là một trình thông dịch lệnh dòng lệnh phổ biến trên hệ điều hành Linux và UNIX. Nó không chỉ cung cấp một giao diện người dùng với hệ điều hành, mà còn cho phép viết các script tự động hóa.

Ví dụ:
1. BASHスクリプトを使用して、タスクを自動化できます。
(Bạn có thể tự động hóa các nhiệm vụ bằng cách sử dụng script BASH.)

2. .bashrcファイルを編集して、BASHの環境をカスタマイズします。
(Chỉnh sửa tệp .bashrc để tùy chỉnh môi trường BASH.)
CDN | Content Delivery Network

コンテンツデリバリネットワーク | Hide
CDN (Content Delivery Network) là một hệ thống phân phối nội dung trên internet, giúp tăng tốc độ tải dữ liệu cho người dùng. CDN sử dụng các máy chủ đặt rải rác trên toàn cầu để lưu trữ dữ liệu, giúp địa phương hóa việc phục vụ và giảm độ trễ trong quá trình truyền tải.

Ví dụ:
1. ウェブサイトのイメージや動画を高速で配信するために、CDNを導入しました。
(Tôi đã triển khai CDN để phân phối hình ảnh và video trên trang web một cách nhanh chóng.)

2. CDNを利用することで、ユーザーはコンテンツのダウンロードが速くなります。
(Với việc sử dụng CDN, người dùng có thể tải nội dung nhanh hơn.)
CRUD | Create, Read, Update, Delete | Hide
CRUD (Create, Read, Update, Delete) là một thuật ngữ IT viết tắt mô tả bốn hoạt động cơ bản trong quản lý dữ liệu.

- Create: Tạo mới dữ liệu trong hệ thống.
- Read: Đọc dữ liệu từ hệ thống.
- Update: Cập nhật dữ liệu đã tồn tại trong hệ thống.
- Delete: Xóa dữ liệu trong hệ thống.

Việc thực hiện CRUD là cơ bản và quan trọng trong phát triển phần mềm và quản lý dữ liệu.

Ví dụ:
1. このアプリケーションは、データベースのCRUD操作をサポートしています。
(Ứng dụng này hỗ trợ các thao tác CRUD trên cơ sở dữ liệu.)

2. CRUDの原則を守ることで、データの整合性を保つことができます。
(Bằng cách tuân thủ nguyên tắc CRUD, bạn có thể duy trì sự nhất quán của dữ liệu.)
CLI | Command Line Interface | Hide
CLI (Command Line Interface) là giao diện dòng lệnh, được sử dụng để tương tác với hệ điều hành hoặc các ứng dụng bằng cách gõ các lệnh vào dòng lệnh. CLI thường chỉ cho phép người dùng tương tác với hệ thống thông qua việc nhập lệnh và nhận kết quả trả về trên cùng một giao diện text-based.

Ví dụ:
1. このソフトウェアはCLIを通じて操作されます。
(Phần mềm này được điều khiển thông qua CLI.)

2. CLIを使用すると、タスクを迅速に実行できます。
(Khi sử dụng CLI, bạn có thể thực hiện các tác vụ một cách nhanh chóng.)
CTA | Call To Action | Hide
CTA (Call To Action) là một thuật ngữ trong lĩnh vực IT dùng để chỉ hành động một lời kêu gọi hoặc hành động được yêu cầu từ người dùng trên một trang web hoặc ứng dụng để đạt được mục tiêu cụ thể, chẳng hạn như mua sản phẩm, đăng ký thông tin, tải xuống tệp, hoặc tham gia thảo luận.

Ví dụ:
1. このボタンは、ユーザーに製品を購入するようにとのCTAです。
(Nút này là một CTA yêu cầu người dùng mua sản phẩm.)

2. 効果的なCTAは、コンバージョン率を向上させるのに役立ちます。
(Một CTA hiệu quả có thể giúp tăng tỷ lệ chuyển đổi.)
OAUTH | Open Authentication | Hide
OAUTH (Open Authentication) là một giao thức xác thực mở đường để người dùng cho phép ứng dụng truy cập vào tài khoản của họ mà không cần cung cấp thông tin đăng nhập. Thay vì yêu cầu người dùng chia sẻ mật khẩu của họ, OAUTH cho phép người dùng chia sẻ quyền truy cập vào tài khoản của mình thông qua "token truy cập". Hệ thống OAUTH được sử dụng rộng rãi trong việc đăng nhập bằng tài khoản mạng xã hội như Facebook, Twitter hoặc Google vào các ứng dụng hoặc các trang web bên thứ ba.

Ví dụ:
1. ユーザーのTwitterアカウントにログインするために、このアプリはOAUTHを使用します。
(Dùng OAUTH để đăng nhập vào tài khoản Twitter của người dùng, ứng dụng này sử dụng OAUTH.)

2. 使用されるすべてのアプリケーションがOAUTHをサポートするわけではありません。
(Không phải tất cả các ứng dụng đều hỗ trợ OAUTH.)

3. OAuthの目的は、世界中のシステムでのサービスやデータまたはそのコンテンツへのアクセスを標準化することです。
(Mục đích của OAuth là tiêu chuẩn hóa việc truy cập vào dịch vụ, dữ liệu hoặc nội dung trên các hệ thống trên toàn thế giới.)
REST | Representational State Transfer | Hide
REST (Representational State Transfer) là một kiến trúc phần mềm phổ biến được sử dụng trong việc phát triển các ứng dụng web. Nó giúp xác định các nguyên tắc và quy tắc để chia sẻ dữ liệu giữa các hệ thống và ứng dụng khác nhau trên internet.

Đặc điểm nổi bật của REST là sự trao đổi dữ liệu thông qua các phương thức HTTP như GET, POST, PUT, DELETE, với mục tiêu là truyền tải và thực hiện các thao tác trên dữ liệu. REST cung cấp một cách tiếp cận linh hoạt và đơn giản để quản lý và truy cập các tài nguyên trên web.

Ví dụ:
1. このRESTful APIは、GETリクエストでデータを取得します。
(API RESTful này lấy dữ liệu thông qua yêu cầu GET.)

2. RESTは、状態のない通信とクライアント-サーバーのアーキテクチャを採用しています。
(REST sử dụng giao tiếp không trạng thái và kiến trúc máy khách - máy chủ.)
WYSIWYG | What You See Is What You Get | Hide
WYSIWYG (What You See Is What You Get) là một thuật ngữ trong lĩnh vực công nghệ thông tin để chỉ một phương pháp đồ họa hoá giao diện người dùng cho phép người dùng xem trực tiếp kết quả cuối cùng trên màn hình mà không cần đến quá trình lập trình hay chỉnh sửa mã nguồn.

Ví dụ:
1. わかりやすいWYSIWYGエディタを使ってwebサイトを作成することができます。
(Bạn có thể tạo ra trang web bằng trình chỉnh sửa WYSIWYG dễ hiểu.)

2. WYSIWYGツールを使えば、ブログの記事作成がとても簡単になります。
(Với công cụ WYSIWYG, việc viết bài trên blog trở nên rất dễ dàng.)
XML | Extensible Markup Language | Hide
XML (Extensible Markup Language) là một ngôn ngữ đánh dấu mở rộng, được sử dụng để lưu trữ và truyền dữ liệu giữa các hệ thống khác nhau. Nó được thiết kế để dễ dàng đọc, viết và xử lý bằng máy tính lẫn con người. XML sử dụng các thẻ để đánh dấu các phần tử và các thuộc tính để mô tả dữ liệu.

Ví dụ:
1. XMLファイルはデータの構造化と交換のために使用されます。
(Tệp XML được sử dụng để cấu trúc và trao đổi dữ liệu.)

2. このXMLドキュメントは、ユーザーの情報を表しています。
(Tài liệu XML này biểu diễn thông tin của người dùng.)
GUI | Graphical User Interface | Hide
GUI (Graphical User Interface) là một giao diện người dùng dựa trên đồ họa, cho phép người dùng tương tác với hệ thống thông qua các đối tượng đồ họa như hộp thoại, nút bấm, biểu đồ, v.v. Thông qua GUI, người dùng có thể dễ dàng thực hiện các tác vụ một cách trực quan hơn.

Ví dụ:
1. このソフトウェアは、使いやすいGUIを持っています。
(Phần mềm này có một GUI dễ sử dụng.)

2. GUIの設計は、ユーザーエクスペリエンスに大きな影響を与えます。
(Thiết kế GUI có ảnh hưởng lớn đến trải nghiệm của người dùng.)
UI | User Interface | Hide
UI (User Interface) là giao diện người dùng, là phần của một ứng dụng, trang web hoặc hệ thống thông tin mà người dùng tương tác và sử dụng để thao tác với ứng dụng. UI có thể bao gồm các thành phần như các nút bấm, hộp thoại, thanh công cụ, menu, cửa sổ, v.v. Mục đích của UI là cung cấp một giao diện dễ sử dụng, thuận tiện và hấp dẫn cho người dùng.

Ví dụ:
1. ユーザーが使いやすいUIを作成することが重要です。
(Nhất định phải tạo ra một UI dễ sử dụng cho người dùng.)

2. このアプリのUIは直感的でわかりやすいです。
(UI của ứng dụng này rất trực quan và dễ hiểu.)
UX | User Experience | Hide
Trong lĩnh vực IT, từ UX (User Experience) là viết tắt của thuật ngữ "Trải nghiệm người dùng". Nó đề cập đến trải nghiệm toàn diện của người dùng khi sử dụng một sản phẩm hoặc dịch vụ công nghệ, bao gồm cả cảm nhận, sự tương tác và cảm xúc trước và sau khi sử dụng.

Ví dụ:
1. このアプリのUXは使いやすくて、ユーザーがスムーズに操作できます。
(Trải nghiệm người dùng của ứng dụng này rất dễ sử dụng và người dùng có thể thao tác một cách trơn tru.)

2. UX設計はユーザーが製品に満足感を抱くことができるようにするために重要です。
(Việc thiết kế UX là quan trọng để người dùng có thể cảm thấy hài lòng với sản phẩm.)
TDD | Test Driven Development

テスト駆動開発テストくどうかいはつ | Hide
TDD (Test Driven Development) là một phương pháp phát triển phần mềm mà theo đó, việc viết các bài kiểm tra (test cases) sẽ được thực hiện trước khi viết mã nguồn thực tế.

Ví dụ:
1. テスト駆動開発には、「テストを書く - コードを書く - テストを実行して確認する」というサイクルがあります。
(Test Driven Development có một chu kỳ gồm các bước "viết bài kiểm tra - viết mã nguồn - chạy bài kiểm tra để kiểm tra")

2. TDDを使うことで、非常に堅牢なコードを開発することができます。
(Sử dụng TDD, bạn có thể phát triển mã nguồn rất mạnh mẽ)
MFA | Multi Factor Authentication

多要素認証たようそにんしょう | Hide
MFA (Multi Factor Authentication) là một phương pháp xác thực đa yếu tố. Thay vì chỉ sử dụng một yếu tố như mật khẩu, MFA yêu cầu người dùng phải cung cấp ít nhất hai yếu tố khác nhau để xác nhận danh tính của họ. Các yếu tố này có thể bao gồm mật khẩu, thông tin nhận dạng sinh học (ví dụ: dấu vân tay, nhận diện khuôn mặt) hoặc một thiết bị xác thực bổ sung (ví dụ: mã OTP gửi qua điện thoại di động).

Ví dụ:
1. ユーザーはログインするためにMFAを使用する必要があります。
(Người dùng cần sử dụng MFA để đăng nhập.)

2. MFAが有効な場合、不正アクセスのリスクが低くなります。
(Nếu MFA được kích hoạt, rủi ro truy cập trái phép sẽ giảm xuống.)
JSON | Javascript Object Notation | Hide
JSON (Javascript Object Notation) là một định dạng dữ liệu gọn nhẹ và độc lập ngôn ngữ được sử dụng để trao đổi dữ liệu giữa các ứng dụng. Nó được sử dụng rộng rãi trong lĩnh vực IT để lưu trữ và truyền dữ liệu.

JSON là một kiểu dữ liệu mở trong JavaScript. Kiểu dữ liệu này bao gồm chủ yếu là text, có thể đọc được theo dạng cặp "thuộc tính - giá trị". Về cấu trúc, nó mô tả một vật thể bằng cách bọc những vật thể con trong vật thể lớn hơn trong dấu ngoặc nhọn ({ }). JSON là một kiểu dữ liệu trung gian, chủ yếu được dùng để vận chuyển thông tin giữa các thành phần của một chương trình.

Ví dụ:
1. このAPIはデータをJSON形式で返します。
(API này trả về dữ liệu dưới dạng JSON.)

2. このウェブアプリケーションでは、JSONを使用してデータを交換します。
(Ứng dụng web này sử dụng JSON để trao đổi dữ liệu.)
CV | Curriculum Vitae | Hide
CV (Curriculum Vitae), bản lý lịch làm việc. Đây là một thuật ngữ viết tắt trong ngành IT để chỉ một tài liệu tóm tắt về quá trình học vấn, kinh nghiệm làm việc và thành tựu cá nhân của một người khi xin việc. Nó được sử dụng để giới thiệu bản thân và nêu rõ những kỹ năng, kiến thức và kinh nghiệm có liên quan đến công việc mà người đó muốn ứng tuyển.

Ví dụ:
1. 私のCVには、プログラミング言語のスキルやプロジェクトの経験が詳しく記載されています。
(Trong CV của tôi, có chi tiết những kỹ năng lập trình và kinh nghiệm làm việc trên dự án.)

2. 彼はIT企業に応募するため、自分のCVを書いています。
(Anh ấy đang viết CV của mình để nộp đơn xin việc vào một công ty IT.)
RDB | Relational Database

リレーショナルデータベース | Hide
RDB (Relational Database), cơ sở dữ liệu quan hệ. Đây là một loại cơ sở dữ liệu mà dữ liệu được tổ chức và quản lý dựa trên mô hình quan hệ, trong đó dữ liệu được lưu trữ và truy xuất thông qua các bảng có mối quan hệ với nhau. Trong RDB, các dữ liệu được lưu trữ trong các bảng có hàng và cột. Mỗi hàng trong bảng đại diện cho một bộ dữ liệu, còn cột đại diện cho một thuộc tính của bộ dữ liệu đó. Mối quan hệ giữa các bảng được xác định thông qua khóa ngoại.

Ví dụ:
1. このアプリケーションはRDBを使用しています。
(App này sử dụng RDB.)

2. RDBは非常に効率的なデータベースの形式です。
(RDB là một định dạng cơ sở dữ liệu rất hiệu quả.)
ORM | Object Relational Mapping

オブジェクトリレーショナルマッピング | Hide
ORM (Object Relational Mapping) là một kỹ thuật lập trình thực hiện ánh xạ database sang các đối tượng trong các ngôn ngữ lập trình hướng đối tượng. Các table tương ứng các class, mối ràng buộc giữa các table tương ứng quan hệ giữa các class

Việc sử dụng ORM cho phép lập trình viên thao tác với database một cách hoàn toàn tự nhiên, dễ hiểu thông qua các đối tượng

ORM có thể giúp giảm bớt công việc lập trình và tăng tính bảo mật của ứng dụng. Nó cũng cung cấp tính nhất quán và linh hoạt khi thay đổi cơ sở dữ liệu.

Ví dụ:
1. ORMを使用することで、データベースのクエリを簡単に管理できます。
(Khi sử dụng ORM, bạn có thể quản lý truy vấn cơ sở dữ liệu một cách dễ dàng.)

2. このフレームワークは、効率的なORMツールを提供しています。
(Khung này cung cấp một công cụ ORM hiệu quả.)
AJAX | Asynchronous JavaScript and XML | Hide
AJAX (tiếng Anh: "Asynchronous JavaScript and XML" - nghĩa là "JavaScript và XML không đồng bộ") là một nhóm các công nghệ phát triển web được sử dụng để tạo các ứng dụng web động hay các ứng dụng giàu tính Internet (rich Internet application). Từ Ajax được ông Jesse James Garrett đưa ra và dùng lần đầu tiên vào tháng 2 năm 2005 để chỉ kỹ thuật này, mặc dù các hỗ trợ cho Ajax đã có trên các chương trình duyệt từ 10 năm trước.

Ví dụ:
1. 今回のページでは、AJAXを使用して動的にデータを読み込みます。
(Trang web này sử dụng AJAX để đọc dữ liệu một cách động.)

2. このアプリケーションでは、AJAXを使ってリアルタイムでデータを更新しています。
(Ứng dụng này sử dụng AJAX để cập nhật dữ liệu theo thời gian thực.)
HTML | Hypertext Markup Language | Hide
HTML (Hypertext Markup Language) là một ngôn ngữ đánh dấu được sử dụng để tạo nên các trang web. Nó sử dụng các thẻ để định dạng và tổ chức nội dung trên trang web. HTML là một ngôn ngữ đơn giản và dễ hiểu, và nó được sử dụng rộng rãi trong lĩnh vực phát triển web.

Ngôn ngữ Đánh dấu Siêu văn bản, là một ngôn ngữ đánh dấu được thiết kế ra để tạo nên các trang web trên World Wide Web. Cùng với CSS và JavaScript, HTML là một trong những ngôn ngữ quan trọng trong lĩnh vực thiết kế website. HTML được định nghĩa như là một ứng dụng đơn giản của SGML và được sử dụng trong các tổ chức cần đến các yêu cầu xuất bản phức tạp. HTML đã trở thành một chuẩn mực của Internet do tổ chức World Wide Web Consortium (W3C) duy trì. Phiên bản chính thức mới nhất của HTML là HTML 4.01 (1999). Sau đó, các nhà phát triển đã thay thế nó bằng XHTML. Hiện nay, phiên bản mới nhất của ngôn ngữ này là HTML5.

Ví dụ:
1. このウェブサイトはHTMLで作られています。
(Trang web này được tạo bằng HTML.)

2. HTMLタグを使って、テキストや画像などをウェブページに表示することができます。
(Bạn có thể sử dụng các thẻ HTML để hiển thị văn bản, hình ảnh và nhiều hơn nữa trên trang web.)
SPA | Single Page Application | Hide
SPA (Single Page Application)
Ứng dụng trang đơn (Single Page Application) là một ứng dụng web mà chỉ có một trang duy nhất được tải xuống từ máy chủ ban đầu của nó. Thay vì tải lại toàn bộ trang khi người dùng thao tác, SPA tải những phần cần thiết của trang dưới dạng AJAX (Asynchronous JavaScript and XML) để cung cấp trải nghiệm người dùng mượt mà và tương tác nhanh.

Ví dụ:
1. SPAのメリットは、ユーザーが他のページに移動するときに完全なページリロードが不要であり、操作がスムーズになることです。
(Ưu điểm của SPA là khi người dùng chuyển sang các trang khác, không cần tải lại toàn bộ trang, giúp tương tác trở nên mượt mà.)

2. ソーシャルメディアアプリは通常、SPAのアーキテクチャを使用して作成されています。
(Các ứng dụng mạng xã hội thông thường được tạo ra bằng kiến trúc SPA.)
API | Application Programming Interface | Hide
API (Application Programming Interface) là một tập hợp các giao diện và quy tắc được sử dụng để phát triển phần mềm và cho phép các ứng dụng khác tương tác với nhau. API định nghĩa các phương thức, cấu trúc dữ liệu, lớp và kiểu dữ liệu cần thiết để giao tiếp giữa các phần mềm khác nhau.

API là một giao diện mà một hệ thống máy tính hay ứng dụng cung cấp để cho phép các yêu cầu dịch vụ có thể được tạo ra từ các chương trình máy tính khác, và/hoặc cho phép dữ liệu có thể được trao đổi qua lại giữa chúng. Chẳng hạn, một chương trình máy tính có thể (và thường là phải) dùng các hàm API của hệ điều hành để xin cấp phát bộ nhớ và truy xuất tập tin. Nhiều loại hệ thống và ứng dụng thực hiện API, như các hệ thống đồ họa, cơ sở dữ liệu, mạng, dịch vụ web, và ngay cả một số trò chơi máy tính. Đây là phần mềm hệ thống cung cấp đầy đủ các chức năng và các tài nguyên mà các lập trình viên có thể rút ra từ đó để tạo nên các tính năng giao tiếp người- máy như: các trình đơn kéo xuống, tên lệnh, hộp hội thoại, lệnh bàn phím và các cửa sổ. Một trình ứng dụng có thể sử dụng nó để yêu cầu và thi hành các dịch vụ cấp thấp do hệ điều hành của máy tính thực hiện. Hệ giao tiếp lập trình ứng dụng giúp ích rất nhiều cho người sử dụng vì nó cho phép tiết kiệm được nhiều thời gian tìm hiểu các chương trình mới, do đó khích lệ mọi người dùng nhiều ứng dụng hơn.

Ví dụ:
1. このAPIを使用して、ウェブサイトのユーザー情報を取得できます。
(Có thể sử dụng API này để lấy thông tin người dùng trên trang web.)

2. モバイルアプリとの連携には、特定のAPIを使用します。
(Để kết nối với ứng dụng di động, chúng ta sử dụng một API cụ thể.)
DOM | Document Object Model | Hide
DOM (Document Object Model) là một tiêu chuẩn của W3C (World Wide Web Consortium) để mô tả cách các phần tử trong một trang web được tổ chức và tương tác với nhau. DOM đại diện cho cấu trúc cây của một tài liệu HTML hoặc XML, trong đó mỗi phần tử trong tài liệu được trình bày dưới dạng các đối tượng trong các cây con và cây cha.

Ví dụ:
1. ボタンのテキストを変更するために、DOMの操作を使用します。
(Để thay đổi văn bản của nút, sử dụng DOM để thao tác.)

2. DOMを使用して、Webページの特定の要素を動的に変更することができます。
(Bạn có thể thay đổi động một phần tử cụ thể trên trang web bằng cách sử dụng DOM.)
ASCII | American Standard Code for Information Interchange | Hide
Mã ASCII (American Standard Code for Information Interchange) là một bảng mã ký tự tiêu chuẩn được sử dụng trong hầu hết các máy tính và hệ thống thông tin trên toàn thế giới. Mã này sử dụng 7 bit để mã hóa các ký tự tiếng Anh, các ký tự số, và một số ký tự đặc biệt. Mã ASCII đặt một giá trị số cho mỗi ký tự, từ 0 đến 127.

Chuẩn mã trao đổi thông tin Hoa Kỳ, thường được phát âm là át-xơ-ki, là bộ ký tự và bộ mã ký tự dựa trên bảng chữ cái La Tinh được dùng trong tiếng Anh hiện đại và các ngôn ngữ Tây Âu khác. Nó thường được dùng để hiển thị văn bản trong máy tính và các thiết bị thông tin khác. Nó cũng được dùng bởi các thiết bị điều khiển làm việc với văn bản.

Ví dụ:
1. 文字列をASCIIコードに変換します。 ("Converts a string to ASCII code.")
(Chuyển đổi một chuỗi thành mã ASCII.)

2. パソコンのテキストファイルは通常ASCII形式で保存されます。("Text files on computers are usually saved in ASCII format.")
(Các file văn bản trên máy tính thường được lưu dưới định dạng ASCII.)
SQL | Structured Query Language | Hide
SQL (Structured Query Language) là một ngôn ngữ lập trình dùng để quản lý và truy vấn dữ liệu trong hệ quản trị cơ sở dữ liệu (DBMS). SQL được sử dụng để tạo, sửa đổi và truy vấn dữ liệu lưu trữ trong các cơ sở dữ liệu quan hệ.

Ngôn ngữ truy vấn mang tính cấu trúc, là một loại ngôn ngữ máy tính phổ biến để tạo, sửa, và lấy dữ liệu từ một hệ quản trị cơ sở dữ liệu quan hệ. Ngôn ngữ này phát triển vượt xa so với mục đích ban đầu là để phục vụ các hệ quản trị cơ sở dữ liệu đối tượng-quan hệ. Nó là một tiêu chuẩn ANSI/ISO

Ví dụ:
1. データベースに新しいテーブルを作成するためには、SQL文を使用します。
(Tạo một bảng mới trong cơ sở dữ liệu, chúng ta sẽ sử dụng câu SQL.)

2. ショッピングサイトのデータベースから、商品の値段が1000円以上のものを取得するためには、SQLのクエリを使用します。
(Để lấy các sản phẩm có giá trị lớn hơn 1000 yên từ cơ sở dữ liệu của trang web mua sắm, chúng ta sẽ sử dụng truy vấn SQL.)
HTTP | Hypertext Transfer Protocol | Hide
HTTP (Tiếng Anh: HyperText Transfer Protocol - Giao thức truyền tải siêu văn bản) là một giao thức lớp ứng dụng cho các hệ thống thông tin siêu phương tiện phân tán, cộng tác. [1] HTTP là nền tảng của truyền thông dữ liệu cho World Wide Web, nơi siêu văn bản tài liệu bao gồm các siêu liên kết đến các tài nguyên khác mà người dùng có thể dễ dàng truy cập, ví dụ bằng một con chuột nhấp chuột hoặc bằng cách chạm vào màn hình trong một trình duyệt web.

Ví dụ:
1. ウェブサイトにアクセスする際、ウェブブラウザはHTTPを使用してサーバーにリクエストを送信します。
(Khi truy cập vào trang web, trình duyệt web sử dụng HTTP để gửi yêu cầu đến máy chủ.)

2. 当社のウェブアプリケーションは、HTTPプロトコルを使用してクライアントとサーバー間でデータをやり取りします。
(Ứng dụng web của chúng tôi sử dụng giao thức HTTP để trao đổi dữ liệu giữa client và server.)
HTTPS | Hypertext Transfer Protocol Secure | Hide
HTTPS, viết tắt của Hypertext Transfer Protocol Secure, là một giao thức kết hợp giữa giao thức HTTP và giao thức bảo mật SSL hay TLS cho phép trao đổi thông tin một cách bảo mật trên Internet. Giao thức HTTPS thường được dùng trong các giao dịch nhạy cảm cần tính bảo mật cao.

HTTPS là một giao thức truyền tải siêu văn bản mà là phiên bản an toàn hơn của giao thức HTTP. Nó sử dụng một lớp bảo mật SSL/TLS để mã hóa dữ liệu trước khi gửi qua mạng, đảm bảo tính bảo mật và riêng tư của thông tin người dùng. Giao thức HTTPS thường được sử dụng trong việc truyền tải thông tin nhạy cảm như thông tin ngân hàng, thông tin đăng nhập, và thông tin cá nhân trên các trang web.

Ví dụ:
1. ウェブサイトのURLが「https://www.example.com」で始まっている場合、それはセキュアな接続を意味します。
(Trang web có URL bắt đầu bằng "https://www.example.com" là một kết nối an toàn.)

2. インターネットバンキングの場合、常にHTTPSを使用してください。
(Trong trường hợp của ngân hàng trực tuyến, luôn luôn sử dụng HTTPS.)
SSL | Secure Sockets Layer | Hide
SSL (Secure Sockets Layer) là một giao thức mạng được sử dụng để bảo vệ độ tin cậy và bảo mật thông tin trên internet. SSL sử dụng mã hóa để mã hóa dữ liệu và đảm bảo rằng thông tin được truyền đi không bị đánh cắp hoặc chỉnh sửa. Nó thường được sử dụng trong việc bảo vệ thông tin cá nhân, thanh toán trực tuyến và truyền tải dữ liệu quan trọng.

SSL là một loại bảo mật giúp mã hóa liên lạc giữa website và trình duyệt. Công nghệ này đang lỗi thời và được thay thế hoàn toàn bởi TLS

Ví dụ:
1. ウェブサイト上の個人情報を保護するために、SSLが使用されます。
(SSL được sử dụng để bảo vệ thông tin cá nhân trên trang web.)

2. ユーザーのパスワードはSSLを使用して暗号化されます。
(Mật khẩu của người dùng được mã hóa bằng SSL.)
TLS | Transport Layer Security | Hide
TLS (Transport Layer Security) là một giao thức bảo mật dùng trong lĩnh vực mạng và truyền thông. Nó được sử dụng để tạo kết nối an toàn giữa hai thiết bị trên internet, đảm bảo rằng dữ liệu được truyền đi một cách bảo mật và không bị can thiệp hoặc đánh cắp.

Đây là một dạng giao thức bảo mật (Security Protocol) cung cấp mức độ riêng tư cao, cũng như tính toàn vẹn của dữ liệu khi giao tiếp bằng mạng và internet

Ví dụ:
1. ウェブブラウザとウェブサーバーの間でTLS接続が確立されました。
(Kết nối TLS đã được thiết lập giữa trình duyệt web và máy chủ web.)

2. このアプリケーションでは、データの送信にTLSを使用しています。
(Ứng dụng này sử dụng TLS để truyền dữ liệu.)
CA | Certificate Authority | Hide
CA (Certificate Authority) là một tổ chức hoặc công ty được tin cậy có vai trò xác nhận và phát hành các chứng chỉ số trong hệ thống quản lý khóa công khai (PKI). CA chứng nhận rằng một thực thể (như một cá nhân, một tổ chức hoặc một trang web) là đáng tin cậy và có quyền sở hữu khóa công khai được đặt trong chứng chỉ số.

Certificate Authority là nhà cung cấp chứng thực số, đảm bảo các hoạt động, giao dịch được diễn ra an toàn trên nền tảng Internet

Ví dụ:
1. ウェブサイトへのアクセスは、信頼できるCAによって署名されたSSL証明書を持っている必要があります。
(Để truy cập vào trang web, bạn cần có chứng chỉ SSL được ký bởi CA đáng tin cậy.)

2. インターネットバンキングを利用する際、CAによって署名されたデジタル証明書を使って認証されることが重要です。
(Khi sử dụng dịch vụ ngân hàng trực tuyến, việc xác thực bằng chứng chỉ số kỹ thuật số được ký bởi CA là quan trọng.)
## Sheet: Katakana
インデント | thụt đầu dòng
プロトコル | Biên bản, thủ tục | 通信規約
ソースコード | Mã nguồn
ロールバック | Lui lại, lùi về | 元に戻す
コンポーネント | Thành phần cấu thành, cấu tạo, hợp thành | 構成、成分
コンソールアプリケーション | Áp dụng bàn phím
プロパティ | Tính chất, thuộc tính , quyền sở hữu
ドメイン | Miền, miền xác định
マップ | Bản đồ
トランザクション | Giao tác, chuyển tác | 取引
ブラウザ | Trình duyệt, chế độ browser
メールパーザ | duyệt mail
スパン | vùng
テーブル | Bảng
コラム | Cột
ロー | hàng
レコード | Sự ghi lại
主レコードキー | khóa chính
フィルード | Trường, miền, phạm vi
外部キー | khóa bên ngoài
リレーショナル | Có quan hệ
コネ | Sự nối, liên hệ
アスタリスク | dấu hoa thị
モーダル | Đối thoại theo kiểu
イベント | Sự kiện
ガイド | Hướng dẫn
レジストリ | Cơ quan đăng ký
フォーマット | Dạng mẫu
文のネスト | vòng lặp if lồng nhau
アクセス権 | quyền truy cập
アクセス件 | điều kiện truy cập
ノットイコール | khác
アーキテクチャー | Cấu trúc
アウトライン | Ngoại tuyến,
アクセス | Truy cập
アクター | Người làm
アサイン | Phép gán
アドレス | Địa chỉ
アプリケーション | Ứng dụng
アプローチ | Xấp xỉ
アンケート | Thuật hỏi, bảng hỏi
イメージ | Sự phản ảnh, tạo ảnh
インストール | Tiết lập, lắp ráp
インターネット | Liên mạng
インターネット・エクスプローラー | Trình duyệt IE
インターフェース | Mạch ghép nối, sự phân nối, thiết bị ghép nối
イントラネット | Mạng cục bộ, mạng nội bộ
インフラ | Cấu trúc hạ tầng
インプリメンテーション | Thực hiện, cài đặt
ウェブ | Lưới
エクセル | Bảng tính excel
エラー | Độ sai, sai số
エンドユーザ | Người dung cuối
オブジェクト | Biến đối tượng
オプション | Sự lựa chọn, luật lựa chọn
オペレータ(ー) | Toán tử
AI (エーアイ) | Artificial Intelligenceじんこうちのう | Trí tuệ nhân tạo
IoT (アイオーティー) | Internet of Things | Internet vạn vật
DX (ディーエック ス) | Digital Transforma- tion | Chuyển đổi số
機械学習 | きかいがくしゅう | Học máy
ディープラーニング | Deep Learning | Học sâu
ドローン | Drone | Phương tiện bay không người lái
ビッグデータ | Big Data | Dữ liệu lớn
ブロックチェーン | Block Chain | Chuỗi khối
仮想通貨 | かそうつうか | Tiền ảo
VR (ブイアール) 仮想現実 | Virtual Realityかそうげんじつ | Thực tế ảo
AR (エーアール) | Augmented Realityかくちょうげんじつ | Thực tế tăng cường
メタバース | Metaverse | Vũ trụ ảo
キャッシュレス決済 | キャッシュレスけっ さい | Thanh toán khôngdùng tiền mặt
QRコード | QRCode | Mã QR
フィンテック | FinTech | Công nghệ tài chính
ローコード | Low-Code | Lập trình không cần nhiều việc viết mã thủ công
ノーコード | No-Code | Lập trình không cần việc viết mã thủ công
エンジニア | Engineer | Kỹ sư
ジュニアエンジ ニア | Junior Engineer | Kỹ sư ít kinh nghiệm
シニアエンジニ ア | Senior Engineer | Kỹ sư nhiều kinh nghiệm
プログラマ | Programer | Lập trình viên
開発者 | かいはつしゃ | Lập trình viên, nhà phát triển
テスター | Tester | Nhân viên kiểm thử
ブリッジシステムエンジニア | Bridge System | Kỹ sư cầu nối
コミュニケーター | Communicator | Phiên dịch viên IT
プロジェクトマネージ | Project Manager | Quản lý dự án
コンサルティング | Consulting | Tư vấn
ビジネスアナリティ クス | Business Analyst | Chuyên viên phân tích kinh doanh
QA (キューエー) | Quality Assurance | Người đảm bảo chất lượng
システムエンジニア | System Engineer | Kỹ sư hệ thống
インフラエンジニア | Infrastructure Engineer | Kỹ sư cơ sở hạ tầng
データエンジニア | Data Engineer | Kỹ sư dữ liệu
ネットワークエンジ ニア | Network Engineer | Kỹ sư mạng
フロントエンドエンジニア | Front-end Engineer | Kỹ sư đảm nhận chính các công việc liên quan đến giao diện của ứng dụng
バックエンドエンジニア | Back-end Engineer | Kỹ sư đảm nhiệm công việc viết những đoạn code và chương trình để vận hành ứng dụng
案件 | あんけん | Dự án
アウトソーシング | Outsourcing | Thuê ngoài (gia công)
オフショア | Off-shore | Phát triển IT sử dụng nguồn lực ở nước khác
オンショア | On-shore | Phát triển IT sử dụng nguồn lực trong nước
ニアショア | Near-shore | Phát triển IT sử dụng nguồn lực ở quốc gia lân cận
オフショア拠点 | Địa điểm thực hiện phát triển offshore
オンサイト | Onsite | Hình thức làm việc tại trụ sở của khách hàng
モニター：Màn hình
マウス: Chuột vi tính
キーボード：Bàn phím
インストール: Cài đặt (phần mềm, ứng dụng)
インターネット: Mạng internet
インターフェース: interface
インフラ: Cơ sở hạ tầng, cấu trúc hạ tầng
ウェブ: Web
エクセル: Bảng tính excel
ワード：Trình soạn thảo word
エンドユーザ: Người dùng cuối
オブジェクト: Đối tượng
オプション: Lựa chọn
37. オペレータ: Người điều hành
42.ドメイン: Tên miền, miền (domain)
トラフィック | thông tin (số lượng) chạy trên mạng
32 物理削除・論理 | xóa vật lý, xóa logic
33 昇順・降順の並べ替え | sort theo thứ tự tăng dần/giảm dần
34 読み取り専用・書き込み専用 | read only/write only
35 横展開 よこてんかい triển khai ngang
36 潜在バグ せんざいばぐ bug tiềm ẩn
37 原因究明 | điều tra rõ nguyên nhân
30 小数点以下第一位 | số thập phân thứ 1 sau dấu phẩy
29 後方一致検索 | tìm kiếm match phần sau
28 前方一致検査 ぜんぽういっち | tìm kiếm match phầ trước
27 部分一致検査 ぶぶんいっちけ | tìm kiếm match 1 phần
26 切り上げ・切捨て | làm tròn lên/làm tròn xuống
小数第三位を四捨五入 | Làm tròn lên kể từ số thập phân thứ 3 (Giữ lại 2 số sau phần thập phân)
25 四捨五入 ししゃごにゅう làm tròn ( dưới 4, trên 5)
12 内部 ないぶ Internal 内部仕様書 Internal spec
13 外部 がいぶ External 外部仕様書 External spec
14 何故 なぜ Tại sao
15 等 など v.v.
16 抑える おさえる Hạn chế 最小限に抑える Hạn chế đến mức thấp
nhất
17 進数 しんすう Cơ số 10 進数 Hệ cơ số 10
18 奇数 きすう Số lẻ
19 偶数 ぐうすう Số chẵn
20 定数 ていすう Hằng số, constant
21 整数 せいすう số nguyên
22 省略 しょうりゃく Viết tắt 省略名 tên viết tắt
23 都度 つど Bất kỳ lúc nào, mỗi
並び替え　ならびがえ　　Sap xep
数式　すうしき　Cong thuc,bieu thuc
書式　しょしき　Bieu mau, dinh dang
1 制御 せいぎょ Control
2 後続 こうぞく Following
3 劣る おとる Kém パフォーマンスが劣る performance kém
4 動的 どうてき Dynamic 動的IP
5 静的 せいてき Static 静的IP
6 頻度 ひんど Tần suất
7 宣言 せんげん Khai báo biến 変数を宣言する
8 一致 いっち Thống nhất、match 検索条件と一致する Match với điều kiện
tìm kiếm
9 同一 どういつ Giống nhau 同一命令 Các câu lệnh giống
nhau, na ná nhau
10 揃える そろえる Sắp xếp đồng đều,
thống nhất 前後の行と揃える Hàng trước hàng sau
giống nhau
11 左揃え・右揃え
・中央揃え
căn trái/căn phải/căn
giữa
## Sheet: Message
ユーザー名を入力してください。 | Usename là trường bắt buộc
パスワードを入力してください。 | Mật khẩu là trường bắt buộc
ユーザー名またはパスワードが正しくありません。 | Xác thực không thành công
{filed} を削除しますか？ | bạn có muốn xóa {filed} này ko?
ユーザー名が既に存在します。 | Username đã tồn tại
ユーザー種別を選択してください。 | Loại user là trường bắt buộc
パスワードとパスワード再入力が一致していません。 | password và re-password không khớp
名称 | name
メールアドレス | email
パスワード | password
パスワード確認 | re-password (Nhập lại mật khẩu)
システム管理ユーザー | phân quyền/ user quản lý system
一般ユーザー | phân quyền/ user bình thường.
編集 | Edit
削除 | Delete
ユーザー作成 | Tạo user
ユーザー編集 | Edit user
ユーザー⼀覧 | List user
{filed}は英数字で入力してください。 | Vui lòng chỉ nhập chữ hoa, thường và số cho {field}
テンプレート登録 | Đăng ký templete
テンプレート名 | Template name
テンプレートファイル | File template
テンプレート編集 | Edit template
テンプレート⼀覧 | List template
タイトルを入力してください。 | Tiêu đề của Report không để trống
物件名を選択してください。 | Vui lòng chọn Công trình
検査日の開始日を入力してください。 | Ngày bắt đầu không để trống
検査日の終了日を入力してください。 | Ngày kết thúc không để trống
報告書テンプレートを選択してください。 | Vui lòng chọn mẫu Report
終了日には開始日以降の日付を指定してください。 | Ngày kết thúc phải lớn hơn hoặc bằng ngày bắt đầu
このユーザーを削除してもよろしいですか？ | bạn có muốn xóa user này ko?
{filed} は6文字以上50文字以下で入力してください。 | Vui lòng nhập {filed} có độ dài từ 6 đến 50 ký tự
開始日には終了日以前の日付を指定してください。 | Ngày bắt đầu phải nhỏ hơn hoặc bằng ngày kết thúc
{filed} を入力してください。 | Vui lòng nhập {filed}
情報が無い | Không có thông tin
{filed}を選択してください。 | Vui lòng chọn {filed}
{filed}は英数字と記号（@,#,&,*,!,_）で入力してください。 | Vui lòng chỉ nhập chữ hoa, thường ,số và các ký tự @,#,&,*,!,_ cho {field}
アカウントを登録しました。 | Đã đăng ký account
アカウント登録に失敗しました | Đăng ký account thất bại
アカウント情報を更新しました | Đã update thông tin account
アカウント情報の更新に失敗しました | Update thông tin account thất bại
エラーが発生しました
ページが見つかりませんでした | Đã phát sinh lỗi
Không tìm thấy page
ログインに失敗しました。 | Login thất bại
利用実績 | Usage record
Shift + Enterを押して送信します。 | Press shift + enter to send
ユーザー名を入力してください。 | Không được để trống tên đăng nhập.
パスワードを入力してください。 | Không được để trống mật khẩu.
ユーザー名が正しくありません。 | Tên đăng nhập không đúng.
パスワードが正しくありません。 | Mật khẩu đăng nhập không đúng.
アクセス権限がありません。 | Tài khoản không đủ quyền truy cập
日付が無効です。 | Ngày tháng năm không hợp lệ
PDFファイルのみを選択できます。 | File chỉ có thể là pdf
ユーザー名またはパスワードが正しくありません。 | Đăng nhập người dùng không hợp lệ
ユーザー名を入力してください。 | Usename là trường bắt buộc
パスワードを入力してください。 | Mật khẩu là trường bắt buộc
ユーザー名またはパスワードが正しくありません。 | Xác thực không thành công
{filed} を削除しますか？ | bạn có muốn xóa {filed} này ko?
ユーザー名が既に存在します。 | Username đã tồn tại
ユーザー種別を選択してください。 | Loại user là trường bắt buộc
パスワードとパスワード再入力が一致していません。 | password và re-password không khớp
名称 | name
メールアドレス | email
パスワード | password
パスワード確認 | re-password (Nhập lại mật khẩu)
システム管理ユーザー | phân quyền/ user quản lý system
一般ユーザー | phân quyền/ user bình thường.
編集 | Edit
削除 | Delete
ユーザー作成 | Tạo user
ユーザー編集 | Edit user
ユーザー⼀覧 | List user
{filed}は英数字で入力してください。 | Vui lòng chỉ nhập chữ hoa, thường và số cho {field}
テンプレート登録 | Đăng ký templete
テンプレート名 | Template name
テンプレートファイル | File template
テンプレート編集 | Edit template
テンプレート⼀覧 | List template
タイトルを入力してください。 | Tiêu đề của Report không để trống
物件名を選択してください。 | Vui lòng chọn Công trình
検査日の開始日を入力してください。 | Ngày bắt đầu không để trống
検査日の終了日を入力してください。 | Ngày kết thúc không để trống
報告書テンプレートを選択してください。 | Vui lòng chọn mẫu Report
終了日には開始日以降の日付を指定してください。 | Ngày kết thúc phải lớn hơn hoặc bằng ngày bắt đầu
このユーザーを削除してもよろしいですか？ | bạn có muốn xóa user này ko?
{filed} は6文字以上50文字以下で入力してください。 | Vui lòng nhập {filed} có độ dài từ 6 đến 50 ký tự
開始日には終了日以前の日付を指定してください。 | Ngày bắt đầu phải nhỏ hơn hoặc bằng ngày kết thúc
{filed} を入力してください。 | Vui lòng nhập {filed}
情報が無い | Không có thông tin
{filed}を選択してください。 | Vui lòng chọn {filed}
{filed}は英数字と記号（@,#,&,*,!,_）で入力してください。 | Vui lòng chỉ nhập chữ hoa, thường ,số và các ký tự @,#,&,*,!,_ cho {field}
テンプレートの登録に成功しました。 | Đăng ký template thành công
テンプレートの更新に成功しました。 | Cập nhật template thành công
テンプレートの登録に失敗しました。 | Đăng ký template không thành thành công
テンプレートの更新に失敗しました。 | Cập nhật template không thành công
.xlsmファイル形式を選択してください。 | Vui lòng chọn định dạng file .xlsm
ファイルサイズの上限 {X}MBを超えています。 | Dung lượng file không vượt quá {X ) MB
{filed}は{X}文字以下で入力してください。 | Vui lòng nhập {filed} có độ dài nhỏ hơn hoặc bằng {X} ký tự
{filed}は{X}文字以上で入力してください。 | Vui lòng nhập {filed} có độ dài lớn hơn hoặc bằng {X} ký tự
{filed}の登録に成功しました。 | Đăng ký {filed} thành công
{filed}の登録に失敗しました。 | Đăng ký {filed} không thành công
{filed}の更新に成功しました。 | Cập nhật {filed} thành công
{filed}の更新に失敗しました。 | Cập nhật {filed} không thành công
図面を保存できません。 | Không lưu được bản vẽ
テンプレート名はすでに存在します。 | Name template đã tồn tại
テンプレートファイルはすでに存在します。 | File template đã tồn tại
報告書を保存できません。 | Không lưu được Report
タイトルを入力してください。 | Bắt buộc nhập tên Report
タイトルは100文字以下で入力してください。 | Tên Report nhỏ hơn hoặc bằng 100 ký tự
事業主は100文字以下で入力してください。 | Tên Chủ sở hữunhỏ hơn hoặc bằng 100 ký tự
引渡⽇は100文字以下で入力してください。 | Ngày nhận nhỏ hơn hoặc bằng 100 ký tự
検査者は100文字以下で入力してください。 | Người kiểm tra nhỏ hơn hoặc bằng 100 ký tự
報告書を保存しています。 | Đang lưu Report
新規報告書を作成しています。 | Đang tạo Report
日付が無効です。 | Ngày của tháng không tồn tại
ユーザー名は50文字以下で入力してください。 | Tối đa là 50 ký tự
半角英数字で入力してください。 | Chỉ có thể nhập ký tự chữ + số half-width
パスワードは50文字以下で入力してください。 | Tối đa là 50 ký tự
半角英数字と記号（@#&*!_）で入力してください。 | Chỉ có thể nhập ký tự chữ + số half-width + các ký tự @,#,&,*!,_
パスワードを更新しています。しばらくお待ちください。。。 | Đang cập nhật mật khẩu, vui lòng chờ….
図面の保存に成功しました。 | Lưu bản vẽ thành công
しばらくお待ちください。。。 | Vui lòng chờ…
ユーザ名かパスワードが違います。 | User name hoặc passwork không đúng
不正な認証トークンです。 | Mã xác thực (token) không hợp lệ
前 | Trang trước
次 | Trang sau
パスワードは◯◯文字以上、確認パスワードにはパスワードと同じ入力が必要です。 | Mật khẩu phải có ít nhất x kí tự và khớp với mật khẩu xác nhận
パスワードを再設定しました。 | Đã đặt lại mật khẩu
入力されたメールアドレスにパスワード再設定用のURLを送信しました。 | Chúng tôi đã gửi URL đặt lại mật khẩu tới email của bạn
時間を置いて再度お試しください。 | Vui lòng thử lại sau
このトークンは無効です。
このメールアドレスに一致するユーザーを見つけることが出来ませんでした。 | Không tìm thấy tài khoản phù hợp với email này
[Input name / Label]はファイルでなければいけません。 | [Input name / Label] phải là 1 tập tin
[Input name / Label]は、有効なメールアドレス形式で指定してください。 | [Input name / Label] vui lòng nhập định dạng email hợp lệ
[Input name / Label]は、〇文字以下にしてください。 | [Input name / Label] phải có số kí tự ít hơn x kí tự
[Input name / Label]は、必ず入力してください。 | [Input name / Label] là bắt buộc nhập
[Input name / Label]に〇 KB以下のファイルを指定してください。 | [Input name / Label] phải là một tập tin có kích thước tối đa là x KB
[Input name / Label]のアップロードに失敗しました。 | [Input name / Label] tải lên không thành công
パスワードが正しくありません。 | Mật khẩu không đúng
チャットを送信できません。 | Bạn đã bị cấm chat
Facebookでのログインに失敗しました。もう一度ログインしてください。 | Đăng nhập bằng Facebook|Google|… không thành công. Vui lòng thử lại
〇小判を購入しました。 | Đã mua thành công x coins
小判の購入に失敗しました。 | Mua coin không thành công, Vui lòng thử lại.
購入したい小判のパッケージが見つかりません。 | Không tìm thấy gói coin cần mua
登録に成功しました。ログイン中です。 | Đăng ký thành công, đang đăng nhập …
登録に失敗しました。もう一度登録してください。 | Đăng ký không thành công. Vui lòng thử lại
ログインに失敗しました。もう一度ログインしてください。 | Đăng nhập thất bại. Vui lòng thử lại.
男性 | Nam
女性 | Nữ
配信者はオンラインではありません。 | Streamer không online
チャットの利用にはログインが必要です。 | Vui lòng đăng nhập để sử dụng chat
NGワード | NG Words
追加 | Add
GSSから同期 | Syn from GSS
表示 | Show
エントリー | entries
5つのエントリーのうち1〜5を表示 | Show 1 to 5 of 5 entries
NGワード一覧 | List NG Words
検索 | Search
ID | Id
内容 | Content
操作 | Action
名称 | Name
オフィス | Office
年齢 | Age
性別 | Gender
ランク | Rank
小判 | Coin
未入力 | Chưa cập nhật
処理中 | Processing
配信者一覧 | List streamers
合計〇エントリからフィルタリングしました。 | (được tìm thấy trong tổng số x records)
チャンネル名 | Chanel name
配信者情報 | Streamer info
システムにログイン中です。 少々お待ちください | Đang trong quá trình đăng nhập vào hệ thống. Vui lòng chờ đợi
生年月日 | Birthday
性別：その他 | Giới tính: Other
[Input name / Label]に対応しているファイル形式は、〇,〇です。 | [Input name / Label] phải là một tập tin có định dạng là xxx
NGワードの同期に失敗しました。 | Quá trình đồng bộ NG Words đã bị lỗi.
NGワードの同期に成功しました。 | Quá trình đồng bộ NG Words đã thành công.
NGワード最終更新日2021/01/08 09:30 | NG Words đã đồng bộ lần cuối vào lúc 09:30 28-01-2021
削除を実行します。よろしければ「OK」を押してください。 | Are you Sure you want to delete ?
キャンセル | Hủy bỏ
配信者情報を削除しました。 | Xóa streamer thành công
視聴者 | Viewers
視聴者一覧 | List viewers
視聴者情報 | Viewer info
SNSサービス | SNS Service
視聴者情報を削除しました。 | Xóa viewer thành công
お問い合わせ管理 | Quản lý contact
お問い合わせ情報 | contact info
氏名 | from name
メールアドレス | from email
タイトル | title
データがありません | No data available in table
0件のうち0〜0件を表示 | Showing 0 to 0 of 0 entries
配信が開始されると自動的に再生します。 | Stream will start playing automatically when it is live
該当する情報は見つかりません。 | No matching records found
問い合わせを削除しました。 | Xóa contact thành công
ストリーム中 | on stream
フォローする | Follow now
Shift + Enterを押して送信します。 | Press shift + enter to send
ヘルプ | help
お問い合わせ | contact
配信者の新規登録 | thêm mới streamer
このギフトを送ります。よろしければ「OK」を押してください。 | Bạn có muốn gửi món quà này?
ギフトが見つかりません。 | Không tìm thấy gói quà
小判が不足しております。 | Không đủ coin để tặng quà
ギフト送信に成功しました。 | Đã tặng quà thành công
配信者が見つかりません。 | Không tìm thấy streamer
詳しく見る | xem chi tiết
ご入力項目名は既に登録されています。ご確認ください。 | Tên mục nhập vào đã được đăng ký. vui lòng xác nhận.( trường hợp nhập trùng dữ liệu đã đăng kí trước đó)
予算には０以上の数値を指定してください。 | Vui lòng chỉ định giá trị từ 0 trở lên cho budget
入力が完了していない必須項目があります。ご確認ください。 | Một số hạng mục yêu cầu vẫn chưa được được nhập. vui lòng xác nhận.
無効にしてもよろしいですか？
無効を取り消してもよろしいですか？ | Vô hiệu hóa được không?
Hủy vô hiệu hóa được không
削除してもよろしいですか？ | Xóa được không?
## Sheet: SoTheater
Tên 日本人の漢字名前
赤井 大志 Akai Taishi
荏隈大樹 Hiroki Enokuma
掛谷知秀: Kakeya Tomohide | Có khả năng estimate, và lập kế hoạch dự án
作品の証券化 | しょうけんか | chứng khoán hoá, chuyển thành chứng khoán
証券 | しょうけん　securities | chứng khoán
劇 | げき | Kich,vo kich
劇場 | げきじょう | Nha hat kich
演奏者 | えんそうしゃ | Nguoi bieu dien
作り手 | ＝公演製作者
NFT | ＝仮想通貨
Non-Fungible Token＝非代替性トークン
世界に一つだけのデジタル資産

唯一無二：ゆいつむに | Tien ao
Token không thể thay thế 
だいがえORだいたいせい
NFT（Non-Fungible Token）は、デジタルアイテムの所有権を証明する特別な証明書のようなもの。NFTは「非代替性」という特徴があります。これは、NFTがユニークであり、1つとして同じものが存在しないということを意味します。
トークン | Token | トークンは、ブロックチェーン技術を使用して発行した「暗号資産」の総称のこと。
ウォレット | 財布（さいふ） | wallet、ví
出品登録 | システムにものを入力すること | đăng ký trưng bày sản phẩm
展覧会に出品されている作品はいずれも負けず劣らず素晴らしい。 | まけず・おとらず・すばらしい | tuyệt tác ngang nhau, không thua cũng không kém.
衣裳 | いしょう | quần áo, phục trang
間隙の際 | かんげき | Khi ranh、Khi co thoi gian
隙間の際 | すきま | Khi ranh、Khi co thoi gian
転売 | てんばい | Bán lại
著作権 | ちょさくけん | Quyền tác giả
観劇 | かんげき | Xem kich
観劇者 | かんげきしゃ | Nguoi xem (kich), khan gia
熱量 | 雰囲気盛り上り | Khong khi soi noi
作品の熱量 | 作品の雰囲気盛り上り？ | Khong khi soi noi cua tac pham？
大道具 | おお・どうぐ | đạo cụ lớn
小道具 | こ・どうぐ | đạo cụ nhỏ
応援メッセージ | おうえん | tin nhắn ủng hộ
バックステージ | Back stage | Hau truong
Mint／ミント | 鋳造（ちゅうぞう：Đúc) | NFTのミントとは、NFTを新たに発行することを指す。
オリジナルコンテンツをNFTマーケットプレイスにアップロードし、
オンチェーンになっている状態のことを「Mint（ミント）」と言います。
マーケットプレイス | market place
オンチェーンになっている状態 | On-chain state | Trạng thái trên chuỗi
感想 | かんそう | Cam tuong
批判 | ひはん
応援 | おうえん | Ung ho
レファレンス | Reference | Tai lieu tham khao, doi chieu
総称 | そうしょう | Ten goi chung
NFTを投資対象として見ている人だけでなく、希少性の高いものに目がないコレクター気質の人も必見です！
衣裳パレード | いしょう | trình diễn thời trang
希少
希少性の高いもの | きしょう | hiếm có, khan hiếm, hy hữu.
Đồ quý hiếm
コレクター | Collector
必見 | ひっけん | đáng xem, cần xem, không thể bỏ qua, không thể bỏ lỡ, nhất định phải xem.
気質
アメリカ人気質は | きしつ | tính khí, tính cách, tâm hồn
Tính cách của người Mỹ…
目が離せない | めがはなせない | Khong the roi mat
目がない | Vo cung thich、Dam me
エンゲージメント | engagement
「婚約、誓約、約束、契約」を意味する言葉 | đính hôn/hôn ước, lời thề, lời hứa, hợp đồng.
Trong dự án nghĩa là "tương tác"??
主催者 | しゅさいしゃ | Nha to chuc
売却 | ばいきゃく | Ban, thanh ly
演目 | えんもく | Tiet muc
演目登録 | Dang ky tiet muc
アイテム移転 | アイテム売り | Chuyển giao item, bán đồ vật cho người khác
～Nに一貫性をもたせる | Mang lai su thong nhat
トンマナ | トーン（tone）＆マナー（manner）の略称 | giọng điệu và cách cư xử
庭園/日本庭園 | Vườn/vườn Nhật
スプラッシュ画面/スプラッシュスクリーン | Màn hình khởi động
スチール写真 | ?
棲み分ける | 仕事やプライベートなど、異なる領域を明確に区別して使い分けること | Phan chia tách biệt , サイトとして別物とする
棲み分けない | Khong phan chia tách biệt
マーケットプレイス | Marketplace
時系列に | じけいれつに | Theo thu tu thoi gian
批評家 | ひひょうか | Nha phe binh
キャスティング | casting
エキストラ | extra、thêm
脚本家 | きゃくほんか | nhà biên kịch
観覧者 | かんらんしゃ QUAN LÃM GIẢ | Người xem
作曲家 | さっきょくか | nhà soạn nhạc
撮影 | さつえい | Chup anh
撮影隊 | さつえいたい | Doan quay phim, Doan phim
劇団 | げきだん | Doan kich
トークンエコノミー | token economy
お持てなし | おもてなし | Hieu khach
文言変更 | もんごんへんこう
ぶんげんへんこう | Thay doi cach dien dat
５人で共同所有 | ５Nguoi dong so huu
公開 | public
## Sheet: Common
仕掛けのある絵本 | SÁCH DỰNG HÌNH 3D
Xoá logic và xoá vật lý là như thế nào? | - Xoá logic: chỉ xoá khỏi màn hình, trong DB vẫn còn.
- Xoá vật lý: xoá hoàn toàn khỏi DB.
セキュリティーホール | lỗ hổng bảo mật
脆弱性 | ぜいじゃくせい | Lỗ hổng
なりすましの抑止 | よくし「ỨC CHỈ」
なりすましとは、ある人が別の人を詐称してシステムを利用したり、あるいは第三者とコミュニケーションしたりする行為などを指します | Giả mạo danh tính
詐称
年齢詐称
経歴を詐称
金品を詐取 | さしょう「TRÁ XƯNG」 | Khai man

Làm giả lý lịch
Lừa gạt tiền bạc
なりすましの抑止 | よくし | ngăn chặn việc giả mạo danh tính
デジタル教具 | きょうぐ | thiết bị dạy học kỹ thuật số
自伝 | hồi ký、Tu truyen
誇りに思う | tự hào về..., | 父のことを誇りに思う。
気楽にやろう | Hãy làm vui vẻ nào !
明日という日があるさ！
ユーモアのセンスを持っている | có khiếu hài hước
抜群 | ばつぐん | xuất chúng, nổi bật, đáng chú ý
脇 | わき | nách (bộ phận cơ thể con người)
ストレッチで脇をしっかり伸ばす。Kéo giãn hông bằng động tác khởi động
hông (bên cạnh) một địa điểm nào đó
コンビニの脇の道を入る。Đi vào con đường bên cạnh combini
そわそわ　bồn chồn, đứng ngồi không yên (phiên âm giống từ: sợ quá, sợ quá)
もうすぐ試験の結果発表なので、そわそわしてきた。 Vì kết quả kỳ thi sắp được công bố nên bồn chồn, đứng ngồi không yên.
へとへと　mệt không dậy nổi (phiên âm giống từ: hét to, hét to) (mức độ nặng hơn くたくた)
一日中歩いてへとへとに疲れたので、今夜はゆっくり休みたい。Cả ngày đi bộ mệt không dậy nổi, nên tối nay tôi muốn thong thả nghỉ ngơi
くたくた　mệt rã rời (phiên âm giống từ: cử tạ, cử tạ)
こちこち cứng nhắc (phiên âm giống từ: cổ chị cổ chị)
自分で、自分を傷つけない。
嫌われる勇気 ⇆ DŨNG CẢM ĐỂ BỊ GHÉT BỎ
言葉に傷つきやすい人 | một người dễ bị tổn thương bởi lời nói
1. かねてより進めておりましたプロジェクトは、予定どおりに進んでいます。
動線
動線を考えよう | どうせん | Xu huong
Can nhac xu huong
織り込む | おりこむ | Long ghep, dan xen
未遂＞＜遂行、既遂 | みすい、こうすい、きすい | bất thành, đã hoàn thành
自殺未遂 | じさつみすい | tự tử bất thành
透明度 | とうめいど | độ đậm nhạt, độ trong
マークペンの透明度
水の透明度 | Độ đậm nhạt của pen
độ trong của nước
小売＞＜卸売
小売業＞＜卸売業 | こ・うり、おろし・うり
こうりぎょう、おろしうりぎょう | bán buôn, bán lẻ
Nhà bán buôn, nhà bán lẻ
辞書を引く
習慣をつける
辞書を引く習慣をつけるべきだ。 | じしょ、しゅうかん | Tra từ điển
Hình thành thói quen
Nên hình thành thói quen tra từ điển.
音符 | おんぷ | ① kí hiệu hỗ trợ cho chữ viết（濁音符「゛」， 半濁音符「゜」， 長音符「ー」， 促音符「っ」， 反復音符「ゝ」「々」）
② bộ chỉ âm (cách đọc) của của chữ Kanji. 意符(いふ): Bộ trong chữ Kanji để chỉ ý (ý nghĩa của chữ Kanji)
③ nốt nhạc
戻る
戻り値
印刷
参照
更新
編集
画面
検索
新規
登録
新規登録
修正
一覧
追加
開く
確認
画像
解除
障害
変更
仕様書
削除
項目
接続
貼り付け
降順
昇順
## Sheet: WEB CMS
Comtors chú ý luyện đọc chính xác từ katakana không đọc kiểu tiếng Anh của người Việt
パンくずリスト | ＝Topic path,Breadcum
サイトを訪れたユーザーがサイト内のどこにいるかをわかりやすくするためのナビゲーションです。
上部のナビゲーション バー | Top navigation bar.
テーマ | Theme | Là một hay nhiều giao diện mẫu được thiết kế sẵn. Có thể ví theme là bộ trang phục bạn đang khoác lên người, khi bạn đổi theme tức là bạn đang dùng một bộ trang phục khác.
プラグイン | Plugin
Plug in thực chất là một chương trình hoặc phần mềm để tích hợp cho website WordPress. Ngôn ngữ để viết Plugin là PHP. | plugin (còn gọi là add-in, addin, add-on hay extension), là một chương trình hoặc phần mềm để tích hợp cho website WordPress, hay để thêm những tính năng cụ thể cho một phần mềm ứng dụng lớn hơn.
Trên kho thư viện của WordPress có tới hàng chục nghìn, hàng trăm nghìn các plugin và template khác nhau được cá nhân và tổ chức phát triển nhằm hỗ trợ tối đa cho người sử dụng.
アドイン、アドオン | Add-in, Add-on | Tiện ích mở rộng.
1. Add on trong ngữ cảnh công nghệ: Đây là một ứng dụng hay phần mở rộng được cài đặt vào trình duyệt để cung cấp các tính năng mở rộng cho trình duyệt đó. Cách sử dụng add on trong trình duyệt là tải và cài đặt add on từ trang web của nhà phát triển hoặc từ các cửa hàng ứng dụng như Chrome Web Store hoặc Firefox Add-ons.
2. Add on trong ngữ cảnh máy chủ và tên miền: Add on domain (tạm dịch là tên miền phụ) là khái niệm trong quản lý hosting và tên miền, cho phép người dùng thêm nhiều tên miền khác vào hosting gốc. 
3. Add on trong ngữ cảnh mua sắm trực tuyến: Add on cũng có thể là các mục tiêu mua thêm khi mua hàng trực tuyến. Ví dụ, khi mua laptop, bạn có thể thêm vào một ổ cứng di động hoặc bịch chống sốc với giá thêm như một add on.
ホスティング | hosting | Có thể nói, website là căn nhà, tên miền là địa chỉ, thì hosting chính là mảnh đất xây lên ngôi nhà của bạn.
Hosting hay Web hosting là không gian lưu trữ được chia nhỏ từ server giúp bạn đăng tải dữ liệu, xuất bản website, hoặc ứng dụng trên internet. 
Hosting (hay web hosting) là một dịch vụ online giúp bạn xuất bản website hoặc ứng dụng web lên Internet.
Khi bạn đăng ký dịch vụ hosting, tức là bạn thuê mộ chỗ đặt trên server chứa tất cả các files và dữ liệu cần thiết để website của bạn chạy được.
Framework | Là một khung sườn hỗ trợ quy trình thiết kế. Hình thức lấy sườn có sẵn từ dịch vụ mà bên thứ 3 cung cấp (nền tảng có sẵn ít nhất 20%) để tiếp tục lập trình và thiết kế website.
CMS | Content Management System. Là dạng sử dụng source code có sẵn khoảng 60% để tiếp tục hoàn thiện website, đáp ứng tốt yêu cầu khách hàng. Khi sử dụng CMS thì có nghĩa là website của bạn nhận được 1 phần lõi code của web. Việc bạn cần làm đó là phát triển giao diện bên ngoài và các tính năng theo nhu cầu.
ヒット | Hit | Đẩy ra kết quả (thường dùng khi tìm kiếm nội dung)
横断的 | おうだんてきな | Xuyen suot。VD：横断的な検索：Tim kiem xuyen suot
ワードプレス | wordpress
法人HP | 法人ホームページ | Trang web công ty, trang chủ công ty
コピペ | copy paste、sao chép dán
WIX, Drupal | Giống như WordPress, WIX cũng là nền tảng tạo web miễn phí. 
Là một nền tảng cho phép người dùng có thể khởi tạo một website trực tuyến bằng thao tác kéo thả.
SSL
ステージング環境 | Môi trường staging (Stage) là môi trường mà bạn deploy trong quá trình phát triển phần mềm. Bạn deploy đến môi trường staging trước khi deploy lên production. Môi trường staging thường giống hệt môi trường production.
Môi trường staging (stage) là một bản sao gần chính xác của môi trường sản xuất để kiểm thử phần mềm. Môi trường staging được tạo ra để kiểm tra code, các bản build và cập nhật, nhằm đảm bảo chất lượng trong môi trường giống như sản xuất trước khi triển khai ứng dụng.
Notionっぽいサインアップ | Sign-up kiểu giống như hệ thống Notion
プロンプト | prompt
動作をするよう促すもの。（うながす） | Mot cai gi do thuc day ban hanh dong
一元管理 | いちげんかんり | Quan ly thong nhat, quan ly tap trung
画像
映像 | がぞう HOẠ TƯỢNG
えいぞう「ÁNH TƯỢNG」 | Image, hình ảnh
動画
動画を撮る | どうが「ĐỘNG HỌA」 | Ảnh động như: Video, bộ phim (phim ảnh, hoạt hình)
Quay video.
liên quan đến hình ảnh mà chuyển động được thì chính là nó. không bó hẹp ở video
ライブ動画 | live stream,ライブストリーム
アニメーション | animation | Hình ảnh động. 
Làm ra những chuyển động của hình ảnh dựa vào các hình ảnh tĩnh.
中程度の精度で | độ chính xác trung bình
デライトチューブ | Delight Tube
上書きする | Ghi đè
洗い出し | Liet ke, xác định
タスクの洗い出し | Liệt kê xác định task
ビギナー | beginner
ベテラン | veteran | Pro, kinh nghiệm đầy mình, lão luyện
準備→助走→離陸 | じゅんび、じょそう、りりく | Chuan bi, lay da, cat canh
ラフな | Rough | Thô
ラフなイメージを描いてみる
## Sheet: Comtor-NOTE-Customer
1.0 | Nói rõ ràng, cụ thể, không dùng từ ngữ mập mờ.
Không nói vòng vo. Với đoạn giải thích dài, khó hiểu, hãy vừa nói vừa chát text message cho comtor
Gửi mọi tài liệu liên quan trước khi meeting, trước buổi giải thích, cho comtor có thời gian đọc hiểu trước.
Để tránh lack task, lack chỉnh sửa, mọi yêu cầu nên gửi dạng task qua jira hoặc qua văn bản tài liệu lưu trữ lại, không yêu cầu chỉ bằng lời nói truyền đạt.
Dùng các thể したい、してください。（何々）に修正してください。
はっきり言って、曖昧な言葉を使わないで
短い文章でゆっくり言っていただければ
何回も繰り返すことに嫌な気持ちなく
言い回ししないで
Cố gắng viết câu có chủ ngữ, không lược bỏ chủ ngữ: ・背景・ロゴ・アイコンは支給いただく như câu này rất khó hiểu, ko biết là enduser cung cấp cho khách hàng hay mình nhờ khác hàng cung cấp
Tên riêng, tên button, tên item thì nên viết để trong ngoặc, tránh bị dịch nhầm: メガネットへ情報配信設定ボタン追加
Comtor có thể sẽ dịch thành: Add thêm button xxx vào yyy. Trong khi cả đoạn này là tên button メガネットへ情報配信設定
Nếu dự án có nhiều bên như dự án Edu, có Tanoshi, Otake, Scuti, khi đọc 1 cái meeting minute có nhiều câu dùng いただく mà ko có chủ ngữ, chả biết ai là chủ ngữ thực hiện hành động
個人的には、少しでも迷ったらしつこくてもお客さんに聞いています。
間違えた時の方がお客様にとって悪い印象を与えるので
Ý thức rằng mình đang nói chuyện với người nước ngoài và nói chậm rãi rõ ràng.
## Sheet: MemoQ-tips
Cách fix lỗi memoQ:
1. Truy cập link: D:\Setups\Tools\Kilgray memoQ Translator Pro 9.12.9 (x64) Multilingual\Cure
Copy file: MemoQ.Collector
2. Paste vào link: 
C:\Program Files\memoQ\memoQ-9
Dùng 2 màn hình (1 lap, 1 cây) | Window + P
Record màn hình | Window + G: nhớ mở record ghi âm thanh, nếu ko mở sẽ chỉ ghi màn hình, ko ghi được âm thanh
Add từ vựng vào TM | Ctrl + E
Bỏ tag trong câu | Ctrl + f8
Bỏ dấu chấm trong câu (thay bằng space) | non printing character
Font chữ bị sai, hiển thị hình vuông | font arial charac
Copy từ source sang nguồn | Bôi đen từ vựng ở source và nhấn: Ctrl + Shift + T
Copy cả câu từ source sang nguồn | Ctrl + Shift + S
Copy 1 đoạn từ source sang nguồn | Ctrl + Shift + T
Đẩy câu dịch vào hệ thống | Ctrl + Enter
Reuse nội dung đã dịch 100% | Ctrl + số thứ tự câu đã dịch
Cách bỏ phân biệt hoa thường khi định nghĩa | Translation -> Translation settings -> Predictive... -> Phần "Option": không tích vào "Look up is case..."
Merge 2 line lại với nhau | Ctrl + J
Chuyển tag từ câu gốc sang câu dịch | F9
Tách line, sprit line | Ctrl + T


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Google Docs.pptx`

## Slide 1
Dùng Google Docs
Là tính năng Google Dịch tích hợp
✅ Dễ sử dụng, giữ định dạng gốc tốt.
✅ Cho ra bản dịch nhanh chóng, dễ dàng chia sẻ.
✅ Thuận tiện trong việc tạo tài liệu báo cáo…cần dịch sang tiếng Nhật
👉 Nên dùng trong trường hợp cần dịch nhanh để hiểu sơ bộ nội dung tổng quan, sau đó cần review lại.
## Slide 2
Hướng dẫn sử dụng
Mở tài liệu trong Google Docs
Trường hợp là file .docx thì cần “Lưu dưới dạng Google tài liệu”
Vào menu Tools (Công cụ) → Translate Document (Dịch tài liệu) 
Chọn ngôn ngữ → Google tạo bản sao tài liệu đã dịch.
## Slide 3
Thực hành
Sử dụng công cụ dịch của Google Docs, chạy dịch file sau sang tiếng Việt  https://docs.google.com/document/d/1ODn09404tWJU9iFpby5naoEKOg7Z5Hle/edit?usp=sharing&ouid=104416917441975431198&rtpof=true&sd=true 

Sử dụng công cụ dịch của Google Docs, chạy dịch file sau sang tiếng Nhật.
https://docs.google.com/document/d/1hbad5-rsIEc9jA8YA5R5UcqjmvxvUa_U/edit?usp=sharing&ouid=104416917441975431198&rtpof=true&sd=true


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Google Dịch.pptx`

## Slide 1
Dùng Google Translate
🔗 Link công cụ: https://translate.google.com/
✅ Tốc độ dịch nhanh. Phạm vi ứng dụng rộng. Hỗ trợ nhiều định dạng file.
❌  File có dung lượng lớn không dịch được đầy đủ, hoặc bị lỗi. 
       Dịch rời rạc, cứng, thiếu chính xác ngữ cảnh.
👉 Sử dụng khi: Cần có bản dịch nhanh sơ bộ để đọc hiểu trước. 
			      Khi không yêu cầu độ chính xác cao. Cần review kỹ.
## Slide 2
Lưu ý: xử lý file PDF
⚠️ PDF thường có định dạng cố định, khó xử lý nội dung. Thường bị vỡ font chữ, mất bố cục.
⚠️ Nếu dùng Google dịch, file sau khi xuất ra vẫn là định dạng PDF không thể chỉnh sửa sau khi dịch => Khó đọc.

🛠️ GIẢI PHÁP
1: Convert file PDF sang Word: https://smallpdf.com/ 
2: Dùng Google dịch file word đã convert -> chỉnh sửa được file sau khi xuất ra
## Slide 3
Thực hành
Dùng Google Dịch, thực hiện dịch file PDF sau sang tiếng Việt, xuất ra bản dịch có thể chỉnh sửa trực tiếp được.

https://drive.google.com/file/d/1He_c1lrhfIGipiqd3EmtqQMq7uTqUm_W/view?usp=sharing


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Khung sườn khóa học Thực hành dịch cho IT Comtor BrSE.docx`

🟢 Module 1: Dịch thuật giao tiếp hằng ngày trong môi trường IT
Giúp học viên quen với văn phong thường gặp trong giao tiếp nội bộ, khách hàng.
Dịch email (mail)
Dịch message (tin nhắn ngắn gọn, dạng Slack, Teams)
Dịch nội dung chat (chat nhóm, khách hàng)
Dịch Q&A (hỏi đáp trong task, issue, v.v.)
Dịch weekly report (báo cáo tuần)
Kỹ năng bổ trợ: phân tích ngữ cảnh, mức độ trang trọng, đối tượng người nhận (sếp, dev, khách hàng...)
🔵 Module 2: Dịch tài liệu kỹ thuật
Tập trung các loại tài liệu mang tính kỹ thuật, đặc trưng trong dự án phần mềm.
Dịch yêu cầu công việc (task, ticket, user story)
Dịch testcase / test specs
Dịch log bug (ghi chú lỗi)
Dịch tài liệu design (thiết kế hệ thống, UI, API...)
Kỹ năng bổ trợ: từ vựng kỹ thuật chuyên ngành, cách phân tích cấu trúc tài liệu, lược dịch – diễn giải.
🟣 Module 3: Dịch tài liệu hội họp
Chuẩn bị cho tình huống giao tiếp cấp cao hơn và cần chính xác.
Dịch biên bản họp (meeting minutes)
(Có thể bổ sung nếu có): Dịch slide họp, tài liệu chuẩn bị họp...
Kỹ năng bổ trợ: tóm tắt nội dung, ngữ điệu trang trọng, thuật ngữ cuộc họp (合意, 懸念点, 次回, 結論...).
🧩 Gợi ý mở rộng (phần nâng cao hoặc module 4 - tùy cấp độ học viên)
Dịch tài liệu hợp đồng, NDA, tài liệu vận hành hệ thống (SOP), hoặc tài liệu quản lý dự án (WBS, timeline).
Dịch song song – xử lý tài liệu Nhật – Việt – Anh cùng lúc (nâng cao).
✅ Lưu ý khi thiết kế bài học
Mỗi bài học trong từng module nên có cấu trúc:
Giới thiệu loại tài liệu
Phân tích đặc điểm ngôn ngữ
Bài luyện tập thực tế (tài liệu thật hoặc giả lập)
Gợi ý bản dịch mẫu + chú thích từ/cấu trúc
Bài luyện tập kiểm tra lại
—----------------------------------


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Prompt Dịch Chat GPT.docx`

Prompt Dịch Chat GPT
PHƯƠNG PHÁP 1: Dịch đoạn ngắn theo quy tắc tùy chỉnh
✅ Khi áp dụng:
Khi dịch tài liệu kỹ thuật có cấu trúc lặp lại
Cần giữ nguyên thuật ngữ như file, class, method,...
🛠️ Cách làm:
Đưa ra quy tắc rõ ràng ngay từ đầu:


 Ví dụ: “Hãy dịch từ tiếng Nhật sang tiếng Việt. Giữ nguyên các từ như class, method, file, UT, IT.”


Dán từng đoạn ngắn để dịch (3–5 câu)

Tối ưu hóa bằng cách thêm hướng dẫn văn phong:


 Ví dụ: “Dịch ngắn gọn, đúng kỹ thuật. Giữ cấu trúc gốc càng nhiều càng tốt.”


🔧 PHƯƠNG PHÁP 2: Dịch hàng loạt bằng đánh số hoặc bảng
✅ Khi áp dụng:
Khi có nhiều câu riêng biệt cần dịch (mô tả màn hình, item checklist,...)
🛠️ Cách làm:
Đưa danh sách đánh số hoặc bảng:

 markdown
CopyEdit
1. 画面を開く
2. ボタンを押す
3. ファイルを選択する
Hỏi ChatGPT:


 “Hãy dịch toàn bộ sang tiếng Việt, giữ nguyên định dạng đánh số.”


Kết quả nhanh, dễ copy-paste vào Excel, Word hoặc slide.

🔧 PHƯƠNG PHÁP 3: Dịch file lớn bằng công cụ hỗ trợ
✅ Khi áp dụng:
Dịch tài liệu PDF, Word, Excel dung lượng lớn (trên 50 trang)
🛠️ Cách làm:
Dùng ChatGPT + Plugin hoặc công cụ hỗ trợ:

PDF: Sử dụng ChatGPT PDF Reader, UPDF, hoặc chia nhỏ bằng ilovepdf.
Excel: Xuất nội dung cần dịch thành bảng, dán vào ChatGPT và yêu cầu giữ định dạng.
Thêm hướng dẫn rõ ràng như:


 “Giữ định dạng bảng, chỉ dịch cột B, không thay đổi cột A.”


🔧 PHƯƠNG PHÁP 4: Dạy ChatGPT sử dụng file thuật ngữ
✅ Khi áp dụng:
Khi có danh sách thuật ngữ bắt buộc phải dùng đúng
🛠️ Cách làm:
Tạo file Excel gồm:


Dán vào prompt:


 “Hãy dịch các câu sau sang tiếng Việt. Sử dụng bảng thuật ngữ bên dưới cho mọi trường hợp.”


Sau đó dán nội dung cần dịch bên dưới.

🔧 PHƯƠNG PHÁP 5: Dịch + chỉnh sửa văn phong
✅ Khi áp dụng:
Khi muốn bản dịch tự nhiên, dễ đọc hơn
🛠️ Cách làm:
Sau khi dịch thô, gõ:


 “Hãy viết lại đoạn dịch trên cho trôi chảy hơn, ngắn gọn hơn, nhưng vẫn giữ đúng nội dung gốc.”


Hoặc:


 “Viết lại như người Việt dịch chuyên nghiệp.”


📌 Tips nâng cao
Đặt vai trò cụ thể cho ChatGPT:


 “Bạn là một biên dịch viên IT có 10 năm kinh nghiệm. Dịch đoạn sau...”


Lưu cấu trúc prompt dùng nhiều thành Prompt mẫu (ghi nhớ hoặc lưu vào Notion, Coda...)

Với tài liệu lặp lại, dùng chức năng Memory hoặc Custom GPT để lưu thuật ngữ, phong cách dịch.

Thuật ngữ Nhật | Dịch tiếng Việt
ファイル | file
テスト設計 | test design
