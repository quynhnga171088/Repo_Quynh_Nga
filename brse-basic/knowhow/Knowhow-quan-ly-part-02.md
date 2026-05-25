# Knowhow-quan-ly (part 02)



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
**Nguồn:** `Kinh nghiệm đào tạo\HongTT1_Su dung cursor hieu qua 1.pdf`

Sử dụng cursor hiệu quả
Trình bày: HongTT1 (SBU1)
Hà Nội, 12/2025
Đối tượng: BrSE, Tester chưa biết kỹ thuật
Confidential
AGENDA
Confidential 2
STT Mục lục
1 Cách cài đặt cursor ide
2 Một số case cơ bản khi muốn phân tích spec
3 Một số yêu cầu cần có trong prompt
4 Ví dụ cụ thể
Cài đặt Cursor IDE
Confidential 3
• Step 1: Download tại 
https://cursor.com/download
• Step 2: Chạy file .exe vừa down về (nhờ anh 
HuyND bên IT để cài vì cần yêu cầu 
user/pass của admin)
• Step 3: Mở Cursor IDE lên → sau đó click 
vào icon bánh xe (Setting) ở góc trên bên 
phải màn hình → Click để login với account 
cursor mà PM cung cấp
• Step 4: Clone code của dự án (request vơí 
PM để được add vào bitbucket)
• Step 5: Click Ctrl + L để mở box chat với AI

Một số case cơ bản khi muốn phân tích spec
• Phân tích màn hình list cho chức năng search
• Phân tích màn hình list có nhiều tab
• Phân tích màn hình form (Add/edit)
• Phân tích logic của từng button
• Phân tích một function cụ thể trong code
• Phân tích các case lỗi có thể có của function cụ thể trong code
• Phân tích luồng điều hướng trong màn hình (sreen flow)
• …
Confidential 4
Một số yêu cầu “nên có” cho mọi prompt
• Ouput phải viết bằng tiếng Việt, các message lỗi/tên lable/button/menu 
phải giữ nguyên tiếng Nhật như trên màn hình
• Nếu output có liên quan đến hằng số (const) thì cần phải viết thêm cả giá 
trị của hằng số đó
• Cursor phải review lại output và verify với code thực tế để đảm bảo 
tính chính xác 100%
• Phân tích TẤT CẢ các sub-function liên quan
• Không tự giả định bất kỳ logic nào
• Check kỹ tên các cột và các bảng trong database
• Verify với source code thực tế trước khi output
• …
Confidential 5
Nếu ouput chưa rõ ràng, chi tiết chỗ nào thì hãy hỏi lại AI logic chỗ đó để AI chỉ ra chi tiết hơn theo đúng mong 
muốn của mình
Phân tích màn hình list có search và table
Cách sử dụng:
Khi cần phân tích spec chi tiết cho màn hình 
list có search và hiển thị data trên table
Prompt mẫu:
Xem tại đây 
Confidential 6

Prompt trên tốt ở đâu?
• Yêu cầu đầy đủ các thành phần (mục đích, files, tables, buttons)
• Phân tích chi tiết search fields (là option cố định hay từ sql)
• Output SQL đầy đủ (với tất cả search conditions)
• Mapping column trên màn hình với tên cột và bảng trong database
• Phân tích button đầy đủ (điều kiện hiển thị, logic tác động)
• Review lại toàn bộ output sau khi phân tích xong
Confidential 7
Phân tích màn hình form (tạo/edit)
Cách sử dụng:
Khi cần phân tích spec chi tiết cho màn hình 
tạo mới hoặc chỉnh sửa
Prompt mẫu:
Xem tại đây 
Confidential 8

Phân tích đoạn code bất kỳ
Prompt mẫu: (bôi đen đoạn code và bấm Ctrl+ L)
YÊU CẦU: 
- Đọc kỹ TOÀN BỘ đoạn code được cung cấp, KHÔNG bỏ sót dòng nào 
- Xác định mục đích chính của đoạn code này (làm gì, để phục vụ 
mục đích gì) 
- Phân tích logic xử lý từng bước (step by step, dễ hiểu)
- Trace TẤT CẢ các biến được sử dụng (input, trung gian, output) 
- Trace TẤT CẢ các sub-functions, helper functions, methods được 
gọi 
- Phân tích tất cả các điều kiện if/else, switch case, loop 
- Nếu có database operations, chỉ ra bảng, cột, SQL (chính xác 
100%) 
- Nếu có xử lý lỗi, phân tích các trường hợp lỗi 
- Sử dụng ví dụ cụ thể nếu có thể 
- Viết bằng tiếng Việt, dùng ngôn ngữ đơn giản, dễ hiểu 
**QUAN TRỌNG**: - Phân tích TẤT CẢ các sub-function liên quan để 
thông tin output được chính xác - Thông tin phân tích ra phải chính 
xác 100% so với source code - Không tự giả định bất kỳ logic nào - Sau 
khi phân tích xong, BẮT BUỘC review lại toàn bộ và verify với code 
thực tế 
Confidential 9

Một số trường hợp khác
Confidential 10

Một số trường hợp khác
Confidential 11

Một số chú ý cho các dự án tromg cụm IT&EX
Dự án Renew
• Với màn hình nào có /communication/… thì view màn hình check tại source code 
của folder renew_hogos_web
• Toàn bộ các API đều nằm ở folder renew_hogos_fdb_ex
Dự án GOKU
• Vì query cả thông tin database của FDB nên trong prompt cần có thêm câu “Hãy 
check lại kỹ tên các cột và các bảng đảm bảo thông tin đưa ra chính xác. Trong câu 
sql, nếu table của FDB thì hiển thị {FDB}.tên table, nếu table của GOKU thì chỉ cần 
hiển thị tên table là đủ”
Dự án JJ
• Với màn hình của role user thì làm cả PC và mobile và nằm ở 2 file controller khác 
nhau nên khi dung AI phân tích cần chú ý điều này
Confidential 12
Một số chú ý khác
• Không hoàn toàn tin tưởng vào kết quả do AI đưa ra
→ Luôn review kết quả từ AI đặc biệt với logic nghiệp vụ phức tạp
• Cung cấp context đầy đủ
→ Cung cấp cho AI nhiều thông tin để kết quả được chính xác hơn
• Đặt câu hỏi cụ thể
→ Câu hỏi càng cụ thể, câu trả lời càng hữu ích
• Lặp lại
→ Nếu kết quả chưa đúng ý, hỏi lại với thông tin bổ sung và cung cấp thông tin chi tiết hơn
• Lưu lại các prompt hay
→ Tạo file lưu lại các prompt hay để tái sử dụng và cải thiện dần
• Học từ output của AI
→ Xem cách AI phân tích để học cách tư duy + cải thiện kỹ năng đặt câu hỏi dựa trên kết quả
• Sử dụng @ để định kèm file trong cửa sổ chat
→ Output của AI đưa ra chính xác hơn
Confidential 13
Q&A

THANK YOU


---
**Nguồn:** `Kinh nghiệm đào tạo\List_has_search_table.md`

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


---
**Nguồn:** `Kinh nghiệm đào tạo\MORGK_01 - Report - Tuần 1.xlsx`

## Sheet: Sheet1
184 | 講師登壇カレンダー（一覧） | tbl_tantoukoushis | calendar_collective
185 | 講師登壇カレンダー（個別） | tbl_tantoukoushis | calendar_individual
186 | 講師選択ダイアログ | tbl_tantoukoushis | view_dia_select
187 | （NG登録） | tbl_tantoukoushis | registerNg
188 | （NG削除） | tbl_tantoukoushis | destroyNg
203 | 空き講師検索 | tbl_tantoukoushis | calendar_available
437 | 講師プロフィール | tbl_tantoukoushis | getProfil
456 | 講師予定ダイアログ | tbl_tantoukoushis | yotei_dia
553 | 講師登壇カレンダーExcel出力 | tbl_tantoukoushis | exceldl
555 | 講師プロフィールデータ | tbl_tantoukoushis | getProfilData
587 | 講師予定登録・修正・削除ダイアログ | tbl_tantoukoushis | koushi_ng_dia
591 | 講師予定検索 | tbl_tantoukoushis | schedule_registration
596 | （再受注申請中チェック） | tbl_tantoukoushis | check_saijuchuu_shinseichuu
659 | 講師登壇可能日検索 | tbl_tantoukoushis | koushi_free_dates_search
660 | 講師登壇可能日編集 | tbl_tantoukoushis | koushi_free_dates_add
661 | 講師登壇可能日CSV一括取込み | tbl_tantoukoushis | koushi_free_dates_csv_ikkatsu_read
662 | CSV出力 | tbl_tantoukoushis | csvdl
## Sheet: summary
No | Task | Estimate | Actual
DEV | DEV | Số lượng comment code | Số lượng line code | Số lượng Bug | Note
Memo (h) | Code(h) | Self-Review(h) | Unit test (h) | Fix Bug | Review Code | Total | Memo (h) | Code(h) | Self-Review(h) | Unit test (h) | Fix Bug | Review Code | Total | Actual/Estiamte
1 | [MORGK-14]Top Page | 38.4 | 64 | 12.8 | 19.2 | 134.4 | 32 | 59.5 | 12.8 | 11.2 | 115.5 | 0.859375 | VietTV
2 | [MORGK-173]集計対象の設定 | 1.5 | 4 | 1 | 1.5 | 8 | 1.5 | 4 | 1 | 1.5 | 8 | 1 | DuyTV
3 | MORGK-174	CT目標達成率ライン変更 | 1.3 | 8 | 1 | 1.3 | 11.600000000000001 | 1.3 | 8 | 1 | 1.3 | 11.600000000000001 | 1
4 | MORGK-175	順位公表対象の変更 | 1.3 | 4 | 1 | 1.3 | 7.6 | 1.3 | 4 | 1 | 1.3 | 7.6 | 1
5 | MORGK-176	教科書準拠設定 | 1.3 | 4 | 1 | 1.3 | 7.6 | 1.3 | 4 | 1 | 1.3 | 7.6 | 1
MORGK-177	修了率の項目変更 | 1.3 | 8 | 1 | 1.3 | 11.600000000000001 | 1.3 | 8 | 1 | 1.3 | 11.600000000000001 | 1
MORGK-178	英検日程等の設定 | 1.3 | 3.3 | 1 | 1 | 6.6 | 3 | 4 | 1 | 1 | 9 | 1.3636363636363638
MORGK-180	適正進度の設定 | 2 | 4 | 4.15 | 1 | 11.15 | 2 | 4 | 4.15 | 1 | 11.15 | 1
MORGK-181	FS算数で復習が必要な単元登録 | 1.3 | 4 | 1 | 1.3 | 7.6 | 1.3 | 4 | 1 | 1.3 | 7.6 | 1
MORGK-183	お知らせテンプレート設定 | 0.3 | 1.45 | 0.3 | 1 | 3.05 | 0.3 | 1.45 | 0.3 | 1 | 3.05 | 1
0 | 0 | #DIV/0!
Total | 49.99999999999998 | 104.75 | 24.250000000000004 | 30.200000000000003 | 0 | 0 | 209.2 | 45.29999999999998 | 100.95 | 24.250000000000004 | 22.200000000000003 | 0 | 0 | 192.7
Percent | 0.2390057361376672 | 0.500717017208413 | 0.11591778202676867 | 0.14435946462715107 | 0 | 0 | 0.235080435910742 | 0.5238713025428127 | 0.12584327970939285 | 0.11520498183705244 | 0 | 0 | 0 | 0 | 0
AVG | #DIV/0!
Đánh giá tổng quan
0
## Sheet: Memo
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 38.4 | 32
[MORGK-173]集計対象の設定 | 1.5 | 1.5
MORGK-174	CT目標達成率ライン変更 | 1.3 | 1.3
MORGK-175	順位公表対象の変更 | 1.3 | 1.3
MORGK-176	教科書準拠設定 | 1.3 | 1.3
MORGK-177	修了率の項目変更 | 1.3 | 1.3
MORGK-178	英検日程等の設定 | 1.3 | 3
MORGK-180	適正進度の設定 | 2 | 2
MORGK-181	FS算数で復習が必要な単元登録 | 1.3 | 1.3
MORGK-183	お知らせテンプレート設定 | 0.3 | 0.3
0 | 0 | 0
Thời gian memo đang ít hơn công số estimate
## Sheet: Code
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 64 | 59.5
[MORGK-173]集計対象の設定 | 4 | 4
MORGK-174	CT目標達成率ライン変更 | 8 | 8
MORGK-175	順位公表対象の変更 | 4 | 4
MORGK-176	教科書準拠設定 | 4 | 4
MORGK-177	修了率の項目変更 | 8 | 8
MORGK-178	英検日程等の設定 | 3.3 | 4
MORGK-180	適正進度の設定 | 4 | 4
MORGK-181	FS算数で復習が必要な単元登録 | 4 | 4
MORGK-183	お知らせテンプレート設定 | 1.45 | 1.45
0 | 0 | 0
Công số code đang ít hơn công số estimate
## Sheet: SelfReview
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 12.8 | 12.8
[MORGK-173]集計対象の設定 | 1 | 1
MORGK-174	CT目標達成率ライン変更 | 1 | 1
MORGK-175	順位公表対象の変更 | 1 | 1
MORGK-176	教科書準拠設定 | 1 | 1
MORGK-177	修了率の項目変更 | 1 | 1
MORGK-178	英検日程等の設定 | 1 | 1
MORGK-180	適正進度の設定 | 4.15 | 4.15
MORGK-181	FS算数で復習が必要な単元登録 | 1 | 1
MORGK-183	お知らせテンプレート設定 | 0.3 | 0.3
0 | 0 | 0
Công số self review đang ít hơn công số estimate
## Sheet: Unit Test
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 19.2 | 11.2
[MORGK-173]集計対象の設定 | 1.5 | 1.5
MORGK-174	CT目標達成率ライン変更 | 1.3 | 1.3
MORGK-175	順位公表対象の変更 | 1.3 | 1.3
MORGK-176	教科書準拠設定 | 1.3 | 1.3
MORGK-177	修了率の項目変更 | 1.3 | 1.3
MORGK-178	英検日程等の設定 | 1 | 1
MORGK-180	適正進度の設定 | 1 | 1
MORGK-181	FS算数で復習が必要な単元登録 | 1.3 | 1.3
MORGK-183	お知らせテンプレート設定 | 1 | 1
0 | 0 | 0
Công số init test đang ít hơn công số estimate
## Sheet: Fixbug
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 0 | 0
[MORGK-173]集計対象の設定 | 0 | 0
MORGK-174	CT目標達成率ライン変更 | 0 | 0
MORGK-175	順位公表対象の変更 | 0 | 0
MORGK-176	教科書準拠設定 | 0 | 0
MORGK-177	修了率の項目変更 | 0 | 0
MORGK-178	英検日程等の設定 | 0 | 0
MORGK-180	適正進度の設定 | 0 | 0
MORGK-181	FS算数で復習が必要な単元登録 | 0 | 0
MORGK-183	お知らせテンプレート設定 | 0 | 0
0 | 0 | 0
Công số fix bug đang ít hơn công số estimate
## Sheet: Review Code
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 0 | 0
[MORGK-173]集計対象の設定 | 0 | 0
MORGK-174	CT目標達成率ライン変更 | 0 | 0
MORGK-175	順位公表対象の変更 | 0 | 0
MORGK-176	教科書準拠設定 | 0 | 0
MORGK-177	修了率の項目変更 | 0 | 0
MORGK-178	英検日程等の設定 | 0 | 0
MORGK-180	適正進度の設定 | 0 | 0
MORGK-181	FS算数で復習が必要な単元登録 | 0 | 0
MORGK-183	お知らせテンプレート設定 | 0 | 0
0 | 0 | 0
Công số review code có xu hướng bằng với công số esimate
## Sheet: Comment code
Task | Số lượng comment | Tuần | Số lượng comment
[MORGK-14]Top Page | 0 | 1 | 216
[MORGK-173]集計対象の設定 | 0 | 2 | 103
MORGK-174	CT目標達成率ライン変更 | 0 | 3 | 89
MORGK-175	順位公表対象の変更 | 0 | 4 | 100
MORGK-176	教科書準拠設定 | 0 | 5-6 | 186
MORGK-177	修了率の項目変更 | 0 | 7 | 71
MORGK-178	英検日程等の設定 | 0 | 8 | 44
MORGK-180	適正進度の設定 | 0
MORGK-181	FS算数で復習が必要な単元登録 | 0
MORGK-183	お知らせテンプレート設定 | 0
0 | 0
## Sheet: Total
Task | Estimate (h) | Actual (h)
[MORGK-14]Top Page | 134.4 | 115.5
[MORGK-173]集計対象の設定 | 8 | 8
MORGK-174	CT目標達成率ライン変更 | 11.600000000000001 | 11.600000000000001
MORGK-175	順位公表対象の変更 | 7.6 | 7.6
MORGK-176	教科書準拠設定 | 7.6 | 7.6
MORGK-177	修了率の項目変更 | 11.600000000000001 | 11.600000000000001
MORGK-178	英検日程等の設定 | 6.6 | 9
MORGK-180	適正進度の設定 | 11.15 | 11.15
MORGK-181	FS算数で復習が必要な単元登録 | 7.6 | 7.6
MORGK-183	お知らせテンプレート設定 | 3.05 | 3.05
0 | 0 | 0
## Sheet: Setting
TYPE | Category | Assignee | Level | Priority | Version | Milestones | Status
-- | -- | -- | -- | -- | -- | -- | --
Epic | API | DatBT | 1 | 1 | POC | 1 | To do
Story | FE | CuongMN | 2 | 2 | 2 | In Progress
Task | Base | NgaHQ | 3 | 3 | 3 | Resolved
Sub-Task | ML | ThuyTT | 4 | 4 | 4 | Done
Bug | Doc | SonNDC | 5 | 5 | 5 | Rejected
FExAPI | TungPN | 6
NguyenQT | 7
UyenNTT | 8
TuanHT | 9
VietLV | 10
QuangNV | 11
ChungDD | 12
BinhTV | 13
HuyHV | 14
## Sheet: Performance member tuần
Member | Line code xử lý được | Performance mục tiêu/ngày | Performance thực tế/ngày
(Bao gồm cả self-review) | Estimate (h) | Actual (h) | Độ lệch
Tổng | Code + Self Review | Tổng | Code + Self Review
VietTV | 0 | 1000 | 0 | 134.4 | 76.8 | 115.5 | 72.3 | 0.859375
DuyTV | 0 | 1000 | 0 | 8 | 5 | 8 | 5 | 1
AnhND2 | 0 | 1000 | #DIV/0! | 0 | 0 | 0 | 0 | #DIV/0!
SonNT4 | 0 | 1000 | #DIV/0! | 0 | 0 | 0 | 0 | #DIV/0!
## Sheet: Performance member luỹ kế
Member | Line code xử lý được | Performance mục tiêu/ngày | Performance thực tế/ngày
(Bao gồm cả self-review) | Estimate (h) | Actual (h) | Độ lệch
Tổng | Code + Self Review | Tổng | Code + Self Review
VietTV | 1000 | #DIV/0! | #DIV/0!
DuyTV | 1000 | #DIV/0! | #DIV/0!
AnhND2 | 1000 | #DIV/0! | #DIV/0!
SonNT4 | 1000 | #DIV/0! | #DIV/0!
0 | 0
#DIV/0!


---
**Nguồn:** `Kinh nghiệm đào tạo\Trainning PM_NgaNTQ.pptx`

## Slide 1
IT&EX Trainning
NgaNTQ – 3/5/2024
Confidential
## Slide 2
AGENDA
Confidential
‹#›
## Slide 3
Quản lý Scope
Confidential
‹#›
## Slide 4
Confidential
‹#›
Quản lý phạm vi (Scope Management) của một dự án giống như lái một chiếc ô tô. 
Nếu bạn không để mắt tới phía trước, chiếc xe sẽ lệch khỏi đường. 
Nếu bạn không kiểm soát phạm vi dự án của mình, dự án sẽ đi chệch hướng. 
Việc quản lý phạm vi dự án hiệu quả sẽ đóng một vai trò quan trọng trong việc giữ cho dự án của bạn trong các giới hạn cụ thể.
## Slide 5
Scope là gì?
Confidential
‹#›
Tất cả các công việc/hoạt động cần thiết thực hiện để hoàn thành dự án.​
Không phải hoạt động nào cũng tạo ra giá trị cho sản phẩm bàn giao (Deliverables)​
Không phải hoạt động nào tạo ra giá trị cho sản phẩm bàn giao cũng thuộc về Scope và phải thực hiện.
## Slide 6
Product Scope
Là những tính năng, chức năng đưa vào trong sản phẩm hoặc dịch vụ.
Project Scope
Tất cả các công việc cần được thực hiện để cung cấp sản phẩm, dịch vụ hoặc thành quả với các chức năng hoặc tính năng được chỉ định. Mức độ hoàn thành của từng công việc được đánh giá dựa trên kế hoạch quản lý dự án.
Đôi khi Project scope được coi là bao gồm cả Product scope.
Confidential
‹#›
## Slide 7
Các bước quản lý Scope
Confidential
‹#›
Lên kế hoạch quản lý scope như thế nào trong dự án
Thu thập toàn bộ yêu cầu của các bên liên quan đến dự án.- Phân tích các tài liệu khách hàng gửi- Họp với khách hàng để clear yêu cầu- Làm Prototypes hoặc các diagrams.
Phân rã các đầu việc thành các công việc nhỏ hơn
Kiểm soát trạng thái và thay đổi của các công việc
Bàn giao sản phẩm cho khách hàng
## Slide 8
Quản lý Scope trong DOJO
Confidential
‹#›
Lên kế hoạch quản lý scope như thế nào trong dự án- KH quản lý yêu cầu trên Backlog vvafBrSE sẽ đẩy về Jira tương ứng.
Thu thập toàn bộ yêu cầu của các bên liên quan đến dự án.- Họp với khách hàng để clear specs nếu chưa hiểu.- Đối với các task khó thì có thể tiến hành điều tra, làm tài liệu trước để trao đổi khách hàng.
Chốt với khách hàng các task mình sẽ làm trong milestone.
Phân rã các đầu việc thành các công việc nhỏ hơn- Làm phần tích task, đánh giá phạm vi ảnh hưởng đến các chức năng cụ thể nhỏ hơn.
Kiểm soát trạng thái và thay đổi của các công việc- Trong quá trình phát triển nếu có phát sinh thay đổi về yêu cầu thì cần update lại vào Jira tương ứng và phân tích task.
Bàn giao sản phẩm cho khách hàng- Kiểm soát các feedback của khách hàng trong quá trình nghiệm thu.
## Slide 9
Product Creep
Là quá trình thay đổi không chính thức, tăng dần từ các thay đổi bé nhỏ không đáng kể, xuất phát từ thay đổi yêu cầu của khách hàng. Dẫn tới không kiểm soát được thay đổi
Gold Plating
Là việc thêm các tính năng vào dự án mà không xuất phát từ yêu cầu. Thường là do ý tốt hoặc sự hiểu nhầm của thành viên trong dự án.
Confidential
‹#›
## Slide 10
Phòng tránh Scope creep
Confidential
‹#›
Phân tích, đánh giá đúng yêu cầu của task. Làm phần tích task đầy đủ để đảm bảo hiểu đúng về mặt scope.
Tuân thủ quy trình về Q&A để đảm bảo hiểu hết yêu cầu của task.
Khi phát sinh thay đổi so với yêu cầu mình đã phần tích từ đầu thì cần đánh giá lại:- Phạm vi ảnh hưởng, hướng xử lý của phần thay đổi.- Công số cần đối ứng cho phần thay đổi.- Thống nhất với các bên liên quan về việc thay đổi đó có độ ưu tiên xử lý như thế nào. Trao đổi với Team Lead, BrSE và PM
Thay đổi lại plan xử lý thay đổi phù hợp độ ưu tiên
## Slide 11
Phòng tránh Gold plating
Confidential
‹#›
Phân tích, đánh giá đúng yêu cầu của task. Làm phần tích task đầy đủ để đảm bảo hiểu đúng về mặt scope.
Tuân thủ quy trình về Q&A để đảm bảo hiểu hết yêu cầu của task.
Khi phát sinh thay đổi so với yêu cầu mình đã phần tích từ đầu thì cần đánh giá lại:- Phạm vi ảnh hưởng, hướng xử lý của phần thay đổi.- Công số cần đối ứng cho phần thay đổi.- Thống nhất với các bên liên quan về việc thay đổi đó có độ ưu tiên xử lý như thế nào. Trao đổi với Team Lead, BrSE và PM
Thay đổi lại plan xử lý thay đổi phù hợp độ ưu tiên
## Slide 12
Quản lý Schedule
Confidential
‹#›
## Slide 13
Quản lý tiến độ dự án là gì?
Confidential
‹#›
Quản lý tiến độ dự án là quá trình duy trì, phát triển, quản lý và kiểm soát các lịch trình của dự án về khía cạnh thời gian và nguồn lực để hoàn thành dự án.
Lịch trình thể hiện tiến độ dự án phải bao gồm:- Ước tính thời gian (thời lượng) cho tất cả các nhiệm vụ của dự án- Ngày bắt đầu và ngày kết thúc cho các nhiệm vụ- Tên người chịu trách nhiệm hoàn thành nhiệm vụ- Trình tự các nhiệm vụ.
## Slide 14
Các bước xây dựng lịch trình để quản lý tiến độ dự án
Confidential
‹#›
Xác định các nhiệm vụ cần phải thực hiện trong lịch trình của dự án.
Xác định mối quan hệ giữa các nhiệm vụ
Giao từng nhiệm vụ cho từng nhân viên cụ thể
Đo lường khối lượng công việc cần thực hiện
Cân nhắc đến các yếu tố khác gây ảnh hưởng đến tiến độ của dự án
Xây dựng dự phòng thời gian cho các trường hợp bất thường 
Lên lịch trình cho toàn bộ công việc
Kiểm tra xem nhân viên có được phân chia công việc quá mức hay không
Lặp lại từ bước 3 cho đến khi dự án được thực hiện ổn định
## Slide 15
Áp dụng trong dự án DOJO
Confidential
‹#›
Xác định các nhiệm vụ cần phải thực hiện trong lịch trình của dự án- Là các task đã chốt với khách làm trong từng milestone (Scope)
Xác định mối quan hệ giữa các nhiệm vụ- Xác định các rang buộc giữa các task. Task nào làm xong trước thì mới tiến hành được task sau.
Giao từng nhiệm vụ cho từng nhân viên cụ thể- PM dựa vào estimate assign về cho từng member cụ thể.- Đã tính toán đến thời gian tham gia dự án.
Đo lường khối lượng công việc cần thực hiện- Chia thành các subtask trong task chính- Estimate công số cần hoàn thiện cho từng subtask- Điền Estimate cho từng subtask
## Slide 16
Áp dụng trong dự án DOJO (tiếp)
Confidential
‹#›
Cân nhắc đến các yếu tố khác gây ảnh hưởng đến tiến độ của dự án- Đánh giá xem có yếu tố nào ảnh hưởng đến lịch trình hay không. Ví dụ như specs sơ sài, có phần cần điều tra thêm, hay khách hang đang cân nhắc thêm về yêu cầu …
Xây dựng dự phòng thời gian cho các trường hợp bất thường - Đánh giá xem có rủi ro gì có thể phát sinh không, thêm time buffer
Liên lịch trình cho toàn bộ công việc- Lên lịch trình cho toàn bộ task, subtask được assign.
Kiểm tra xem nhân viên có được phân chia công việc quá mức hay không- PM check lại plan của từng member xem có bị over hay không- Điều chỉnh nếu thấy không đảm bảo lịch của milestone
Lặp lại từ bước 3 cho đến khi dự án được thực hiện ổn định
## Slide 17
Quản lý Quality
Confidential
‹#›
## Slide 18
Quản lý chất lượng là gì?
Confidential
‹#›
Quản lý chất lượng dự án bao gồm câc quy trình kết hợp các chính sách chất lượng của tổ chức liên quan đến lập kế hoạch, quản lý, và kiểm soát dự án và các yêu cầu chất lượng sản phẩm để đáp ứng mục tiêu của các bên liên quan.
## Slide 19
Các quy trình quản lý chất lượng dự án
Confidential
‹#›
Lập kế hoạch quản lý chất lượng dự án- Lập các tiêu chuẩn về chất lượng cho dự án và sản phẩm bàn giao.- Chú ý đến tiêu chí chấp nhận sản phẩm
Quản lý chất lượng của dự án- Thực thi để đánh giá chất lượng dự án, sản phẩm có đạt yêu cầu đề ra hay không?
Kiểm soát chất lượng- Đánh giá chất lượng dự án có đảm bảo không.- Phân tích và cải thiện chất lượng
## Slide 20
Tiêu chí chấp nhận sản phẩm của khách hàng
Confidential
‹#›
Hệ thống không lỗi (zero bug)
Hệ thống admin cần chạy trên các trình duyệt: admin (Chrome), mini (Chrome, Firefox, Safari)
App thì cần chạy trên device khách hàng gửi (Tablet android 5, Ipad iOS 11, Chromebook)
Test performance trước khi release
Đảm bảo về Security.
## Slide 21
Chất lượng trong dự án DOJO
Confidential
‹#›
## Slide 22
Hoạt động Kaizen chất lượng
Confidential
‹#›
Tổng hợp và phần tích bug
Đánh giá và đưa ra các action kaizen
## Slide 23
Stakeholder - Communications
Confidential
‹#›
## Slide 24
Stakeholder là ai?
Confidential
‹#›
Là các cá nhân, nhóm hay tổ chức mà:- Có thể ảnh hưởng trực tiếp hoặc gián tiếp đến dự án- Bị ảnh hưởng bởi dự án
## Slide 25
Tại sao phải quản lý Stakeholder?
Confidential
‹#›
Quản lý Stakeholder tốt và phù hợp sẽ làm giảm thiểu rủi ro cho dự án. 
Sự hài lòng của các Stakeholder là một trong những mục tiêu quan trọng của dự án => tăng mức độ thành công của dự án
## Slide 26
Có những loại Stakeholders nào?
Internal stakeholders là những người ở trong nội bộ tổ chức. 
Dự án trực tiếp ảnh hưởng tới họ khi họ cũng tham gia dự án hoặc họ được thuê bởi tổ chức quản lý dự án đó. 
Những stakeholders đó bao gồm: nhân viên, sếp, ban lãnh đạo, nhà quản lý dự án, nhà đầu tư v.v.
External stakeholders là những người nằm ngoài tổ chức và họ gián tiếp bị ảnh hưởng bởi dự án. 
Những người này có thể là nhà cung cấp, khách hàng, bên thứ 3, đối thủ, xã hội, chính phủ v.v.
Confidential
‹#›
Internal stakeholders
External stakeholders.
## Slide 27
Quản lý Stakeholders như thế nào?
Confidential
‹#›
Xác định Stakeholders
Lên kế hoạch về sự tham gia, đóng góp của Stakeholders
Quản lý sự đóng góp, tham dự của Stakeholders
Giám sát hoạt động của Stakeholders
## Slide 28
Quản lý Communications là gì?
Confidential
‹#›
Quản lý truyền thông dự án bao gồm các quá trình cần thiết để đảm bảo rằng nhu cầu thông tin của dự án và các bên liên quan được đáp ứng và đạt được hiệu quả trao đổi thông tin. 
Quản lý truyền thông dự án bao gồm hai phần:- Phần đầu tiên là phát triển một chiến lược để đảm bảo truyền thông giao tiếp hiệu quả cho các bên liên quan.- Phần thứ hai là thực hiện các hoạt động cần thiết để thực hiện chiến lược truyền thông.
## Slide 29
Quản lý Communications như thế nào?
Confidential
‹#›
Lên kế hoạch quản lý Communications- Xác định nhu cầu truyền thông từ các bên liên quan- Xác định được người chịu trách nhiệm trong các khâu truyền thông- Các phương pháp và công nghệ được sử dụng trong truyền thông dự án.
Triển khai Communications trong dự án để đảm bảo theo kế hoạch
Kiểm soát Communications trong dự án
## Slide 30
DOJO: Stakeholder - Communications như thế nào?
Confidential
‹#›
Stakeholder- Khách hàng- Các sếp: CTO, BOD của SBU, Trưởng bộ phận liên quan, Sales- Team member trong dự án- Các bộ phận hỗ trợ như: IT, HCNS
Communications- Khách hàng: Họp khi cần thiết, không cố định. Khách hàng thích giao tiếp trực tiếp.- Daily hàng ngày- Có rule về Q&A- Họp tổng kết quý- Khi có rủi ro hoặc vấn đề chưa báo cáo được chi tiết và kịp thời- Cần tuần thủ việc báo cáo định kỳ khi có sự cố trên Production.
## Slide 31
DOJO: Stakeholder - Communications như thế nào?
Confidential
‹#›
## Slide 32
Quản lý Risk
Confidential
‹#›
## Slide 33
Rủi ro là gì?
Confidential
‹#›
Rủi ro (risk) là sự kiện hoặc tình huống không mong muốn có thể xảy ra và gây ảnh hưởng đến mục tiêu, kết quả hoặc tiến độ của một hoạt động hay dự án. 
Rủi ro có thể làm tăng chi phí, làm chậm tiến độ, giảm chất lượng sản phẩm hoặc dịch vụ, hoặc gây tổn thất khác đến dự án hoặc tổ chức. 
Tất cả các dự án đều có một số mức độ rủi ro, do đó việc quản lý rủi ro là rất quan trọng để giảm thiểu tác động tiêu cực của rủi ro đến dự án
## Slide 34
Risk vs Issue
‹#›
Risk
 Risk là 1 sự kiện or 1 điều kiện không chắc chắn nhưng nếu xảy ra thì sẽ ảnh hưởng tới mục tiêu của dự án.
 Hiện tại chưa xảy ra, và không chắc chắn xảy ra ở tương lai.
Issue
 Risk xảy ra thì gọi là issue.
 Đã xảy ra và tác động đến dự án.
## Slide 35
Các thuộc tính của rủi ro
Confidential
‹#›
Khả năng xảy ra (Probability~Likelihood)  => 0% < Probability < 100% 
Mức độ ảnh hưởng (Impact)
## Slide 36
Threat or Opportunity
Confidential
‹#›
Threat – Nguy cơ  - Risk xảy ra thì ảnh hưởng xấu đến dự án 
Opportunity – Cơ hội- Risk xảy ra thì tác động tốt đến dự án
## Slide 37
Quản lý rủi ro dự án là gì?
Confidential
‹#›
Quản lý rủi ro là một quá trình quan trọng trong quản lý dự án nhằm xác định, đánh giá, và quản lý các rủi ro tiềm năng có thể xảy ra trong quá trình thực hiện dự án. 
Mục đích của quản lý rủi ro là đảm bảo rằng dự án sẽ được triển khai thành công một cách hiệu quả, giảm thiểu rủi ro và đảm bảo tính khả thi của dự án.
## Slide 38
Quy trình quản lý rủi ro trong dự án
Confidential
‹#›
Xác định các rủi ro tiềm ẩn. 
Đánh giá rủi ro dự án
Phát triển kế hoạch quản lý rủi ro dự án
Thực thi kế hoạch quản lý rủi ro dự án
Giám sát và kiểm soát rủi ro dự án
Cập nhật kế hoạch quản lý rủi ro dự án
## Slide 39
Quy trình quản lý rủi ro trong DOJO
Confidential
‹#›
Chưa có quy trình quản lý rõ ràng
Mới chỉ có PM thường xuyên đánh giá rủi ro trong dự án
Mong muốn mọi member đều có mindset về quản lý rủi ro cho chính task của mình.
Mong muốn đánh giá được các task mình triển khai có thể có các rủi ro nào.
Mong muốn Team lead và BrSE có thể đánh giá tổng thể rủi ro của toàn milestone.
## Slide 40
DOJO - Các loại rủi ro trong dự án (tiếp)
Confidential
‹#›
Rủi ro kỹ thuật: - Đây là các rủi ro liên quan đến công nghệ, phần mềm, phần cứng, mạng và các yếu tố kỹ thuật khác. - Ví dụ: lỗi phần mềm, vi rút máy tính, lỗi thiết bị, thay đổi kỹ thuật giữa các phiên bản … 
Rủi ro thời gian: - Các rủi ro này liên quan đến việc không hoàn thành dự án đúng thời hạn. Điều này có thể do trì hoãn trong quá trình phát triển hoặc sự cố bất ngờ..
Rủi ro công số: - Rủi ro tài chính có thể bao gồm quản lý công số không tốt hoặc công số tăng cao hơn dự kiến.
## Slide 41
DOJO - Các loại rủi ro trong dự án (tiếp)
Confidential
‹#›
Rủi ro pháp lý: - Các rủi ro pháp lý liên quan đến các vấn đề pháp lý, chẳng hạn như bản quyền, sở hữu trí tuệ, chính sách bảo mật, v.v. 
Rủi ro liên quan đến con người: - Các rủi ro này liên quan đến nhân viên, khách hàng hoặc các bên liên quan khác.- Ví dụ: nhân viên rời khỏi dự án, khách hàng không hài lòng, hoặc lỗi quản lý.
Rủi ro môi trường: - Các rủi ro này liên quan đến các yếu tố môi trường, chẳng hạn như thiên tai, thảm họa tự nhiên, và dịch bệnh.
Rủi ro chất lượng: - Các rủi ro này liên quan đến đảm bảo chất lượng dự án. - Ví dụ: rủi ro về môi trường test, thiết bị test ...
## Slide 42
Confidential
‹#›
## Slide 44
THANK YOU


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode_BrSE code non.docx`

Đào tạo Comtor/BrSE noncode/BrSE code non hoặc các bạn chưa biết áp dụng AI vào công việc. Thực chiến. 
Điều kiện tiền đề: N2. Còn lại là rèn bộ kĩ năng, khả năng tự học tập tìm hiểu, và rèn tính cẩn thận. => Có được các yếu tố này, bạn hoàn toàn có thể làm trong ngành IT mà bạn chưa biết gì. 
Phỏng vấn bạn nào đủ yêu cầu mới nhận vào học khóa cơ bản: 
Khóa chuyên sâu: Thật ra nội dung là cầm tay chỉ việc cho bạn. Nếu cần học chuyên sâu: tìm hiểu thêm. 
Rèn tính cẩn thận. Làm đúng quy trình là sẽ làm được việc. 
Bạn không biết coding thì bạn phải làm thế nào để tìm hiểu
Đọc nội dung khách gửi, không chỉ dịch và transfer y nguyên, mà phải hiểu yêu cầu, từ yêu cầu của khách, phải biết listup ra các đầu việc dev/team cần làm để thỏa mãn đúng đủ yêu cầu của khách (chứ ko phải khách nói như nào mình làm như vậy). 
Tự mình tìm hiểu: vẫn chưa ra: cần biết trao đổi với dev/tester để rõ yêu cầu: nếu trao đổi xong mà cả team vẫn chưa rõ: hỏi khách
Tránh để lack những câu QA không đáng hỏi/quá simple/nội bộ có thể tự trả lời mà lại đi hỏi khách
Đi onsite/làm việc bên site khách hàng thì phải chú ý những điều gì?
Quản lý task: Làm nhiều dự án hay 1 dự án đi nữa, cũng phải nhìn được bối cảnh tổng thể, list task hiện tại, quản lý ở những đâu (Backlog, Slack, Teams, JIRA…) cần có file quản lý riêng, list task, add link Backlog, Slack, Teams, JIRA để quản lý chỉ ở đó, ko phải đi tìm lung tung, nhìn được due date, push được team, ghi chú luôn ở đó. 
Làm nhiều dự án sẽ bị rối, quay cuồng trong task/trao đổi/đối ứng: phải luôn memo chi tiết từng task vào file quản lý để khỏi quên (nếu ko memo sẽ rất hay quên những việc tưởng chừng nhỏ nhặt)
Lưu ý khi sử dụng kết quả của AI: không được copy paste, cần check lại nội dung, nhất là: text ko cần dịch, ngày tháng… nó có sai nhé. Nó cũng thêm bớt nội dung nhỏ mà nếu ko để ý sẽ lack nội dung nó bịa. (Ví dụ: câu gốc chỉ yêu cầu kiểm tra kỳ tới, nó lại dịch là kiểm tra kỳ hiện tại và kỳ tới -> nguy hiểm, nó tự thêm kỳ hiện tại vào câu dịch và phân tích)
Sử dụng ChatGPT/ Cursor/Copilot để tìm hiểu nghiệp vụ:
Cung cấp tên bảng, tên file, tên chức năng, tên màn hình cần tìm hiểu, vì AI được liên kết đến source code nên sẽ tìm đến đúng nơi được yêu cầu để tìm hiểu và cho ra kết quả. 
Câu prompt mẫu là: 
Sử dụng ChatGPT/ Cursor/Copilot để hiểu rõ yêu cầu khách hàng
Sử dụng ChatGPT/ Cursor/Copilot để phản biện yêu cầu và tạo QA
Sử dụng ChatGPT/ Cursor/Copilot để đưa ra các mẫu testcase normat và abnormal
Sử dụng ChatGPT/ Cursor/Copilot để review nội dung điều tra của dev
Cách quản lý đầu công việc khi làm multi task: tạo file quản lý cá nhân.
Cách trình bày báo cáo/Q&A, template chuẩn hóa: chỉnh format, logic: có thể nhờ AI điều chỉnh cách trình bày dễ hiểu nếu bạn chưa quen. Cách trình bày thường gặp: cho ví dụ đẹp. Khi add ảnh evidence, nên đặt tên cho ảnh = tiếng Anh hoặc tiếng Nhật theo bối cảnh hiện tại để dễ hiểu. Khi viết báo cáo kết quả điều tra, luôn đặt kết luận tổng quát lên đầu, sau đó mới trình bày chi tiết. Cấu trúc chung.
Cách yêu cầu AI dịch đúng nghiệp vụ và sử dụng đúng thuật ngữ khi dịch xuôi dịch ngược (list định nghĩa thuật ngữ: hay bị bỏ qua)
Cách tìm hiểu nghiệp vụ/yêu cầu: dùng AI, hỏi dev/tester/sử dụng hệ thống/test theo chức năng cụ thể (không tìm hiểu lan man)
Cách làm việc với khách hàng không cẩn thận, không clear yêu cầu: luôn phải liệt kê đầu task và xác nhận lại, ok mới làm. Có evidence bằng text/file.
Làm đẹp file báo cáo: Biết sử dụng những chức năng cơ bản của word/excel để điều chỉnh format cho đẹp, ví dụ như add link, ẩn cột…không được sai chính tả, viết câu cũ rõ ràng, dễ đọc cả với tiếng Việt.


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode\Check code của dev và phạm vi ảnh hưởng.docx`

Làm thế nào để check code của dev, nhìn vào code của dev là biết đc chỗ đã sửa code, cần test những màn hình nào, url là gì, chức năng và logic cần test ảnh hưởng là gì? 
=> Dùng Cursor, với prompt AI để phân tích phạm vi ảnh hưởng với code diff hoặc pull hiện tại. 
—---------
Hướng dẫn dev dung Cursor để tự review lại chat lượng code của mình. 
1. Vào nhánh code cần review
2. Kéo file rule vào source code (Cursor)
3. Paste prompt:
--------------------
 Dựa vào file "@cursorrules.md" hãy review giúp tôi "branch FN-1902 với commit ABC.
1. Hãy chấm điểm chất lượng code của tôi hiện tại
2. Nêu rõ những tiêu chí chưa đạt, phân tích những đoạn code có chất lượng thấp
3. Đưa ra những phương án cải thiện cụ thể cho những lỗi trên nếu có
4. Tổng kết lại phần review
---------------
Cần chỉ định file rule, chỉ định commit (tùy trường hợp) và sửa tên branch.


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode\List thuật ngữ dự án- Tại sao cần_.docx`

List thuật ngữ domain đào tạo
コミ：コメント
VD：準拠登録完了までは、日報・進行表が表示できないので、メモ欄に指導内容（指導日・指導単元・コミ）を記録してください。
Cho đến khi hoàn tất đăng ký theo chuẩn, thì không thể hiển thị báo cáo ngày và bảng tiến độ, vì vậy hãy ghi nội dung giảng dạy (ngày giảng dạy・đơn vị giảng dạy・nhận xét) vào ô ghi chú.
コマ: tiết học
指導日:
単元:Unit,bai hoc


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode\Sử dụng ChatGPT_ Cursor_Copilot để review nội dung điều tra của dev.docx`

Sử dụng ChatGPT/ Cursor/Copilot để review nội dung điều tra của dev
Dưới đây là ví dụ cụ thể.
—--------------------------------------------------
Đây là yêu cầu của khách hàng: 
以下の中3の生徒の進行表にFGではなく高校の内容のみが表示されていました。 410274 相上央（6102431 竹下侑里tr） FGの数学が表示されているのが正しい認識ですが、いかがでしょうか？？ お忙しいところ恐れ入りますが、ご確認のほどよろしくお願いします。 ---------------------------------- 
Đây là nội dung báo cáo kết quả của người phát triển đã điều tra: Kết quả điều tra cho học sinh 410274: 1. Hiện tượng Không hiển thị các unit thuộc môn 数学/Toán FG Đang hiển thị unit với 教科書準拠 là 数学[４科目] Message được hiển thị: 「準拠登録完了までは、日報・進行表が表示できないので、メモ欄に指導内容（指導日・指導単元・コミ）を記録してください。」 Trong bảng t_progress_managements cột 教科書準拠id/m_compatibility_id (quản lý tiến độ đang check với id = 178441) đang có giá trị dummy: AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA 2. Nguyên nhân hiển thị Message và 教科書準拠 có giá trị dummy, không hiển thị được unit của FG Tại hệ thống FDB, màn hình 基本情報 cho học sinh trung học chưa đăng ký 数学準拠 cho trường học hiện tại của HS => Dẫn tới các ảnh hưởng sau: Không xác định được 教科書準拠 của học sinh => 教科書準拠id = AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA (dummy) 教科書準拠 đang là dummy nên không lấy ra được教科書準拠 FG của môn 数学 ↓ Hiển thị Message, không hiển thị được unit của FG 3. Nguyên nhân đang hiển thị các unit thuộc 数学[４科目] Tại task GOKU_SORA-246- 英語・数学の進行表修正 đối với học sinh 中３/Lớp 9, 3学期/học kỳ 3, nếu đăng ký môn học là môn 数学/Toán thì ngoài unit FG sẽ thêm unit của 教科書準拠 là 数学[４科目]- 数Ⅰ (Nghĩa là unit sẽ là 教科書準拠 của FG và 数学[４科目]) KẾT LUẬN: Thiếu unit thuộc FG do chưa đăng ký 数学準拠 tại màn hình 基本情報 hệ thống FDB Unit của 教科書準拠 là 数学[４科目] được hiển thị khi là học sinh 中３/Lớp 9, 3学期/học kỳ 3 học môn 数学 =>Nhờ KH check trên hệ thống FDB, học sinh 410274 đã được đăng ký 数学準拠 chưa? Tham khảo học sinh tương tự 310733(中３, 3学期, môn 数学) tại quản lý tiến độ ngày 2026-01-12 thì thấy rằng học sinh đã được setting 数学準拠 bên FDB, hiển thị được unit của 教科書準拠 FG và 数学[４科目] 
================================= 
=> Bạn hãy thực hiện các việc sau: 1. Kiểm tra kết quả báo cáo đã thỏa mãn câu hỏi/yêu cầu của khách hàng chưa? 2. Nếu đã thỏa mãn, hãy viết lại báo cáo, dựa theo đúng nội dung báo cáo từ người phát triển, không bịa đặt, không thêm bớt nội dung. 3. Nếu chưa thỏa mãn điểm nào, hãy phản biện chỉ ra điểm đó, sau đó cho câu trả lời đề xuất. 
—--------------------------------------------------------------------------------------------------------------
 Dưới đây là kết quả trả về từ AI
1. Kiểm tra: Báo cáo điều tra đã thỏa mãn câu hỏi/yêu cầu của khách hàng chưa?
Yêu cầu của khách hàng là gì?
Khách hàng đang hỏi 2 điểm chính:
Hiện tượng

Trong tiến hành biểu (進行表) của học sinh 中3,
 → chỉ hiển thị nội dung cấp THPT,
 → không hiển thị FG.

Câu hỏi xác nhận nhận thức (認識確認)

“Đúng ra thì FG của môn Toán (数学) phải được hiển thị, đúng không?”

👉 Tức là khách muốn biết nguyên nhân + xác nhận xem việc FG không hiển thị là đúng hay sai.
Đánh giá báo cáo điều tra của dev
✅ ĐÃ THỎA MÃN yêu cầu, vì:
Báo cáo đã:

Chỉ ra nguyên nhân gốc rễ vì sao FG không hiển thị

Giải thích rõ:

Vì chưa đăng ký 数学準拠 trên FDB

→ 教科書準拠ID bị dummy

→ Không lấy được FG

→ Hệ thống hiển thị message và không hiển thị unit FG

Đồng thời:

Giải thích rõ vì sao lại đang hiển thị 数学[４科目]

Dẫn chiếu spec cụ thể (GOKU_SORA-246)

Kết luận:

Về mặt nhận thức của KH: “FG phải hiển thị” là đúng

Nhưng điều kiện tiên quyết là phải đăng ký 数学準拠 trên FDB

Nếu chưa đăng ký → hiện tượng hiện tại là đúng theo spec

👉 Như vậy:
Không có điểm nào thiếu để trả lời KH

Không cần phản biện logic hay spec

Có thể viết lại báo cáo trả lời KH

2. Viết lại báo cáo (bằng tiếng Nhật), dựa đúng 100% nội dung dev đã điều tra
❗ Không thêm, không bớt, không suy diễn
【調査結果のご報告】
以下の件につきまして、調査結果をご報告いたします。
■ 対象生徒
410274 相上央（6102431 竹下侑里tr）
1. 現象について
当該生徒の進行表において、
FGの数学ユニットが表示されておらず

教科書準拠が「数学［４科目］」のユニットが表示されております。

また、以下のメッセージが表示されております。
 「準拠登録完了までは、日報・進行表が表示できないので、メモ欄に指導内容（指導日・指導単元・コミ）を記録してください。」
進行管理テーブル（t_progress_managements）の
 教科書準拠ID（m_compatibility_id）には
 AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA（dummy値）が設定されていることを確認しました。
2. FGの数学が表示されない原因について
FDBの基本情報画面にて、
 当該中学生に対して 現在在籍している学校の数学準拠が登録されていない 状態であることを確認しました。
その影響として、
生徒の教科書準拠を特定できず

教科書準拠IDが dummy 値となり

数学のFG教科書準拠を取得できないため

上記メッセージが表示され、FGの数学ユニットが表示されない挙動となっております。

3. 数学［４科目］のユニットが表示されている理由について
タスク GOKU_SORA-246（英語・数学の進行表修正） の対応により、
 中3・3学期で数学を受講している場合、
 FGのユニットに加えて、
 教科書準拠「数学［４科目］－数Ⅰ」のユニットも表示対象となる仕様となっております。
本件では、FGの教科書準拠が取得できない状態のため、
 結果として「数学［４科目］」のみが表示されております。
■ 結論
FGの数学ユニットが表示されない原因は、
 FDBの基本情報画面にて数学準拠が未登録であるためです。

中3・3学期で数学を受講している場合、
 数学［４科目］のユニットが表示される仕様となっております。

恐れ入りますが、
 FDB上で生徒「410274」に対して数学準拠が登録されているか、
 ご確認をお願いいたします。
なお、参考として、
 同条件（中3・3学期・数学）の生徒「310733」につきましては、
 FDBにて数学準拠が設定されており、
 FGおよび数学［４科目］のユニットが表示されていることを確認しております。
3. Phản biện & đề xuất (nếu có)
👉 Không cần phản biện
Báo cáo đã trả lời đúng trọng tâm

Logic khớp spec

Có căn cứ DB + task ID

Đủ để KH xác nhận và hành động (check FDB)

Nếu bạn muốn, mình có thể:
✍️ Viết phiên bản rút gọn hơn cho chat / ticket

✍️ Viết bản trả lời mang tính “confirm nhận thức” rõ ràng hơn cho KH

📋 Tách Q&A xác nhận với KH đúng style BA/BrSE của bạn

Bạn cứ nói hướng bạn muốn dùng.


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode\Template chuẩn hóa báo cáo điều tra.docx`

Cấu trúc chung khi tạo: 
viết báo cáo điều tra
trả lời inquiry nguyên nhân / hiện tượng
tổng hợp kết quả check cho khách hàng
template chuẩn (Kết luận → Hiện tượng → Nguyên nhân → Kết luận chi tiết / Yêu cầu KH)
—----------------------------------
【調査結果報告テンプレート（標準）】
【結論】
（※ Trình bày kết luận tổng quát trước, trả lời thẳng vào “nhận thức của KH đúng hay không”, và điều kiện đúng/sai）
お客様のご認識として、「〇〇であるべき」という点は正しいです。

ただし、その前提条件として、〇〇が設定／登録されている必要があります。

当該条件を満たしていない場合、今回の挙動は仕様どおりとなります。

1. 現象
（※ Mô tả những gì đang xảy ra, không giải thích, không suy luận）
〇〇が表示されていない

代わりに〇〇が表示されている

以下のメッセージが表示されている
 　「〇〇〇〇」

2. 原因
（※ Giải thích nguyên nhân gốc rễ, có thể tách thành nguyên nhân hệ thống / dữ liệu / spec）
〇〇画面にて、〇〇が未登録であることを確認しました。

その結果、〇〇を特定できず、〇〇が dummy 値となっています。

上記理由により、〇〇が取得できず、当該表示となっています。

3. 補足仕様／関連仕様（※ cần thì dùng, không bắt buộc）
（※ Dùng khi có task / spec ảnh hưởng đến hiển thị）
タスク〇〇（〇〇対応）により、〇〇の場合は〇〇が表示対象となる仕様です。

本件では、〇〇のため、〇〇のみが表示されています。

【詳細結論／お客様への依頼】
（※ Kết luận lại bằng hành động cụ thể KH cần làm / xác nhận）
本件の原因は、〇〇が未設定であることによるものです。

恐れ入りますが、〇〇が正しく登録されているか、ご確認をお願いいたします。

（※ Nếu có case tham chiếu）
参考として、同条件の生徒〇〇では、〇〇が設定されており、正常に表示されていることを確認しております。

🔒 Quy ước sử dụng khi đào tạo nhân viên
Bạn có thể nói rõ với team:
❌ Không được đi thẳng vào “原因”

❌ Không được giải thích dài trước khi nêu kết luận

✅ Luôn trả lời nhận thức của KH trước ở phần【結論】

✅ Mỗi mục viết đúng vai trò của mục đó

✅ Không thêm suy đoán ngoài kết quả điều tra
I. CHECKLIST REVIEW BÁO CÁO ĐIỀU TRA (DÀNH CHO LEADER)
Chuẩn Hoá Báo Cáo Điều Tra – Checklist & Hướng Dẫn Đào Tạo
Mục tiêu: Leader chỉ cần check theo checklist này là có thể đánh giá nhanh báo cáo đã đủ chất lượng để gửi khách hàng hay chưa.
1. Tổng thể
Báo cáo có đầy đủ 4 phần theo thứ tự cố định không?
【結論】
【現象】
【原因】
【詳細結論／お客様への依頼】
Không đảo thứ tự, không thiếu mục
Văn phong business, trung lập, không cảm tính
2. Phần 【結論】 (Quan trọng nhất)
Có trả lời trực tiếp nhận thức/câu hỏi của khách hàng không?
Có nêu rõ:
Nhận thức của KH đúng hay không
Điều kiện tiên quyết để đúng
Có kết luận rõ:
Nếu không thỏa điều kiện → hiện tượng hiện tại đúng theo spec
Không viết lan man, không giải thích chi tiết ở phần này
❌ Lỗi thường gặp:
Viết nguyên nhân kỹ thuật ngay trong 結論
Không kết luận đúng/sai theo góc nhìn KH
3. Phần 【現象】
Chỉ mô tả những gì đang xảy ra (what)
Có ghi rõ:
Cái gì không hiển thị
Cái gì đang hiển thị
Message hiển thị (nếu có)
Không chứa suy luận, không giải thích nguyên nhân
❌ Lỗi thường gặp:
Viết kiểu: “Do XXX nên không hiển thị…”
4. Phần 【原因】
Nguyên nhân có dựa trên:
Dữ liệu (DB)
Setting (màn hình, master)
Spec / task cụ thể
Có logic nhân–quả rõ ràng (A → B → C)
Không suy đoán, không dùng từ mơ hồ
5. Phần 【詳細結論／お客様への依頼】
Có kết luận lại ngắn gọn nguyên nhân chính
Có ghi rõ KH cần làm gì (check, confirm, setting…)
Câu chữ lịch sự, mang tính đề nghị
II. HƯỚNG DẪN ĐÀO TẠO NỘI BỘ (TIẾNG VIỆT)
1. Tư duy bắt buộc khi viết báo cáo điều tra
Khi khách hàng hỏi, họ không muốn đọc hành trình điều tra của chúng ta trước.
Thứ họ muốn biết là:
Nhận thức của họ đúng hay sai?
Nếu sai, vì sao sai?
Cần làm gì tiếp theo?
👉 Vì vậy:
Luôn đưa KẾT LUẬN lên đầu, rồi mới giải thích chi tiết phía sau.
2. Ý nghĩa từng phần trong báo cáo
【結論】 – Trả lời khách hàng
Viết cho KH đọc trong 10 giây
Không kỹ thuật, không DB, không code
Trả lời thẳng: “Đúng / Sai / Đúng nếu có điều kiện”
【現象】 – Mô tả sự thật
Những gì hệ thống đang hiển thị thực tế
Giống như chụp ảnh hiện trạng
【原因】 – Giải thích logic hệ thống
Vì sao hệ thống lại có hiện tượng đó
Phải chứng minh được
【詳細結論／お客様への依頼】 – Hành động tiếp theo
Chốt lại 1 lần nữa cho KH dễ hiểu
Yêu cầu KH check / confirm / thao tác
III. VÍ DỤ ĐÚNG / SAI (RẤT QUAN TRỌNG)
❌ Ví dụ SAI
Nguyên nhân là do FDB chưa đăng ký 数学準拠 nên m_compatibility_id bị dummy, vì vậy không lấy được FG. Ngoài ra theo task GOKU_SORA-246 thì 中3 3学期 sẽ hiển thị 数学[４科目]…
❌ Sai vì:
Không có 結論
Khách chưa biết nhận thức của mình đúng hay sai
Đi thẳng vào kỹ thuật
✅ Ví dụ ĐÚNG
【結論】
Về mặt nhận thức của khách hàng, việc “FG phải được hiển thị” là đúng.
Tuy nhiên, điều kiện tiên quyết là phải đăng ký 数学準拠 trên FDB.
Trường hợp chưa đăng ký, hiện tượng hiện tại là đúng theo spec.
【現象】
FG của môn 数学 không được hiển thị trên tiến hành biểu.
教科書準拠「数学［４科目］」 đang được hiển thị.
Message XXX được hiển thị.
【原因】
Tại màn hình 基本情報 của FDB, chưa đăng ký 数学準拠 cho học sinh.
Do đó không xác định được 教科書準拠, ID bị dummy.
Kết quả là không lấy được FG.
【詳細結論／お客様への依頼】
Nguyên nhân là do 数学準拠 chưa được đăng ký.
Nhờ quý khách kiểm tra và đăng ký 数学準拠 trên FDB.
4. Kết luận cho nhân viên
Viết báo cáo điều tra để khách hàng hiểu nhanh và ra quyết định nhanh.
👉 Kết luận trước – Chi tiết sau – Hành động cuối.
—-------------------------------------------------------------------------
=> Đây là tài liệu 
Checklist review báo cáo cho leader
 → Leader chỉ cần tick là biết báo cáo có đạt hay chưa, không cần đọc sâu kỹ thuật.

Hướng dẫn đào tạo nội bộ bằng tiếng Việt
 → Giải thích rõ tư duy, vai trò từng phần, và vì sao phải viết theo thứ tự này.

Ví dụ ĐÚNG / SAI cực kỳ rõ ràng
 → Nhân viên mới nhìn là hiểu ngay:

Sai ở đâu

Đúng thì phải viết như thế nào

Tài liệu này có thể dùng:
Làm tài liệu onboarding

Làm chuẩn review báo cáo nội bộ

Làm tiêu chí đánh giá chất lượng BA/BrSE


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode\Truyền đạt yêu cầu.docx`

Từ yêu cầu của khách: Hiểu -> Làm rõ thành đầu mục -> Truyền đạt rõ ràng: 
Màn hình nào, chức năng nào, item nào, cần làm những gạch đầu dòng gì?
Ví dụ: 
Yêu cầu của khách hàng
Truyền đạt về cho team theo nội dung bên dưới. 
Sau đó tự mình tái hiện.


---
**Nguồn:** `Kinh nghiệm đào tạo\Đào tạo BrSE noncode\Đọc vị khách hàng.docx`

Khách mới làm
Khách làm lâu năm
Trong meeting: khách thuộc tuýp thích buôn chuyện/Không thích buôn chuyện
Không trao đổi qua meeting, chỉ chát: Khách thuộc tuýp có thể trao đổi hỏi thăm/hay chỉ trao đổi đúng nội dung công việc
Khách thuộc tuýp về nhà vẫn làm việc/reply/hay thuộc tuýp ngoài giờ làm là không rep trao đổi
Khách thuộc tuýp communication clear hay mơ hồ/aimai
Khách thuộc tuýp trình bày logic dễ hiểu hay trình bày khó hiểu. => Nếu trình bày khó hiểu: cần xác nhận lại theo gạch đầu dòng dễ hiểu. nếu thuộc tuýp logic: cần chú ý trình bày logic đẹp như khách muốn
Khách thuộc tuýp thích có evidence là ảnh chụp màn hình user sử dụng (vì khách nontech)/hay khách thuộc tuýt biết tech biết code và thích có evidence là ảnh chụp source code? => Khi gửi QA, thông tin điều tra… cần cho evidence tương ứng cho khách dễ hiểu và dễ dàng được approve. 
Khách thuộc type cẩn thận chỉn chu không quên việc/hay thuộc type hay quên.
Khách thuộc type open cởi mở/ hay khó gần lạnh lùng: Có những khách hàng chỉ nói chuyện đủ ngắn gọn về công việc, về task, và chỉ cần mình hoàn thành task tốt là được, ko gần gũi thân thiện. Nếu gần gũi thân thiện là họ tạo khoảng cách khó nói chuyện hơn. 
…….
Một số lưu ý khi xử lý task và trao đổi với khách hàng để công việc smooth:
Nhắn tin cho khách có đính kèm file ảnh/checklist thì sau khi gửi xong nhớ xem lại xem file đó đã đc đính kèm ok chưa
Về cải thiện hiệu năng, khi gửi cho khách thì gửi time trước và sau khi cải thiện để khách thấy rõ bên mình đã cải thiện dc tốc  độ như thế nào BrSE


---
**Nguồn:** `Kỹ năng\Cách tạo portfolio.docx`

PORTFOLIO ITBA TỪ SỐ 0: CÁCH LÀM ẤN TƯỢNG NHÀ TUYỂN DỤNG! - 5 bước tạo dự án cá nhân trong 2 tuần
Tại sao portfolio quan trọng?
Nhà tuyển dụng muốn thấy bạn làm được gì, không chỉ học lý thuyết.
Một portfolio tốt giúp bạn “ghi điểm” so với các ứng viên khác.
Thể hiện bạn nghiêm túc với nghề ITBA và sẵn sàng làm việc.
5 BƯỚC XÂY DỰNG PORTFOLIO ITBA TỪ SỐ 0
Dưới đây là lộ trình chi tiết để bạn tạo portfolio ITBA trong 2-3 tuần. Mỗi bước đều có ví dụ cụ thể để dễ hình dung.
Bước 1: Chọn 2-3 Dự Án Giả Định (Ngày 1-2)
Mục tiêu: Chọn các ý tưởng dự án đơn giản, quen thuộc để phân tích.
Chọn 2-3 ý tưởng từ các ứng dụng hoặc quy trình bạn hay gặp:
Ví dụ: “Ứng dụng đặt món ăn” (như GrabFood), “Hệ thống quản lý quán cà phê”, “Ứng dụng đặt vé xe buýt”.
Ghi lại mục tiêu của dự án:
Ví dụ: “Phân tích ứng dụng đặt món ăn để giảm thời gian đặt hàng từ 5 phút xuống dưới 1 phút.”
Bước 2: Viết 5-10 User Story Cho Mỗi Dự Án (Ngày 3-7)
Mục tiêu: Thể hiện khả năng phân tích yêu cầu qua User Story – kỹ năng cốt lõi của ITBA.
Dùng công thức: “Là [va 
 [tính năng] để [lợi ích].”
Viết 5-10 User Story cho mỗi dự án, tập trung vào các tính năng chính.
Thêm Acceptance Criteria (tiêu chí nghiệm thu) để làm rõ yêu cầu.
Ví dụ dự án “Ứng dụng đặt món ăn”:
User Story 1: “Là khách hàng, tôi muốn xem danh mục món phổ biến ngay trang chủ để chọn món nhanh.”
Acceptance Criteria:
Danh mục hiển thị trong 2 giây.
Chỉ hiển thị món còn hàng.
User Story 2: “Là khách hàng, tôi muốn nhận thông báo khi món hết hàng để chọn món khác.”
Acceptance Criteria:
Thông báo hiển thị ngay khi chọn món.
Gợi ý 3 món thay thế.
Bước 3: Vẽ 1-2 Sơ Đồ Cho Mỗi Dự Án (Ngày 8-12)
Mục tiêu: Minh họa quy trình bằng sơ đồ (Activity Diagram, Use Case Diagram) để thể hiện tư duy logic và khả năng trực quan hóa.
Chọn 1-2 tính năng chính từ User Story để vẽ sơ đồ.
Activity Diagram: Mô tả luồng công việc từng bước.
Ví dụ “Đặt món ăn”: Mở app → Chọn món → Kiểm tra tồn kho → Thanh toán → Nhận xác nhận.
Luồng phụ: Món hết hàng → Gợi ý món thay thế.
Use Case Diagram: Xác định ai làm gì (Actor và chức năng).
Ví dụ: Actor “Khách hàng” → Chức năng “Đặt món”, “Xem trạng thái”.
Dùng công cụ miễn phí như Draw.io hoặc Lucidchart để vẽ.
Bước 4: Mô Tả Ngắn Gọn Về Dự Án (Ngày 13-15)
Mục tiêu: Tóm tắt dự án để nhà tuyển dụng hiểu bạn đã làm gì và giá trị mang lại.
Viết mô tả ngắn (3-5 câu) cho mỗi dự án:
Dự án là gì?
Bạn đã làm gì (User Story, sơ đồ)?
Kết quả/giá trị mang lại?
Ví dụ dự án “Ứng dụng đặt món ăn”:
Tôi đã phân tích quy trình đặt món ăn trên ứng dụng để cải thiện trải nghiệm khách hàng. Tôi viết 5 User Story (VD: hiển thị món phổ biến ngay trang chủ) và vẽ Activity Diagram cho tính năng đặt món. Kết quả: Giảm thời gian đặt hàng từ 5 phút xuống dưới 1 phút.”
Ví dụ dự án “Hệ thống quản lý quán cà phê”:
“Tôi phân tích hệ thống quản lý đơn hàng cho quán cà phê, viết 6 User Story (VD: thông báo khi đơn hàng trễ) và vẽ Use Case Diagram. Kết quả: Giúp chủ quán quản lý đơn hàng hiệu quả, giảm 20% sai sót.”
Bước 5: Trình Bày Portfolio Đẹp Mắt Và Ứng Tuyển (Ngày 16-21)
Mục tiêu: Gộp tất cả thành portfolio chuyên nghiệp và gửi cho nhà tuyển dụng
Gộp thành file PDF:
Sắp xếp:
Trang đầu: Giới thiệu ngắn về bạn
Tiếp theo: Mô tả dự án + User Story + Sơ đồ (2-3 trang/dự án).
Dùng Canva hoặc Google Docs để trình bày đẹp mắt (chọn template đơn giản, màu sắc nhẹ nhàng).
Tạo portfolio online (tùy chọn): Dùng Notion hoặc Google Sites để làm trang cá nhân, thêm link portfolio PDF.
Trong CV, ghi rõ “Thực hành phân tích yêu cầu qua 2 dự án giả định” để nhà tuyển dụng chú ý đến portfolio của bạn.
(Zô nhóm để học từ đầu và làm 4 projects để ghi vào CV, mình để dưới cmt nha)


---
**Nguồn:** `Kỹ năng\Githut.docx`

‘- Githut: mục đích: quản lý version thay đổi. 
Lưu trữ source code, tài liệu, ảnh video: có giới hạn dung lượng. 
Git và github khác nhau nhé.
Git: là tổng
Nhánh main: không được đẩy thẳng lên, vì sẽ ghi đè vào phần của người khác. 
Tạo file -> đẩy lên git -> tạo nhánh đẩy lên -> pull request -> merger rq
Cách get code mới về: vào icon 3 cái ngoe -> copy link trong mục 3 và paste vào visual studio


---
**Nguồn:** `Kỹ năng\Kinh nghiệm tổng hợp của QNga.docx`

Kinh nghiệm chung:
Trao đổi trực tiếp với khách hàng Nhật Bản để xác định yêu cầu của dự án phát triển phần mềm trong công ty.
Dịch tài liệu theo yêu cầu của dự án hoặc yêu cầu của Quản lý. Đọc hiểu yêu cầu của dự án và truyền đạt lại cho team phát triển.
Cùng họp online hoặc offline với team phát triển bên Việt Nam và team phát triển bên Nhật để trao đổi nội dung công việc, giải pháp kỹ thuật, cách thức tiến hành dự án.
Hỗ trợ quản lý dự án như: quản lý tiến độ, quản lý quy trình phát triển.
Hỗ trợ team kiểm thử chất lượng phần mềm để hỏi/đáp với khách hàng trong quá trình test sản phẩm.
Report báo cáo cho khách hàng và cho người quản lý.
Support team sale để làm các tài liệu báo cáo, tài liệu dự án.
Support khách hàng Nhật Bản trong các chuyến công tác tại Việt Nam và ngược lại
Lead team đi onsite tại Nhật Bản, quản lý ăn ở, công việc.
Thống kê công số - doanh số hàng tháng gửi cho bên sale.
Kết thân với khách hàng: Làm sao khách hàng yêu quý và tin tưởng phía mình
Hiểu specs và yêu cầu phát triển và truyền đạt lại cho team phát triển.
Giao việc trong dự án, điều phối với các bên về effort và nhân sự
Đào tạo BrSE team: 5 người (thuộc phòng)


---
**Nguồn:** `Kỹ năng\Ky năng phỏng vấn.docx`

Mình đã từng phỏng vấn hơn 30 Ứng Viên, và nếu bạn nào có 6 điều dưới đây mình auto báo đậu ngay trong hôm đó!
Trong suốt quá trình làm việc mình đã từng phỏng vấn rất nhiều ứng viên, sai cũng có ấn tượng cũng có thậm chí là rất nhiều. Nhiều bạn nghĩ việc tham gia phỏng vấn xin việc thực sự gây căng thẳng. Nhưng chỉ cần bạn làm đúng 6 bước dưới đây không chỉ riêng mình cảm thấy hài lòng mà mình tin HR nào cũng thật sự thích những ứng viên như vậy. Xem hết ở dưới đây nhé:
1. Chuẩn bị cho ấn tượng ban đầu
• Câu hỏi đầu tiên khi bạn tham gia phỏng vấn chắc chắn sẽ gặp đó là “hãy giới thiệu về bản thân bạn”, nếu bạn bạn bạn nên bắt đầu từ đâu? Nếu bạn là tuýp theo kiểu giới thiệu tên tuổi, đang đi học/ tốt nghiệp thì thật ra điều đó cũng được nhưng chưa đủ. Những HR nếu họ có sự chuẩn bị thì đã xem qua sơ yếu lý lịch của bạn rồi, họ không muốn nghe tiếp nữa đâu. Yếu tố quan trọng nhất là họ muốn biết vì sao bạn là người phù hợp và thú vị nhất cho vị trí này.
• Hãy trả lời ngắn gọn và trực tiếp. Nhớ giao tiếp bằng mắt, tự tin lên và nhớ rằng bạn đang là người kể chuyện và là nhân vật chính trong buổi phỏng vấn đó nên bạn phải tự quyết định phần nào của câu chuyện cần nhấn mạnh.
2. Tự tin chia sẻ điểm mạnh
• Khi phỏng vấn, nói về điểm mạnh không phải là khoe khoang hay quá tự cao. Cứ tưởng tượng buổi phỏng vấn là buổi bạn đang SELL chính bản thân bạn vậy đó, bản phải có cái gì tốt, đặc biệt thì họ mới mua về chứ. Cứ nêu việc làm nổi bật những điểm mạnh của bạn là điều rất quan trọng để thành công.
• Hãy chuẩn bị chia sẻ điểm mạnh của bạn. Luyện tập cách nói tự tin và tích hợp chúng một cách tự nhiên khi đề cập đến, ví dụ, ba lý do chính khiến bạn phù hợp với vị trí này.
• Ngay cả khi bạn là người hướng nội hoặc khiêm tốn, vẫn có những cách thể hiện điểm mạnh mà không trái với tính cách của bạn:
- Đầu tiên, nêu rõ kết quả bạn đạt được:
“Tôi đã dẫn dắt một team nhỏ 7 người và có kết quả thu được 90 triệu từ khách hàng, hoàn thành trước thời hạn hai tuần và nhận được phản hồi tuyệt vời từ khách hàng.”
- Thứ hai, trích dẫn review từ những người bạn đã làm việc chung:
“Một trong những đánh giá mà em đã nhận được trong suốt quá trình làm việc, anh XYZ đã rất hoan nghênh em về khả năng quản lý về khả năng hướng dẫn đồng nghiệp mới và tạo động lực cho nhóm.”
• Và hãy luyện tập nói chuyện một mình trước. Chỉ cần vài lần luyện trước, bạn có thể từ lúng túng trở nên chuyên nghiệp rất nhanh.
3. Chuẩn bị ý chính đừng chuẩn bị script
• Đừng học thuộc từng câu. Thay vào đó, bạn nên tự noted lại một vài ý quan trọng cho các câu hỏi phổ biến.
• Đôi khi bạn có thể cảm thấy như bị động trước người phỏng vấn nhưng nếu bạn thoải mái với các ý chính bạn muốn truyền đạt, bạn sẽ có cơ hội chủ động và tự tin trả lời hơn rất nhiều
• Điều này đặc biệt hữu ích nếu bạn có điểm yếu trong hồ sơ, như khoảng trống trong công việc. Đừng né tránh hoặc hy vọng họ sẽ không hỏi.Vì phỏng vấn họ sẽ hỏi hết đó.
• Hãy chuẩn bị sẵn câu trả lời cho vấn đề đó để bạn luôn làm chủ thông điệp của mình, bất kể người phỏng vấn hỏi gì.
4. Thể hiện sự hào hứng với công việc
• Dĩ nhiên, bạn sẽ nghiên cứu về công ty và nói về lý do mình phù hợp. Nhưng quan trọng hơn, bạn cần thể hiện với sự chân thành vì sao bạn hứng thú với chính công việc này.
• Hãy suy nghĩ:
- Điều gì khiến tôi phù hợp đặc biệt với công việc này?
- Điều gì sẽ khiến tôi có động lực để thành công nếu được nhận?
- Công việc này liên quan gì đến mục tiêu sự nghiệp và đam mê của tôi?
• Nhà tuyển dụng muốn cảm nhận xem bạn có phải là người làm việc đầy đam mê và hiệu quả không. Vì vậy, hãy thể hiện sự nhiệt tình một cách rõ ràng.
5. Kể một câu chuyện hay (và ngắn)
• Khi trả lời các câu hỏi về dự án cụ thể bạn từng thực hiện, bạn nên có một cấu trúc câu chuyện rõ ràng tạo hình ảnh và nhấn mạnh vai trò cụ thể của bạn.
• Vậy làm sao để kể chuyện hiệu quả?
- Bắt đầu với bối cảnh: Nêu lý do vì sao dự án quan trọng.
- Làm nổi bật hành động của bạn: Bạn đã làm gì, vượt qua khó khăn như thế nào?
- Kết thúc bằng kết quả tích cực:
Ví dụ: “Nhờ những đóng góp của tôi, doanh thu tăng 8%” hoặc “Dưới sự dẫn dắt của tôi, dự án hoàn thành đúng ngân sách và khách hàng đã gia hạn hợp đồng.”
6. Kết thúc bằng những câu hỏi
• Ở cuối buổi phỏng vấn, đừng ngại đặt câu hỏi về công việc. Đây là cách tốt nhất để thể hiện rằng bạn thực sự quan tâm đến vị trí này. Đồng thời, bạn cũng có cơ hội đánh giá xem môi trường làm việc, văn hóa và định hướng của công ty có phù hợp với mình không tránh mất thời gian cho cả hai bên.
• Cứ hỏi thoải mái, miễn là câu hỏi đúng trọng tâm và thể hiện sự tìm hiểu nghiêm túc. Tin mình đi, HR sẽ sẵn sàng trả lời. Thậm chí, họ còn đánh giá cao điều đó, vì nó cho thấy bạn thực sự muốn gia nhập team, chứ không chỉ đến phỏng vấn cho có.
Điều quan trọng các bạn vẫn nên tự tin và bĩnh tĩnh trước khi đi phỏng vấn vì bạn chỉ cần mất bình tĩnh hay tự ti là bạn sẽ rất dễ bị loại sớm.
Nếu bạn thấy những tips này thú vị thì đừng quên nhắn follow Quizzy học Marketing để có nhiều tips hay nhé!


---
**Nguồn:** `Kỹ năng\Kỹ năng cần trau dồi.docx`

Tiếng Anh
Sử dụng excel và các công thức, để quản lý dự án
Học về hệ quản trị cơ sở dữ liệu quan hệ (RDBMS) như MySQL, PostgreSQL, hoặc SQL Server, … => học 1 cái thôi
Vẽ UML


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\Log work.xlsx`

## Sheet: Trang tính1
Date | Nội dung đã làm | Kế hoạch công việc hôm sau | Việc cần c Nga check/review
2026-04-01 00:00:00 | - Test thử AI làm slides (Genspark - NotebookLM) => Không dùng được
2026-04-02 00:00:00 | - Làm Slides phần Lý thuyết nghề (6/8slides) => Làm qua Canva thủ công
- Research thị trường - làm đề xuất xây dựng Fanpage
2026-04-03 00:00:00 | - Hoàn thành Slides Lý thuyết nghề (Canva)
- Gửi c Nga cách tạo Fanpage
- Dùng AI hỗ trợ xây dựng kế hoạch cho Fanpage (Đã gửi c Nga bản demo)
2026-04-04 00:00:00
2026-04-05 00:00:00
2026-04-06 00:00:00
2026-04-07 00:00:00
2026-04-08 00:00:00
2026-04-09 00:00:00
2026-04-10 00:00:00
2026-04-11 00:00:00
2026-04-12 00:00:00
2026-04-13 00:00:00
2026-04-14 00:00:00
2026-04-15 00:00:00
2026-04-17 00:00:00
2026-04-18 00:00:00
2026-04-19 00:00:00
2026-04-20 00:00:00
2026-04-21 00:00:00
2026-04-22 00:00:00
2026-04-23 00:00:00
2026-04-24 00:00:00
2026-04-25 00:00:00
2026-04-26 00:00:00
2026-04-27 00:00:00
2026-04-28 00:00:00
2026-04-29 00:00:00
2026-04-30 00:00:00


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\Project Plan.xlsx`

## Sheet: Plan
STT | Task | Lesson | Video | Plan video | Ghi chú | Trang edit
1.0 | Hiểu về phát triển phần mềm | Quy trình làm phần mềm trong công ty outsource | Nga | Doing
2.0 | Cách Một Hệ Thống Phần Mềm Hoạt Động | Nga | Doing
3.0 | Quy trình phát triển phần mềm | Nga | Done | ko cần edit gì. E xem lại xem có chỗ nào nói về Comtor ko thì cắt đi nhé. Nếu ko có thì giữ nguyên ko edit gì | 2026-05-06 00:00:00
4.0 | Các vai trò “tiêu biểu” trong dự án | Nga | Done | Giây 4:16, cắt chữ "chúng ta"vì đó là video hướng dẫn comtor. Ở khóa này là dành cho BrSE nên cắt chữ "chúng ta" đi. 
Cắt đoạn 4:26 đến 4:49 | 2026-05-06 00:00:00
5.0 | Mô hình phát triển phần mềm | Nga | Done | cắt từ phút 8:22 đến hết | 2026-05-06 00:00:00
6.0 | Kiểu dự án cơ bản: Labo và Project Base | Nga | e cắt đoạn đầu đi cho chị nhé, cái đoạn e comment là nhìn ko đẹp ấy | 2026-05-06 00:00:00
7.0 | Facebook Page | Tạo cover page | Trang | 2026-05-04 00:00:00
8.0 | Đăng bài 1 | Trang | 2026-05-04 00:00:00
Thử lên content cho 2 bài bất kỳ chủ đề cơ bản cho người mới | Trang | 2026-05-05 00:00:00 | Xong thì gửi chị review
Chỉnh lại mindmap cho đẹp | Trang | 2026-05-07 00:00:00
9.0 | Hướng dẫn xử lý công việc
10.0
11.0
12.0
## Sheet: Tổng quan khóa học
Module | Lesson | Detail Contents
Giới thiệu về khóa học | Đối tượng khóa học | '- Comtor, dev, tester, BA muốn phát triển lên làm BrSE.
 - Các bạn trái ngành, có tiếng Nhật giao tiếp tốt N2-N1, muốn làm BrSE
 - Các bạn đang làm BrSE fresher, junior dưới 2 năm kinh nghiệm. 
 - Các bạn mới ra trường/sắp ra trường, có tiếng Nhật tốt, chuyên ngành IT và định hướng BrSE | Kinh nghiệm đào tạo | https://drive.google.com/drive/folders/1lE4xiyrWKSmHlJCqxh9pSQs0R-bG3sj-?usp=drive_link
Khó khăn của người mới | '- Không hiểu về phát triển phần mềm
 - Không hiểu công việc của BrSE là làm gì
 - Bước chân vào dự án, không biết bắt đầu từ đâu, không biết tìm hiểu cái gì 
 - Không biết cách làm việc với team offshore như thế nào, làm việc với khách hàng như thế nào
 - Xử lý từng đầu việc như thế nào
 - Xử lý stress: BrSE vai trò rộng, kĩ năng rộng, stress nhiều, tải công việc cao, làm thế nào cân bằng và giải tỏa | Trợ lý dự án BrSE | https://drive.google.com/drive/folders/1IAZwXptR7Fhq_LDxPZQsFDXmFbH_nOLV?usp=drive_link
Mục tiêu của khóa học | Khóa học phải giải quyết được khó khăn/bài toán thực tế ở mục 2. , mang đến chuyển hóa cho người học.
Chuyển hóa cho người học là mục tiêu cao nhất mà người dạy muốn đạt đến. 
Nếu học mà không có chuyển hóa, ko đưa người học tiến từ điểm A (chưa biết) -> đến điểm B (đã hiểu kiến thức/có thể làm thực tế) thì chưa đạt được kỳ vọng của người dạy. | File: Input tạo tài liệu khóa BrSE | https://docs.google.com/document/d/1XyAlAAf18731W_7ponUYfnmOr8z06-T9YLzeqfVNGK4/edit?usp=drive_link
Nhu cầu và yêu cầu của thị trường | + Nhu cầu: 
+ Yêu cầu thị trường: BrSE Code vs Non-Code: Sự khác biệt và Định hướng
+ Trau dồi chuyên môn, kĩ năng gì để đáp ứng yêu cầu thị trường. | + Nhu cầu chung:   Cần BrSE tech = biết coding/kỹ thuật + tiếng Nhật giao tiếp tốt
Bản chất nhu cầu là cần 1 người biết về lập trình, am hiểu kỹ thuật + và có khả năng giao tiếp tiếng Nhật tốt với khách hàng, tức là nhu cầu 1 member có kỹ thuật + tiếng Nhật. 
Nhưng thị trường hiện nay không đáp ứng được nhu cầu này, khan hiếm nhân lực vừa giỏi kỹ thuật, lập trình giỏi, lại giỏi tiếng Nhật giao tiếp tốt; tức là cung < cầu. Nhu cầu đang nhiều hơn nguồn cung thực tế. Do vậy, thị trường/hay nói cách khác là các công ty thay đổi yêu cầu/ nhu cầu linh động theo tình hình dự án/tình hình thực tế. 
Tình hình thực tế là có những dự án/khách hàng cần nhân lực giỏi tiếng Nhật, hiểu về business của khách, hiểu về nghiệp vụ của khách, hiểu về thao tác hệ thống, hiểu yêu cầu của khách hàng làm đảm bảo đáp ứng đươc vai trò cầu nối. 
-> Như vậy nên phát sinh thêm nhu cầu: Cần BrSE nontech + tiếng Nhật giao tiếp tốt. 
Gọi là nontech, tức là không làm được vai trò của developer, không làm task coding, vấn đề kỹ thuật, nhưng phải đảm bảo hiểu về phát triển phần mềm, hiểu về phân tích yêu cầu, phân tích nghiệp vụ, hiểu về kiểm thử đảm bảo chất lượng đầu ra, chứ ko phải nontech là không biết 1 cái gì về phát triển phần mềm. Do vậy, chỗ này các bạn cần phải hiểu đúng về chữ "nontech". 
Thực tế là có nhiều bạn BrSE ko phải xuất thân từ code, nhưng cộng với tiếng Nhật tốt và phân tích nghiệp vụ tốt, hiểu yêu cầu của khách hàng, business của khách hàng, đảm bảo chất lượng tốt, quản lý tốt và được đánh giá rất cao trong nghề. 

+ Yêu cầu ở mỗi vị trí BrSE tech và nontech như thế nào?
Yêu cầu chung: là Tiếng Nhật phải giao tiếp tốt, host meeting được với khách hàng. 
Ngoài ra, yêu cầu đối với từng vai trò cụ thể là như sau:
      ①BrSE tech: làm được cả công đoạn upstream và downtream, làm tài liệu cùng khách hàng Nhật  -> bản chất yêu cầu cuối cùng: đảm bảo hiểu chính xác yêu cầu của khách hàng trong quá trình làm việc, và đảm bảo chất lượng đầu ra đáp ứng khi giao hàng cho khách hàng. Có thể coding, review code, tạo các loại tài liệu như: Định nghĩa yêu cầu, basic design, detail design, API design, DB design v.v, nếu bạn nào giỏi thì còn tham gia làm proposal/presales để bidding dự án.
      ②BrSE nontech: đảm bảo nghiệp vụ, kiểm soát chất lượng (bao gồm: phân tích nghiệp vụ, tạo tài liệu, kiểm soát chất lượng cuối) -> bản chất yêu cầu cuối cùng: đảm bảo hiểu chính xác yêu cầu của khách hàng trong quá trình làm việc, và đảm bảo chất lượng đầu ra đáp ứng khi giao hàng cho khách hàng. Có nhiều cách để đảm bảo chất lượng khi không biết code như: dùng AI review code của dev, test sản phẩm trước khi bàn giao. 

=> Kết luận: Thị trường cần cả BrSE tech và nontech, dù đi từ đâu, đích đến vẫn là 1: phải đảm bảo hiểu chính xác yêu cầu của khách hàng trong quá trình làm việc + đảm bảo chất lượng đầu ra đáp ứng khi giao hàng".

+ Trau dồi chuyên môn, kĩ năng gì để đáp ứng yêu cầu thị trường.
①BrSE dev/tech: coding chắc tay, nắm vững kỹ thuật và tạo tài liệu tốt rồi: cần chú trọng học tiếng Nhật tốt để hearing và làm việc thuận lợi với khách hàng. Dùng AI tăng productivity. 
Điều mà mình nhận thấy trong thực tế: Các bạn dev, tech, cần phải nghiêng về việc trau dồi kiến thức tiếng Nhật thật tốt, vì nếu đưa lên cán cân so sánh, thì thông thường, các bạn bị yếu ở phần tiếng Nhật.
② BA/tester: phân tích nghiệp vụ và kiểm thử chất lượng tốt rồi, thì cần chú trọng nâng cao năng lực tiếng Nhật để giao tiếp tốt với khách hàng. Dùng AI tăng productivity. 
③Comtor: Tiếng Nhật giỏi rồi thì bài toán tiếp theo là nên học về coding hay học về BA/phân tích nghiệp vụ. Theo kinh nghiệm của mình thì các bạn nên theo hướng phân tích nghiệp vụ tốt (công việc tương tự BA), nắm chắc kiến thức domain, test kiểm soát chất lượng cuối trước khi bàn giao cho khách hàng (không cần test chi tiết như tester). Tức là chúng ta sẽ làm việc như 1 BA, tester + tiếng Nhật. Dùng AI tăng productivity. 
Tổng kết: Các bạn comtor tiếng Nhật tốt, nên chú trọng trau dồi về phân tích nghiệp vụ, kiểm thử chất lượng, quản lý dự án. Các bạn BA/tester/dev: chú trọng trau đồi tiếng Nhật. Xác định mình mạnh ở mảng nào, yếu ở mảng nào để tôi luyện tập trung mảng đó
Hiểu về phát triển phần mềm | + Quy trinh phát triển phần mềm
+ Các vai trò trong dự án phát triển phần mềm
+ Mô hình phát triển phần mềm
+ Dự án Labo và Project Base
+ Về Upstream và Downstream
+ Các thuật ngữ chính: Client, Server, API, Response, BE, FE, UI UX, DB,...offshore, onsite, Labo, project base, Request, CRUD, SQL,
Hướng dẫn về Công việc của BrSE | '- Công việc hàng ngày thực tế của BrSE: | - Công việc hàng ngày thực tế của BrSE: Cầu nối, tiếp nhận yêu cầu, phân tích yêu cầu, tạo tài liệu, triển khai phát triên, kiểm soát tiến độ, kiểm soát chất lượng, release. 
- Cầu nối giữa team offshore và khách hàng, họp hành, trao đổi, hearing,  tiếp nhận yêu cầu, làm tài liệu cùng khách hàng.
- Transfer cho team offshore phát triển, kiểm soát chất lượng cuối trước khi bàn giao cho khách hàng, đảm bảo sản phẩm bàn giao đáp ứng đúng yêu cầu của khách. 
- Kiểm soát tiến độ: check tiến độ công việc trong team hàng ngày, đảm bảo chạy theo plan. BrSE có thể kiêm kiểm soát tiến độ hoặc follow cùng PM tùy dự án.
- Báo cáo tiến độ: hàng ngày hoặc hàng tuần. Hàng ngày có thể báo cáo bằng text qua chát, báo cáo tuần thì tạo file báo cáo và thực hiện báo cáo.
- Công việc theo đặc thù dự án:
  + Kiểu dự án Labo: | + Kiểu dự án Labo: maintain, phát triển thêm chức năng, điều tra, fig bug, ect...: khách tạo 1 list task trên backlog/jira, assign cho BrSE. BrSE tiếp nhận, trao đổi với khách hàng để làm rõ yêu cầu từng task, đẩy task về cho team phát triển dev và test. BrSE follow tiến độ hàng ngày. Sau khi phát triển xong thì BrSE test các case cơ bản, normal case, hoặc 1 số abnormal case thường gặp có thể phát sinh lỗi, nói chung là test cuối để đảm bảo chức năng chạy đúng yêu cầu, sau đó giao hàng cho khách. Có thể giao hàng theo từng task hoặc giao hàng 1 loạt task, tùy tính chất dự án. 
Cuối ngày báo cáo công việc của team đã làm trong ngày hôm đó qua chát Slack/Teams/Skype
Cuối tuần thì báo cáo tiến độ. 
Khi có Q&A, issue hay việc cần thảo luận thì book meeting họp. 
Sau họp thì viết tóm tắt lại nội dung họp để chia sẻ thông tin cho PM hoặc cả team nắm được nội dung họp. 
Nếu BrSE kiêm luôn công việc của PM thì sẽ quản lý all list task, cùng dev tester estimate,  lên schedule cho toàn bộ task: để đảm bảo list task chạy đúng theo plan giao hàng cho khách. 
Nếu BrSE không kiêm PM: vẫn phải follow PM.
- Công việc theo đặc thù dự án:
  + Kiểu dự án project base:
Hướng dẫn tìm hiểu hệ thống: Người mới tìm hiểu hệ thống như thế nào | - Kiến trúc hệ thống
- Role/Actors trong hệ thống
- Function list/Screen list
- Screen item list/detail
Hướng dẫn xử lý công việc:
Tận dụng AI tăng cường sức mạnh | Khó khăn của BrSE và giải pháp sử dụng AI
Hướng dẫn phân tích yêu cầu
Hướng dẫn tạo tài liệu báo cáo/điều tra (báo cáo logic, thuyết phục + kèm evidence rõ ràng)
Hướng dẫn viết QA
Hướng dẫn học từ trong dự án:
 + Học về DB và SQL: Dùng Cursor
Hướng dẫn check nhanh output: Check test case + nhìn vào evidence output  
(Yêu cầu kết quả test phải có evidence input và evidence output)
Test 1 vài case cơ bản
Hướng dẫn quản lý tiến độ | Quản lý Task và Tiến độ (JIRA, Backlog, Excel)
Về basic design | Update sau
Về DB và SQL | Update sau
Hướng dẫn giao tiếp tiếng Nhật | Một số từ cần lưu ý: 以上、以下、未満、
Tạo file thuật ngữ | Hãy phân tích tài liệu đính kèm, lọc ra 100 từ vựng chuyên ngành quan trọng nhất. Sau đó tạo thành 1 bảng bao gồm các cột: từ tiếng Nhật, cách đọc hiragana, ý nghĩa, ghi chú (nếu có)
Đọc vị khách hàng: 1 số cách nói cần lưu ý
Báo cáo tiến độ/meeting
Xác nhận lịch, gửi Agenda cho khách, book phòng họp, record meeting (nếu được phép), viết meeting note.
Hướng dẫn giao tiếp 2 bên | - Với team offshore | Trao đổi thường xuyên với dev/teser là quan trọng nhất, hỏi đến khi bản thân clear rõ ràng
Túm đầu BA (PM, tester…) nhờ giải thích về hệ thống/wireframe
Sử dụng hệ thống thật như một người dùng
- Với khách hàng: | Ngoan, nhiệt tình, luôn nghĩ làm thế nào để khách hàng không bị mắc nhất: ko nhầm tên khách, ko để khách hỏi đi hỏi lại 1 vấn đề, ko push khách quá nhiều, ko để khách khó chịu những việc đơn giản như: gửi file phải check đã share quyền, ko được share public, mà chỉ add từng account khách thôi, nếu khách cần edit thì nhớ cho quyền edit.
## Sheet: Skill cần có
Kĩ năng cần có: 
kĩ năng phân tích yêu cầu, phân rã yêu cầu, làm rõ những thứ mơ hồ
kĩ năng quản lý dự án/task/tiến độ
kĩ năng dùng AI (Cursor, Copilot...)
kĩ năng làm multitask (commnunicate, phân tích yêu cầu, tạo tài liệu, quản lý task, quản lý chất lượng/tiến độ, làm nhiều dự án...)
Kĩ năng tạo UI đơn giản (figma)
kĩ năng tiếng Nhật N2, N2 giao tiếp tốt
kĩ năng tạo tài liệu (word, excel, slide...) trình bày đẹp logic. 
Kĩ năng tạo basic design (detail design biết thì quá tốt, ko biết cũng làm việc được bình thường, tạo basic design bằng tool Cursor)
kĩ năng test cơ bản

Phạm vi công việc cần làm: Thực hiện kiểm tra chất lượng sản phẩm đầu ra của dự án trước khi deliver
Thực hiện tạo tài liệu basic design detail design, các loại tài liệu bằng tiếng Nhật
lấy thông tin dự án, tài liệu yêu cầu, xác nhận lại thông tin và truyền đạt nội dung dự án về cho đội dự án ở Việt Nam.  
Báo cáo với KH tiến độ dự án theo các loại hình báo cáo. 
Kết hợp với Project Manager lên kế hoạch và kiểm soát tiến độ thực hiện dự án.  
・Thu thập yêu cầu từ PO, tạo function list và mockup màn hình
・Tạo basic design
・ Support dev design Database
・Thực hiện brainstorming meeting, retro meeting
・Test confirm hoạt động của hệ thống, free test trước khi bàn giao
・Thực hiện demo sản phẩm

Chủ động đề xuất và cải tiến:
Đề xuất thay doi quy trình đào tạo từ lý thuyết -> thực chiến
Đầu mối điều phối các bộ phận: dev, test, PM, manager mới.
Chuyển từ mindset người thực hiện -> người khởi xướng
Chủ động đề xuất dùng tool AI review output của dev (kết hợp với tech lead đưa ra file rule, hướng dẫn dev thực hiện)


・Support BA người Nhật lên danh sách chức năng, tạo mockup, basic design
・Tiếp nhận nghiệp vụ dự án, hiểu nội dung yêu cầu, specs, design, triển khai cho team
・Cùng BA staff Nhật Bản triển khai đào tạo tester, comtor về nghiệp vụ
・Phụ trách các lại meeting với site Nhật trong dự án
・Báo cáo tiến độ, weekly meeting

Kinh nghiệm đào tạo (Sử dụng AI để phản biện yêu cầu của khách hàng, make QA chi tiết
Sử dụng AI để tạo ra các testcase có độ bao phủ cao: normal, abnormal
Sử dụng Cursor để phân tích source, điều tra issue, tìm hiểu specs. 
Sử dụng Cursor để tạo Basic design, detail design (Cursor) theo source có sẵn
Dùng Cursor để phân tích yêu cầu của khách hàng, phản biện nội dung)


Đảo tạo Comtor mới: về dịch tài liệu, dịch meeting, giao tiếp khách hàng
Đào tạo BrSE noncode: sử dụng Cursor tìm hiểu dự án, breakdown testcase, check sản phẩm đầu ra của dev. 
Sử dụng notebookLLM để tổng hợp thông tin. Sử dụng Claude để xử lý tài liệu PDF. Sử dụng ChatGPT dịch đoạn, phân tích và hiểu yêu cầu. 
Đào tạo kiến thức basic về BA cho BrSE noncode, Comtor định hướng BrSE. 
Đào tạo đọc vị khách hàng.
Chuẩn hóa tài liệu review checklist, review kết quả điều tra
Cosplay/shadow
Hướng dẫn đào tạo người mới
## Sheet: Định vị khách hàng
giải quyết một vấn đề cực kỳ cụ thể cho một nhóm người cực kỳ cụ thể.
Khách hàng của bạn sống ở đâu trên internet?, họ đau nỗi đau gì | tìm nhóm khách hàng này ở đâu? (Group Facebook nào, sự kiện nào, hashtag nào?)
bắt đầu từ thế mạnh cốt lõi.
Hỏi Huy về task của BrSE dự án project base
Prompt gen Slide
Bạn là một AI chuyên tạo slide thuyết trình chuyên nghiệp.

## MỤC TIÊU

Tạo một bộ slide training hoàn chỉnh dựa trên nội dung được cung cấp.

## ĐẦU VÀO

* Nội dung: [DÁN NỘI DUNG TEXT TẠI ĐÂY]
* Logo: [FILE / LINK ĐÍNH KÈM]
* Theme/Template: [FILE / MÔ TẢ ĐÍNH KÈM]

## RÀNG BUỘC THIẾT KẾ (CỰC KỲ QUAN TRỌNG)

* BẮT BUỘC sử dụng CHÍNH XÁC theme/template đã cung cấp.
* KHÔNG được thay đổi layout, background hoặc phong cách tổng thể.
* KHÔNG được thay thế, chỉnh sửa hoặc làm biến dạng logo.
* KHÔNG tự tạo theme mới.
* PHẢI giữ nguyên toàn bộ nhận diện thương hiệu từ template.

## PHẦN ĐƯỢC PHÉP TỐI ƯU

* CÓ THỂ điều chỉnh:

  * Font chữ (để dễ đọc và chuyên nghiệp hơn)
  * Kích thước chữ (tạo phân cấp rõ ràng)
  * Màu chữ (nhưng phải hài hòa và phù hợp với theme gốc)
* Mọi điều chỉnh phải nhất quán với phong cách ban đầu.

## QUY TẮC XỬ LÝ NỘI DUNG

* Chuyển nội dung đầu vào thành cấu trúc slide rõ ràng, logic.
* Mỗi slide cần:

  * Có tiêu đề rõ ràng
  * Nội dung dạng bullet point (không viết đoạn dài)
  * Chỉ giữ ý chính, súc tích
* Có thể diễn đạt lại để rõ ràng hơn, NHƯNG KHÔNG làm thay đổi ý nghĩa.
* Tự tổ chức nội dung theo flow hợp lý (mở đầu → nội dung chính → kết luận).

## ĐỊNH DẠNG ĐẦU RA

* 8–15 slide (tùy độ dài nội dung)
* Gợi ý cấu trúc:

  1. Slide tiêu đề
  2. Tổng quan / Agenda
  3. Các phần nội dung chính
  4. Kết luận / Summary

## PHONG CÁCH

* Chuyên nghiệp
* Rõ ràng, hiện đại
* Phù hợp thuyết trình business

## ƯU TIÊN THỰC HIỆN

1. Tuân thủ tuyệt đối theme/template đã cung cấp
2. Giữ nguyên logo và nhận diện thương hiệu
3. Sau đó mới tối ưu nội dung

Hãy tạo nội dung slide hoàn chỉnh theo các yêu cầu trên. | - BẮT BUỘC sử dụng đúng Slide Master từ file được cung cấp

“Nếu vi phạm theme/template, hãy tạo lại cho đến khi tuân thủ hoàn toàn.”
1. Làm chủ toàn bộ quy trình phát triển phần mềm ở mức thực chiến
・Hiểu sâu và vận dụng được các hoạt động Upstream: phân tích yêu cầu, thiết kế hệ thống, thiết kế màn hình, data modeling, external interface, batch, report, detail design.
・Kiểm soát tốt giai đoạn Coding & Downstream: phối hợp Dev hiệu quả, quản lý chất lượng, hiểu và review Unit Test.
・Quản lý và điều phối các hoạt động Testing: Integration Test, System Test, UAT theo đúng vai trò BrSE.

2. Nâng cao năng lực quản lý dự án trong môi trường Nhật Bản
・Lập kế hoạch tổng thể (Master Schedule) và kế hoạch chi tiết (Detail Schedule).
・Quản lý Estimate, Hours, Tracking, Monitoring, ODC.
・Kiểm soát Risk/Issue, Bug management, Change version management.
・Sử dụng Checklist, Traceability Matrix để đảm bảo chất lượng và truy vết yêu cầu.

3. Giao tiếp và điều phối hiệu quả giữa Onsite – Offshore
・Tổ chức và kiểm soát Meeting, Mail, Chat, Report chuyên nghiệp.
・Xử lý tình huống với khách hàng (troubleshooting, đàm phán, pre-sale).
・Quản lý Stakeholder và xây dựng mối quan hệ KH bền vững.
・Giúp team offshore không phụ thuộc hoàn toàn vào BrSE.


---
**Nguồn:** `Trợ lý dự án BrSE\Project 1-BrSE Foundation\3. Template Thiết kế\Template.pptx`

## Slide 1
Template
Quỳnh Nga IT
Khởi động hành trình của bạn!
## Slide 2
Template


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Biên Bản Họp\0418_Meeting minutes.xlsx`

## Sheet: VN
Ngày tạo: 2018年04月18日
Người tạo: BrSE  Quynh Nga
Biên Bản Họp
Date | 2018年04月18日
Time | 15:30~16:30 JPT
Place | Google Meet
Attendees | ISST 様：安井さん、尾田さん、小林さん、砂川さん
ABC 側：BrSE Nga, PM Tuan, SE Nam, Anh
Confirmed by | PM Tuan | Confirm | Nội dung chính xác
Nội dung họp
1. Tiến độ chung
■ ABC báo cáo tiến độ công việc tuần trước, và next plan tiếp theo.
■ Master Schedule: việc cung cấp wireframe còn lại cho ABC bị chậm 1 tuần, ISST 様 đã cập nhật schedule ở sheet ver 03. 
Link: https://docs.google.com/spreadsheets/d/1Lk_LAZx1KvHL8nrrM9ymReDhqfmpjc3CrFnHJJZHduw/edit?gid=2132152772#gid=2132152772&range=E28:F30 
Trong tuần sau sẽ gửi wireframe cho ABC.
Các task sau đó của ABC cũng có khả năng re-schedule, ABC check và báo lại khách hàng.

■ Về tài liệu Knowledge thì sẽ xử lý các file có extension như sau: .pdf / .docx / .pptx / .txt
(Chú ý: Excel là ngoài đối tượng)
■ ABC: làm estimate xử lý OCR cho Word、PowerPoint, chỉ cần đưa ra 2 nội dung: Có xử lý được không? 
Xử lý được thì effort như thế nào? (Không cần đề cập đến schedule)
2. Q&A
- Task No.1: https://docs.google.com/spreadsheets/d/1M2QUVyVPkOECihj_ilzCEIhppG3SlBTHCTvZgZi9Q0I/edit?gid=646836338#gid=646836338&range=A16:M16
đã DONE nhưng ABC chưa gửi tài liệu cho ISST 様?
=> Trong tuần sau, ABC sẽ gộp cả task No.1 và No.2 để gửi 1 bản đang làm. 

- Task No.6 No.7: https://docs.google.com/spreadsheets/d/1M2QUVyVPkOECihj_ilzCEIhppG3SlBTHCTvZgZi9Q0I/edit?gid=646836338#gid=646836338&range=A22:M22 
Trên Chatwork thông báo ngày 18 gửi, trong báo cáo ghi “trước ngày 21 gửi”, vậy ngày nào đúng?
=> Ngày 18 là đúng. Trong hôm nay 18/4 ABC sẽ gửi tài liệu chi tiết hơn cho task No.7
Nội dung quyết định
【ABC】
・Gửi khách hàng 1 bản đang làm của task No.1 và No.2 (PM Tuan): Trong tuần sau - tuần ngày 21/04
・Gửi cho khách tài liệu chi tiết hơn cho task No.7 (PM Tuan): 18/4
・Check lại schedule của ABC xem task nào bị ảnh hưởng và cần re-schedule thì báo lại khách (PM Tuan): 18/4
・Tạo tài liệu Infra gửi ISST (Techlead: Nam): 21/4
【ISST 様】
・Gửi cho ABC wireframe còn lại: Trong tuần sau - tuần ngày 21.
・Gửi specs hệ thống cho ABC: 23/4
## Sheet: JP
作成日：2018年04月18日
作成者： | Quynh Nga
議 事 録
日付 | 2018年04月18日
時間 | 15:30~16:30 JPT
場所 | Google Meet
出席者 | ISST 様：安井さん、尾田さん、小林さん、砂川さん
ABC 側：BrSE Nga, PM Tuan, SE Nam, Anh
確認者 | 安井さん | 確認
会議内容
1. 進捗について
■ ABCは、先週の作業進捗と次の計画を報告した。
■ マスタースケジュール：ABCへの残りのワイヤーフレームの提供が1週間遅延しており、
ISST 様様はガントチャートの「ver03_250418」シートを更新した
リンク: https://docs.google.com/spreadsheets/d/1Lk_LAZx1KvHL8nrrM9ymReDhqfmpjc3CrFnHJJZHduw/edit?gid=2132152772#gid=2132152772&range=E28:F30　
来週中にABC側へワイヤーフレームを送付する予定。
その後のABCのタスクについてもリスケジュールの可能性があるため、ABC側で確認し、ISST 様様に報告すること。

■ ナレッジ資料については、.pdf / .docx / .pptx / .txt の拡張子のファイルを対象とする。
　※注意：Excel は対象外
■ ABC：Word・PowerPointのOCR処理に関する見積対応。以下の2点のみ提示すること。
① 処理が可能かどうか？
② 処理可能な場合、かかる工数はどの程度か？（※スケジュールの考慮は不要）
2. Q&A
・Task No.1: https://docs.google.com/spreadsheets/d/1M2QUVyVPkOECihj_ilzCEIhppG3SlBTHCTvZgZi9Q0I/edit?gid=646836338#gid=646836338&range=A16:M16
作業は完了していますが、ISST 様様はまだABCから資料を受け取っていない状態
➡来週中に、Task No.1とNo.2をまとめて、作業中の版として一括で送付予定です。

・Task No.6 No.7: https://docs.google.com/spreadsheets/d/1M2QUVyVPkOECihj_ilzCEIhppG3SlBTHCTvZgZi9Q0I/edit?gid=646836338#gid=646836338&range=A22:M22 
Chatworkでは「18日に送付」と通知されており、報告書では「21日までに送付」と記載されていますが、正しいのはどちら？
⇒ 正しくは「18日」です。4月18日に、ネットワーク構成図を送付済み
決定事項
【ABC】
・来週中に、Task No.1とNo.2の作成中の資料をISST 様様に送付すること
・4月18日に、Task No.7のネットワーク構成図をISST 様様に送付すること
・ABC側のスケジュールを再確認し、影響を受けるタスクがあるか、リスケジュールが必要か、ISST 様様に報告すること
【ISST 様】
21日週内に、残りのワイヤーフレームをABCに送付すること。
