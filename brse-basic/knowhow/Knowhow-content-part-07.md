# Knowhow-content (part 07)



---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch và đọc hiểu yêu cầu công việc\Difyアプリ開発要求定義書-1 (1).xlsx`

## Sheet: Difyアプリ開発要求定義書
Difyアプリ開発要求定義書
目的・背景
本文書は、Difyアプリ開発におけるシミック側の要求（なぜシステムを導入するのか、どのような課題を解決したいのか）を整理・明確化することを目的とします。
開発パートナー（ベンダー）に要求内容を正確に伝え、後続の要件定義工程で認識のズレを防止するための基盤資料です。
項目 | 説明 | 入力欄 | 入力例
アプリ名 | 開発依頼するアプリ名 | RFI回答検索アプリ
業務概要 | 業務概要 | スポンサー対応としてRFIの回答や契約書のチェックを行っています。
スポンサーからの質問に対して、過去のナレッジを参照しながら回答を作成し、返答する業務です。

過去の質問と回答をまとめたナレッジ(Excelデータ)を参照し、回答を作成しています。質問のキーワードを検索して過去の回答を参考にする形で利用されています。
現状の課題 | 現状の業務プロセスの問題点や課題（例：情報の断片化、効率低下） | Excelの過去回答データを検索するのに時間がかかる。誰でも素早くできるようにしたい | 例：複数システム間でデータが統合されず、情報共有が不十分
アプリ導入の目的 | Difyアプリ導入による業務効率化、顧客体験向上等の目的 | 業務効率化・標準化 | 例：一元管理とリアルタイム通知で業務プロセスを最適化する
達成したいゴール | 定量的・定性的な目標（例：ユーザー利用率の向上、処理時間の短縮） | 処理時間の短縮　(ボリューム・内容にもよるが1回あたり現状2時間くらいかかる) | 例：ユーザー満足度80%以上、応答時間2秒以内に改善、エラー削減
機能要求 | ユーザー登録、Dify連携、メイン機能（例：データ可視化、チャット連携）等 | 英文の質問文・回答を検索できると良い。過去2年分くらいに検索データを絞って検証 | 例：SNSログイン、Dify API連携、ダッシュボード表示機能
非機能要求 | パフォーマンス、セキュリティ、拡張性、ユーザビリティなど | - | 例：レスポンス時間2秒以内、SSL暗号化、将来機能追加を容易にする設計
ユーザーシナリオ | 代表的なユーザー利用シナリオ（例：初回ログインから機能利用までの流れ） | - | 例：ユーザーが社内イントラからチャットボットへアクセスし、人事規程について質問する
ユースケース | 各機能ごとの具体的なステップバイステップの操作手順と期待結果 | - | 例：チャットボットに問い合わせ→自動返信でFAQ情報を取得
連携システム | 外部システムとの連携概要（例：既存CRMやERPとの連携） | - | 例：CRMシステムとの顧客情報同期
技術的制約 | 利用LLM等 | - | 例：gpt-4o利用
予算・スケジュール | 概算予算、開発開始・リリースの目安 | 4月中にプロトタイプ作成 | 例：予算500万円、開始2025/06、リリース2025/12
将来的な機能追加 | 将来追加予定の機能やサービスの拡張性 | 将来的には、業務担当者だけでなく一般ユーザーも検索可能にして問い合わせ不要にできるのが理想 | 例：AIチャット機能追加、ユーザー行動分析機能
参考資料 | 業務フロー図、システム構成図、ワイヤーフレームなどの添付資料 | 参考程度に業務フロー(スポンサー対応業務見える化.pptx)添付します。今回効率化したいのはNo.6の工程です | 例：業務フロー図（PDF）、画面ワイヤーフレーム（Figmaリンク）
犯人月くらいスポンサー対応


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch và đọc hiểu yêu cầu công việc\Làm rõ nghiệp vụ xử lý công việc với nhà tài trợ_sponsor  (3).pptx`

## Slide 1
Nghiệp vụ xử lý công việc với sponsor
## Slide 2
Nghiệp vụ xử lý công việc với sponsor


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch và đọc hiểu yêu cầu công việc\Định nghĩa yêu cầu phát triển App Dify-1.xlsx`

## Sheet: Định nghĩa yêu cầu phát triển a
Tài liệu định nghĩa yêu cầu phát triển ứng dụng Dify
Mục đích/bối cảnh
Mục đích của tài liệu này là sắp xếp và làm rõ các yêu cầu của CMIC (tại sao chúng tôi áp dụng hệ thống và những vấn đề chúng tôi muốn giải quyết) trong quá trình phát triển ứng dụng Dify.
Đây là tài liệu cơ bản để truyền đạt chính xác yêu cầu tới các đối tác phát triển (vendor) và ngăn ngừa những hiểu lầm trong quá trình xác định yêu cầu tiếp theo.
Item | Giải thích | Cột input đầu vào | Ví dụ input đầu vào
Tên ứng dụng | Tên ứng dụng được yêu cầu phát triển | App tìm kiếm câu trả lời RFI
Khái quát nghiệp vụ | Khái quát về nghiệp vụ | Chúng tôi đang thực hiện việc trả lời RFI và kiểm tra hợp đồng với tư cách là hỗ trợ cho nhà tài trợ.
Đây là công việc tạo và phản hồi các câu trả lời cho những câu hỏi từ phía nhà tài trợ, bằng cách tham khảo các kiến thức đã có trong quá khứ.

Chúng tôi tham khảo file kiến thức (dữ liệu Excel) đã tổng hợp các câu hỏi và câu trả lời trước đây để tạo câu trả lời.
Nó được sử dụng theo hình thức tìm kiếm từ khóa trong câu hỏi và tham khảo các câu trả lời trong quá khứ.
Các vấn đề hiện tại | Các vấn đề và issue trong process nghiệp vụ hiện tại (ví dụ: thông tin bị phân mảnh, hiệu quả giảm) | Việc tìm kiếm dữ liệu các câu trả lời trong quá khứ trên Excel mất nhiều thời gian.
Muốn làm sao để ai cũng có thể thực hiện việc đó một cách nhanh chóng. | Ví dụ: Dữ liệu không được tích hợp giữa nhiều hệ thống và việc chia sẻ thông tin không đầy đủ
Mục đích đưa App vào sử dụng | Sử dụng ứng dụng Dify để nâng cao hiệu quả kinh doanh và trải nghiệm của khách hàng | Hiệu quả hóa và tiêu chuẩn hóa nghiệp vụ. | Ví dụ: Tối ưu hóa quy trình kinh doanh với quản lý tập trung và thông báo theo thời gian thực
Mục tiêu mong muốn đạt được | Mục tiêu định lượng và định tính (ví dụ: nâng cao tỉ lệ sử dụng của người dùng, giảm thời gian xử lý) | Rút ngắn thời gian xử lý (hiện tại mất khoảng 2 tiếng cho mỗi lần, tùy vào khối lượng và nội dung công việc). | Ví dụ: Sự hài lòng của người dùng trên 80%, thời gian phản hồi được cải thiện trong vòng 2 giây, giảm lỗi
Yêu cầu về function | Đăng ký người dùng, tích hợp Dify, các chức năng chính (ví dụ: trực quan hóa dữ liệu, tích hợp trò chuyện), v.v. | Sẽ tốt hơn nếu có thể tìm kiếm được cả câu hỏi và câu trả lời bằng tiếng Anh.
Dự kiến sẽ giới hạn dữ liệu tìm kiếm trong khoảng 2 năm gần đây để tiến hành kiểm chứng. | Ví dụ: đăng nhập SNS, tích hợp API Dify, chức năng hiển thị dashboard
Yêu cầu non-function | Performance, security, khả năng mở rộng, khả năng sử dụng/Usability, v.v. | Ví dụ: Thời gian response trong vòng 2 giây, mã hóa SSL, thiết kế để sau này có thể dễ dàng bổ sung thêm tính năng
User scenario | Kịch bản các tình huống thông thường người dùng hay sử dụng (ví dụ: luồng từ lần đăng nhập đầu tiên đến khi sử dụng chức năng) | Ví dụ: Người dùng truy cập chatbot từ mạng nội bộ của công ty và đặt câu hỏi về quy định nhân sự.
Usecase | Hướng dẫn thao tác cụ thể từng bước và kết quả mong đợi cho từng tính năng | Ví dụ: Truy vấn chatbot → Nhận thông tin FAQ/Câu hỏi thường gặp với tính năng trả lời tự động
Hệ thống liên kết tích hợp | Giải thích khái quát về việc liên kết tích hợp với hệ thống ngoài (ví dụ: liên kết với hệ thống CRM và ERP hiện có) | Ví dụ: Đồng bộ thông tin khách hàng với hệ thống CRM
Hạn chế kỹ thuật | LLM sử dụng, v.v. | Ví dụ: Sử dụng gpt-4o
Ngân sách, Lịch trình | Ngân sách khái quát, plan bắt đầu phát triển và release | Tạo prototype trong tháng 4. | Ví dụ: Ngân sách 5 triệu yên, bắt đầu từ 2025/06, phát hành vào 2025/12
Bổ sung tính năng trong tương lai | Khả năng mở rộng các tính năng và dịch vụ dự định sẽ bổ sung trong tương lai | Về lâu dài, lý tưởng là không chỉ nhân viên phụ trách nghiệp vụ mà cả người dùng thông thường cũng có thể tìm kiếm mà không cần phải đi hỏi nữa. | Ví dụ: Bổ sung chức năng trò chuyện AI, chức năng phân tích hành vi người dùng
Tài liệu tham khảo | Các tài liệu đính kèm như work flow diagram, system configuration diagrams, wireframes, v.v. | Tôi xin đính kèm tài liệu quy trình nghiệp vụ (Làm rõ nghiệp vụ xử lý công việc với nhà tài trợ/sponsor /スポンサー対応業務見える化.pptx) để tham khảo.
Lần này, công đoạn mà chúng tôi muốn cải thiện hiệu quả là bước số 6. | Ví dụ: Workflow diagram (PDF), wireframe màn hình (link Figma)
định nghĩa mong muốn | định nghĩa yêu cầu | tạo app


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch và đọc hiểu yêu cầu công việc\スポンサー対応業務見える化 (1).pptx`

## Slide 1
スポンサー対応業務
## Slide 2
スポンサー対応業務


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch Weekly Report\[11_2023] Weekly Report.xlsx`

## Sheet: 02262025
週次報告
日時: 26-Feb 2025  16:00 JPT
出席者
ABC 様側: 山田さん、北さん
FPT 側: Giang, Nam, Tuan
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】
１．今週の作業内容（01/19→ 01/25）
No． | タスク名 | ステータス | 締め切り | 備考
CR 17 デジタル教具のダウンロードとUIの更新 | Inprogess | -
1.0 | Done | 2025-02-20 00:00:00
2.0
3.0 | -
4.0 | -
２．次の予定作業
No | タスク名 | ステータス | 締め切り | 備考
CR 17 デジタル教具のダウンロードとUIの更新 | Inprogess | -
1.0 | Inprogess | -
2.0 | Inprogess | -
3.0 | Todo
3. リスク・問題点
## Sheet: Bản sao của 02262025
週次報告
日時: 26-Feb 2025  16:00 JPT
出席者
ABC 様側: 山田さん、北さん
FPT 側: Giang, Nam, Tuan
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】
■ CR 17：Scuti側で技術調査を進めております。オータケ様側で詳細設計を作成されております。
・アドオン／拡張機能を使用するご提案は見送られることになりました。
・教師と生徒が Google Slide／Docs／Sheet にデジタル教具の素材を直接コピーできる新しいウェブページを開発するというご依頼は見送られることになりました。
・教師と生徒がデジタル教具の素材をダウンロードし、ローカルで使用できる新しいウェブページを開発するというご依頼については Scuti 側で技術調査を進めております。

優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122

----------------------------------------------------------
Tổng quan: 
CR 17: Scuti đang nghiên cứu công nghệ, khách hàng đang làm specs chi tiết. 
- Phương án sử dụng Add-on/ Extention: Reject. 
- Phương án phát triển trang web mới để GV/ HS copy trực tiếp Digital Tool vào Google Slide/ Docs/ Sheet: Reject. 
- Phương án phát triển trang web mới để GV/ HS download Digital Tool và sử dụng ở local: Đang nghiên cứu công nghệ và làm specs chi tiết. 

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（19-Feb-> 25-Feb）／Report task of this week (19-Feb-> 25-Feb）
No． | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Remark
CR 17 デジタル教具のダウンロードとUIの更新
CR 17  Download digital tool and update UI | Inprogess | - | PIC: Otake & Scuti
1.0 | 2月19日の調査依頼の対応
・縮小機能（Zip）のオン/オフと複数回のダウンロードは可能か？
・デジタル教具のコピー＆ペーストによって画像の品質が低下するか？
・画面上にキーボードを表示できるか？
------
19/02 khách hàng yêu cầu nghiên cứu nội dung:  
- Có thể bật/tắt tính năng Zip và tải xuống nhiều lần không?
- Việc sao chép và dán tài liệu giảng dạy kỹ thuật số có làm giảm chất lượng hình ảnh không?
- Bạn có thể hiển thị bàn phím trên màn hình không? | Done | 2025-02-20 00:00:00 | 2/20に赤井の方が説明させていただきました。
Ngày 02/20 TaiC và Otake đã meeting giải thích câu trả lời
https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit?gid=1475305001#gid=1475305001&range=29:35
2.0 | 2月21日の追加調査依頼の対応
・管理者権限でGoogle Workspace のアカウント一覧をEDUシステムに同期する方法の調査
・EduシステムのSSOの原理の調査
・IPアドレスによるアクセス制限方法の調査
・上記の方法以外の別の方法の検討
ーーー
Ngày 02/21 khách hàng yêu cầu nghiên cứu thêm 4 vấn đề:
- Cách đồng bộ tất cả tài khoản trong admin Google Workspace(Google WS)
- Giải thích về nguyên lý của SSO (Single Sign-On) của Edu
- Phương pháp hạn chế truy cập bằng địa chỉ IP
- Nghiên cứu phương pháp khác ngoài các phương pháp trên | Done | 2025-02-25 00:00:00 | 2/20に赤井の方が説明させていただきました。
Ngày 02/26 TaiC và Otake đã meeting giải thích câu trả lời
https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit?gid=1475305001#gid=1475305001&range=36:48
3.0 | 2月21日の追加調査依頼の対応
・デジタル教具のウェブサイトを使用する際に、以下のセキュリティ対策が適用されているかを確認する
Webサイトの暗号化
マルウェア（ウイルス対策）
------
Ngày 02/21 khách hàng yêu cầu nghiên cứu thêm 1 vấn đề:
- Khi dùng trang web digital tool thì phải xem trang này có được áp dụng các biện pháp bảo mật hay không?
  + Mã hoá website
  + Phần mềm độc hại( phòng chống virus ) | Inprogess | - | Scuti側は、日本の文部科学省のセキュリティガイドラインを翻訳・調査した上、評価と見積もりを出す予定
―ーー
Phía Scuti đang dịch và tìm hiểu về security guideline của Bộ Giáo dục, Văn hóa, Thể thao, Khoa học và Công nghệ Nhật Bản
sau đó sẽ đánh giá và đưa ra estimate.
4.0 | 調査内容のやり取り(SE)
・佐々木さんとのmtg
・Scutiメンバーに調査内容を伝える, MTG
・調査(上記記載のものです)
・調査内容のまとめ、資料作成
----
Các tasks research (SE)
・Cuộc họp với bạn Sasaki
・Truyền đạt nội dung điều tra cho các thành viên Scuti
・Điều tra (các thông tin ở trên)
・Tổng hợp nội dung điều tra, tạo tài liệu | Inprogess | -
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 17 デジタル教具のダウンロードとUIの更新
CR 17  Download digital tool and update UI | Inprogess | - | PIC: Otake & Scuti
1.0 | 2月21日の追加調査依頼の対応
・デジタル教具のウェブサイトを使用する際に、以下のセキュリティ対策が適用されているかを確認する
Webサイトの暗号化
マルウェア（ウイルス対策）
------
Ngày 02/21 khách hàng yêu cầu nghiên cứu thêm 1 vấn đề:
- Khi dùng trang web digital tool thì phải xem trang này có được áp dụng các biện pháp bảo mật hay không?
  + Mã hoá website
  + Phần mềm độc hại( phòng chống virus ) | Inprogess | -
2.0 | 調査内容のやり取り(SE)
・佐々木さんとのmtg
・Scutiメンバーに調査内容を伝える, MTG
・調査（セキュリティガイドライン、CSV形式の確認）
・調査内容のまとめ、資料作成
----
Các tasks research (SE)
・Cuộc họp với bạn Sasaki
・Truyền đạt nội dung điều tra cho các thành viên Scuti
・Điều tra (hướng dẫn bảo mật, xác nhận định dạng CSV)
・Tổng hợp nội dung điều tra, tạo tài liệu | Inprogess | -
3.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Todo | UIデザインが出来次第、こちら開始します。
Sau có UI design thì bắt đầu task phân tích spec
3. 確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
4. リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5. バックログタスク/ Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6. ログタイム/ Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. ノート/ Note
## Sheet: 02192025
週次報告
Weekly Meeting
日時／Time: 18-Feb 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■ CR 17：Scuti側で技術調査を進めております。オータケ様側で詳細設計を作成されております。
・アドオン／拡張機能を使用するご提案は見送られることになりました。
・教師と生徒が Google Slide／Docs／Sheet にデジタル教具の素材を直接コピーできる新しいウェブページを開発するというご依頼は見送られることになりました。
・教師と生徒がデジタル教具の素材をダウンロードし、ローカルで使用できる新しいウェブページを開発するというご依頼については Scuti 側で技術調査を進めております。

優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122

----------------------------------------------------------
Tổng quan: 
CR 17: Scuti đang nghiên cứu công nghệ, khách hàng đang làm specs chi tiết. 
- Phương án sử dụng Add-on/ Extention: Reject. 
- Phương án phát triển trang web mới để GV/ HS copy trực tiếp Digital Tool vào Google Slide/ Docs/ Sheet: Reject. 
- Phương án phát triển trang web mới để GV/ HS download Digital Tool và sử dụng ở local: Đang nghiên cứu công nghệ và làm specs chi tiết. 

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（12-Feb-> 18-Feb）／Report task of this week (12-Feb-> 18-Feb）
No． | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Remark
CR 17 デジタル教具のダウンロードとUIの更新
CR 17  Download digital tool and update UI | Inprogess | - | PIC: Otake & Scuti
1.0 | ユーザの情報を取得できるか、Google Market Workspace の管理機能を調査する

Nghiên cứu chức năng quản lý của Google Market Workspace có thể lấy được thông tin của user không? | Done | 2025-02-13 00:00:00 | こちらで回答いたしました。
Đã trả lời: 
https://docs.google.com/spreadsheets/d/1-PbgYYieN7dTxjv6JHv39Z6Zud3qShG01nfq681OZx8/edit?gid=955565370#gid=955565370
2.0 | ユーザが一般的な機能を利用できるメニューをGoogle Slide の画面に追加できるかを調査する。

Nghiên cứu có thể thêm menu trên màn hình Google Slide để user dùng các chức năng thường dùng hay không? | Done | 2025-02-13 00:00:00 | こちらで回答いたしました。
Đã trả lời: https://docs.google.com/spreadsheets/d/1-PbgYYieN7dTxjv6JHv39Z6Zud3qShG01nfq681OZx8/edit?gid=955565370#gid=955565370
3.0 | Google Workspace MarketplaceのアプリやGoogle Chromの 拡張機能が、個別のユーザにインストールすることなく、複数のユーザに同時にインストールできるかを調査する。

Nghiên cứu app Google Workspace MarketSpace và Google Chrome Extension có install cho nhiều user cùng lúc mà không cần từng user install không? | Done | 2025-02-13 00:00:00 | こちらで回答いたしました。
Đã trả lời: 
https://docs.google.com/spreadsheets/d/1-PbgYYieN7dTxjv6JHv39Z6Zud3qShG01nfq681OZx8/edit?gid=955565370#gid=955565370
4.0 | デジタル教具（教科、カテゴリ）をGoogle Chromeの拡張機能に統合する方法を調査する。

Nghiên cứu cách tích hợp ảnh digital tool đơn (Ảnh bộ môn và category) vào Google Chorme extention | Done | 2025-02-13 00:00:00 | こちらで回答いたしました。
Đã trả lời: https://docs.google.com/spreadsheets/d/1-PbgYYieN7dTxjv6JHv39Z6Zud3qShG01nfq681OZx8/edit?gid=955565370#gid=955565370
5.0 | Scuti 側のネットワーク環境下でGoogle Add-on からデジタル教具の画像を挿入することを検証し評価を行う。

Đo và đánh giá việc insert ảnh digital tool từ Google Add -on với mạng internet của Scuti | Done | 2025-02-13 00:00:00 | こちらで回答いたしました。
Đã trả lời: 
https://docs.google.com/spreadsheets/d/1-PbgYYieN7dTxjv6JHv39Z6Zud3qShG01nfq681OZx8/edit?gid=1230722521#gid=1230722521
6.0 | 追加の調査
（2025/2/14にご依頼をいただきました）
1．デジタル教具を Google Slide に挿入する 3 つの方法を比較し、最も速い方法を検討する（Add-on を使用）
2．Google Chrome の拡張機能 を使用してデジタル教具を Google Slide に挿入する速度を確認する
3．アドオンと拡張機能でできることや制限事項などを整理する
4．拡張機能のデジタル教具挿入UIの制限（800px × 600px ）を詳しく確認する

―――――――――――
Ngày 02/14 khách hàng yêu cầu nghiên cứu thêm nội dung: 
- So sánh 3 cách chèn Digital Tool vào Google Slide để tìm phương pháp nhanh nhất(Dùng add-on)
- Xem tốc độ chèn digital tool vào Slide dùng Chrome Extension
- Tổng hợp lại add-on / Chrome Extension có làm được gì. có những hạn chế gì
- Check chi tiết hạn chế 800px -600px của UI insert digital tool của extension | Pending | - | 2/17にScuti が1.の内容を検討完了させ報告いたしましたが、見送るという結論をいただきました。

Ngày 02/17 Phía Scuti đã báo cáo nội dung 1. 
Ngày 02/17 Khách hàng reject, không cần nghiên cứu nữa
7.0 | 教師と生徒が Google Slide／Docs／Sheet にデジタル教具の素材を直接コピーできる新しいウェブページを開発調査
（2/17に本依頼をいただきました）

Ngày 02/17 khách hàng yêu cầu nghiên cứu nội dung: 
- Khách muốn tạo 1 website để cho enduser copy digital tool vào Google Slide, Sheet, Docs | Pending | - | ・2/17に、複数の素材を同時にコピーすることができないと報告しており、ダウンロードという方法を提案させていただきました。
・2/18には、本件は見送るというご結論をいただきました。

Ngày 02/17 Phía Scuti báo cáo không thể copy nhiều ảnh digital tool cùng lúc, và đề xuất phương án download.  
Ngày 02/18 Khách hàng reject, không cần nghiên cứu nữa
8.0 | 教師と生徒がデジタル教具の素材をダウンロードし、ローカルで使用できる新しいウェブページを開発調査
（2/18にご依頼をいただきました）


Ngày 02/18 khách hàng yêu cầu nghiên cứu nội dung: 
- Khách muốn tạo 1 website để cho enduser GV/HS download được digital tool trên web, và sử dụng ở local. | Inprogess | -
9.0 | CR17の基本設計が完了次第、再度見積もり

Estimate chi tiết lại CR 17 nếu khách hàng hoàn thành Specs chi tiết | Pending | - | CR17の最終的な開発方針が決まっていない。

Khách hàng chưa chốt phương án triển khai cuối cùng cho CR 17.
10.0 | Google Add-on に関して、Google Accountで環境設定など

Tiến hành triển khai coding 1 số phần của Google Add-on | Pending | - | 見送ることになりました。

Reject theo yêu cầu từ khách hàng.
11.0 | Hearing spec with customer
-仕様のヒアリング | Inprogess | - | MTG 4回
- Google Add-on機能
- デジタル教具専用のサイトの仕様
- 管理画面の仕様
MTG 4 lần
- Chức năng Google add-on
- Chức năng trên trang digital tool mới
- Chức năng trên màn quản lý
12.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | - Google Add-onの機能の確認
- デジタル教具専用サイトで、DLの仕様の提案
- 新規のデジタル教具画面の確認
- Check chức năng Google add-on
- Check chức năng trên trang digital tool mới và đề xuất DL digital tool
- Check chức năng trên màn quản lý
13.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Pending | - | 02/19のMTGにて、デジタル教具画面をもう少し作り直すという事で一旦このタスクはPendingになっています。
UI設計は02/25を目処とすることになっています。
Trong mtg 19/02 đã nhận thông tin là bên Otake sẽ cập nhật lại UI của màn chọn digital tool nên tạm thời task tạo BD sẽ là pending.
Dự kiến là ngày 25/02 nhận UI design mới.
14.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | -
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 17 デジタル教具のダウンロードとUIの更新
CR 17  Download digital tool and update UI | Inprogess | - | PIC: Otake & Scuti
1.0 | 教師と生徒がデジタル教具の素材をダウンロードし、ローカルで使用できる新しいウェブページを開発調査
（2/18にご依頼をいただきました）

Ngày 02/18 khách hàng yêu cầu nghiên cứu nội dung: 
- Khách muốn tạo 1 website để cho enduser GV/HS download được digital tool trên web, và sử dụng ở local. | Inprogess | - | 02/19中に追加となった調査内容
・Zipと複数ダウンロードをon / offできるか
・デジタル教具のコピペは画質が落ちるか？ 
・画面上にキーボードの表示ができるか

19/02 thêm 3 research mới 
- Có thể bật/tắt tính năng Zip và tải xuống nhiều lần không?
- Việc sao chép và dán tài liệu giảng dạy kỹ thuật số có làm giảm chất lượng hình ảnh không?
- Bạn có thể hiển thị bàn phím trên màn hình không?
2.0 | CR17の基本設計が完了次第、再度見積もり

Estimate chi tiết lại CR 17 nếu khách hàng hoàn thành Specs chi tiết | Pending | - | CR17の最終的な開発方針が決まっていない。

Khách hàng chưa chốt phương án triển khai cuối cùng cho CR 17.
3.0 | Hearing spec with customer
-仕様のヒアリング | Inprogess | - デジタル教具専用のサイトの仕様
- 管理画面の仕様
- Chức năng trên trang digital tool mới
- Chức năng trên màn quản lý
4.0 | Hearing spec with customer and research
- 仕様の調査 | Todo | 02/19中に追加となった調査内容
・Zipと複数ダウンロードをon / offできるか
・デジタル教具のコピペは画質が落ちるか？ 
・画面上にキーボードの表示ができるか

19/02 thêm 3 research mới 
- Có thể bật/tắt tính năng Zip và tải xuống nhiều lần không?
- Việc sao chép và dán tài liệu giảng dạy kỹ thuật số có làm giảm chất lượng hình ảnh không?
- Bạn có thể hiển thị bàn phím trên màn hình không?
5.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | 新規のデジタル教具画面のあらかた仕様が決定している箇所の詳細確認
Check chi tiết phần nào đã chốt
7.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess
3. 確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
4. リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5. バックログタスク/ Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6. ログタイム/ Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. ノート/ Note
## Sheet: 02122025
週次報告
Weekly Meeting
日時／Time: 12-Feb 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■CR 14：2月4日からCR 17 Google Add-On を優先して対応したため、CR14を一旦保留
■CR 17：Google Add-On の技術を調査中
■優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122　
----------------------------------------------------------
Tổng quan: 
CR 14: Pending ưu tiên việc nghiên cứu CR 17 Google Add-On (Từ ngày 02/04)
CR 17: Scuti đang nghiên cứu công nghệ, khách hàng đang làm specs chi tiết. 

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（05-Feb-> 11-Feb）／Report task of this week (05-Feb-> 11-Feb）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 17 Google Workspace拡張機能と連携
CR 17  Google add-on | Inprogess | - | PIC: Otake & Scuti
1.0 | Google Slide, Google Docs, Google Sheet にデジタル教具を統合するための Google Workspace add-on の開発可能性について調査する。
Nghiên cứu khả năng thực hiện Google Add-on để tích hợp digital tool vào Google Slide / Google Docs / Google Sheet | Done | 2025-02-07 00:00:00 | ・2/10に一度調査結果を報告させていただきました。
- Đã báo cáo kết quả lần 1 vào ngày 02/10. 
https://docs.google.com/spreadsheets/d/1-PbgYYieN7dTxjv6JHv39Z6Zud3qShG01nfq681OZx8/edit?gid=1493670499#gid=1493670499
・Google Slide (最優先) / Google Docs / Google Sheet (Add-on) にデジタル教具のセットを統合する方法を調査する必要がない。
- Không cần nghiên cứu cách tích hợp Set Digital tool vào Google Slide (Ưu tiên cao) / Google Docs / Google Sheet (Add-on)
2.0 | Google Workspace add-on の開発に関する概算見積もり（誤差が大きくなる可能性あり）
Estimate vo (Với độ sai số lớn) việc thực hiện Google Add-on | Done | 2025-02-10 00:00:00 | 詳細な見積もりは、基本設計が確定次第、改めてお見積もりいたします。
Về estimate chi tiết, sau khi khách hàng và TaiC update basic design chi tiết thì team Scuti sẽ estimate lại.
3.0 | Hearing spec with customer
-仕様のヒアリング | Inprogess | - | 2/1から仕様のヒアリングを開始しました。
残りはポップアップとスライドバーのデザインとなります。
Bắt đâu hearing requirement từ ngày 01/02 rồi.
Đang chờ UI của popup và slide bar.
4.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | 技術調査の結果、実現可能ということになったので、Google Workspace add-on上のUIや詳細を詰めています。
QAシートやチャットでやり取り中。
Sau khi làm technical research thì thấy chức năng add-on khả thi. Đang phân tích chi tiết của chúc năng trên add-on và chuẩn bị UI.
5.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Inprogess | - | 技術可否の確認と仕様を詰めた後、基本設計書の見積もりを開始する
Sau khi check technical xong và có spec chi tiết thì bắt đầu estimate thòi gian làm BD
6.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | - | 現在進行中
In progress
7.0 | Create basic design
- Make BD
基本設計書の作成 | Todo | -
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 17 Google Workspace拡張機能と連携
CR 17  Google add-on | Inprogess | - | PIC: Otake & Scuti
1.0 | ユーザの情報を取得できるか、Google Market Workspace の管理機能を調査する
Nghiên cứu chức năng quản lý của Google Market Workspace có thể lấy được thông tin của user không? | Todo | 2025-02-13 00:00:00
2.0 | ユーザが一般的な機能を利用できるメニューをGoogle Slide の画面に追加できるかを調査する。
Nghiên cứu có thể thêm menu trên màn hình Google Slide để user dùng các chức năng thường dùng hay không? | Todo | 2025-02-13 00:00:00
3.0 | Google Workspace MarketplaceのアプリやGoogle Chromの 拡張機能が、個別のユーザにインストールすることなく、複数のユーザに同時にインストールできるかを調査する。
Nghiên cứu app Google Workspace MarketSpace và Google Chrome Extension có install cho nhiều user cùng lúc mà không cần từng user install không? | Todo | 2025-02-13 00:00:00
4.0 | デジタル教具（教科、カテゴリ）をGoogle Chromeの拡張機能に統合する方法を調査する。
Nghiên cứu cách tích hợp ảnh digital tool đơn (Ảnh bộ môn và category) vào Google Chorme extention | Todo | 2025-02-13 00:00:00
5.0 | Scuti 側のインタネットを使用してGoogle Add-on からデジタル教具の画像を挿入することを検証し評価を行う。
Đo và đánh giá việc insert ảnh digital tool từ Google Add -on với mạng internet của Scuti | Todo | 2025-02-13 00:00:00
6.0 | CR17の基本設計、詳細設計が完了次第、再度見積もり
Estimate chi tiết lại CR 17 nếu khách hàng hoàn thành Specs chi tiết | Todo | -
7.0 | Google Add-on に関してはGoogle Accountで環境設定など
Tiến hành triển khai coding 1 số phần của Google Add-on | Todo | - | ・他の優先タスクがないことを前提にする。
・2/13の後にする
- Phía Scuti chỉ làm phần này nếu khách hàng không ưu tiên làm phần nào khác
- Phía Scuti tiến hành sau ngày 2/13
8.0 | Hearing spec with customer
-仕様のヒアリング | Inprogess | - | 2/1から仕様のヒアリングを開始しました。
残りはポップアップとスライドバーのデザインとなります。
Bắt đâu hearing requirement từ ngày 01/02 rồi.
Đang chờ UI của popup và slide bar.
9.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | 技術調査の結果、実現可能ということになったので、Google Workspace add-on上のUIや詳細を詰めています。
QAシートやチャットでやり取り中。
Sau khi làm technical research thì thấy chức năng add-on khả thi. Đang phân tích chi tiết của chúc năng trên add-on và chuẩn bị UI.
10.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Inprogess | - | 技術可否の確認と仕様を詰めた後、基本設計書の見積もりを開始する
Sau khi check technical xong và có spec chi tiết thì bắt đầu estimate thòi gian làm BD
11.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | - | 現在進行中
In progress
12.0 | Create basic design
- Make BD
基本設計書の作成 | Todo | -
3. 確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
4. リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5. バックログタスク/ Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6. ログタイム/ Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. ノート/ Note
お願い事項ですが、
可能であれば、オータケ様のCR17の基本設計・詳細設計の作成スケジュールをご共有いただければ助かります。
それをもとに弊社の各タスクの日程を調整させていただきます。

Nhờ khách hàng chia sẻ về lịch trình làm specs chi tiết của CR 17 Google Add-on để phía Scuti sắp sếp task cho phù hợp.
## Sheet: 02052025
週次報告
Weekly Meeting
日時／Time: 05-Feb 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■CR 15：完了済み
■CR 14：2月4日からCR 17 Google Add-On を優先して対応したため、CR14を一旦保留
■CR 17：Google Add-On の技術を調査中
■優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
----------------------------------------------------------
Tổng quan: 
CR 15: Done
CR 14: Pending ưu tiên việc nghiên cứu CR 17 Google Add-On (Từ ngày 02/04)
CR 17: Đang nghiên cứu công nghệ. 

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（23-Jan-> 04-Feb）／Report task of this week (23-Jan-> 04-Feb）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 15 軽微な修正
CR15 Small CRs | Done | - | PIC: Otake & Scuti
1.0 | [Test] Otake 様側でステージング環境でUATテスト
[Test] [Otake] Test UAT at STG | Done | 2025-01-23 00:00:00
2.0 | UATのバグ修正
[Dev] [Scuti] Fix bug UAT | Done | 2025-01-23 00:00:00
3.0 | 本番環境への反映
[Dev] [Scuti] [Production] Deploy | Done | 2025-01-23 00:00:00
4.0 | Otake様側で本番環境でテスト
[Test] [Otake] Test at Production | Done | 2025-01-23 00:00:00
CR 14 完全ロック
CR14  add function to lock | Pending | - | PIC: Otake & Scuti
1.0 | 実装
[Dev] Implement | Pending | 2025-02-18 00:00:00 | 40%まで完了しているが、2月4日から優先順位をCR17 Google Add-On に変更したため、一旦CR14を保留とする。
-----------------------------------------------
- Đã hoàn thành được 40%. 
- Pending theo yêu cầu của khách hàng ưu tiên cho việc nghiên cứu CR 17 Google Add-On (Từ ngày 02/04)
2.0 | テストシートの作成
[Test] [Scuti] Write Testcase | Pending | 2025-02-17 00:00:00 | 40%まで完了しているが、2月4日から優先順位をCR17 Google Add-On に変更したため、一旦CR14を保留とする。
-----------------------------------------------
- Đã hoàn thành được 40%. 
- Pending theo yêu cầu của khách hàng ưu tiên cho việc nghiên cứu CR 17 Google Add-On (Từ ngày 02/04)
CR 17 Google Workspace拡張機能と連携
CR 17  Google add-on | Inprogess | - | PIC: Otake & Scuti
1.0 | Google Slide, Google Docs, Google Sheet にデジタル教具を統合するための Google Workspace add-on の開発可能性について調査する。
------------------------
Nghiên cứu khả năng thực hiện Google Add-on để tích hợp digital tool vào Google Slide / Google Docs / Google Sheet | Inprogess | 2025-02-07 00:00:00 | 調査結果（2024年2月5日時点）
1. Google Add-on を Google Slide に統合
・デジタル教具の画像を Google Slide に統合する Add-on の実装可能性 ⇒ 可能
・Add-on にロック機能を実装する可能性 ⇒ 可能
・デジタル教具選択画面の UI を保持できる可能性 ⇒ 可能性は低い。Scuti にて追加調査が必要
・デジタル教具選択画面の検索機能を保持できる可能性 ⇒ 未調査
2. Google Add-on を Google Sheet  に統合
・デジタル教具の画像を Google Sheet に統合する Add-on の実装可能性 ⇒ 可能
・デジタル教具選択画面の UI を保持できる可能性 ⇒ 可能性は低い。Scuti にて追加調査が必要
・デジタル教具選択画面の検索機能を保持できる可能性 ⇒ 未調査
3. Google Add-on を Google Docs に統合
・デジタル教具の画像を Google Docs に統合する Add-on の実装可能性 ⇒ 可能
・デジタル教具選択画面の UI を保持できる可能性 ⇒ 可能性は低い。Scuti にて追加調査が必要
・デジタル教具選択画面の検索機能を保持できる可能性 ⇒未調査
4. Google Marketplace へのデプロイ方法と発生コスト⇒未調査
------------------------------------------------------------------
Kết quả điều tra tới thời điểm ngày 02/05: 
1. Google add-on tích hợp với Goole slide
- Có khả năng làm add-on tích hợp ảnh digital tool vào google slide không? => Có
- Có khả năng làm chức năng khóa trên add-on không? => Có
- Có khả năng giữ lại giao diện màn hình chọn digital tool không? => Khả năng cao là không, Scuti cần điều tra thêm. 
- Có khả năng giữ lại chức năng search trên màn hình chọn digital tool không? => Chưa điều tra. 

2. Googl add-on tích hợp với Google Sheet. 
- Có khả năng làm add-on tích hợp ảnh digital tool vào google slide không? => Có
- Có khả năng giữ lại giao diện màn hình chọn digital tool không? => Khả năng cao là không, Scuti cần điều tra thêm. 
- Có khả năng giữ lại chức năng search trên màn hình chọn digital  tool không? => Chưa điều tra. 

3. Googl add-on tích hợp với Google Docs. 
- Có khả năng làm add-on tích hợp ảnh digital tool vào google slide không? => Có
- Có khả năng giữ lại giao diện màn hình chọn digital tool không? => Khả năng cao là không, Scuti cần điều tra thêm. 
- Có khả năng giữ lại chức năng search trên màn hình chọn digital tool không? => Chưa điều tra. 

4. Cách thức deploy lên google Market và chi phí phát sinh
=> Chưa điều tra.
2.0 | Hearing spec with customer
-仕様のヒアリング | Inprogess | - | 2/1から仕様のヒアリングを開始しました。
技術調査の結果次第で仕様が変更する可能性があるので、技術調査の結果待ちです。
Bắt đâu hearing requirement từ ngày 01/02 rồi.
Tuỳ kết quả của research technical thì spec có thể thay đổi, đang đợi kết quả research.
3.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | Google Workspace add-on上のUIや詳細を詰めていく予定です。
Đang phân tích chi tiết của chúc năng trên add-on và chuẩn bị UI.
4.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | - | 現在進行中
In progress
CR 10 カテゴリー教具にタグを追加
CR 10 add tag3,4 to category | Inprogess | - | PIC: Otake & Taishi
1.0 | Hearing spec with customer
-仕様のヒアリング | Done | 2025-02-01 00:00:00
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | CR17の急ぎの件があったので、今週は以前からの変更点の要求を受け取るmtgのみ実施しました。
Vì phải ưu tiện trasnfer requirement của CR17 cho team, nên tuần nay chỉ làm họp với khách để hearing yêu cầu mới của CR10
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 10 カテゴリー教具にタグを追加
CR 10 add tag3,4 to category | Pending | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Pending | - | CR17で待ち時間があれば対応する
Nếu có task pending của SE ở bên CR17 thì làm task này
2.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Pending | - | CR17で待ち時間があれば対応する
Nếu có task pending của SE ở bên CR17 thì làm task này
3.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Pending | - | CR17で待ち時間があれば対応する
Nếu có task pending của SE ở bên CR17 thì làm task này
4.0 | Create basic design
- Make BD
基本設計書の作成 | Pending | - | CR17で待ち時間があれば対応する
Nếu có task pending của SE ở bên CR17 thì làm task này
CR 17 Google Workspace拡張機能と連携
CR 17  Google add-on | Inprogess | - | PIC: Otake & Scuti
1.0 | Google Slide, Google Docs, Google Sheet にデジタル教具を統合するための Google Workspace add-on の開発可能性について調査する。
------------------------
Nghiên cứu khả năng thực hiện Google Add-on để tích hợp digital tool vào Google Slide / Google Docs / Google Sheet | Inprogess | 2025-02-07 00:00:00
2.0 | Google Workspace add-on の開発に関する概算見積もり（誤差が大きくなる可能性あり）
--------------------------
Estimate vo (Với độ sai số lớn) việc thực hiện Google Add-on | Todo | 2025-02-10 00:00:00 | 詳細な見積もりは、基本設計が確定次第、改めてお見積もりいたします。
Về estimate chi tiết, sau khi khách hàng và TaiC update basic design chi tiết thì team Scuti sẽ estimate lại.
3.0 | Hearing spec with customer
-仕様のヒアリング | Inprogess | - | 2/1から仕様のヒアリングを開始しました。
技術調査の結果次第で仕様が変更する可能性があるので、技術調査の結果待ちです。
Bắt đâu hearing requirement từ ngày 01/02 rồi.
Tuỳ kết quả của research technical thì spec có thể thay đổi, đang đợi kết quả research.
4.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | Google Workspace add-on上のUIや詳細を詰めていく予定です。
Đang phân tích chi tiết của chúc năng trên add-on và chuẩn bị UI.
5.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Todo | - | 技術可否の確認と仕様の詳細を詰めた後、基本設計書の見積もりを開始する
Sau khi check technical xong và có spec chi tiết thì bắt đầu estimate thòi gian làm BD
6.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | - | 現在進行中
In progress
7.0 | Create basic design
- Make BD
基本設計書の作成 | Todo | -
3. 確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
4. リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5. バックログタスク/ Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6. ログタイム/ Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. ノート/ Note
## Sheet: 01232025
週次報告
Weekly Meeting
日時／Time: 23-Jan 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■ CR 14：実装は計画通りになっている
マスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=197732518#gid=197732518

■ CR 15: 実装は計画通りになっている
マスタスケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2003904260#gid=2003904260

■ 優先度： https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
----------------------------------------------------------
Tổng quan: 
CR 14: Keep tiến độ coding theo master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=197732518#gid=197732518
CR 15: Keep tiến độ coding theo master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2003904260#gid=2003904260

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122

Scuti's Tet holiday schedule is from January 25th to the end of February 2nd.
１．今週の作業内容（15-Dec-> 22-Jan）／Report task of this week (15-Dec-> 22-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | [Test] Otake 様側で開発環境でテスト
[Test] [Otake] [Dev] Run test at Dev | Done | 2025-01-17 00:00:00
2.0 | Scuti 側で不良修正
[Dev] [Scuti] [Dev] Fix bug  as Development | Done | 2025-01-20 00:00:00
3.0 | Scuti 側で下記仕様変更の実装
・画像か動画のどちらかの挿入しかできない
・画像は複数枚の挿入が可能(100MBまで)
・動画は1本のみの挿入しかできない(100MBまで)
・iPadで動画音声再生機能を実装する。
（iPadで表示される音声ボタンは音のON/OFFのみ変更できる。
iPadeで音量を調整するときは、デバイスを直接操作し調整する。）
・Ipadでweb挿入ボタンを削除する。
--------------------------------------------------------
[Dev] [Scuti] [Dev] Implement change request
- Only images or videos can be inserted.
- Multiple images can be inserted, up to a maximum of 100 MB.
- Only one video can be inserted, with a maximum size of 100 MB.
- On iPad, implement the functionality to play audio for videos.
  + Implement the functionality to play video audio on iPad.
  + The audio button displayed on the iPad can only toggle between ON and OFF.
  + When adjusting the volume on the iPad, the adjustment should directly control the device's volume. | Done | 2025-01-22 00:00:00
4.0 | ステージング環境へ反映
[Dev] [Scuti] [STG] Deploy | Done | 2025-01-22 00:00:00 | 仕様変更でSTG反映作業は21日から22日に変更された
Lùi lịch từ 01/21 sang 01/22 do task [Dev] [Scuti] [Dev] Implement change request
5.0 | [Test] Otake 様側でステージング環境でUATテスト
[Test] [Otake] Test UAT at STG | Done | 2025-01-23 00:00:00 | 仕様変更でSTG反映作業は21日から23日に変更された
Lùi lịch từ 01/21 sang 01/23 do task [Dev] [Scuti] [Dev] Implement change request
6.0 | [Dev] 複数の動画をアップロードする場合のデバイスごとのGPU制限を調査
[Dev] [Scuti] Điều tra giới hạn GPU theo từng thiết bị khi upload nhiều video | Done | 2025-01-20 00:00:00 | GPU制限は一旦未解決のことについては佐々木さんの方で把握した。
Slackでやり取りのURL：https://otakescuti.slack.com/archives/C0655J92UPR/p1737433137349419
-----------------------------------------------
Khách hàng đã nắm được việc tràn GPU tạm thời chưa giải quyết được. 
Comment hiện tại của khách:  Chị Nga dịch có thể hỏi TaiC chỗ slack này để note link.
- Ngày 01/20, sau khi kiểm tra trong công ty, tôi nghĩ rằng vấn đề video trở nên quá nặng sau khi chèn đã được giải quyết nhờ tối ưu hóa video.
- Vấn đề với video hiện tại tôi nghĩ là đã ổn.
- Nếu có vấn đề phát sinh lại, tôi sẽ trao đổi để giảm độ phân giải hoặc thực hiện các biện pháp khác
7.0 | 仕様のまとめ、基本設計書の更新
Tổng hợp spec và cập nhật BD | Done | 2025-01-22 00:00:00
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Scuti
1.0 | タスクの分割と見積もり
Break task và estimae | Done | 2025-01-20 00:00:00
2.0 | マスタスケジュール作成
Create master Schedule | Done | 2025-01-21 00:00:00 | Link: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=197732518#gid=197732518
3.0 | テストシート作成
[Test] [Scuti] Write Testcase | Inprogess | 2025-02-17 00:00:00
CR 5 授業管理
CR5  Class management | Pending | - | PIC: Otake & Taishi
1.0 | 仕様の分析と技術確認
Phân tích spec và check QA technical | Pending | - | 今週は特になし。
CR10が優先。CR5でもし何か優先タスクがあれば対応する。
Ưu tiên làm spec CR10, nếu có task gấp của CR5 thì làm
CR 16 軽微な修正-2
CR16  Small CRs-2 | Pending | - | PIC: Otake & Taishi
1.0 | デジタル教具の表示数の修正 (4*4と5*5)
Chỉnh sửa hiển thị digital tool 4*4 và 5*5 | Done | 2025-01-22 00:00:00
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Pending | - | CR10が優先。CR5でもし何か優先タスクがあれば対応する。
Ưu tiên làm spec CR10, nếu có task gấp của CR5 thì làm
CR 10 カテゴリー教具にタグを追加
CR 10 add tag3,4 to category | Inprogess | - | PIC: Otake & Taishi
1.0 | Hearing spec with customer
-仕様のヒアリング | Done | 2025-01-17 00:00:00
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | 仕様がまだ全て決定していないので、決定次第締め切りを記載します。
Chưa có hết spec nên sau khi có hết spec thì điền deadline vào
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | [Test] Otake 様側でステージング環境でUATテスト
[Test] [Otake] Test UAT at STG | Inprogess | 2025-01-23 00:00:00 | 仕様変更でSTG反映作業は21日から23日に変更された
Lùi lịch từ 01/21 sang 01/23 do task [Dev] [Scuti] [Dev] Implement change request
2.0 | UATのバグ修正
[Dev] [Scuti] Fix bug UAT | Todo | 2025-01-23 00:00:00
3.0 | 本番環境への反映
[Dev] [Scuti] [Production] Deploy | Todo | 2025-01-23 00:00:00
4.0 | Otake様側で本番環境でテスト
[Test] [Otake] Test at Production | Todo | 2025-01-23 00:00:00
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Scuti
1.0 | 実装
[Dev] Implement | Todo | 2025-02-18 00:00:00
2.0 | テストシートの作成
[Test] [Scuti] Write Testcase | Inprogess | 2025-02-17 00:00:00
CR 5 授業管理
CR5  Class management | Pending | - | PIC: Otake & Taishi
1.0 | 仕様の分析と技術確認
Phân tích spec và check QA technical | Pending | - | CR10が優先。CR5でもし何か優先タスクがあれば対応する。
Ưu tiên làm spec CR10, nếu có task gấp của CR5 thì làm
CR 16 軽微な修正-2
CR16  Small CRs-2 | Pending | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Pending | - | CR10が優先。CR5でもし何か優先タスクがあれば対応する。
Ưu tiên làm spec CR10, nếu có task gấp của CR16 thì làm
CR 10 カテゴリー教具にタグを追加
CR 10 add tag3,4 to category | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | - | 仕様がまだ全て決定していないので、決定次第締め切りを記載します。
Chưa có hết spec nên sau khi có hết spec thì điền deadline vào
2.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Todo | - | 仕様がまだ全て決定していないので、決定次第締め切りを記載します。
Chưa có hết spec nên sau khi có hết spec thì điền deadline vào
3.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | - | 仕様がまだ全て決定していないので、決定次第締め切りを記載します。
Chưa có hết spec nên sau khi có hết spec thì điền deadline vào
3. 確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
4. リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5. バックログタスク/ Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6. ログタイム/ Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. ノート/ Note
Scuti 側の旧正月の連休日程：1/25～2/2

Scuti's Tet holiday schedule is from January 25th to the end of February 2nd.
## Sheet: 01152024
週次報告
Weekly Meeting
日時／Time: 15-Jan 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■ CR 13 軽微な改修内容のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
    ・No 1, 2 ,3, 4, 5：完了済み
    ・No 6：完了済み
    ・No 7, 8：保留
    ・No 9：完了済み
■ CR 14：設計書の理解と見積もり
■ CR 15：テスト中
■ 優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
----------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Done
    No 7, 8: Pending
    No 9: Done
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
CR 14: Đang tìm hiểu và estimate
CR 15: Coding
Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（25-Dec-> 07-Jan）／Report task of this week (25-Dec-> 07-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Done | - | PIC: Otake & Scuti
1.0 | [No 9] Otake 様側で開発環境でテスト
[No 9] [Test] [Otake] Run test at Development environment | Done | 2025-01-08 00:00:00
2.0 | [No 9] Scuti 側で不良修正
[No 9] [Dev] [Scuti] Fix bug | Done | 2025-01-09 00:00:00
3.0 | [No 9] Scuti 側でステージング環境へ反映
[No 9] [Dev] [Scuti] [STG] Deploy | Done | 2025-01-10 00:00:00
4.0 | [No 9] Otake 側でステージング環境でUATテスト
[No 9] [Test] [Otake] Test UAT at STG | Done | 2025-01-10 00:00:00
5.0 | [No 9] Scuti 側でUATの不良修正
[No 9] [Dev] [Scuti] Fix bug UAT | Done | 2025-01-13 00:00:00
6.0 | [No 9] 本番環境へ反映
[No 9] [Dev] [Scuti] [Production] Deploy | Done | 2025-01-15 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | Scuti 側で実装
[Dev] [Scuti] Implement | Done | 2024-01-17 00:00:00 | 進捗を前倒しすることができたため、1/14に完了済み
Done vào ngày 01/14 do đẩy nhanh tiến độ.
2.0 | テスト項目を藤原さんに共有、藤原さんと確認対応
Trao đổi về testcase với khách hàng nếu khách hàng có câu hỏi | Done | 2025-01-15 00:00:00 | Link: https://docs.google.com/spreadsheets/d/1i0zaYWbu9-iu0WB2sU8ogH8y4fOQSnCGzgLZN34qOrw/edit?gid=0#gid=0
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Done | 2024-01-09 00:00:00 | 1/10あたりに佐々木さんと基本設計書のMTG予定です。
Dự kiến là tầm 10/01 MTG với bác Sasaki về BD CR14
2.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Done | 2025-01-10 00:00:00
3.0 | Update basic design
-Update documents
ドキュメントの更新(あれば) | Done | 2025-01-10 00:00:00
4.0 | Finish basic design
-Meeting confirm with Customer chốt lần cuối BD
 MTGを行い、基本設計書の完成（あれば） | Done | 2025-01-10 00:00:00
5.0 | Translate Basic design
基本設計書の翻訳 | Done | 2025-01-14 00:00:00
CR 5 授業管理
CR5  Class management | Done | - | PIC: Otake & Taishi
1.0 | 要件のヒアリングMTG　
MTG hearing requirement | Done | 2025-01-14 00:00:00
2.0 | 仕様の分析と技術確認
Phân tích spec và check QA technical | Done | 2025-01-14 00:00:00 | 以下技術の確認をし、可能なことを報告しました。
1. 授業管理方法の変更（Google Driveのような方法）
2. 招待コード/QRコードを使用して授業の作成と参加

Scuti đã xác nhận các kỹ thuật dưới đây và báo cáo những điều có thể thực hiện:
1. Thay đổi phương pháp quản lý lớp học (phương pháp giống như Google Drive).
2. Sử dụng mã mời/QR code để tạo lớp học và tham gia.
CR 16 軽微な修正-2
CR16  Small CRs-2 | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec, check QA
   仕様の確認と分析、質問点の確認 | Inprogess | 2025-01-21 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | [Test] Otake 様側で開発環境でテスト
[Test] [Otake] [Dev] Run test at Dev | Inprogess | 2025-01-17 00:00:00
2.0 | Scuti 側で不良修正
[Dev] [Scuti] [Dev] Fix bug  as Development | Todo | 2025-01-20 00:00:00
3.0 | ステージング環境へ反映
[Dev] [Scuti] [STG] Deploy | Todo | 2025-01-21 00:00:00
4.0 | [Test] Otake 様側でステージング環境でUATテスト
[Test] [Otake] Test UAT at STG | Todo | 2025-01-21 00:00:00
5.0 | [Dev] 複数の動画をアップロードする場合のデバイスごとのGPU制限を調査
[Dev] [Scuti] Điều tra giới hạn GPU theo từng thiết bị khi upload nhiều video | Inprogess | 2025-01-20 00:00:00
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Scuti
1.0 | タスクの分割と見積もり
Break task và estimae | Inprogess | 2025-01-20 00:00:00 | 1/21にマスタースケジュールを送ります。
1/21 gửi master schedule
CR 5 授業管理
CR5  Class management | Todo | - | PIC: Otake & Taishi
1.0 | 仕様の分析と技術確認
Phân tích spec và check QA technical | Todo | - | もし仕様の確認点があれば、CR16より優先的に対応する。
Nếu cần check về spec/technical của CR5 thì ưu tiên hơn CR16
CR 16 軽微な修正-2
CR16  Small CRs-2 | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | 2025-01-21 00:00:00
2.0 | Create basic design
 - Divide basic design task into small tasks and apply it to schedule
基本設計書タスクを小さく分割して基本設計書のスケジュールに反映 | Todo | - | 佐々木さんと今回は対応部分を分けました。
いくつかの部分はScuti側がデザインから作成します。
見積もり時間は仕様の確認後報告します。
Chúng tôi đã phân chia phần công việc lần này với bác Sasaki.
Một số phần sẽ được phía Scuti thiết kế và tạo ra.
Sau khi bên mình check spec thì báo estimate của CR
3.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Todo | -
4.0 | デジタル教具の適切な表示数をオータケ様側が確認するため、Scutiがデジタル教具の表示数を変更して開発環境にアップロードする
Để bác Otake kiểm tra số lượng hiển thị digital tool phù hợp, Scuti sẽ thay đổi số lượng hiển thị digital tool và tải lên môi trường phát triển để khách kiểm tra | Todo | - | フロントエンドとバックエンドの両方の修正が必要なので、来週中に対応します。
Vì nó ảnh hưởng đến cả FE và BE nên bên Scuti định trong tuần sau làm.
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 01082024
週次報告
Weekly Meeting
日時／Time: 08-Jan 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■ CR 13 軽微な改修内容のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898b 
　・No 1, 2 ,3, 4, 5：完了済み
    ・No 6：完了済み
    ・No 7, 8：保留
    ・No 9：テスト中
■ CR 14：基本設計書の作成中
■ CR 15：実装中
■ 優先度のファイル：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122 
----------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Done
    No 7, 8: Pending
    No 9: Testing
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

CR 14: Đang tạo Basic Design.
CR 15: Coding
Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（25-Dec-> 07-Jan）／Report task of this week (25-Dec-> 07-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] 開発者が実装
[No 9] [Dev] Implement | Done | 2024-12-26 00:00:00
2.0 | [No 9] Scuti 側でテストシートの作成
[No 9] [Test] [Scuti] Write Testcase | Done | 2024-12-26 00:00:00
3.0 | [No 9] Otake 様側で開発環境でテスト
[No 9] [Test] [Otake] Run test at Development environment | Inprogess | 2025-01-08 00:00:00
4.0 | [No 9] Scuti 側で不良修正
[No 9] [Dev] [Scuti] Fix bug | Inprogess | 2025-01-09 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | マスタースケジュールの作成
Create master Schedule | Done | 2024-12-25 00:00:00 | Link: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2003904260#gid=2003904260
2.0 | Scuti 側で実装
[Dev] [Scuti] Implement | Inprogess | 2024-01-17 00:00:00
3.0 | Scuti 側でテストシートの作成
[Test] [Scuti] Write Testcase | Done | 2024-01-03 00:00:00 | Link: https://docs.google.com/spreadsheets/d/1i0zaYWbu9-iu0WB2sU8ogH8y4fOQSnCGzgLZN34qOrw/edit?gid=0#gid=0
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Done | 2024-01-07 00:00:00 | 一旦完了しているが、もし追加であれば確認します。
Tạm thời done, nhưng nếu có gì thì phân tích thêm
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-01-09 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] Otake 様側で開発環境でテスト
[No 9] [Test] [Otake] Run test at Development environment | Inprogess | 2025-01-08 00:00:00
2.0 | [No 9] Scuti 側で不良修正
[No 9] [Dev] [Scuti] Fix bug | Inprogess | 2025-01-09 00:00:00
3.0 | [No 9] Scuti 側でステージング環境へ反映
[No 9] [Dev] [Scuti] [STG] Deploy | Todo | 2025-01-10 00:00:00
4.0 | [No 9] Otake 側でステージング環境でUATテスト
[No 9] [Test] [Otake] Test UAT at STG | Todo | 2025-01-10 00:00:00
3.0 | [No 9] Scuti 側でUATの不良修正
[No 9] [Dev] [Scuti] Fix bug UAT | Todo | 2025-01-13 00:00:00
4.0 | [No 9] 本番環境へ反映
[No 9] [Dev] [Scuti] [Production] Deploy | Todo | 2025-01-15 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | Scuti 側で実装
[Dev] [Scuti] Implement | Inprogess | 2024-01-17 00:00:00
3.0 | テスト項目を藤原さんに共有、藤原さんと確認対応
Trao đổi về testcase với khách hàng nếu khách hàng có câu hỏi | Todo | 2025-01-15 00:00:00 | Link: https://docs.google.com/spreadsheets/d/1i0zaYWbu9-iu0WB2sU8ogH8y4fOQSnCGzgLZN34qOrw/edit?gid=0#gid=0
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Done | 2024-01-07 00:00:00 | 一旦完了しているが、もし追加であれば確認します。
Tạm thời done, nhưng nếu có gì thì phân tích thêm
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-01-09 00:00:00 | 1/10あたりに佐々木さんと基本設計書のMTG予定です。
Dự kiến là tầm 10/01 MTG với bác Sasaki về BD CR14
3.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Todo | 2025-01-10 00:00:00
4.0 | Update basic design
-Update documents
ドキュメントの更新(あれば) | Todo | 2025-01-14 00:00:00
5.0 | Finish basic design
-Meeting confirm with Customer chốt lần cuối BD
 MTGを行い、基本設計書の完成（あれば） | Todo | 2025-01-15 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
・2025/01/13 日本時間 17時より、弊社では社内イベントが行われる予定となっております。
そのため、17時よりSlackでの連絡は引き続きフォローいたしますが、
優先度が低く緊急でないご連絡は追って返信させていただきます。

・2025/01/13 当日はCR13 No9のUAT不良修正の締め切りであるため、万が一、
不良件数が多く修正しきれない場合は、1/14に変更させていただければと思います。
その後の日程は1/15に本番環境に反映する予定で、この変更によって後の日程への影響はございません。

何卒、ご理解・ご了承いただきますようお願い申し上げます。
――――――――――――――――――――――――――――――
Ngày 01/13/2025 phía Scuti có sự kiện diễn ra từ khoảng 15h ~ hết giờ làm việc (Giờ Việt Nam) Bên mình xin phép tham gia Event vào thời gian đó nên: 
- Chúng tôi vẫn sẽ folow chat trên Slack tuy nhiên những phần liên lạc có độ ưu tiên thấp có thể bị chậm trong khoảng thời gian này. 
- Ngày 01/13/2025 là ngày cuối cùng fix bug UAT của CR 13 No 9, nên nếu trong trường hợp số lượng bug UAT nhiều thì phía Scuti xin phép lùi lịch fix bug UAT sang ngày 01/14/2025 (Lịch này không ảnh hưởng tới lịch tổng thể deploy lên Production của CR 13 No 9 vì lịch deploy Production là 01/15/2024)
## Sheet: 12242024
週次報告
Weekly Meeting
日時／Time: 24-Dec 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
CR13CR13
【全体的な進捗】
■ CR 13 軽微な改修内容のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
    ・No 1, 2 ,3, 4, 5：完了済み
    ・No 6：完了済み
    ・No 7, 8：保留
    ・No 9：実装中
■ CR 14：基本設計書の作成中
■ CR 15：CR 13 No 9 の後に対応する予定
■ 優先度のファイル：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
----------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Done
    No 7, 8: Pending
    No 9: Coding
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

CR 14: Đang tạo Basic Design.
CR 15: Start làm sau CR 13 No 9
Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（18-Dec-> 24-Dec）／Report task of this week (18-Dec-> 24-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] 基本設計の更新
[No 9] Update basic design | Done | 2024-12-19 00:00:00
2.0 | [No 9] 実施方法と最新版の設計書ができ次第、再度見積もる
[No 9] Estimate lại sau khi có design mới nhất và đã chốt hướng làm. | Done | 2024-12-19 00:00:00
3.0 | [No 9] マスタースケジュールの作成
[No 9] Create master schedule | Done | 2024-12-19 00:00:00
4.0 | [No 9] 開発者が実装
[No 9] [Dev] Implement | Inprogess | 2024-12-26 00:00:00 | スケジュール通り、問題は特にない
Keep tiến độ, không gặp vấn đề lớn.
5.0 | [No 9] Scuti 側でテストシートの作成
[No 9] [Test] [Scuti] Write Testcase | Inprogess | 2024-12-26 00:00:00 | スケジュール通り、問題は特にない
Keep tiến độ, không gặp vấn đề lớn.
CR 15 軽微な修正
CR15 Small CRs | Pending | - | PIC: Otake & Scuti
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | CR14の基本設計書にかかる工数の見積もり
Estimate thời gian làm BD CR14 | Done | 2024-12-23 00:00:00 | 見積もり内容
[11/2023] [Edu] Project Management
Nội dung estimate
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | 2024-01-07 00:00:00 | スケジュール通り、問題は特にない
Keep tiến độ, không gặp vấn đề lớn.
3.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-01-09 00:00:00 | 定例会後に、MTG予定
Sau khi họp weekly, họp với Sasaki-san về spec
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] 開発者が実装
[No 9] [Dev] Implement | Inprogess | 2024-12-26 00:00:00
2.0 | [No 9] Scuti 側でテストシートの作成
[No 9] [Test] [Scuti] Write Testcase | Inprogess | 2024-12-26 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | マスタースケジュールの作成
Create master Schedule | Inprogess | 2024-12-25 00:00:00 | Link: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2003904260#gid=2003904260
2.0 | Scuti 側で実装
[Dev] [Scuti] Implement | Todo | 2024-01-17 00:00:00
3.0 | Scuti 側でテストシートの作成
[Test] [Scuti] Write Testcase | Todo | 2024-01-03 00:00:00
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Inprogess | 2024-01-07 00:00:00
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-01-09 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 12182024
週次報告
Weekly Meeting
日時／Time: 18-Dec 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
CR13CR13
【全体的な進捗】
■ CR 13 軽微な改修内容のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898 
    ・No 1, 2 ,3, 4, 5：完了済み
    ・No 6：完了済み
    ・No 7, 8：保留
    ・No 9：見積もり中、見積もり完了次第に実装を行う予定
■ CR 14：基本設計書の作成中
■ CR 15：見積もり完了済み、CR13 No9の優先先でCR15の実装は一旦保留
■ 優先度のファイル：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
-----------------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Done
    No 7, 8: Pending
    No 9: Đang estimate, kế hoạch tiếp theo sẽ coding sau khi estimate. 
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

CR 14: Đang tạo Basic Design.
CR 15: Đã estimate, tạm thời pending, ưu tiên cho CR 13 No 9
Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（04-Dec-> 10-Dec）／Report task of this week (04-Dec-> 10-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 6] Scuti で本番環境へ反映
[No 6] [Dev] [Scuti] [Production] Deploy | Done | 2024-12-11 00:00:00
2.0 | [No 9] Scuti で技術を考慮し実施方法を提案
[No 9] [Dev] [Scuti] Tìm hiểu về công nghệ và đề xuất hướng làm. | Done | 2024-12-11 00:00:00 | チーム全員が対応
All team cùng tham gia
3.0 | [No 9] Otake 様側との打ち合わせや実施方法の提案・決定
[No 9] [SA] [Scuti] Trao đổi và quyết định hướng làm với Otake | Done | 2024-12-17 00:00:00 | チーム全員が対応
All team cùng tham gia
4.0 | [No 9] 基本設計の更新
[No 9] Update basic design | Inprogess | 2024-12-19 00:00:00 | Figma上で今回は設計書を作っています
Lần nay tạo BD trên Figma
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | CR 15 の見積もり
Estimate CR 15 | Done | 2024-12-12 00:00:00 | Detail estimate: https://docs.google.com/spreadsheets/d/1moEeIc3xo0PMFsdbrDiQvXOf9hcRZFDvYM1Sq-cWafY/edit?gid=916668589#gid=916668589&range=10:10
2.0 | CR15マスタースケジュールの作成とそれに基づいて実施
Create master schedule và implement theo master Schedule | Pending | - | CR13 No9 の優先先でCR15 の実施は一旦保留
Pending do khách hàng ưu tiên xử lý CR 13 No 9
3.0 | CR15 のテストシートの作成
CR15 create testcase cho CR 15 | Inprogess | 2024-12-18 00:00:00 | CR13 No9 の実施方法を検討している間、CR15 のテストシートを50％まで作成できております。
Trong thời gian chờ đợi chốt phương án cho CR 13 No 9, phía Scuti đã tiến hành viết được 50% testcase cho CR 15. 
Link: https://docs.google.com/spreadsheets/d/1i0zaYWbu9-iu0WB2sU8ogH8y4fOQSnCGzgLZN34qOrw/edit?gid=1118805254#gid=1118805254
4.0 | CR15の動画のUIを分析、決定
Phân tích UI video và chốt UI | Done | 2024-12-10 00:00:00
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | CR14の基本設計書にかかる工数の見積もり
Estimate thời gian làm BD CR14 | Todo | 2024-12-23 00:00:00 | CR13 No.9を優先していたので、リスケしました。
Đã ưu tiên làm CR13 No.9 nên reschedule lại
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] 基本設計の更新
[No 9] Update basic design | Inprogess | 2024-12-19 00:00:00
2.0 | [No 9] 実施方法と最新版の設計書ができ次第、再度見積もる
[No 9] Estimate lại sau khi có design mới nhất và đã chốt hướng làm. | Todo | 2024-12-19 00:00:00 | 12月18日から見積もり開始した
Start estimate từ 12/18
3.0 | [No 9] マスタースケジュールの作成
[No 9] Create master schedule | Todo | 2024-12-19 00:00:00
4.0 | [No 9] マスタースケジュールに沿って実装
[No 9] Implement theo master schedule | Todo | - | 12月20日から開始する。
マスタースケジュールができ次第、締め切りを更新する。
Start từ ngày 12/20
5.0 | [No 9] 基本設計の更新
[No 9] Update basic design | Inprogess | 2024-12-19 00:00:00 | Figma上で今回は設計書を作っています
Lần nay tạo BD trên Figma
CR 15 軽微な修正
CR15 Small CRs | Pending | - | PIC: Otake & Scuti
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | CR14の基本設計書にかかる工数の見積もり
Estimate thời gian làm BD CR14 | Todo | 2024-12-23 00:00:00 | CR13 No.9を優先していたので、リスケしました。
Đã ưu tiên làm CR13 No.9 nên reschedule lại
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Todo | - | 見積もり後に開始
Sau khi làm estimate thì set deadline và làm BD
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 12112024
週次報告
Weekly Meeting
日時／Time: 11-Dec 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
アジェンダ―／AGENDA
【全体的な進捗】
■ CR 13 軽微な改修内容
　マスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
    ・No 1, 2 ,3, 4, 5：完了済み
    ・No 6；スケジュール通り、ステージング環境で確認完了済み、12/11の18時以降に本番環境へ反映
    ・No 7, 8：保留
    ・No 9：技術の検討中
■ CR 14：基本設計の作成中
■ CR 15：見積もり中
■ 優先度: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
-----------------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Keep tiến độ, đã hoàn thành trên STG, chiều ngày 12/11 deploy Production
    No 7, 8: Pending
    No 9: Đang tìm hiểu công nghệ
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

CR 14: Đang tạo Basic Design.
CR 15: Đang estimate.

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（04-Dec-> 10-Dec）／Report task of this week (04-Dec-> 10-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 6] Scuti で実装
[No 6] [Dev] Implement | Done | 2024-12-04 00:00:00
2.0 | [No 6] Scuti のテスターでテストシート作成
[No 6] [Test] [Scuti] Write Testcase | Done | 2024-12-05 00:00:00
3.0 | [No 6] Otake 側でテスト実行
[No 6] [Test] [Otake] Run test | Done | 2024-12-09 00:00:00
4.0 | [No 6] Scutiでバグ修正（ある場合）
[No 6] [Dev] [Scuti] Fix bug | Done | 2024-12-10 00:00:00
5.0 | [No 6] Scuti でステージング反映
[No 6] [Dev] [Scuti] [STG] Deploy | Done | 2024-12-11 00:00:00
6.0 | [No 6] Otake 側で UAT 実行
[No 6] [Test] [Otake] UAT | Done | 2024-12-12 00:00:00
7.0 | [No 6] Scutiで UAT バグ修正（ある場合）
[No 6] [Dev] [Scuti] Fix bug UAT | Done | 2024-12-13 00:00:00 | UATのバグがない
Không phát hiện bug UAT
8.0 | [No 9] Scuti で技術を考慮し実施方法を提案
[No 9] [Dev] [Scuti] Tìm hiểu về công nghệ và đề xuất hướng làm. | Inprogess | 2024-12-11 00:00:00 | 実施方法がほぼ完了しました。
Otake 様との打ち合わせや実施方法の提案・決定については、赤井が対応させていただきます。
---------------------
Đã hầu như hoàn thành phương hướng làm. 
Akai sẽ họp trực tiếp với khách hàng để cùng khách quyết định phương hướng thực hiện.
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Taishi
1.0 | Estimate CR 15 | Inprogess | 2024-12-12 00:00:00
2.0 | 仕様の再確認、QA、やりとり、更新
Check lại spec, QA, trao đổi, cập nhật spec | Done | 2024-12-11 00:00:00
CR 14 完全ロック
CR14  add function to lock | Todo | - | PIC: Otake & Taishi
1.0 | CR14の基本設計書にかかる工数の見積もり
Estimate thời gian làm BD CR14 | Todo | 2024-12-13 00:00:00
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Todo | - | 見積もり後に開始
Sau khi làm estimate thì set deadline và làm BD
２．次の予定作業／Plan next week
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 6] Scutiで本番環境へ反映
[No 6] [Dev] [Scuti] [Production] Deploy | Todo | 2024-12-11 00:00:00
2.0 | [No 9] Scuti で技術を考慮し実施方法を提案
[No 9] [Dev] [Scuti] Tìm hiểu về công nghệ và đề xuất hướng làm. | Inprogess | 2024-12-11 00:00:00
3.0 | [No 9] Otake 様との打ち合わせや実施方法の提案・決定
[No 9] [SA] [Scuti] Trao đổi và quyết định hướng làm với Otake | Todo | - | 赤井が対応させていただきます。
Akai sẽ họp với khách để quyết định cách làm.
4.0 | [No 9] 基本設計の更新
[No 9] Update basic design | Todo | - | 上記の3番「[No 9] Otake 様との打ち合わせや実施方法の決定」による。実施方法が決まり次第、更新する。
―――――――――――
Phía Scuti chỉ làm task này nếu khách hàng chọn được phương hướng triển khai No9 sau khi meeting với TaiC
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | CR 15 の見積もり
Estimate CR 15 | Inprogess | 2024-12-12 00:00:00
2.0 | CR15マスタースケジュールの作成とそれに基づいて実施
Create master schedule và implement theo master Schedule | Todo | - | 現状：
・CR 13 No9：実施方法を決めるためにお客様と要相談
・CR 14：基本設計が間に合っていない。
→CR 13 No9 の実施方法と CR 14 の基本設計が決まっていない間、CR15を優先先で進める予定。
――――――――――――――
Hiện tại: 
- CR 13 No9: Cần trao đổi thêm với khách hàng để lựa chọn phương hướng triển khai. 
- CR 14: Chưa kịp làm Basic Design. 
Do vậy, phía Scuti dự định sẽ đẩy task này lên đầu tiên, trong khi khách hàng quyết định phương hướng 2 task trên.
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | CR14の基本設計書にかかる工数の見積もり
Estimate thời gian làm BD CR14 | Todo | 2024-12-13 00:00:00
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Todo | - | 見積もり後に開始
Sau khi làm estimate thì set deadline và làm BD
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 12042024
週次報告
Weekly Meeting
日時／Time: 04-Dec 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
アジェンダ―／AGENDA
【全体的な進捗】
■ CR 13 軽微な改修内容
マスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898　　
・No 1, 2 ,3, 4, 5：完了
・No 6：スケジュール通り　
・No 7, 8, 9：保留
■ 優先度: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
-----------------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Keep tiến độ
    No 7, 8, 9: Pending
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（28-Nov-> 03-Dec）／Report task of this week (28-Nov-> 03-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 1 2 3 4 5] Scuti で STG 環境に反映
[No 1 2 3 4 5][Dev] [Scuti] [STG] Deploy | Done | 2024-11-28 00:00:00
2.0 | [No 1 2 3 4 5] Otake側で UAT実行
[No 1 2 3 4 5][Test] [Otake] UAT | Done | 2024-11-29 00:00:00
3.0 | [No 1 2 3 4 5] ScutiでUATのバグ修正
[No 1 2 3 4 5][Dev] [Scuti] Fix bug UAT | Done | 2024-12-02 00:00:00
4.0 | [No 1 2 3 4 5] Scutiで本番反映
[No 1 2 3 4 5][Dev] [Scuti] [Production] Deploy | Done | 2024-12-03 00:00:00
5.0 | [No 6] Scuti で実装
[No 6] [Dev] Implement | Inprogess | 2024-12-04 00:00:00 | 90%まで進んでおります。
Đã hoàn thành 90%
6.0 | [No 6] Scuti のテスターでテストシート作成
[No 6] [Test] [Scuti] Write Testcase | Inprogess | 2024-12-05 00:00:00 | 70%まで進んでおります。
以下は現時点のテストシートです。
https://docs.google.com/spreadsheets/d/19xd0-MYUSq30Msp3J_zzSsqNpm3AzyiVLeB-dzPMp7g/edit?gid=1057740067#gid=1057740067　
事前にご確認いただき、マスタスケジュールの通りに進めるかを判断していただくようお願いいたします。
―――――――――――――
Đã hoàn thành 70%
Đây là Testcase tới thời điểm hiện tại: https://docs.google.com/spreadsheets/d/19xd0-MYUSq30Msp3J_zzSsqNpm3AzyiVLeB-dzPMp7g/edit?gid=1057740067#gid=1057740067
Nhờ khách hàng xem trước để đánh giá xem xét kế hoạch test của bên Otake có theo được theo Master Schedule không.
CR12 Undo-redo バグの修正
CR 12 Fix bug undo-redo | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - 問題の原因調べ、解決策の確認
Check nguyên nhân, check giải pháp | Done | 2024-11-29 00:00:00
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Done | 2024-11-29 00:00:00 | 11/29に現状の報告をします。
Boá cáo tình hình ở ngày 29/11
3.0 | Create basic design
 - 基本設計書の作成 | Done | - | 仕様の考慮の結果、CR15で対応することに決定。
対応内容：モニタリング時は、先生は生徒のオブジェクトを操作できない。
Sau khi check spec ở 2 bên, đã chốt là làm spec này:
Khi monitoring thì gv k thể thao tác với obj của hs
--> Spec này đã gộp vào CR15 rồi.
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Inprogess | 2024-12-05 00:00:00 | 12/4~5にかけてチームに仕様を伝える予定
Từ 12/4~5 Taishi sẽ transfer spec cho team
２．次の予定作業／Plan next week
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 6] Scuti で実装
[No 6] [Dev] Implement | Inprogess | 2024-12-04 00:00:00
2.0 | [No 6] Scuti のテスターでテストシート作成
[No 6] [Test] [Scuti] Write Testcase | Inprogess | 2024-12-05 00:00:00
3.0 | [No 6] Otake 側でテスト実行
[No 6] [Test] [Otake] Run test | Todo | 2024-12-09 00:00:00
4.0 | [No 6] Scutiでバグ修正（ある場合）
[No 6] [Dev] [Scuti] Fix bug | Todo | 2024-12-10 00:00:00
5.0 | [No 6] Scuti でステージング反映
[No 6] [Dev] [Scuti] [STG] Deploy | Todo | 2024-12-11 00:00:00
6.0 | [No 9] Scuti で技術を考慮し実施方法を提案
[No 9] [Dev] [Scuti] Tìm hiểu về công nghệ và đề xuất hướng làm. | Todo | 2024-12-11 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Inprogess | 2024-12-05 00:00:00 | 12/4~5にかけてチームに仕様を伝える予定
Từ 12/4~5 Taishi sẽ transfer spec cho team
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | CR14の基本設計書にかかる工数の見積もり
Estimate thời gian làm BD CR14 | Todo | 2024-12-06 00:00:00
2.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Todo | - | 見積もり後に開始
Sau khi làm estimate thì set deadline và làm BD
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 11282024
週次報告
Weekly Meeting
日時／Time: 28-Nov 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
全体的な進捗：
■ CR 13 軽微な改修内容のマスタースケジュール
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
・No 1, 2 ,3, 4, 5：オンスケ
・No 6：オンスケ
・No 7, 8, 9：保留
■ 優先度: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77 
-----------------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Keep tiến độ
    No 6: Keep tiến độ
    No 7, 8, 9: Pending
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
１．今週の作業内容（20-Nov-> 27-Nov）／Report task of this week (20-Nov-> 27-Nov）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 1 2 3 4 5] FE と BE の開発者が実装
[No 1 2 3 4 5][Dev][FE, BE] Implement | Done | 2024-11-22 00:00:00
2.0 | [No 1 2 3 4 5] Scuti 側のテスターでテスト項目作成
[No 1 2 3 4 5][Test] [Scuti] Write Testcase | Done | 2024-11-22 00:00:00
3.0 | [No 1 2 3 4 5] Otake 側でテスト実行 
[No 1 2 3 4 5][Test] [Otake] Run test | Done | 2024-11-25 00:00:00 | 藤原さんとの確認後、日程を11/26に変更した。
Khách hàng lùi deadline xuống 11/26
4.0 | [No 1 2 3 4 5] Scuti 側でバグ修正
[No 1 2 3 4 5][Dev] [Scuti] Fix bug | Done | 2024-11-26 00:00:00 | 上記の変更で本タスクの日程も27日に変更された。
Khách hàng lùi deadline test xuống 11/26 nên fix bug lùi xuống 11/27
5.0 | [No 1 2 3 4 5] Scuti 側で STG 環境に反映
[No 1 2 3 4 5][Dev] [Scuti] [STG] Deploy | Done | 2024-11-27 00:00:00 | 上記同様、28日に変更された。
Lùi lịch deploy STG xuống 11/28 do hai task phía trên lùi lịch.
6.0 | [No 6]No.6の仕様の作成
Tạo BD của No.6 | Done | 2024-11-20 00:00:00
7.0 | [No 6] 見積もりとマスタスケジュールの作成
[No 6] Estimate and Create Master Schedule | Done | 2024-11-25 00:00:00 | Estimate: https://docs.google.com/spreadsheets/d/1moEeIc3xo0PMFsdbrDiQvXOf9hcRZFDvYM1Sq-cWafY/edit?gid=916668589#gid=916668589&range=L9
Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
8.0 | [No 8] 仕様の作成
[No 8] Tạo BD | Pending | - | ご依頼いただいた通り、保留とした。
Pending theo yêu cầu khách hàng.
CR12 Undo-redo バグの修正
CR 12 Fix bug undo-redo | Inprogess | - | PIC: Otake & Taishi
1.0 | Check spec
バグ報告シートの確認（2件）
Check bug list về undo-redo của khách (Đang có 2 bug) | Done | - | CR No.13を優先で取り組んでいたので、今週(11/21か11/22)から再開します。
内容確認後、見積もりをさせていただきます。
-----------------------
Vì đã làm CR No.13 trước nên làm CR12 từ tuần nay (11/21 or 11/22)
Làm estimate sau khi check nội dung
2.0 | Check spec
 - 問題の原因調べ、解決策の確認
Check nguyên nhân, check giải pháp | Inprogess | 2024-11-29 00:00:00 | 11/29に現状の報告をします。
Boá cáo tình hình ở ngày 29/11
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Taishi
1.0 | 仕様のヒアリング | Pending
CR 14 完全ロック
CR14 Full Lock | Inprogess | - | PIC: Otake & Taishi
1.0 | 開発側と仕様の共有、実現可能かの確認 | Done | 2024-11-26 00:00:00 | 実現可能、と回答させていただきました。
2.0 | 佐々木さんから仕様の説明MTG | Done | 2024-11-28 00:00:00 | 11/25  , 11/28 実施
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Taishi
1.0 | 佐々木さんから仕様の説明MTG | Done | 2024-11-26 00:00:00 | 11/26実施
２．次の予定作業／Plan next week
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 1 2 3 4 5] Scuti 側で STG 環境に反映
[No 1 2 3 4 5][Dev] [Scuti] [STG] Deploy | Done | 2024-11-28 00:00:00
2.0 | [No 1 2 3 4 5] Otake側で UAT実行
[No 1 2 3 4 5][Test] [Otake] UAT | Todo | 2024-11-29 00:00:00
3.0 | [No 1 2 3 4 5] ScutiでUATのバグ修正
[No 1 2 3 4 5][Dev] [Scuti] Fix bug UAT | Todo | 2024-12-02 00:00:00
4.0 | [No 1 2 3 4 5] Scutiで本番反映
[No 1 2 3 4 5][Dev] [Scuti] [Production] Deploy | Todo | 2024-12-03 00:00:00
5.0 | [No 6] Scuti で実装
[No 6] [Dev] Implement | Todo | 2024-12-04 00:00:00
6.0 | [No 6] Scuti のテスターでテストシート作成
[No 6] [Test] [Scuti] Write Testcase | Todo | 2024-12-05 00:00:00
CR12 Undo-redo バグの修正
CR 12 Fix bug undo-redo | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - 問題の原因調べ、解決策の確認
Check nguyên nhân, check giải pháp | Inprogess | 2024-11-29 00:00:00
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-11-29 00:00:00 | 11/29に現状の報告をします。
Boá cáo tình hình ở ngày 29/11
3.0 | Create basic design
 - 基本設計書の作成 | Todo | -
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Taishi
1.0 | 仕様の確認、分析、基本設計書の完成
Phân tích spec, tạo BD | Todo | - | CR14 完全ロックの優先度が高いですが、
CR14の基本設計書にかかる工数の方が長いと予想されるので
比較的軽いCR15の軽微な対応を先に基本設計書の完成をさせます。
→CR14の基本設計書待ちになった場合、開発側はCR15を先に対応してもらいます。

工数：0.5MD程度


CR14 có mức độ ưu tiên cao, nhưng dự kiến thời gian cần thiết để hoàn thành tài liệu thiết kế cơ bản của CR14 sẽ dài hơn. 
Vì vậy, chúng tôi sẽ hoàn thành tài liệu thiết kế cơ bản cho CR15 trước, vì công việc của CR15 nhẹ hơn và chỉ cần xử lý một cách đơn giản.
→ Nếu phải chờ tài liệu thiết kế cơ bản của CR14, phía phát triển sẽ được yêu cầu thực hiện CR15 trước.

Estimate : 0.5MD
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 11202024
週次報告
Weekly Meeting
日時／Time: 20-Nov 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
全体的：
■ CR 8 のスクロール追加のマスタースケジュール
進捗：完了済み
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398

■ CR 10：見積もりが完了済み、実装（コーディング）は一旦保留としている

■ CR 13：軽微な改修内容
    No 1, 2 , 3, 4, 5, 7：オンスケ
    No 6, 8：基本設計書の作成中
    No 9：保留

■ 優先度
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
-----------------------------------------------------------------
Tổng quan: 
CR 8 Add Scroll: Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398
       - Tiến độ: Done

CR 10: Đã estimate, tạm pending phần coding. 

CR 13: Mix of many small CR
    No 1, 2 , 3, 4, 5, 7: Keep tiến độ
    No 6, 8: Đang làm basic design
    No 9: Pending

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
１．今週の作業内容（13-Nov-> 20-Nov）／Report task of this week (13-Nov-> 20-Nov）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR8 第一層と第二層にスクロールを追加
CR 8 Add Scroll bar on Tag 1 and Tag2 | Done | - | PIC: Otake & Scuti
1.0 | [Dev] [Scuti] STG 環境に反映
[Dev] [Scuti] [STG] Deploy | Done | 2024-11-14 00:00:00
2.0 | [Test] Otake様側で UAT 実行
[Test] [Otake] UAT | Done | 2024-11-15 00:00:00
3.0 | [Dev] [Scuti] UATのバグを修正
[Dev] [Scuti] Fix bug UAT | Done | 2024-11-18 00:00:00
4.0 | [Dev] [Scuti] 本番環境に反映
[Dev] [Scuti] [Production] Deploy | Done | 2024-11-19 00:00:00
CR 10 カテゴリーへのタグ追加
CR 10 Add tag of Category | Inprogess | - | PIC: Otake & Scuti
1.0 | [Dev] 技術分析・研究
[Dev] Analysis and Study Technical | Done | 2024-11-13 00:00:00 | 今週のタスクは技術研究と見積もりは完了済みですが、他の小さなタスクが残っており保留としているため、全体的な進捗は「Inprogress]としている。
2.0 | [All team] 見積もり
[All team] Estimate | Done | 2024-11-15 00:00:00
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 1 2 3 4 5 7 9]要件説明MTG
Trao đổi spec với khách | Done | 2024-11-13 00:00:00
2.0 | [No 6]No.6の仕様の作成
Tạo BD của No.6 | Todo | 2024-11-20 00:00:00
3.0 | [No 8]No.8の仕様の作成
Tạo BD của No.8 | Pending | - | 来週No.8の仕様を展開いただく予定です。
Dự kiến là tuần sau khách gửi spec No.8
4.0 | [No 1 2 3 4 5 7 9]基本設計書の作成
Tạo BD CR13 (ngoài No.6,8) | Done | 2024-11-15 00:00:00
5.0 | [No 1 2 3 4 5 7 9]チームに仕様を伝える
Transfer spec cho team | Done | 2024-11-18 00:00:00
6.0 | [No 1 2 3 4 5 7 9]　仕様の翻訳
[No 1 2 3 4 5 7 9][Document] Translate | Done | 2024-11-18 00:00:00
7.0 | [No 1 2 3 4 5 7] 開発者が技術を分析
[No 1 2 3 4 5 7][Dev] Analysis and Study Technical | Done | 2024-11-18 00:00:00
8.0 | [No 1 2 3 4 5 7] FE と BE の開発者が実装
[No 1 2 3 4 5 7][Dev][FE, BE] Implement | Inprogess | 2024-11-22 00:00:00
9.0 | [No 1 2 3 4 5 7] Scuti 側のテスターがテスト項目を作成
[No 1 2 3 4 5 7][Test] [Scuti] Write Testcase | Inprogess | 2024-11-22 00:00:00
CR12 Undo-redo バグの修正
CR 12 Fix bug undo-redo | Inprogess | - | PIC: Otake & Taishi
1.0 | Check spec
バグ報告シートの確認（2件）
Check bug list về undo-redo của khách (Đang có 2 bug) | Todo | - | CR No.13を優先で取り組んでいたので、今週から再開します。
-----------------------
Vì đã làm CR No.13 trước nên làm CR12 từ tuần nay
CR9 表の復活
CR 9 Add table again | Pending | - | PIC: Otake & Scuti
その他/Other | Done | - | PIC: Scuti
1.0 | 次の段階のマスタースケジュールの検討・作成
Create master schedules cho giai đoạn tiếp theo | Done | - | Master Schedule CR 13: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898
２．次の予定作業／Plan next week
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 6]No.6の仕様の作成
Tạo BD của No.6 | Todo | 2024-11-20 00:00:00
2.0 | [No 8]No.8の仕様の作成
Tạo BD của No.8 | Pending | - | 来週No.8の仕様を展開いただく予定です。
Dự kiến là tuần sau khách gửi spec No.8
3.0 | [No 1 2 3 4 5 7] FE と BE の開発者が実装
[No 1 2 3 4 5 7][Dev][FE, BE] Implement | Inprogess | 2024-11-22 00:00:00
4.0 | [No 1 2 3 4 5 7] Scuti 側のテスターがテスト項目を作成
[No 1 2 3 4 5 7][Test] [Scuti] Write Testcase | Inprogess | 2024-11-22 00:00:00
5.0 | [No 1 2 3 4 5 7] Otake 側でテスト実行 
[No 1 2 3 4 5 7][Test] [Otake] Run test | Todo | 2024-11-25 00:00:00
6.0 | [No 1 2 3 4 5 7] Scuti 側でバグ修正
[No 1 2 3 4 5 7][Dev] [Scuti] Fix bug | Todo | 2024-11-26 00:00:00
7.0 | [No 1 2 3 4 5 7] Scuti 側で STG 環境に反映
[No 1 2 3 4 5 7][Dev] [Scuti] [STG] Deploy | Todo | 2024-11-27 00:00:00
CR12 Undo-redo バグの修正
CR 12 Fix bug undo-redo | Inprogess | - | PIC: Otake & Taishi
1.0 | Check spec
バグ報告シートの確認（2件）
Check bug list về undo-redo của khách (Đang có 2 bug) | Todo | - | CR No.13を優先で取り組んでいたので、今週(11/21か11/22)から再開します。
内容確認後、見積もりをさせていただきます。
-----------------------
Vì đã làm CR No.13 trước nên làm CR12 từ tuần nay (11/21 or 11/22)
Làm estimate sau khi check nội dung
2.0 | Create basic design
 - 基本設計書の作成 | Todo | -
CR 5 Management classroom
CR5 授業管理 | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | Hearing spec with customer
-仕様のMTG | Todo | - | 11/21からスタートします。
Bắt đầu từ 11/21
CR9 表の復活
CR 9 Add table again | Pending | - | PIC: Otake & Scuti
CR 10 カテゴリーへのタグ追加
CR 10 Add tag of Category | Pending | - | PIC: Otake & Scuti
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 11132024
週次報告
Weekly Meeting
日時／Time: 13-Nov 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
全体的な進捗
■ CR 7のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
・進捗：オンスケ
■ CR 8 スクロール追加のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398
・進捗：オンスケ
■ CR 10：Scutiで見積もっている。

▼優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
CR 10の見積もりが決まりましたら、必要に応じて優先度を適切に変更していただける。
--------------------------------------
Tổng quan: 
CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - Tiến độ: Done
CR 8 Add Scroll: Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398
       - Tiến độ: Keep tiến độ

CR 10: Scuti đang estimate. 

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
       - Khách hàng sẽ dựa vào estimate của CR 10 để thay đổi độ ưu tiên cho phù hợp.
１．今週の作業内容（06-Nov-> 12-Nov）／Report task of this week (06-Nov-> 12-Nov）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR7 ペンとテキスト
CR 7 Pen and text | Done | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] [Test] Otake 様側で UAT 実行
[No 3 4 5 ] [Test] [Otake] UAT | Done | 2024-11-06 00:00:00 | 想定の締め切り
Deadline dự kiến
2.0 | [No 3 4 5 ] STG 環境でのバグ改修 (UAT) 
[No 3 4 5 ] Fix bugs môi trường STG (UAT) | Done | 2024-11-07 00:00:00 | 想定の締め切り
Deadline dự kiến
3.0 | [No 3 4 5 ] 本番環境に反映
[No 3 4 5 ] Deploy Production | Done | 2024-11-08 00:00:00 | 想定の締め切り
Deadline dự kiến
CR8 第一層と第二層にスクロールを追加
CR 8 Add Scroll bar on Tag 1 and Tag2 | Inprogess | - | PIC: Otake & Scuti
1.0 | [Dev] 開発者が実装する
[Dev] Implement | Done | 2024-11-11 00:00:00
2.0 | [Test] [Scuti] チェックリスト作成
[Test] [Scuti] Write Checklist | Done | 2024-11-08 00:00:00
3.0 | [Test] [Otake] テスト実行
[Test] [Otake] Run test | Done | 2024-11-12 00:00:00
4.0 | [Dev] [Scuti] バグ改修
[Dev] [Scuti] Fix bug | Done | 2024-11-13 00:00:00 | オータケ様側のテスト結果から問題やバグなどがないため、完了とする。
Do phía Otake không phát hiện ra bug nên coi như hoàn thành.
CR 11 Improve speed of loading slides
CR11 スライドの読み込み速度の改善 | Inprogess | - | PIC: Otake & Taishi
1.0 | Check information and analyse the problem
情報の確認と原因の分析 | Done | 2024-11-12 00:00:00 | 再現がしなかったため、ネットワークが不安定、端末の問題の可能性あり。
→今後トライアル時に再度問題が発生した場合、再調査を行う。
-----------------------
Vì không tái hiện được nên có thể là do mạng không ổn định, do device của user.
→Nếu user lại có vấn đề thì user báo bên Scuti để Scuti điều tra
CR 12 Fix bug undo-redo
CR12 Undo-redo バグの修正 | Inprogess | - | PIC: Otake & Taishi
1.0 | Check bug
バグ報告シートの確認（2件）
Check bug list về undo-redo của khách (Đang có 2 bug) | Inprogess | - | 本日からスタート。見積もりを作成した後、締切を決定します。
-----------------------
Bắt đầu từ hôm nay. Taishi gửi estimate làm BD trong hôm nay.
CR 9 Thêm lại Table
CR9 表の復活 | Pending | - | PIC: Otake & Scuti
２．次の予定作業／Plan next week
CR8 第一層と第二層にスクロールを追加
CR 8 Add Scroll bar on Tag 1 and Tag2 | Inprogess | - | PIC: Otake & Scuti
1.0 | [Dev] [Scuti] STG 環境に反映
[Dev] [Scuti] [STG] Deploy | Todo | 2024-11-14 00:00:00
2.0 | [Test] Otake様側で UAT 実行
[Test] [Otake] UAT | Todo | 2024-11-15 00:00:00
3.0 | [Dev] [Scuti] UATのバグを修正
[Dev] [Scuti] Fix bug UAT | Todo | 2024-11-18 00:00:00
4.0 | [Dev] [Scuti] 本番環境に反映
[Dev] [Scuti] [Production] Deploy | Todo | 2024-11-19 00:00:00
CR 10 カテゴリーへのタグ追加
CR 10 Add tag of Category | Inprogess | - | PIC: Otake & Scuti
1.0 | [Dev] 技術分析・研究
[Dev] Analysis and Study Technical | Inprogess | 2024-11-13 00:00:00 | CR 8 の進捗に影響がないと考えている。
Việc làm tas này không ảnh hưởng tới CR 8
2.0 | [All team] 見積もり
[All team] Estimate | Todo | 2024-11-15 00:00:00 | CR 8 の進捗に影響がないと考えている。
Việc làm tas này không ảnh hưởng tới CR 8
CR 12 Fix bug undo-redo
CR12 Undo-redo バグの修正 | Inprogess | - | PIC: Otake & Taishi
1.0 | Check spec
バグ報告シートの確認（2件）
Check bug list về undo-redo của khách (Đang có 2 bug) | Inprogess | - | 本日からスタート。見積もりを作成した後、締切を決定します。
-----------------------
Bắt đầu từ hôm nay. Taishi gửi estimate làm BD trong hôm nay.
2.0 | Create basic design
 - 基本設計書の作成 | Todo | - | もし開発側の手が止まってしまう場合、先に小さいCRを対応する。
--------------------
Nếu bên Dev bị stop task thì làm CR nhỏ nhỏ ( CR13) cho đến khi nào có BD của CR12
CR 9 Thêm lại Table
CR9 表の復活 | Pending | - | PIC: Otake & Scuti
その他/Other | Todo | - | PIC: Scuti
1.0 | 次の段階のマスタースケジュールの検討・作成
Create master schedules cho giai đoạn tiếp theo | Todo | - | CR 10 の見積もりが決まってから、タスク全体の優先度を決めていただく。その時の優先度に従って次の段階のマスタースケジュールを作成させていただく。
------------------------------
Tùy theo độ ưu tiên của khách hàng sau khi nhận estimate của CR 10, thì phía Scuti sẽ lên Master Schedule cho giai đoan tiếp theo.
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 11062024
週次報告
Weekly Meeting
日時／Time: 06-Nov 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん、佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, NgaNTQ
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
全体的：

🔳CR 7 のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775　
        ・進捗：オンスケ

🔳CR 8 のスクロール追加のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398
       ・進捗：オンスケ

優先度：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
ーーーーーーーーーーーーーーーーーーーーーーーーーー
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - Tiến độ: Keep tiến độ. 

CR Add Scroll: Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398
       - Tiến độ: Keep tiến độ

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
１．今週の作業内容（30-Oct-> 06-Nov）／Report task of this week (30-Oct-> 06-Nov）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7　ペンとテキスト
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] [Test] [Otake] UAT | Inprogess | 2024-11-01 00:00:00 | オータケ様側による11月6日完成予定のため進捗が遅れている
-----------
Chậm tiến độ do Otake dự kiến ngày 06/11 done
2.0 | [No 3 4 5 ] 開発環境でのバグ改修
[No 3 4 5 ] Fix bugs môi trường Dev | Done | 2024-11-04 00:00:00
3.0 | [No 3 4 5 ] STG 環境でのバグ改修 (UAT) 
[No 3 4 5 ] Fix bugs môi trường STG (UAT) | Inprogess | 2024-11-04 00:00:00 | 進捗が遅れている。オータケ様が11月6日にテスト完了する場合、UATのバグ修正は少なくともその1日後（7日）に完了する見込みである。
----------------
Nếu Otake dự kiến ngày 06/11 test done thì việc fix bug UAT sẽ dự kiến hoàn thành sau đó ít nhất 1 ngày.
4.0 | [No 3 4 5 ] 本番環境に反映
[No 3 4 5 ] Deploy Production | Pending | 2024-11-05 00:00:00 | UATが完了していないため、保留にしている。
----------------
Pending do chưa tiến hành test UAT xong.
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Scuti
1.0 | 開発者が技術調査を行う
[Dev] Research technical | Done | 2024-10-31 00:00:00
2.0 | [All Team] CR 9 の見積もり
[All Team] Estimate CR 9 | Done | 2024-11-01 00:00:00 | Scuti が CR 9 の見積書を送付した。
https://docs.google.com/spreadsheets/d/1moEeIc3xo0PMFsdbrDiQvXOf9hcRZFDvYM1Sq-cWafY/edit?gid=916668589#gid=916668589&range=5:5
------------------
Phía Scuti đã gửi estimate cho CR 9: 
https://docs.google.com/spreadsheets/d/1moEeIc3xo0PMFsdbrDiQvXOf9hcRZFDvYM1Sq-cWafY/edit?gid=916668589#gid=916668589&range=5:5
CR 8 Add Scroll bar on Tag 1 and Tag2
第一層と第二層にスクロールを追加 | Inprogess | - | PIC: Otake & Taishi & Scuti
1.0 | 見積もり、マスタースケジュールを作成する　
Estimate và lên master schedule | Done | 2024-11-05 00:00:00 | Scuti が 以下のものを送付した。
Phía Scuti đã gửi: 
-------------------
・見積書：https://docs.google.com/spreadsheets/d/1moEeIc3xo0PMFsdbrDiQvXOf9hcRZFDvYM1Sq-cWafY/edit?gid=916668589#gid=916668589&range=6:6
・マスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=1195187398#gid=1195187398
2.0 | オータケ様側とScuti内部で仕様の確認
Check spec with dev and customer | Done | 2024-11-05 00:00:00
3.0 | 設計書の作成
Make BD | Done | 2024-11-05 00:00:00
CR 11 Improve speed of loading slides
CR11 スライドの読み込み速度の改善 | Inprogess | - | PIC: Otake & Taishi
1.0 | 情報受け取り待ち
Đang đợi khách cung cấp thông tin | Done | 2024-11-05 00:00:00
2.0 | Check information and analyse the problem
情報の確認と原因の分析 | Inprogess | 2024-11-13 00:00:00 | 本日より開始
２．次の予定作業／Plan next week
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] [Test] [Otake] UAT | Inprogess | 2024-11-06 00:00:00 | 想定の締め切り
---------------
Deadline dự kiến
2.0 | [No 3 4 5 ] STG 環境でのバグ改修 (UAT) 
[No 3 4 5 ] Fix bugs môi trường STG (UAT) | Inprogess | 2024-11-07 00:00:00 | 想定の締め切り
---------------------
Deadline dự kiến
3.0 | [No 3 4 5 ] 本番環境に反映
[No 3 4 5 ] Deploy Production | Todo | 2024-11-08 00:00:00 | 想定の締め切り
----------------------
Deadline dự kiến
CR 9 Thêm lại Table
CR9 表の復活 | Pending | - | PIC: Otake & Scuti
CR 8 Add Scroll bar on Tag 1 and Tag2
第一層と第二層にスクロールを追加 | Inprogess | - | PIC: Otake & Scuti
1.0 | 開発者が実装する
[Dev] Implement | Todo | 2024-11-11 00:00:00
2.0 | [Test] [Scuti] チェックリスト作成
[Test] [Scuti] Write Checklist | Todo | 2024-11-08 00:00:00
3.0 | [Test] [Otake] テスト実行
[Test] [Otake] Run test | Todo | 2024-11-12 00:00:00
4.0 | [Dev] [Scuti] バグ改修
[Dev] [Scuti] Fix bug | Todo | 2024-11-13 00:00:00
CR 11 Improve speed of loading slides
CR11 スライドの読み込み速度の改善 | Inprogess | - | PIC: Otake & Taishi
1.0 | Check information and analyse the problem
情報の確認と原因の分析 | Inprogess | 2024-11-13 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
2024年11月より、Scuti のテスターの工数が0.25人月となったため、今後の方針としては以下の対応を想定しております。
・オータケ様のテスターが主にテストを実行し、テスト過程で弊社のテスターに工数が残った場合、または、オータケ様から追加テストのご依頼があった場合、Scuti がテストをサポートいたします。
・今後のマスタースケジュールには、Scuti によるテスト実行タスクがなくなります。こちらにテストを依頼したい場合、各CRごとにご連絡いただくようお願いいたします。
・品質を確保するために、Scuti のテスターはチェックリストの代わりにテストケースを作成するようにいたします。（スクロール追加のCRの後に対応する予定です）
ーーーーーーーーーーーーーーーーーーーー
Với effort từ tháng 11/2024 tester phía Scuti sẽ chỉ còn 0.25 MM nên phía Scuti dự định: 
- Tester phía Otake sẽ đảm nhận chính vai trò Run test, trong quá trình test nếu phía Scuti vẫn còn effort và khách hàng cần Scuti test thêm thì phía Scuti sẽ support. 
- Trong master schedules từ nay về sau mặc định sẽ không có task Run test của Scuti nữa, nếu khách hàng cần bên mình test thì nhờ khách hàng thông báo cho từng CR. 
- Để đảm bảo chất lượng phía Tester Scuti sẽ chuyển từ việc viết Checklist sang viết Testcase.  (Sẽ chuyển sau CR Add Scroll)
## Sheet: 10292024
週次報告
Weekly Meeting
日時／Time: 30-Oct 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Nga NTQ
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
全体的：

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5：オンスケ

優先度:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77

=================================
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: Keep tiến độ. 

Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=53:77
１．今週の作業内容（17-Oct-> 22-Oct）／Report task of this week (17-Oct-> 22-Oct）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] [Test] [Otake] テスト実行
=============================
[No 3 4 5 ] [Test] [Otake] Run test | Done | 2024-10-25 00:00:00
2.0 | [No 3 4 5 ] バグ改修
===============
[No 3 4 5 ] Fix bugs | Inprogess | 2024-10-28 00:00:00 | ・想定より難しいバグがあったため、オータケ様側のUATテスト実行と並行にScutiが残バグを改修するように調整させていただきました。
・UATのバグ改修完了日とあわせて 11/04までに完了させる予定
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=454192775#gid=454192775&range=62:62 
==============================
- Do tồn tại bug khó hơn dự kiến, nên phía Scuti đã xin lùi lịch fix bug song song với việc khách hàng test UAT. 
- Dự kiến việc fix bug này sẽ hoàn thành cùng deadline với task fix bug UAT nếu có 11/04
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=454192775#gid=454192775&range=62:62
3.0 | [No 3 4 5 ] STGに反映
===============
[No 3 4 5 ] Deploy on STG | Done | 2024-10-29 00:00:00
4.0 | [No 3 4 5 ] Tiến hành làm CR cải thiện thêm [Bugs management No 5]
https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=550362903#gid=550362903&range=6:6
======================
[No 3 4 5 ] 改善事項を実施
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=86:86 | Done | 2024-10-23 00:00:00 | 10/23日まで完了予定
===================
Dự kiến xong trong ngày 10/23
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi
1.0 | 開発者が技術調査を行う
====================
[Dev] Research technical | Inprogess | 2024-10-31 00:00:00 | 10/31に終了する予定
本件はCR 7 No 3 4 5 の進捗に影響がないと判断している
======================
Dự kiến kết thúc ngày 10/31. 
Task không ảnh hưởng tới tiến độ CR 7 No 3 4 5
CR 10 Add Tag 3,4 in Category
CR10 カテゴリーに第三層、第四層タグを追加 | Done | - | PIC: Otake & Tashi
1.0 | 基本設計書作成
Scutiチームに仕様を伝える
=================
Create basic design
-Meeting tranfer for Scuti team | Done | 2024-10-24 00:00:00
2.0 | MTGを行い、基本設計書の完成
============
Finish basic design
-Meeting confirm with Customer chốt lần cuối BD | Done | 2024-10-28 00:00:00
CR 8 Add Scroll bar on Tag 1 and Tag2
第一層と第二層にスクロールを追加 | Inprogess | - | PIC: Otake & Tashi
1.0 | スクロールバーを追加したUIのすり合わせ
======================
Discuss UI thêm scroll bar trong tag 1 và tag 2 | Inprogess | 2024-10-30 00:00:00 | ASUS ,Chromebook,iPadでの見え方は本日中にお送りします。
=====================
Trong hôm nay gửi cho khách UI của ASUS, Chromebook, iPad khi thêm thử scroll bar
CR 11 Improve speed of loading slides
CR11 スライドの読み込み速度の改善 | Pending | - | PIC: Otake & Tashi
1.0 | 情報受け取り待ち
=============
Đang đợi khách cung cấp thông tin | Pending | - | 以下の情報が必要
・インターネット回線の速度
・使用したスライドの内容
・当日のユーザ数
・使用している端末名、OSバージョン
=================

Cần thông tin dưới
・Tốc độ internet
・Nội dung của các slide đã sử dụng
・Số lượng người dùng 
・Tên thiết bị đang sử dụng và OS version
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] [Test] [Otake] UAT | Todo | 2024-11-01 00:00:00
2.0 | [No 3 4 5 ] 開発環境でのバグ改修
[No 3 4 5 ] Fix bugs môi trường Dev | Inprogess | 2024-11-04 00:00:00
3.0 | [No 3 4 5 ] STG 環境でのバグ改修 (UAT) 
[No 3 4 5 ] Fix bugs môi trường STG (UAT) | Todo | 2024-11-04 00:00:00
4.0 | [No 3 4 5 ] 本番環境に反映
[No 3 4 5 ] Deploy Production | Todo | 2024-11-05 00:00:00
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Scuti
1.0 | 開発者が技術調査を行う
[Dev] Research technical | Inprogess | 2024-10-31 00:00:00
2.0 | [All Team] CR 9 の見積もり
[All Team] Estimate CR 9 | Inprogess | 2024-11-01 00:00:00 | CR 7 No 3 4 5 の進捗に影響がないと判断している
=================================
Task không ảnh hưởng tới tiến độ CR 7 No 3 4 5
CR 8 Add Scroll bar on Tag 1 and Tag2
第一層と第二層にスクロールを追加 | Inprogess | - | PIC: Otake & Tashi
1.0 | スクロールバーを追加してみたUIを共有
Share UI thêm scroll bar trong tag 1 và tag 2 | Inprogess | 2024-10-30 00:00:00 | ASUS ,Chromebook,iPadでの見え方は本日中にお送りします。
================================
Trong hôm nay gửi cho khách UI của ASUS, Chromebook, iPad khi thêm thử scroll bar
CR 11 Improve speed of loading slides
CR11 スライドの読み込み速度の改善 | Todo | - | PIC: Otake & Tashi
1.0 | 情報受け取り待ち
Đang đợi khách cung cấp thông tin 
→10/30情報を受け取ったので、確認を行う | Todo | - | 以下の情報が必要
・インターネット回線の速度
・使用したスライドの内容
・当日のユーザ数
・使用している端末名、OSバージョン

Cần thông tin dưới
・Tốc độ internet
・Nội dung của các slide đã sử dụng
・Số lượng người dùng 
・Tên thiết bị đang sử dụng và OS version
️Bug undo-redo
Undo-redoのバグ | Todo | - | PIC: Otake & Tashi
1.0 | バグ報告シートの確認（2件）
Check bug list về undo-redo của khách (Đang có 2 bug) | Todo | - | CR11の情報を受け取るまではこちらを対応します。
Làm bug undo-redo cho đến khi nào có thông tin về CR11
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 10222024
週次報告
Weekly Meeting
日時／Time: 22-Oct 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: Keep tiến độ. 

Độ ưu tiên: 
-CR 9 (Basic design)
-CR 10  (Basic design)
-Bug undo-redo (Basic design)
-Bug undo-redo (Dev)
-CR 5 ( Basic Design )
-CR 9 (Dev)
-CR 5 (Dev)
-CR 10 (Dev)
----------------------
全体的：
CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5:オンスケ

優先度（前回と更新あり）: 
-CR 9 (Basic design)
-CR 10  (Basic design)
-Bug undo-redo (Basic design)
-Bug undo-redo (Dev)
-CR 5 ( Basic Design )
-CR 9 (Dev)
-CR 5 (Dev)
-CR 10 (Dev)
１．今週の作業内容（17-Oct-> 22-Oct）／Report task of this week (17-Oct-> 22-Oct）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] Scuti Hoàn thành test theo checklist 
[No 3 4 5 ] Scuti側が開発環境でのテストを完了にする | Done | 2024-10-22 00:00:00 | Phía Scuti đã hoàn thành phần test của mình. 
Phần test của khách hàng sẽ chuyển từ 10/22 sang 10/25
----
Scuti側のみ完了にした。
オータケ様側のテストが10/25日まで延長にした。
2.0 | [No 3 4 5 ] Fix bugs
バグ改修 | Inprogess | 2024-10-28 00:00:00 | Change schedule from 10/23 to 10/ 28
上記の変更により、バグ改修期間が23日から28日に変更した。
3.0 | [No 3 4 5 ] Update master Schedule | Done | 2024-10-21 00:00:00 | Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=454192775#gid=454192775
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
-[Dev] Research technical
開発者が技術調査を行う | Pending | -
CR 10 Add Tag 3,4 in Category
CR10 カテゴリーに第三層、第四層タグを追加 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具使用時 | Done | 2024-10-17 00:00:00
2.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具登録・編集時 | Done | 2024-10-18 00:00:00
3.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具一覧の検索時 | Done | 2024-10-22 00:00:00
4.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-10-24 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] [Test] [Otake] Run test 
[No 3 4 5 ] [Test] [Otake] テスト実行 | Inprogess | 2024-10-25 00:00:00
2.0 | [No 3 4 5 ] Fix bugs
バグ改修 | Inprogess | 2024-10-28 00:00:00
3.0 | [No 3 4 5 ] Deploy on STG
[No 3 4 5 ] STGに反映 | Todo | 2024-10-29 00:00:00
4.0 | [No 3 4 5 ] Tiến hành làm CR cải thiện thêm [Bugs management No 5]
https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=550362903#gid=550362903&range=6:6
-----------------
[No 3 4 5 ] 改善事項を実施
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1556530206&range=86:86 | Todo | 2024-10-23 00:00:00 | Dự kiến xong trong ngày 10/23
10/23日まで完了予定
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
-[Dev] Research technical
開発者が技術調査を行う | Todo | - | Dự kiến mất 1 tuần làm việc, thời gian cụ thể thì khi bắt đầu nghiên cứu sẽ báo
Bắt đầu tiến hành từ ngày 10/24
------------
1週間ぐらいかかる見込み。開始日が分かり次第連絡させていただく。
10/24日から開始予定
CR 10 Add Tag 3,4 in Category
CR10 カテゴリーに第三層、第四層タグを追加 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Inprogess | 2024-10-24 00:00:00
CR 11 Improve speed of loading slides
CR11 スライドの読み込み速度の改善 | Inprogess | - | PIC: Otake & Tashi
1.0 | 事象の確認
Check thông tin khách cung cấp | Inprogess | -
2.0 | 分析
Phân tích | Inprogess | - | 事象の確認後、分析します。
必要に応じて開発側と話し合い仕様の決定を行います。
Sau khi check thông tin thì phân tích nó.
Nếu cần thì check với dev để đề xuất spec
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 10162024
週次報告
Weekly Meeting
日時／Time: 16-Oct 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: Keep tiến độ. 

Độ ưu tiên: 
        - CR 7
        - CR9 (thêm lại Table)
        - CR10 (thêm tag cấp 3, 4 trong cuộc sống thưởng ngày)
        - CR5 (Quản lý lớp học)

※Undo-redo thì khách bảo tạm thời pending.

----------------------
全体まとめ：
CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: オンスケ
優先度は以下: 
        - CR 7
        - CR9 (表の追加)
        - CR10 (カテゴリーの第3層と第4層を追加）
        - CR5 (授業管理）

※Undo-redoがお客様の要望により保留中
１．今週の作業内容（02-Oct-> 09-Oct）／Report task of this week (02-Oct-> 09-Oct）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Done | 2024-10-15 00:00:00 | Hoàn thành coding
完了
2.0 | [No 3 4 5 ] Triển khai viết checklist  theo master Schedule
マスタースケジュールの日程に従って、チェックリスト作成
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Done | 2024-10-15 00:00:00 | Hoàn thành viết checklist
完了
3.0 | [No 3 4 5 ] Phân chia checklist cho hai bên Scuti - Otate
Scuti-Otakeのチェックリスト見分け | Done | 2024-10-11 00:00:00
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
-[Dev] Research technical
開発者が技術調査を行う | Pending | - | Dự kiến dev sẽ điều tra sau khi fix bug xong của CR 7 No 3 4 5 vào ngày 23/10
CR7 No.3,4,5のバグ修正後の10/23から開始予定
CR 10 Add Tag 3,4 in Category
CR10 カテゴリーに第三層、第四層タグを追加 | Inprogess | - | PIC: Otake & Tashi
1.0 | Hearing spec
 - MTG with customer | Done | 2024-10-15 00:00:00
2.0 | Create basic design
 - List up screen and scope 
   対応画面、権限のリストアップ | Done | 2024-10-15 00:00:00
3.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具使用時 | Inprogess | 2024-10-17 00:00:00 | 50%完了
hoàn thành 50%
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 3 4 5 ] Hoàn thành test theo checklist từ cả phía Scuti và Otake
チェックリストのテストを完了させる | Todo | 2024-10-22 00:00:00
2.0 | [No 3 4 5 ] Fix bugs
バグ改修 | Todo | 2024-10-23 00:00:00
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
-[Dev] Research technical
開発者が技術調査を行う | Pending | - | Dự kiến dev sẽ điều tra sau khi fix bug xong của CR 7 No 3 4 5 vào ngày 23/10
CR7 No.3,4,5のバグ修正後の10/23から開始予定
CR 10 Add Tag 3,4 in Category
CR10 カテゴリーに第三層、第四層タグを追加 | Inprogess | - | PIC: Otake & Tashi
1.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具使用時 | Inprogess | 2024-10-17 00:00:00
2.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具登録・編集時 | Todo | 2024-10-18 00:00:00
3.0 | Create basic design
 - Add UI
   UIをまとめる
   カテゴリーのデジタル教具一覧の検索時 | Todo | 2024-10-22 00:00:00
4.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Todo | 2024-10-24 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 10092024
週次報告
Weekly Meeting
日時／Time: 09-Oct 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: Keep tiến độ. 

Độ ưu tiên: 
        - CR 7
        - CR9 (thêm lại Table)
        - CR10 (thêm tag cấp 3, 4 trong cuộc sống thưởng ngày)
        - CR5 (Quản lý lớp học)

※Undo-redo thì khách bảo tạm thời pending.

----------------------
全体まとめ：
CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: オンスケ
優先度は以下: 
        - CR 7
        - CR9 (表の追加)
        - CR10 (カテゴリーの第3層と第4層を追加）
        - CR5 (授業管理）

※Undo-redoがお客様の要望により保留中
１．今週の作業内容（02-Oct-> 09-Oct）／Report task of this week (02-Oct-> 09-Oct）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Coding khoảng 50%
50％ぐらいまで実装
2.0 | [No 3 4 5 ] Triển khai viết checklist  theo master Schedule
マスタースケジュールの日程に従って、チェックリスト作成
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Viết check list khoảng 30%
30％ぐらいまで作成
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Create basic design
-Make matrix about the table function (Teacher and Student)
表機能のマトリックスの作成（先生と生徒） | Done | 2024-10-02 00:00:00
2.0 | Create basic design
-Integration plan with CR7 No.3
CR7 No.3との統合案 | Done | 2024-10-02 00:00:00
3.0 | Create basic design
-List up technical check (rotate, cells shrink when text is deleted in the cell, etc.)
技術チェック（回転、セル内のテキストを削除するとセルが縮むなど）箇所のリストアップ | Done | 2024-10-04 00:00:00
4.0 | Create basic design
-Warning section (current bug)
警告セクション（現在のバグ） | Done | 2024-10-07 00:00:00
5.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Done | 2024-10-07 00:00:00
6.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Done | 2024-10-08 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Hoàn thành coding
完了させる
2.0 | [No 3 4 5 ] Triển khai viết checklist  theo master Schedule
マスタースケジュールの日程に従って、チェックリスト作成
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Hoàn thành viết checklist
完了させる
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Create basic design
-[Dev] Research technical
開発者が技術調査を行う | Todo | - | Đang sắp xếp effort
CR7対応中なので、リソースを調整中
2.0 | Update basic design
-Update documents
ドキュメントの更新 | Pending | - | Update after check technical
技術調査後に更新

Deadline phụ thuộc vào task research technical
3.0 | Finish basic design
-Meeting confirm with Customer chốt lần cuối BD
 MTGを行い、基本設計書の完成 | Pending | - | Update after check technical
技術調査後に更新

Deadline phụ thuộc vào task research technical
CR 10 Add Tag 3,4 in Category
CR10 カテゴリーに第三層、第四層タグを追加 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tạo master schedule đến finish làm BD
基本設計書作成までのマスタースケジュールの作成 | Todo | 2024-10-11 00:00:00
2.0 | Hearing + check spec, QA nếu cần
仕様の整理、疑問点の確認 | Todo | - | マスタースケジュールの作成後に更新
Cập nhật sau khi có master schedule của BD CR10
3.0
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 10022024
週次報告
Weekly Meeting
日時／Time: 02-Oct 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: Keep tiến độ. 

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - No 6: Pending theo yêu cầu khách hàng. 

Độ ưu tiên: 
        - CR 7
        - CR9 (thêm lại Table)
        - CR10 (thêm tag cấp 3, 4 trong cuộc sống thưởng ngày)
        - CR5 (Quản lý lớp học)

※Undo-redo thì khách bảo tạm thời pending.
-------------
全体まとめ：
CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 3, 4 , 5: オンスケ

至急対応バグ一覧: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - No 6: 両側の再現状況が異なっているし、お客様からの要望も保留にするので一旦保留になっている。

優先度は以下: 
        - CR 7
        - CR9 (表の追加)
        - CR10 (カテゴリーの第3層と第4層を追加）
        - CR5 (授業管理）

※Undo-redoがお客様の要望により保留中
１．今週の作業内容（25-Sep-> 01-Oct）／Report task of this week (25-Sep-> 01-Oct）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Keep tiến độ. 
Hiện được khoảng 25%
------------
オンスケ。25％ぐらいできた。
2.0 | [No 3 4 5 ] Triển khai viết checklist  theo master Schedule
マスタースケジュールの日程に従って、チェックリスト作成
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Keep tiến độ. 
Hiện được khoảng 10%
--------------
オンスケ。10％ぐらいできた。
3.0 | Release No 2 lên Production
本番にNo２を反映 | Done | 2024-10-01 00:00:00
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Hearing spec
 - MTG with customer | Done | 2024-09-26 00:00:00
2.0 | Create basic design
 - Add UI
   UIをまとめる | Done | 2024-09-30 00:00:00
3.0 | Create basic design
- Non-integration plan with CR7 No.3
   CR7 No.3との非統合案 | Done | 2024-09-30 00:00:00
4.0 | Create basic design
-Make matrix about the table function (Teacher and Student)
表機能のマトリックスの作成（先生と生徒） | Inprogess | 2024-10-02 00:00:00
5.0 | Create basic design
-Integration plan with CR7 No.3
CR7 No.3との統合案 | Inprogess | 2024-10-02 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Coding khoảng 50%
50％ぐらいまで実装
2.0 | [No 3 4 5 ] Triển khai viết checklist  theo master Schedule
マスタースケジュールの日程に従って、チェックリスト作成
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | Viết check list khoảng 30%
30％ぐらいまで作成
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Create basic design
-Make matrix about the table function (Teacher and Student)
表機能のマトリックスの作成（先生と生徒） | Inprogess | 2024-10-02 00:00:00 | Keep tiến độ. 
Hiện được khoảng 50%
スケジュール通り。
進捗は50%
2.0 | Create basic design
-Integration plan with CR7 No.3
CR7 No.3との統合案 | Inprogess | 2024-10-02 00:00:00 | Keep tiến độ. 
Hiện được khoảng 50%
スケジュール通り。
進捗は50%
3.0 | Create basic design
-List up technical check (rotate, cells shrink when text is deleted in the cell, etc.)
技術チェック（回転、セル内のテキストを削除するとセルが縮むなど）箇所のリストアップ | Todo | 2024-10-04 00:00:00
4.0 | Create basic design
-Warning section (current bug)
警告セクション（現在のバグ） | Todo | 2024-10-07 00:00:00
5.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Todo | 2024-10-07 00:00:00
6.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Todo | 2024-10-08 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 09252024
週次報告
Weekly Meeting
日時／Time: 25-Sep 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Done
        - No 2: Done   
        - No 3, 4 , 5: Start coding từ ngày 09/24

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - Đã fix xong bug UAT của No 6, đang chờ khách hàng test lại. 

Độ ưu tiên: 
        - CR 7
        - CR9 (thêm lại Table)
        - CR10 (thêm tag cấp 3, 4 trong cuộc sống thưởng ngày)
        - CR5 (Quản lý lớp học)

※Undo-redo thì khách bảo tạm thời pending.
-------------
全体まとめ: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: 完了
        - No 2: 完了
        - No 3, 4 , 5: 09/24日から開始した。

至急対応バグ一覧: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        -STGで No 6を再度、修正して、反映し直したので、再確認の結果待ち

優先度は以下: 
        - CR 7
        - CR9 (表の追加)
        - CR10 (カテゴリーの第3層と第4層を追加）
        - CR5 (授業管理）

※「もどり」・「すすみ」は一旦保留にしている。
１．今週の作業内容（18-Sep-> 24-Sep）／Report task of this week (18-Sep-> 24-Sep）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Fix bug UAT 
------------
縦書きに関する表示ミス改修
UATバグ改修 | Done | 2024-09-19 00:00:00 | Dự kiến deadline 09/19, hoàn thành vào ngày 9/23
期限が9/19だと予想したが、テスト期間が延長されたため、バグの改修が9/23日の一日に実施した。
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Estimate phần lỗi cũ Chữ Đậm + Gạch chân + No 47 trong file Bugs Management
------------
縦書きに関する表示ミス改修
既存バグ（太文字とアンダーバー）とNo47のバグを見積もり | Inprogess | - | - Trong các thời gian từ ngày 09/18 ~ 09/23 khi có thời gian bên mình đều tận dụng nghiên cứu task này. 
- Từ ngày 09/24 tạm thời pending theo độ ưu tiên khách hàng.
-------------
・9/18～9/23間に、空きの工数があったら、見積もりための技術調査を行いました。
・9/24日時点に優先度が高い別のタスクがでたので、保留
3.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-30 00:00:00 | - Scuti đã update master schedules https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
- Đã bắt đầu coding từ ngày 09/24
-------------
・更新したマスタースケジュール：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775　
・9/24日から実装開始した。
Trao đổi làm basic Design cho chức năng Undo Redo
 Undo RedoのBDについて相談 | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | 基本設計書の作成
Tạo BD | Pending | - | 9/24に優先度がCR9→CR10→CR5に変わったので中断
ngày 24/09 thay đổi ưu tiên từ CR9→CR10→CR5 nên đã pending
2.0 | 随時チームや佐々木さんと確認を行う
Confirm với khách và team | Pending | -
CR 5 Management classroom
CR5 授業管理 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Check spec CR 5
CR5の仕様確認 | Done | 2024-09-19 00:00:00
2.0 | Hearing spec mới của CR5
CR5の新しい仕様のヒアリング | Inprogess | - | 9/24に優先度がCR9→CR10→CR5に変わったので中断
ngày 24/09 thay đổi ưu tiên từ CR9→CR10→CR5 nên đã pending
3.0 | Estimate CR5 (Basic design)
基本設計書完了までの時間の見積もりを提出 | Todo | 9/24に優先度がCR9→CR10→CR5に変わったので中断
ngày 24/09 thay đổi ưu tiên từ CR9→CR10→CR5 nên đã pending
4.0 | Q&A and confirm spec CR 5
必要に応じてQAを行う | Inprogess | - | 9/24に優先度がCR9→CR10→CR5に変わったので中断
ngày 24/09 thay đổi ưu tiên từ CR9→CR10→CR5 nên đã pending
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Estimate phần lỗi cũ Chữ Đậm + Gạch chân + No 47 trong file Bugs Management
------------
縦書きに関する表示ミス改修
既存バグ（太文字とアンダーバー）とNo47のバグを見積もり | Pending | -
2.0 | [No 3 4 5 ] Triển khai coding theo master Schedule
更新したマスタースケジュールをベースに、実装中
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | - Scuti đã update master schedules https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
- Đã bắt đầu coding từ ngày 09/24
-------------
・更新したマスタースケジュール：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775　
・9/24日から実装開始した。
3.0 | [No 3 4 5 ] Triển khai viết checklist  theo master Schedule
マスタースケジュールの日程に従って、チェックリスト作成
 https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Inprogess | 2024-10-15 00:00:00 | - Scuti đã update master schedules https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
- Đã bắt đầu coding từ ngày 09/24
-------------
・更新したマスタースケジュール：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775　
・9/24日から実装開始した。
CR 9 Thêm lại Table
CR9 表の復活 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 表の昔の仕様の確認
Check spec của table | Inprogess | 2024-09-25 00:00:00
2.0 | CR7 No.3との共存が可能か確認
（テキストの枠を文字数に応じて縮小させる）
Check có thể tích hợp với spec CR7 No.3 | Inprogess | 2024-09-27 00:00:00 | もし技術確認があるなら、別の時間として切り出します。
Nếu cần check technical kỹ thì tách ra với task này (vì task nay em set deadline là 27/09)
3.0 | 基本設計書の作成完了の見積もり提出
Gửi estimate làm BD | Todo | 2024-09-27 00:00:00
4.0 | 基本設計書の作成
Làm BD CR9 | Todo | - | 基本設計書の見積もり後に更新します。
Sau khi có estimate của BD CR9 thì cập nhật deadline
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | Check spec CR 5
新規の仕様を含めて、CR5の仕様確認 | Pending | - | CR9(テーブルの追加)
CR10(カテゴリーのデジタル教具に第三層と第四層を追加)
CR5(授業管理)
を優先するため、CR5は一旦後回しになりました。
Vì làm CR9,10,5 trước nên CR5 làm sau
2.0 | Check technical CR 5
新規の仕様を含めて、CR5の技術確認 | Pending | - | CR9(テーブルの追加)
CR10(カテゴリーのデジタル教具に第三層と第四層を追加)
CR5(授業管理)
を優先するため、CR5は一旦後回しになりました。
Vì làm CR9,10,5 trước nên CR5 làm sau
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 09182024
週次報告
Weekly Meeting
日時／Time: 18-Sep 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Done
        - No 2: Coding 100%, khách hàng đang UAT.   
        - No 3, 4 , 5: Đã nghiên cứu công nghệ xong, ưu tiên làm sau No 2.

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - Đã fix xong bug UAT của No 6, đang chờ khách hàng test lại. 
Độ ưu tiên: 
        - CR 7 No 1, 2
        - Xoá tag trên môi trường production , sửa bug khách log. 
        - CR 7 No. 3,4,5
        - CR 5
-------------
全体まとめ: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Done
        - No 2: 実装完了ずみ。UAT実施中  
        - No 3, 4 , 5: スタディー終了した。No２の後に着手

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - No 6のUATバグを再度修正した。再確認していただいている。
優先度は以下: 
        - CR 7 No 1, 2
        -本番のタグ削除（完了）・バグ一覧改修
        - CR 7 No. 3,4,5
        - CR 5
１．今週の作業内容（21-Aug-> 27-Aug）／Report task of this week (21-Aug-> 27-Aug）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | /
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Fix bug của khách hàng test
-----------
縦書きに関する表示ミス改修
お客様のバグ修正 | Done | 2024-09-16 00:00:00
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Khách hàng test trên môi trường Dev
--------------
縦書きに関する表示ミス改修
お客様が開発環境でテスト実施 | Done | 2024-09-13 00:00:00
3.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Deploy STG
-----------------
縦書きに関する表示ミス改修
STG反映 | Done | 2024-09-16 00:00:00
4.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Khách hàng UAT 
------------
縦書きに関する表示ミス改修
UAT実施 | Inprogess | 2024-09-18 00:00:00 | Deadline dự kiến là 9/18.
------------
期限が9/18日だと予想した。
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu 4 service: 
- CloudWatch
- Virtual Private Cloud
- Elastic Load Balancing
- Data Transfer
-------------
以下の４つサービスをスタディー
- CloudWatch
- Virtual Private Cloud
- Elastic Load Balancing
- Data Transfer | Done | 2024-09-18 00:00:00 | 結果まとめファイル：
 https://docs.google.com/spreadsheets/d/1j0me5MBJ8XJoNjowlX0zAzvmrMMo8DyIFOhAZPgOGPc/edit?gid=202938674#gid=202938674
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Fix UAT cho 2 bug No 3, No 6 sau khi đưa lên STG
------------
No.3,6のUATバグ（あれば）修正 | Done | 2024-09-16 00:00:00 | Đã deploy STG ngày 09/17
----------
9/17日にSTGに反映した。
Trao đổi làm basic Design cho chức năng Undo Redo
 Undo RedoのBDについて相談 | Done | - | PIC: Otake & Tashi & Scuti
1.0 | Confirm spec về undo-redo
もどり・すすみ機能の仕様について確認 | Done | 2024-09-13 00:00:00 | Undo -Redoに関する仕様をチームと確認する
Confirm spec về undo-redo với team
2.0 | Estimate spec undo-redo (Basic design) | Done | 2024-09-17 00:00:00 | UndoーRedoの内容と見積もりを行う
Check nội dung bug undo-redo + estimate spec mới của undo-redo.

基本設計書作成までの見積もり結果：_x0010_約40時間
内訳：
・モニタリングとグループ学習それぞれの影響確認
・先生と生徒、それぞれの権限での確認
・undo-redoの対象オブジェクト（ペン、テキスト、オブジェクト）それぞれのケースの確認
・undo-redo時の状態（ロック、アンロック、反転、フォーカス、移動、回転、削除、複製）の影響確認
・チームと佐々木さんと確認


Thời gian dự kiến ​​để tạo tài liệu thiết kế cơ bản: Khoảng 40 giờ
Chi tiết:
・Xác nhận ảnh hưởng của monitoring và học nhóm
・Xác nhận ảnh hưởng của giáo viên và học sinh 
・Xác nhận từng trường hợp object (bút, văn bản, digital tool)
・Xác nhận ảnh hưởng của trạng thái (khóa, mở khóa, đảo ngược, focus-unfocus, di chuyển, xoay, xóa, sao chép) 
・Xác nhận với team và ông Sasaki
CR 5 Management classroom
CR5 授業管理 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Check spec CR 5
CR5の仕様確認 | Inprogess | 2024-09-19 00:00:00
2.0 | Estimate CR5 (Basic design)
基本設計書完了までの時間の見積もりを提出 | Todo | 2024-09-20 00:00:00
3.0 | Q&A and confirm spec CR 5
必要に応じてQAを行う | Todo | - | Có QA thì hỏi cho khách hàng
不明点があれば確認
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Fix bug UAT 
------------
縦書きに関する表示ミス改修
UAT実施 | Todo | 2024-09-19 00:00:00 | Dự kiến deadlin 09/19
期限が9/19だと予想
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Estimate phần lỗi cũ Chữ Đậm + Gạch chân + No 47 trong file Bugs Management
------------
縦書きに関する表示ミス改修
既存バグとNo47のバグを見積もり | Todo | - | Deadline dự kiến là 9/18.
------------
期限が9/18日だと予想した。
3.0 | [No 3 4 5 ] 
- master schedule https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775&range=39:50 | Todo | 2024-10-11 00:00:00 | Nếu không có độ ưu tiên chen ngang, phía Scuti sẽ tiếp tục làm No 3 4 5 theo kế hoạch. 
優先度が高い他のタスクがない場合、スケージュール通りNo3,4,5実装
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Pending | - | Pending, ưu tiên chuyển 0.75 BE sang FE để làm CR 7 No 3 4 5
-----
0.75BEをFEにスライドして、CR 7 No 3 4 5を優先させるため、一旦ストップ
Trao đổi làm basic Design cho chức năng Undo Redo
 Undo RedoのBDについて相談 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 基本設計書の作成
Tạo BD | Todo | CR5との見積もり結果次第で、undo-redoを先に行うか後に行うかを決定する。
Làm BD CR5 trước hoặc BD undo-redo trước thì tuỳ kết quả của estimate CR5.
2.0 | 随時チームや佐々木さんと確認を行う
Confirm với khách và team | Todo
CR 5 Management classroom
CR5 授業管理 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Check spec CR 5
CR5の仕様確認 | Inprogess | 2024-09-19 00:00:00
2.0 | Estimate CR5 (Basic design)
基本設計書完了までの時間の見積もりを提出 | Todo | 2024-09-20 00:00:00
3.0 | Q&A and confirm spec CR 5
必要に応じてQAを行う | Todo | - | Có QA thì hỏi cho khách hàng
不明点があれば確認
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 09112024
週次報告
Weekly Meeting
日時／Time: 11-Sep 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Done
        - No 2: Sửa lỗi hiển thị ký tự ở dạng văn bản dọc: Đã code 100%, test 100%, keep tiến độ, đang chờ khách hàng test tiếp.  
        - No 3, 4 , 5: Đã nghiên cứu công nghệ xong, ưu tiên làm sau No 2.

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - Đã fix xong hai bug No 3, No 6, dự kiến release STG vào chiều ngày 09/11. 
Độ ưu tiên: 
        - CR 7 No 1, 2
        - Xoá tag trên môi trường production , sửa bug khách log. 
        - CR 7 No. 3,4,5
        - CR 5
-------------
全体まとめ: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: 完了済み
        - No 2: code 100%, test 100%,オンスケでお客様のテストの実施待ち
        - No 3, 4 , 5: 技術スタディー完了、No2の後に着手

バグ一覧: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        -  No 3, No 6の修正が完了し、09/11日の18時以降にSTGに反映 
優先度は以下: 
        - CR 7 No 1, 2
        -本番のタグ削除（完了）・バグ一覧改修
        - CR 7 No. 3,4,5
        - CR 5
１．今週の作業内容（03-Sep-> 11-Sep）／Report task of this week (03-Sep-> 11-Sep）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Test theo matrix các ký tự
-------------
縦書きに関する表示ミス改修
・文字のマトリックスでテスト実施 | Done | 2024-09-05 00:00:00
2.0 | Q&A CR7
CR7のBDのQA対応 | Done | 2024-09-05 00:00:00 | Check QA nếu có
随時対応
3.0 | Tạo master schedules cho No 3 4 5
No.3,4,5のマスタースケジュール作成 | Done | 2024-09-11 00:00:00 | Link: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tạo master schedule cho kế hoạch monitoring.
モニタリング計画のスケジュール作成 | Done | 2024-09-06 00:00:00 | Link: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1757151180#gid=1757151180
2.0 | Tìm hiểu 4 service: 
以下の４つサービスについてスタディー
- Relational Database Service
- DynamoDB
- Elastic Container Service
- Elastic Compute Cloud | Done | 2024-09-11 00:00:00 | Nội dung tìm hiểu: 
- Tìm hiểu dịch vụ
- Điều tra cách xem log
- Điều tra cách tạo log
- Điều tra cách xem monitoring
- Kiểm tra tình trạng hoạt động
- Điều tra cách tăng size
- Điều tra cách giảm size
- Điều tra cách tính tiền
=> Liệt kê ra toàn bộ các task phát sinh sau khi tìm hiểu và estimate. 
-----------------
スタディー項目
- サービス内容
- ログの確認しかた
- ログ作成方法
- モニタリング観覧方法
- 動作状況確認方法
- サイズ拡大方法
- サイズ縮小方法
- 料金計算方法
=> スタディーした後、今後に必要な作業をリストアップ
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tái hiện bug và estimate
バグ再現と見積もり | Done | 2024-09-06 00:00:00 | - Đã estimate 2 bug No 3, No 6
- Các No còn lại tạm thời chốt sẽ disable chức năng Undo - Redo
---------
No.3，6のみ見積もり済み
残りはもどり・すすみに関するものであるため、機能クローズにする
2.0 | Fix bug No 3, No 6 | Done | 2024-09-10 00:00:00 | Đã hoàn thành 2 bug trên môi trường Dev, Sẽ release lên STG vào 16h ngày 09/11
-----------
開発環境の修正が完了。9/11日の18時以降STGに反映
Trao đổi làm basic Design cho chức năng Undo Redo
 Undo RedoのBDについて相談 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Meeting giữa TaiC và Sagaki về specs
SEと佐々木さんのMTG | Pending | Hiện đang pending do bạn Sagaki ốm không đi làm. 
佐々木さんが体調不良のため、一旦保留
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Fix bug của khách hàng test
-----------
縦書きに関する表示ミス改修
お客様のバグ修正 | Inprogess | 2024-09-16 00:00:00
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Khách hàng test trên môi trường Dev
--------------
縦書きに関する表示ミス改修
お客様が開発環境でテスト実施 | Inprogess | 2024-09-13 00:00:00
3.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Deploy STG
-----------------
縦書きに関する表示ミス改修
STG反映 | Todo | 2024-09-16 00:00:00
4.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Khách hàng UAT 
------------
縦書きに関する表示ミス改修
UAT実施 | Todo | - | Thời gian test trên STG thì khách hàng sẽ thông báo cho Scuti trước ngày 9/13
STGの実行期間が9/13日までに共有していただく
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu 4 service: 
以下の４つサービスをスタディー
- CloudWatch
- Virtual Private Cloud
- Elastic Load Balancing
- Data Transfer | Todo | 2024-09-18 00:00:00
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Fix UAT cho 2 bug No 3, No 6 sau khi đưa lên STG
------------
No.3,6のUATバグ（あれば）修正 | Todo | 2024-09-16 00:00:00 | Dự kiến khách hàng test UAT trong ngày 09/12 thì deadline việc fix bug vào ngày 09/16
9/12にUAT実施していただき、9/16までバグ修正期限とする
Trao đổi làm basic Design cho chức năng Undo Redo
 Undo RedoのBDについて相談 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Confirm spec về undo-redo
もどり・すすみ機能の仕様について確認 | Inprogess | 2024-09-13 00:00:00 | Undo -Redoに関する仕様をチームと確認する
Confirm spec về undo-redo với team
2.0 | Estimate spec undo-redo (Basic design) | Todo | 2024-09-17 00:00:00 | Check nội dung bug undo-redo + estimate spec mới của undo-redo.
CR 5 Management classroom
CR5 授業管理 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Check spec CR 5 | Inprogess | 2024-09-19 00:00:00
2.0 | Estimate CR5 (Basic design) | Inprogess | 2024-09-20 00:00:00
3.0 | Q&A and confirm spec CR 5 | Inprogess | - | Có QA thì hỏi cho khách hàng
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 09042024
週次報告
Weekly Meeting
日時／Time: 04-Sep 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy: Apple đã review App thành công.
        - No 2: Sửa lỗi hiển thị ký tự ở dạng văn bản dọc: Đã code 100%, test 90%, keep tiến độ. 
        - No 3, 4 , 5: Pending. 

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - Chuẩn bị estimate sau khi hoàn thành CR 7 No 2

Độ ưu tiên: 
        - CR 7 No 1, 2
        - Xoá tag trên môi trường production , sửa bug khách log. 
        - CR 7 No. 3,4,5
        - CR 5
-------------
全体: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: ペンを削除した後に、見えない枠を削除すること: Appleの審査が完了し本番反映が成功した。
        - No 2: 縦書きに関する表示ミス改修：code 100%, test 90%, オンスケ 。
        - No 3, 4 , 5: 保留中

新規バグ一覧: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        -CR 7 No 2が終了したら見積もり

優先度：
        ① CR 7 No 1, 2
        ②本番のタグ削除、新規バグ改修
        ③ CR 7 No. 3,4,5
        ④CR 5
１．今週の作業内容（21-Aug-> 27-Aug）／Report task of this week (21-Aug-> 27-Aug）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text
CR7ペンとテキスト | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Tiếp tục coding theo master schedule
----------
縦書きに関する表示ミス改修
・コーディング続き | Done | 2024-09-02 00:00:00
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Test theo matrix các ký tự
-------------
縦書きに関する表示ミス改修
・文字のマトリックスでテスト実施 | Inprogess | 2024-09-05 00:00:00 | Đã hoàn thành 90%
90％完成
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Pending | - | Phía Scuti nghỉ lễ nên tạm thời pending, sau lễ sẽ tìm kiếm task khác ưu tiên hơn cho phía BE.
現時点、一時停止になっている。連休明けた後に、より優先度が高いタスクを実施するように探すこと
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Pending | -
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tái hiện bug và estimate
バグ再現と見積もり | Inprogess | Scuti chỉ làm phần này nếu phần CR 7 No 2 hết bug. 
CR7 No2の不具合がすべて解消された前提で実施
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Test theo matrix các ký tự
-------------
縦書きに関する表示ミス改修
・文字のマトリックスでテスト実施 | Inprogess | 2024-09-05 00:00:00
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | 2024-09-05 00:00:00 | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Pending | - | Tạm thời pending, hiện PM đang họp với BE để tìm kiếm task ưu tiên hơn. 
一時停止でもっと必要な作業を優先するようにBEメンバーと相談している
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Pending | - | No.1が終わったら計画を作る予定
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tái hiện bug và estimate
バグ再現と見積もり | Inprogess | 2024-09-13 00:00:00 | Dự kiến sẽ estimate vào ngày 09/13
9/13日に見積もりを行う予定
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 08272024
週次報告
Weekly Meeting
日時／Time: 27-Aug 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy: Apple đã review App thành công.
        - No 2: Sửa lỗi hiển thị ký tự ở dạng văn bản dọc: Đã code 90%, test 80%, keep tiến độ. 
        - No 3, 4 , 5: Pending. 

Fix bug: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - Chuẩn bị estimate sau khi hoàn thành CR 7 No 2

Độ ưu tiên: 
        - CR 7 No 1, 2
        - Xoá tag trên môi trường production , sửa bug khách log. 
        - CR 7 No. 3,4,5
        - CR 5
-------------
概要: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: ペンを削除した後に、見えない枠を削除すること: Appleの審査が完了し本番反映が成功した。
        - No 2: 縦書きに関する表示ミス改修：code 90%, test 80%, オンスケ 。
        - No 3, 4 , 5: 保留中

新規バグ一覧: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616
        - CR 7 No 2の実装が完了した後に、見積もりに着手

優先度：
        ① CR 7 No 1, 2
        ②Xoá tag trên môi trường production , sửa bug khách log. 
        ③ CR 7 No. 3,4,5
        ④CR 5
１．今週の作業内容（21-Aug-> 27-Aug）／Report task of this week (21-Aug-> 27-Aug）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Fix bug UAT nếu có
----------
ペンを削除した後に、見えない枠を削除すること
・UATバグがあれば修正 | Done | 2024-08-23 00:00:00
2.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Deploy Production
----------
ペンを削除した後に、見えない枠を削除すること
・本番反映 | Done | 2024-08-23 00:00:00
3.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Tiếp tục coding theo master schedule
----------
縦書きに関する表示ミス改修
・コーディング続き | Inprogess | 2024-09-02 00:00:00 | Đã hoàn thành khoảng 90%
90%ぐらい完成済み
4.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Test theo matrix các ký tự
-------------
縦書きに関する表示ミス改修
・文字のマトリックスでテスト実施 | Inprogess | 2024-09-05 00:00:00 | Đã hoàn thành khoảng 80%
80%ぐらい完成済み
5.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Pending | - | Tuần vừa rồi pending do cần làm task xóa Tag trên production. 
---------
本番でのタグ削除をするため、保留した。
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Pending | - | No.1が終わったら計画を作る予定
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Dịch 6 bug khách hàng logs
------
優先度が高いバグを6件翻訳 | Done | 2024-08-27 00:00:00
Xóa tag trên production
本番でのタグ削除 | Done | - | PIC: Otake & Tashi & Scuti
1.0 | Đã xóa tag trên production theo yêu cầu của khách hàng. 
客様からの依頼で本番でのタグを削除した。 | Done | 2024-08-27 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Tiếp tục coding theo master schedule
----------
縦書きに関する表示ミス改修
・コーディング続き | Inprogess | 2024-09-02 00:00:00
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Test theo matrix các ký tự
-------------
縦書きに関する表示ミス改修
・文字のマトリックスでテスト実施 | Inprogess | 2024-09-05 00:00:00
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Inprogess | - | Tiếp tục tìm hiểu cách monitoring theo từng service. 
----------
引き続き各AWSサービスのモニタリングし方のスタディー
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Pending | - | No.1が終わったら計画を作る予定
Bugs https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=783407616#gid=783407616 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tái hiện bug và estimate
バグ再現と見積もり | Todo | Scuti chỉ làm phần này nếu phần CR 7 No 2 hết bug. 
CR7 No2の不具合がすべて解消された前提で実施
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 08212024
週次報告
Weekly Meeting
日時／Time: 21-Aug 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy: Đã deploy STG
        - Sửa lỗi hiển thị ký tự ở dạng văn bản dọc: Đang bắt đầu coding.
        - Các phần khác đang tạm pending. 
-------------
まとめ：

CR 7: マスタースケジュール: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No 1: ペンを削除したら、見えない枠を削除：STG反映済
        - 縦書きの表示不備修正：コーディング開始済
        - のこりが保留中
１．今週の作業内容（30-July-> 06-Aug）／Report task of this week (30-July-> 06-Aug）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Hoàn thành test và fix bug.
----------
ペンを削除した後に、見えない枠を削除すること
・テスト実行とバグ改修 | Done | 2024-08-19 00:00:00
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Tiếp tục coding theo master schedule
----------
縦書きに関する表示ミス改修
・実装中 | Inprogess | 2024-09-02 00:00:00 | Hoàn thành 30%
30％完了できた
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Inprogess | - | Mục tiêu: 
1. Liệt kê ra toàn bộ dịch vụ của Edu: 100%
2. Tìm hiểu, tìm cách monitoring từng service:
- Check service đang hoạt động bình thường.? Có con số cụ thể (Ví dụ CPU 80%, Ram 20%): Inprogress
- Check log realtime của service khi có lỗi xảy ra (Kể cả trong quá khứ hay hiện tại): Todo
- Phương thức tăng/giảm size của từng service: Todo
- Cách tính tiền từng service: Todo
--------------
実施手順：
1. Eduに使用中の各サービスを列挙: 100%
2. 各サービスの役割とモニタリングしかたスタディー：
- 数値で表す現時点、各サービスの動き進捗（例： CPU 80%, Ram 20%): Inprogress
- バグが発生するさいにログを即時に確認 (いままでのバグがすべて対象）: Todo
- サービスのサイズを縮小・拡張: Todo
- サービスの料金計算: Todo
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Todo | - | No.1が終わったら計画を作る予定
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Fix bug UAT nếu có
----------
ペンを削除した後に、見えない枠を削除すること
・UATバグがあれば修正 | Todo | 2024-08-23 00:00:00
2.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Deploy Production
----------
ペンを削除した後に、見えない枠を削除すること
・本番反映 | Todo | 2024-08-23 00:00:00
3.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Tiếp tục coding theo master schedule
----------
縦書きに関する表示ミス改修
・コーディング続き | Inprogess | 2024-09-02 00:00:00 | Hoàn thành 30%
4.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Inprogess | - | Mục tiêu: 
1. Liệt kê ra toàn bộ dịch vụ của Edu: 100%
2. Tìm hiểu, tìm cách monitoring từng service:
- Check service đang hoạt động bình thường.? Có con số cụ thể (Ví dụ CPU 80%, Ram 20%): Inprogress
- Check log realtime của service khi có lỗi xảy ra (Kể cả trong quá khứ hay hiện tại): Todo
- Phương thức tăng/giảm size của từng service: Todo
- Cách tính tiền từng service: Todo
--------------
実施手順：
1. Eduに使用中の各サービスを列挙: 100%
2. 各サービスの役割とモニタリングしかたスタディー：
- 数値で表す現時点、各サービスの動き進捗（例： CPU 80%, Ram 20%): Inprogress
- バグが発生するさいにログを即時に確認 (いままでのバグがすべて対象）: Todo
- サービスのサイズを縮小・拡張: Todo
- サービスの料金計算: Todo
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Todo | - | No.1が終わったら計画を作る予定
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 08132024
週次報告
Weekly Meeting
日時／Time: 13-Aug 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy: Đang coding & testing
        - Sửa lỗi hiển thị ký tự ở dạng văn bản dọc: Đang bắt đầu coding.
        - Các phần khác đang tạm pending. 

CR new: Nghiên cứu để tính toán giá tiền của User. 
        - Sau khi họp với khách hàng ngày 09/08 tạm thời pending. 

CR 5:  Tạm thời pending. 
-------------
まとめ:
CR 7:マスタースケジュール : https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
        - No.1：ペンを削除した後に、見えない枠を削除すること：実装（テストも含む）中
        -縦書きに関する表示ミス改修：コーディング開始済
        - 残りを保留中

他依頼: 価額確定為のサーバー料金計算
        - 8/9日のMTGにて、この依頼の対応を不要にした

CR 5: 保留中
１．今週の作業内容（30-July-> 06-Aug）／Report task of this week (30-July-> 06-Aug）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Hoàn thành coding. 
------------
ペンを削除した後に、見えない枠を削除すること
コーディング完了 | Done | 2024-08-12 00:00:00
2.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Hoàn thành create checklist. 
------------
ペンを削除した後に、見えない枠を削除すること
チェックリスト作成済み | Done | 2024-08-09 00:00:00
3.0 | [No2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Break task và estimate
------------
縦書きの表示ミス改修
-Break task＆ estimate No 2 | Done | 2024-08-07 00:00:00 | Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=454192775#gid=454192775
4.0 | [No2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
Tạo matrix checklisk cho CR 7 và meeting thống nhất cách test 
-----------
縦書きに関する表示ミス改修
CR7のチェックリストマトリックス作成とテスト実施方針について認識あわせ | Done | 2024-08-09 00:00:00 | Link check list: https://docs.google.com/spreadsheets/d/1zstoEibaOFIX8OQMTcLjWrHIznqAtpsTejSJwEWMM88/edit?gid=1671668651#gid=1671668651
5.0 | Create tiêu chuẩn chất lượng cho CR 7
CR７の品質指標定義 | Done | 2024-08-13 00:00:00 | Link: https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit?gid=716283163#gid=716283163
6.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | Meeting với khách hàng thống nhất cách đo
測定方針について、お客様とMTGする必要がある | Done | 2024-08-09 00:00:00 | Sau khi meeting với khách hàng ngày 09/08 tạm thời quyết định pending, chờ giai đoạn dùng thử sẽ lấy con số thực tế. 
-----------
8/9日のMTGにて、今回の対応不要にした。トライアル期間で実際のデータを基に計算。
2.0 | Nếu thống nhất được cách thức đo
=> Tiến hành setting và chuản bị data cho Jmeter
-----------
測定方向確定できた場合、
→Jmeterの設定とデータ用意を実施 | Pending | 2024-08-16 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [No 1] Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Hoàn thành test và fix bug.
----------
ペンを削除した後に、見えない枠を削除すること
・テスト実行とバグ改修 | Todo | 2024-08-19 00:00:00
2.0 | [No 2] Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Tiếp tục coding theo master schedule
----------
縦書きに関する表示ミス改修
・マスタースケジュールをベースに実装 | Todo | 2024-09-02 00:00:00
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA nếu có
随時対応
Lập kế hoạch monitoring hệ thống từ tháng 9
9月以降からシステムのモニタリング計画立案 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Tìm hiểu cách monitoring từng service AWS của toàn hệ thống Edu
システム全体で各AWSサービスのモニタリングし方のスタディー | Todo | -
2.0 | Lập kế hoạch Monitoring hệ thống từ tháng 9/2024
9月以降からシステムのモニタリング計画立案 | Todo | -
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 08062024
週次報告
Weekly Meeting
日時／Time: 07-Aug 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
Tổng quan: 

CR 7: Đã hoàn thành cơ bản BD
        - Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy: Đã gửi estimate
        - Sửa lỗi hiển thị ký tự ở dạng văn bản dọc: Dự kiến gửi estimate trong ngày 07/08
        - Các phần khác đang tạm pending. 

CR new: Nghiên cứu để tính toán giá tiền của User. 
        - Scuti đang trong quá trình nghiên cứu hướng làm. 

CR 5:  Tạm thời pending. 
-------------
まとめ: 

CR 7: BDがほとんど完了した。
        - ペンを削除したあと、みえないオブジェクト枠を削除: 見積もり提出済み
        - 縦書きの表示ミス修正： 08/07日中に見積もり提出予定
        - 残りの依頼は保留中 

CR new: サーバー料金の計算
        - 測定方法を検討中

CR 5:  保留中
１．今週の作業内容（30-July-> 06-Aug）／Report task of this week (30-July-> 06-Aug）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Done | - | PIC: Otake & Scuti
1.0 | Chờ Apple review
Apple審査待機 | Done | 2024-08-06 00:00:00 | Apple đã review hoàn thành. 
審査完了した。
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board | Pending | - | PIC: Scuti
1.0 | Giải thích và phân tích kêt quả nghiên cứu nếu khách hàng có câu hỏi
調査結果提出とお客様の不明点回答 | Pending | Tạm thời pending chờ thông tin từ khách hàng. 
お客様の次の指示待ち
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứ specs sau khi hoàn thành Basic Design
[開発] BDの確定後、仕様分析 | Done | 2024-07-31 00:00:00
2.0 | [Dev] Nghiên cứu công nghệ sử dụng trong CR 7
[Dev]CR7に使う技術調査 | Done | - | Tạm thời hoàn thành nghiên cứu công nghệ cho 2 phần: 
- Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
=> Các phần khác tạm thời pending. 
------------
技術調査完了部分は以下です：
-ペンを削除した後に見えない枠を削除
-縦書きの表示ミス修正
残りは保留中
3.0 | Break task và estimate No 1
Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
ペンを削除した後に見えない枠を削除 | Done | 2024-08-01 00:00:00 | estimate: https://docs.google.com/spreadsheets/d/1moEeIc3xo0PMFsdbrDiQvXOf9hcRZFDvYM1Sq-cWafY/edit?gid=916668589#gid=916668589&range=2:2
4.0 | Break task và estimate No 2
Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
縦書きの表示ミス修正 | Inprogess | 2024-08-07 00:00:00
5.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA khi có QA
随時対応
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứu sử dụng tool Jmeter để test tải hệ thống
[Dev]Jmeterツールの使用方法スタディー | Done | 2024-08-09 00:00:00 | - Về phương pháp sử dụng Jmeter thì phía Scuti đã nghiên cứu và nắm được cách làm. 
- Tuy nhiên, về phương pháp đo thì phía Scuti cần meeting riêng với khách hàng 1 buổi để làm rõ. 
----------------
- Jmeterの使用方法が把握できた
- 但し、測定方針について、お客様とMTGする必要がある
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Tiến hành coding phần: 
- Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
--------------
[Dev] 以下の実装：
- ペンを削除した後に見えない枠を削除 | Todo | - | Dev chỉ coding nếu khách hàng không yêu cầu phân tích và nghiên cứu các phần khác thuộc CR7
------
CR7にある他の要件を分析と調査しない限りに、着手可能
2.0 | [Tester] Create checklist cho phần: 
- Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
----------------
[Tester] 以下のチェックリスト作成：
- ペンを削除した後に見えない枠を削除 | Todo | - | Tester chỉ create checklist nếu khách hàng không yêu cầu phân tích và nghiên cứu các phần khác thuộc CR7
CR7にある他の要件を分析と調査しない限りに、着手可能
3.0 | Break task và estimate No 2
Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
------------
Break task và estimate No 2
縦書きの表示ミス修正 | Inprogess | 2024-08-07 00:00:00
4.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Check QA khi có QA
随時対応
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Meeting với khách hàng thống nhất cách đo
測定方針について、お客様とMTGする必要がある | Todo | 2024-08-09 00:00:00
2.0 | Nếu thống nhất được cách thức đo
=> Tiến hành setting và chuản bị data cho Jmeter
-----------
測定方向確定できた場合、
→Jmeterの設定とデータ用意を実施 | Todo | 2024-08-16 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 07302024
週次報告
Weekly Meeting
日時／Time: 30-July 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（17-July-> 23-July）／Report task of this week (17-July-> 23-July）
Tổng quan: 

CR 4: Không phát hiện bug UAT, đã release Production, Apple đang review.

CR new: Nghiên cứu phần load toàn bộ Slide trong màn hình Digital Board
    - Đã có kết quả bước đầu, sẽ báo cáo chi tiết ở phần dưới. 
    - Tạm thời pending ưu tiên CR khác. 

CR 7: Đã hoàn thành cơ bản BD, team đang nghiên cứu và estimate. 

CR new: Nghiên cứu để tính toán giá tiền của User. 
    - Scuti start bắt đầu nghiên cứu. 

CR 5:  Tạm thời pending. 
-------------
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Inprogess | - | PIC: Otake & Scuti
1.0 | [Otake] test UAT | Done | 2024-07-26 00:00:00
2.0 | [Scuti] Fix bug UAT | Done | 2024-07-30 00:00:00
3.0 | [Scuti] Deploy Production | Done | 2024-07-30 00:00:00
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board | Done | - | PIC: Scuti
1.0 | Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board
デジタルボードのスライドを一括に読み込む調査 | Done | 2024-07-29 00:00:00 | Kết quả: Chúng ta không thể hoạt động giống như Google Slides do sự khác biệt về công nghệ sử dụng

1. Về công nghệ sử dụng
- Google slide: Sử dụng HTML, SVG
- Edu: Sử dụng thư viện Fabric.js và công nghệ Canvas

2. Nguyên nhân khiến việc load all slide là không khả quan. 
  Nguyên nhân trực tiếp dẫn tới việc không thể tải all slide trên màn hình digital board là việc tràn bộ nhớ Ram. 
    - Với Google Slide sử dụng HTML, SVG để hiển thị, cùng với những công nghệ mà họ sử dụng không được public nên việc tối ưu bộ nhớ Ram rất tốt. Họ có thể tải rất nhiều slide và không tốn nhiều dung lượng Ram.
    - Với hệ thống Edu sử dụng thư viện Fabic.js và công nghệ Canvas để hiển thị, thực tế mỗi 1 slide trắng tương đương với 1 canvas có dung lượng tầm 15 MBs, nên việc tải toàn bộ slide sẽ gây hiện tượng tràn bộ nhớ, nhất là với hệ điều hành IOS, việc quản lý bộ nhớ diễn ra rất khắt ke, nên hiện tượng tràn bộ nhớ gây Crask app là chắc chắn xảy ra. 

3.Tại sao lại chọn fabricjs ?
Có một số lý do quan trọng giải thích tại sao Scuti chọn Fabric.js thay vì phát triển công nghệ từ đầu giống như Google Slides:
- Công Nghệ Của Google Slides: Google Slides là một sản phẩm rất tinh vi và công nghệ mà họ sử dụng là bí mật và không được chia sẻ công khai. Điều này có nghĩa là chúng tôi không thể biết chính xác cách Google Slides xử lý và tối ưu hóa hàng triệu slide và nội dung của chúng.
- Thời Gian Nghiên Cứu và Phát Triển: Để phát triển một ứng dụng giống Google Slides từ đầu, chúng tôi sẽ phải đầu tư một lượng thời gian và công sức rất lớn trong việc nghiên cứu và phát triển công nghệ phù hợp. Điều này không chỉ tốn kém mà còn có thể làm chậm tiến độ phát triển.
- Lợi Ích Của Fabric.js: Fabric.js là một thư viện mã nguồn mở mạnh mẽ đã được kiểm nghiệm và sử dụng rộng rãi. Nó cung cấp nhiều tính năng cần thiết cho việc quản lý và vẽ đồ họa trên canvas, giống như những gì chúng tôi cần cho ứng dụng của mình. Sử dụng Fabric.js giúp chúng tôi tiết kiệm thời gian và tài nguyên, đồng thời đảm bảo rằng chúng tôi có một nền tảng vững chắc để xây dựng và tùy chỉnh các tính năng theo yêu cầu của bạn.
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứ specs sau khi hoàn thành Basic Design
[開発] BDの確定後、仕様分析 | Inprogess | 2024-07-31 00:00:00
2.0 | [Dev] Nghiên cứu công nghệ sử dụng trong CR 7
[Dev]CR7に使う技術調査 | Inprogess | - | Thứ tự ưu tiên: 1->2->3->4->5

1. Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
- Nghiên cứu công nghệ: Done
- Estimate & Break task: Dự kiến ngày 08/01 sẽ có estimate
2. Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
- Nghiên cứu công nghệ: Bắt đầu start nghiên cứu từ ngày 30/07, hiện chưa có kết quả cụ thể
- Estimate & Break task: Pending
- Đánh giá: Nhiều rủi ro, độ ảnh hưởng lớn, công nghệ khó.
3. Thu nhỏ khung văn bản theo số lượng ký tự
- Nghiên cứu công nghệ: Done
- Estimate & Break task: Sẵn sang break task và estimate, tuy nhiên đang pending tập trung cho nghiên cứu No 2
4. Thay đổi cỡ chữ
- Nghiên cứu công nghệ: Pending tập trung cho No2
- Estimate & Break task: Pending
- Đánh giá: Nhiều rủi ro, độ ảnh hưởng lớn, công nghệ khó.
5. Khi bỏ focus ra khỏi text box, nếu không có ký tự nào, hãy xóa textbox
- Nghiên cứu công nghệ: Pending tập trung cho No2 và đang có Q&A
- Estimate & Break task: Pending
- Đánh giá: Nhiều rủi ro, độ ảnh hưởng lớn, công nghệ khó.
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Tạm thời chưa có deadline, deadline sẽ được quyết định sau khi phân tích BD
期日未定。BDの分析した後に確定予定
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứu sử dụng tool Jmeter để test tải hệ thống | Inprogess | 2024-08-09 00:00:00 | Dự kiến ngày 08/09 sẽ có kết quả.
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Inprogess | - | PIC: Otake & Scuti
1.0 | Chờ Apple review | Inprogess | 2024-08-06 00:00:00
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board | Inprogess | - | PIC: Scuti
1.0 | Giải thích và phân tích kêt quả nghiên cứu nếu khách hàng có câu hỏi | Inprogess
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứ specs sau khi hoàn thành Basic Design
[開発] BDの確定後、仕様分析 | Inprogess | 2024-07-31 00:00:00
2.0 | [Dev] Nghiên cứu công nghệ sử dụng trong CR 7
[Dev]CR7に使う技術調査 | Inprogess | - | Tiếp tục nghiên cứu công nghệ cho phần No 2
Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
3.0 | Break task và estimate No 1
Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy | Inprogess | 2024-08-01 00:00:00
4.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Tạm thời chưa có deadline, deadline sẽ được quyết định sau khi phân tích BD
期日未定。BDの分析した後に確定予定
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứu sử dụng tool Jmeter để test tải hệ thống | Inprogess | 2024-08-09 00:00:00 | Dự kiến ngày 08/09 sẽ có kết quả.
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: JP_ 07302024
週次報告
Weekly Meeting
日時／Time: 30-July 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（17-July-> 23-July）／Report task of this week (17-July-> 23-July）
Tổng quan: 

CR 4: Không phát hiện bug UAT, đã release Production, Apple đang review.

CR new: Nghiên cứu phần load toàn bộ Slide trong màn hình Digital Board
    - Đã có kết quả bước đầu, sẽ báo cáo chi tiết ở phần dưới. 
    - Tạm thời pending ưu tiên CR khác. 

CR 7: Đã hoàn thành cơ bản BD, team đang nghiên cứu và estimate. 

CR new: Nghiên cứu để tính toán giá tiền của User. 
    - Scuti start bắt đầu nghiên cứu. 

CR 5:  Tạm thời pending. 
-------------
概要まとめ: 

CR 4: UATバグなし。本番に反映し、Apple審査待ち

CR new: デジタルボードのスライドを一括に読み込みの調査
    - 調査結果がまとめ、後述参照
    - 他のCRを優先する為、現時点一時休止

CR 7: BD作成完了、分析と見積もりを実施中

新CR: 販売価格を定めるためのサーバー料金の計算
    - 開始済

CR 5:  保留中
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution　配布 | Inprogess | - | PIC: Otake & Scuti
1.0 | [Otake] test UAT | Done | 2024-07-26 00:00:00
2.0 | [Scuti] Fix bug UAT | Done | 2024-07-30 00:00:00
3.0 | [Scuti] Deploy Production | Done | 2024-07-30 00:00:00
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board
デジタルボードのスライドを一括に読み込み | Done | - | PIC: Scuti
1.0 | Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board
デジタルボードのスライドを一括に読み込む調査 | Done | 2024-07-29 00:00:00 | 結論: 
導入技術が異なっているため、Google Slidesと同じようにスライドを一括に読み込めない 

1. 導入中技術
- Google slide: HTML, SVG
- Edu:  Fabric.jsライブラリー及び Canvas技術

2. 不可理由
  スライドを一括に読み込むと、Ram容量が耐えられないからです。 
    - Google Slideが HTML, SVG と公開されていない技術を使用しているのでRam容量を適切に使っていて、スライドを一括で多く読み込んでもメモリがあまりかかっていない。
    - EduがFabic.jsライブラリーとCanvasでスライドの内容を表示させている為、白いスライドを表示するだけでも 1 canvasを使い、15 MB相当の容量がかかっています。
スライドを全て同時に読み込むと、メモリが溢れられます。特にiOSの場合、メモリの管理がより厳しいので、メモリが溢れられる現象があると、必ずその時にアプリがクラッシュされます。 
・現在使用しているiPadならRAMの制限が200MBとなっており、一度に読み込めるのは理論上は200/15 ＝約13 スライドとなっている

3.それでもなおなぜ fabricjsにしたほうが良いか
- Google Slidesの技術が公開されていないのでScutiがスタディーもできないし、本当にどんな技術を使用しているのかさえ調査できません

- 開発期間限定: 
最初からGoogle Slidesと似てる技術で開発すると、分析と検討の段階にも多く時間をかけて適切の案を考え出す必要があります。そうすると、開発進捗が遅くなって、料金も多く発生されると思います。 

-  Fabric.jsのメリット: 
Fabric.jsは一般的に使われており、Canvas上での管理やグラフィック描画に必要な多くの機能を提供しており、Eduに必要なものと適切です。
Fabric.jsを使用することで、時間とリソースを節約し、要件に応じた機能を構築およびカスタマイズするための堅固な基盤を確保できます。
CR 7 Pen and text
ペンとテキスト関連修正 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứ specs sau khi hoàn thành Basic Design
[開発] BDの確定後、仕様分析 | Inprogess | 2024-07-31 00:00:00
2.0 | [Dev] Nghiên cứu công nghệ sử dụng trong CR 7
[Dev]CR7に使う技術調査 | Inprogess | - | 優先順位: 1->2->3->4->5
1.Penを削除した後、見えない枠を削除する
技術調査: 完了
見積もり & タスク分割: 8月1日までに見積もり予定
2.縦書きの文字表示エラーを修正する
技術調査: 7月30日から調査開始、現在具体的な結果は未定
見積もり & タスク分割: 保留中
備考：影響度が大きく、技術的に難しいリスクがある
3.文字数に応じてテキストボックスを縮小する
技術調査: 完了
見積もり & タスク分割: タスク分割と見積もりの準備が整っているが、現在は2の調査に集中しているため保留中
4.フォントサイズを変更する
技術調査: 2に集中しているため保留中
見積もり & タスク分割: 保留中
評価: 影響度が大きく、技術的に難しいリスクがある
5.テキストボックスからフォーカスを外したとき、文字がない場合はテキストボックスを削除する
技術調査: 2に集中しており、Q&Aが進行中
見積もり & タスク分割: 保留中
評価: 影響度が大きく、技術的に難しいリスクがある
3.0 | Q&A CR7
CR7のBDに関するQA対応 | Inprogess | - | Tạm thời chưa có deadline, deadline sẽ được quyết định sau khi phân tích BD
期日未定。BDの分析した後に確定予定
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためのサーバー料金の計算 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứu sử dụng tool Jmeter để test tải hệ thống
[Dev] Jmeterツール（システム負荷測定ツール）を導入できるためのスタディー | Inprogess | 2024-08-09 00:00:00 | Dự kiến ngày 08/09 sẽ có kết quả.
8/9日までにスタディーアウトプットをまとめる
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Inprogess | - | PIC: Otake & Scuti
1.0 | Chờ Apple review
Appleレビュー待機 | Inprogess | 2024-08-06 00:00:00
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board
デジタルボードのスライドを一括に読み込み調査 | Inprogess | - | PIC: Scuti
1.0 | Giải thích và phân tích kêt quả nghiên cứu nếu khách hàng có câu hỏi
質問があれば、結果説明と質問回答 | Inprogess
CR 7 Pen and text
ペンとテキスト関連修正 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứ specs sau khi hoàn thành Basic Design
[開発] BDの確定後、仕様分析 | Inprogess | 2024-07-31 00:00:00
2.0 | [Dev] Nghiên cứu công nghệ sử dụng trong CR 7
[Dev]CR7に使う技術調査 | Inprogess | - | Tiếp tục nghiên cứu công nghệ cho phần No 2
Sửa lỗi hiển thị ký tự ở dạng văn bản dọc
3.0 | Break task và estimate No 1
Sau khi xóa obj Pen, xóa khung obj đang không nhìn thấy
ペンを削除すると、見えない枠を削除 | Inprogess | 2024-08-01 00:00:00
4.0 | Q&A CR7
CR7のBDに関するQA対応 | Inprogess | - | Tạm thời chưa có deadline, deadline sẽ được quyết định sau khi phân tích BD
期日未定。BDの分析した後に確定予定
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứu sử dụng tool Jmeter để test tải hệ thống
[Dev] Jmeterツール（システム負荷測定ツール）を導入できるためのスタディー | Inprogess | 2024-08-09 00:00:00 | Dự kiến ngày 08/09 sẽ có kết quả.
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 07232024
週次報告
Weekly Meeting
日時／Time: 23-July 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（17-July-> 23-July）／Report task of this week (17-July-> 23-July）
Tổng quan: 

CR 4: 
- Tiến độ: Keep tiến độ, hai bên Scuti và Otake đã hoàn thành test. Phía Scuti đã hoàn thành fix bug. 
- Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28

CR new: Phía Scuti sẽ nghiên cứu trước phần load toàn bộ Slide trong màn hình Digital Board. (Dự kiến hết ngày 07/27  nếu không ra vấn đề sẽ pending, ưu tiên CR 7)

CR 7: TaiC đang hoàn thiện BD, team ưu tiên fix bug cho CR 4 và UAT nên tạm thời đợi BD sẽ tiếp tục tiến hành nghiên cứu. 

CR new: Song song với FE làm CR 7, phía BE sẽ nghiên cứu để tính toán giá tiền của User. 

CR 5:  Tạm thời pending. 
-------------
CR 4: 
- 進捗: オンスケでテスト終了した。バグ改修済み
- Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28 

新規依頼: デジタルボードのスライドを一括に読み込む調査　（
CR 7: BDの作成と並行にCR4のUATバグなどを改修しているのでCR7の仕様分析を後ろに回した。

新規依頼:  販売価格を定めるためにサーバー料金の計算（CR7の開発期間にやる想定）

CR 5:保留中
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Inprogess | - | PIC: Otake & Scuti
1.0 | Scuti test 100% checklist
Scutiがチェックリストの100％をテスト実施 | Done | 2024-07-19 00:00:00
2.0 | Otake test 100% checklist
オータケ様がチェックリストの100％をテスト実施 | Done | 2024-07-19 00:00:00
3.0 | Fix bug 
バグ改修 | Done | 2024-07-24 00:00:00 | - Scuti xin khách hàng lùi lịch từ 07/22 sang 07/24
- Phát sinh 2 bug đều đã close: 
https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=251025572#gid=251025572
---------
07/22日から24日にずらした。
バグ2件が解消された。
https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=251025572#gid=251025572
4.0 | Deploy STG
STGに反映 | Todo | 2024-07-24 00:00:00 | Hiện đang xin khách hàng thời gian deploy
反映日付を確認中
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board | Inprogess | - | PIC: Scuti
1.0 | Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board
デジタルボードのスライドを一括に読み込む調査 | Inprogess | 2024-07-29 00:00:00 | - Dự kiến ngày 07/29 sẽ có kết quả. 
- Hai bên thống nhất nếu không khả quan thì sẽ pending ưu tiên cho CR 7
-----------
7/29日に調査結果がまとめられる想定
実装が困難の場合、保留してCR7を優先すると認識あわせた済
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 仕様の分析、開発側と佐々木さんと確認
Phân tích spec, confirm với dev và ông spec | Done | 2024-07-23 00:00:00 | 今週行ったこと
・半角、全角文字の表示方法のグループ分け
・テキストボックスで文字数が無いならテキストボックスを削除する箇所の分析
・複数テキストボックスを同時に拡大、縮小した時の表示方法の確認
・その他開発側と確認事項があれば対応
2.0 | ペンとテキストの仕様の基本設計書の作成
Tạo BD CR7 | Done | 2024-07-24 00:00:00 | チームにも基本設計書を説明済み
Đã giải thích với team
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Pending | - | PIC: Otake & Tashi & Scuti
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Inprogess | - | PIC: Otake & Scuti
1.0 | [Otake] test UAT | Inprogess | 2024-07-26 00:00:00 | スケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=26:28
2.0 | [Scuti] Fix bug UAT | Inprogess | 2024-07-30 00:00:00 | スケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=26:28
3.0 | [Scuti] Deploy Production | Todo | 2024-07-30 00:00:00 | スケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=26:28
Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board | Inprogess | - | PIC: Scuti
1.0 | Nghiên cứu vấn đề tải tất cả Slide trên màn hình digital board
デジタルボードのスライドを一括に読み込む調査 | Inprogess | 2024-07-29 00:00:00 | - Dự kiến ngày 07/29 sẽ có kết quả. 
- Hai bên thống nhất nếu không khả quan thì sẽ pending ưu tiên cho CR 7
-----------
7/29日に調査結果がまとめられる想定
実装が困難の場合、保留してCR7を優先すると認識あわせた済
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] Nghiên cứ specs sau khi hoàn thành Basic Design
[開発] BDの確定後、仕様分析 | Inprogess | 2024-07-31 00:00:00
2.0 | [Dev] Nghiên cứu công nghệ sử dụng trong CR 7
[Dev]CR7に使う技術調査 | Inprogess | - | Tạm thời chưa có deadline, deadline sẽ được quyết định sau khi phân tích BD
----------
期日未定。BDの分析した後に確定予定
3.0 | Q&A CR7
CR7のBDのQA対応 | Inprogess | - | Tạm thời chưa có deadline, deadline sẽ được quyết định sau khi phân tích BD
期日未定。BDの分析した後に確定予定
Nghiên cứu cách tính tiền cho từng User nếu mang bán sản phẩm
販売価格を定めるためにサーバー料金の計算 | Pending | - | PIC: Otake & Tashi & Scuti
CR 5 Management classroom
CR5 授業管理 | Pending | - | PIC: Otake & Tashi & Scuti
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 07162024
週次報告
Weekly Meeting
日時／Time: 16-July 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（10-July-> 16-July）／Report task of this week (10-July-> 16-July）
Tổng quan: 

CR 4: 
- Tiến độ: Keep tiến độ, hai bên Scuti và Otake đang tiến hành test theo checklist
- Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28

CR 5:  Tạm thời pending. 

CR 7: Bắt đầu nghiên cứu công nghệ và tìm hiểu specs
-------------
全体: 

CR 4: 
- 進捗: オンスケであり、Scuti と Otake様側はチェックリストを実行中
- マスタースケジュール: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28

CR 5:  一時ストップ 

CR 7: 技術調査と仕様検討
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Done | - | PIC: Scuti
1.0 | Phân tích bug UAT
UATバグ分析 | Done | 2024-07-12 00:00:00
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân chia checklist cho hai bên Scuti - Otake
チェックリスト分担 | Done | 2024-07-11 00:00:00
2.0 | Coding 100% FE
FE実装完了 | Done | 2024-07-12 00:00:00
3.0 | Scuti test 50% checklist
Scutiがチェックリストの50％をテスト実施 | Inprogess | 2024-07-19 00:00:00 | Bugs management: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=251025572#gid=251025572
4.0 | Otake test 50% checklist
オータケ様がチェックリストの50％をテスト実施 | Inprogess | 2024-07-19 00:00:00 | Bugs management: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?gid=251025572#gid=251025572
CR 5 Management classroom | Pending | - | PIC: Otake & Tashi & Scuti
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu công nghệ để xử lý vấn đề tẩy của CR 7
ペンに関する要件を対応する技術調査 | Done | -
2.0 | 仕様の分析、開発側と佐々木さんと確認
Phân tích spec, confirm với dev và ông spec | Inprogess | 2024-07-23 00:00:00 | 今週行ったこと
・ペンの消し方についての技術調査とリスク報告
・文字サイズの最大が変更する件の仕様分析
・テキストのサイズ変更の仕様分析
最大フォントサイズ、小数点の考慮、四隅ハンドルを使用したテキストの拡大縮小の影響調査
・半角、全角文字の表示方法確認
3.0 | ペンとテキストの仕様の基本設計書の作成
Tạo BD CR7 | Inprogess | 2024-07-24 00:00:00 | 仕様を分析し、固まった箇所に関して少しずつ記載しています。
Other | Done | - | PIC: Otake & Tashi & Scuti
1.0 | Demo phương pháp test cho phía khách hàng.
テストの実施しかたをデモする | Done | 2024-07-10 00:00:00 | Đã thống nhất thêm cột tính toán thời gian trong checklist
テンプレートに日付と実施時点列を追加するようにした。
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Scuti test 100% checklist
Scutiがチェックリストの100％をテスト実施 | Inprogess | 2024-07-19 00:00:00
2.0 | Otake test 100% checklist
オータケ様がチェックリストの100％をテスト実施 | Inprogess | 2024-07-19 00:00:00
3.0 | Fix bug | Inprogess | 2024-07-22 00:00:00
4.0 | Deploy STG | Todo | 2024-07-22 00:00:00
CR 5 Management classroom | Pending | - | PIC: Otake & Tashi & Scuti
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 仕様の分析、開発側と佐々木さんと確認
Phân tích spec, confirm với dev và ông spec | Inprogess | 2024-07-23 00:00:00 | 残り作業：
・半角、全角文字の表示方法のグループ分け
・テキストボックスで文字数が無いならテキストボックスを削除する箇所の分析（本日新たに追加部分）
・複数テキストボックスを同時に拡大、縮小した時の表示方法の確認
・その他開発側と確認事項があれば対応
2.0 | ペンとテキストの仕様の基本設計書の作成
Tạo BD CR7 | Inprogess | 2024-07-24 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
SEの工数について、

・開発者の手が止まらない
・仕様の分析、開発者との確認、基本設計書の作成
・早めにCR7の見積もりを出す

という観点で0.25人月 = 1日あたり2時間の場合、あまり稼働時間を確保できず一日あたりの作業が少なくなっています。
そのため、基本設計書が作成完了するまで一旦は1日あたり0.5程度で行い、基本設計書の作成が完了次第で0.25程度に戻せないか、相談させてください。


Về giờ công SE,

・Các bạn dev có thể ngừng làm việc
・Phân tích spec, xác nhận với dev, tạo BD
・Cung cấp est của CR7 càng sớm càng tốt

Từ quan điểm này, nếu 0,25 tháng công = 2 giờ mỗi ngày, tôi sẽ không thể đảm bảo nhiều thời gian làm việc và công việc mỗi ngày sẽ ít hơn.
Vì vậy, cho đến khi hoàn thiện BD thi làm khoảng 0.5/ngày. Sau khi hoàn thành việc tạo BD thì làm khoảng 0,25 thôi. Xin vui lòng cho tôi thảo luận về điều này.
## Sheet: 07092024
週次報告
Weekly Meeting
日時／Time: 09-July 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（02-July-> 09-July）／Report task of this week (02-July-> 09-July）
Tổng quan: 
CR 6: Đã release Production

CR 4: 
- Tiến độ: Keep tiến độ
- Master schedule update thêm (50%) công số test của Otake: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28

CR 5:  Tạm thời pending. 

CR 7: Bắt đầu nghiên cứu công nghệ và tìm hiểu specs
-------------
全体概要： 
CR 6: 本番に反映済

CR 4: 
- 進捗:オンスケ
- マスタースケジュール： https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28

CR 5:  保留中. 

CR 7: 技術調査と仕様検討開始
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Inprogess | - | PIC: Scuti
1.0 | Phân tích bug UAT
UATバグ分析 | Inprogess | 2024-07-12 00:00:00
2.0 | Deploy Apple: Chỉnh sửa thứ tự ảnh
本番反映：アバター写真の順番変更 | Done | 2024-07-05 00:00:00
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có.
CR4のBDを分析・不明点確認 | Done | 2024-07-10 00:00:00 | Từ tuần sau sẽ close hẳn task này. 
数が少ない為、来週から終了にする
2.0 | Coding 100% BE
BEを100％まで完成 | Done | 2024-07-10 00:00:00
3.0 | Coding 90% FE
FEを90%まで実装 | Inprogess | 2024-07-12 00:00:00
4.0 | Create 100% Checklist
チェックリスト作成完成 | Done | 2024-07-10 00:00:00
5.0 | Cập nhật tiêu chuẩn chất lượng cho CR 4
CR4の品質指標を定義 | Done | 2024-07-05 00:00:00 | 参照：
 https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit?gid=1216491316#gid=1216491316
CR 5 Management classroom | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Pending | - | Pendding tập trung CR 7
2.0 | 内部メンバーで仕様の分析 (技術側)
Trao đối với dev về technical | Pending | - | Pendding tập trung CR 7
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Meeting sơ bộ về CR 7 với khách hàng. 
概要説明MTG実施 | Done | 2024-07-03 00:00:00
2.0 | 仕様の分析、開発側と佐々木さんと確認
Phân tích spec, confirm với dev và ông spec | Inprogess | -
Other | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Demo phương pháp test cho phía khách hàng.
テストの実施しかたをデモする | Done | 2024-07-05 00:00:00 | Đã đặt lịch ngày 07/10 giải thích cho khách hàng. 
7/10日の定例会の後に実施
2.0 | Xử lý bug không hiển thị 「Digital tool」「Pen」「Input text」「Next」「Back」 trên màn hình Digital board. 
「読み込み中」不具合を対応 | Done | 2024-07-05 00:00:00 | Sau khi build bản Apple review sửa thứ tự ảnh thì đã hết bug. 
アバター画像の順番修正で新規に構築してテストフライトに反映したら解消できた。
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Inprogess | - | PIC: Scuti
1.0 | Phân tích bug UAT
UATバグ分析 | Todo | 2024-07-12 00:00:00
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân chia checklist cho hai bên Scuti - Otake
チェックリスト分担 | Todo | 2024-07-11 00:00:00
2.0 | Coding 100% FE
FE実装完了 | Todo | 2024-07-12 00:00:00
3.0 | Scuti test 50% checklist
Scutiがチェックリストの50％をテスト実施 | Todo | 2024-07-19 00:00:00
4.0 | Otake test 50% checklist
オータケ様がチェックリストの50％をテスト実施 | Todo | 2024-07-19 00:00:00
CR 5 Management classroom | Pending | - | PIC: Otake & Tashi & Scuti
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu công nghệ để xử lý vấn đề tẩy của CR 7
ペンに関する要件を対応する技術調査 | Todo | -
2.0 | 仕様の分析、開発側と佐々木さんと確認
Phân tích spec, confirm với dev và ông spec | Inprogess | - | ・本日の佐々木さんとのMTGで追加で一件、テキストボックスの拡大縮小はCanvaのように拡大縮小してほしいとの依頼がありました。こちらもあわせて確認しています。
3.0 | ペンとテキストの仕様の基本設計書の作成
Tạo BD CR7 | Todo | -
Other | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Demo phương pháp test cho phía khách hàng.
テストの実施しかたをデモする | Todo | 2024-07-10 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 07022024
週次報告
Weekly Meeting
日時／Time: 03-July 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（26-June-> 02-July）／Report task of this week (26-June-> 02-July）
Tổng quan: 
CR 6: Đã release Production

CR 4: 
- Tiến độ: Keep tiến độ
- Master schedule update thêm (50%) công số test của Otake: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28
-------------
全体: 
CR 6
- 進捗: オンスケ―
CR4:
-進捗：オンスケ―
-マスタースケジュール（オータケ様のテストを50％担当に追記）： 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787&range=16:28
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Inprogess | - | PIC: Scuti
1.0 | Fix Bug UAT
UATバグ改修 | Done | 2024-06-27 00:00:00
2.0 | Deploy Production
本番反映 | Done | 2024-06-28 00:00:00
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có.
CR4のBDを分析・不明点確認 | Done | 2024-06-27 00:00:00
2.0 | Coding 30% BE
BEの30％まで実装 | Done | 2024-07-09 00:00:00 | Trong thời gian chờ khách test UAT CR 6 đã code trước khoảng 10%, chủ yếu sẽ coding từ ngày 06/28
CR６のUAT実施を待っている間にCR4の10％ぐらいコーディングした。これからのコーディングは6/28から実施
3.0 | Coding 30% FE
FEの30％まで実装 | Done | 2024-07-12 00:00:00 | Trong thời gian chờ khách test UAT CR 6 đã code trước khoảng 10%, chủ yếu sẽ coding từ ngày 06/28
CR６のUAT実施を待っている間にCR4の10％ぐらいコーディングした。これからのコーディングは6/28から実施
4.0 | Create 10% Checklist
チェックリストの10％まで作成 | Done | 2024-07-10 00:00:00
5.0 | Cập nhật master schedule
マスタースケジュール更新 | Done | 2024-07-02 00:00:00 | Cập nhật master schedule sau khi thêm 50% effort test của Otake
オータケ様のサポート工数を50％で計算したスケジュール：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=1554534787#gid=1554534787
6.0 | Cập nhật tiêu chuẩn chất lượng cho CR 4
CR4の品質指標定義 | Inprogess | 2024-07-05 00:00:00
7.0 | チームメンバーの仕様に関する質問のサポート
Hỗ trợ spec của các member | Inprogess | -
CR 5 Management classroom | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | 仕様の分析と必要に応じてMTGで質問させていただきます。
Phân tích spec và QA trong MTG (nếu cần)
Other | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | Demo phương pháp test cho phía khách hàng.
テストの実施しかたをデモする | Inprogess | 2024-07-05 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Inprogess | - | PIC: Scuti
1.0 | Phân tích bug UAT
UATバグ分析 | Todo | 2024-07-12 00:00:00
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có.
CR4のBDを分析・不明点確認 | Inprogess | 2024-07-10 00:00:00
2.0 | Coding 100% BE
BEを100％まで完成 | Todo | 2024-07-10 00:00:00
3.0 | Coding 90% FE
FEを90%まで実装 | Todo | 2024-07-12 00:00:00
4.0 | Create 100% Checklist
チェックリスト作成を100％まで | Todo | 2024-07-10 00:00:00
5.0 | Cập nhật tiêu chuẩn chất lượng cho CR 4
CR4の品質指標を定義 | Inprogess | 2024-07-05 00:00:00
CR 5 Management classroom | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | 仕様の分析と必要に応じてMTGで質問させていただきます。
Phân tích spec và QA trong MTG (nếu cần)
2.0 | 内部メンバーで仕様の分析 (技術側)
Trao đối với dev về technical | Todo | - | 本日開発側とMTGで技術側の確認をします。
Hôm nay có hợp với dev để check technical
CR 7 Pen and text | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | ペンとテキストの仕様分析
Phân tích CR7 pen and text | Todo | -
2.0 | ペンとテキストの仕様の基本設計書の作成
Tạo BD CR7 | Todo | -
Other | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | Demo phương pháp test cho phía khách hàng.
テストの実施しかたをデモする | Inprogess | 2024-07-05 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 06262024
週次報告
Weekly Meeting
日時／Time: 26-June 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（19-June-> 25-June）／Report task of this week (19-June-> 25-June）
Tổng quan: 
CR 6
- Tiến độ: Keep tiến độ.
- Chất lượng: 
  + File tiêu chuẩn:  https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=107884495
  + Team sẽ phân tích bug UAT và gửi lại kết quả cho khách hàng. 

CR 4: 
- Team đã gần như hoàn thành phần nghiên cứu specs => Bắt đầu tiến hành coding, dự kiến cuối tháng 7 hoàn thành.
- Master schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1554534787

Q&A: https://docs.google.com/spreadsheets/d/1uUluSuuGHdpnE8Q_LBGUuB6J7dzrCuqpNa4Qm2Sqkis/edit#gid=154383414&range=49:49
---------------------
全体: 
CR 6
- 進捗: オンスケ―
- 品質: 
  + 品質指標ファイル:  https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=107884495
  + UATバグ2件発生した。これから分析して結果を共有すること

CR 4: 
-  仕様の分析はほとんど完了するところ =>　これから実装に着手し、7月末ぐらいに完成
- マスタースケジュール: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1554534787

Q&A: https://docs.google.com/spreadsheets/d/1uUluSuuGHdpnE8Q_LBGUuB6J7dzrCuqpNa4Qm2Sqkis/edit#gid=154383414&range=49:49
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Deploy STG | Done | 2024-06-19 00:00:00
2.0 | Fix Bug UAT | Inprogess | 2024-06-21 00:00:00 | UATの期間が延長されるため、UATバグ修正も遅延された
3.0 | Deploy Production | Todo | 2024-06-24 00:00:00 | UATの期間が延長されるため、UATバグ修正も遅延された
4.0 | Trao đổi về BUG của CR 6 phần khách hàng test. 
オータケ様が発見したバグについてやり取り | Inprogess
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có.
CR4のBDを分析・不明点確認 | Inprogess | 2024-06-27 00:00:00 | Làm song song với việc deploy STG và Production của CR 6
CR6リリース作業（ステージング・本番）と並行に実施
2.0 | Create master Schedule CR 4 | Done | 2024-06-26 00:00:00 | Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1554534787
CR 5 Management classroom | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | Ưu tiên làm hỗ trợ CR4 và CR6 nhưng nếu không có nhiều task làm thì sẽ phân tích CR5
CR4,6の仕様のサポートを優先として行っていました。
授業管理の仕様の整理と分析を進めています。
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Management Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Fix Bug UAT | Inprogess | 2024-06-27 00:00:00 | Dự kiến ngày 06/27 sẽ hoàn thành.
6/27日に完了する予定
2.0 | Deploy Production | Todo | 2024-06-28 00:00:00 | Nếu khách hàng confirm bug UAT thành công trong ngày 07/28 thì phía Scuti sẽ đưa lên Production ngay sau đó. 
UATバグ改修の再確認で問題がなければ、7/28日に本番環境に反映する予定。
CR 4 Distribution | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có.
CR4のBDを分析・不明点確認 | Inprogess | 2024-06-27 00:00:00
2.0 | Coding 30% BE | Todo | 2024-07-09 00:00:00 | Trong thời gian chờ khách test UAT CR 6 đã code trước khoảng 10%, chủ yếu sẽ coding từ ngày 06/28
CR６のUAT実施を待っている間にCR4の10％ぐらいコーディングした。これからのコーディングは6/28から実施
3.0 | Coding 30% FE | Todo | 2024-07-12 00:00:00 | Trong thời gian chờ khách test UAT CR 6 đã code trước khoảng 10%, chủ yếu sẽ coding từ ngày 06/28
CR６のUAT実施を待っている間にCR4の10％ぐらいコーディングした。これからのコーディングは6/28から実施
4.0 | Create 10% Checklist | Todo | 2024-07-10 00:00:00
5.0 | Cập nhật tiêu chuẩn chất lượng cho CR 4 | Todo | 2024-07-05 00:00:00
CR 5 Management classroom | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | 仕様の分析と必要に応じてMTGで質問させていただきます。
Phân tích spec và QA trong MTG (nếu cần)
Other | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | Demo phương pháp test cho phía khách hàng.
テストの実施しかたをデモします | Todo | 2024-07-05 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806

Q&A 1: Lần làm CR 4 này phía khách hàng có support bên mình test 50% không? 
Q&A 1: CR4にもテストの50%ぐらいをサポートしますか？
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 06112024
週次報告
Weekly Meeting
日時／Time: 12-June 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（07-June-> 11-June）／Report task of this week (07-June-> 11-June）
Tổng quan: 
CR 6
- Tiến độ: Keep tiến độ.
- Chất lượng: 
  + File tiêu chuẩn:  https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=107884495 
  + Hiên tại chưa đánh giá được do chưa tới giai đoạn UAT. 

CR 4: 
- Team bắt đầu tiến hành tìm hiểu specs CR 4 vào tuần tới. 
---------------
概要：
CR6
-進捗：オンスケ―
品質：
品質指標ファイル：https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=107884495 
まだUAT期間でないため、品質評価がしない。
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Hoàn thành 100% code FE theo master schedule
FEの100％まで完成する | Done | 2024-06-10 00:00:00
2.0 | Test 20% theo checklist đã viết. 
チェックリストを20％まで実施 | Done | -
3.0 | 第一層もしくは第二層タグを削除しても第三層タグが検索画面に残り続ける件の仕様整理と開発側への連携
Về việc "sau khi xóa tag cấp 1 hoặc cấp 2 thì vẫn hiển thị tag cấp 3 trên màn hình search" thì làm thành CR | Inprogess | 報告内容
https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?gid=1556530206#gid=1220235613
4.0 | Trao đổi về BUG của CR 6 phần khách hàng test. 
オータケ様が発見したバグについてやり取り | Inprogess | 合計3件。1件：バグでないCR？か検討。1件：再現不可。1件：確認中
バグ報告書：https://docs.google.com/spreadsheets/d/14LsfkkQ6AQmVKOXrN7N0dM6orHwIN3s36fSU9Deyr8Y/edit?pli=1#gid=1556530206 
-------------------
Tổng 3 trouble. 1 trouble không phải bug, đang xem xét có làm CR hay không
1 trouble: không tái hiện được
1 trouble: Đang trao đổi
File: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1155183496&range=2:4
CR 4 Phát bài | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có. | Inprogess | 2024-06-18 00:00:00 | Chỉ tiến hành làm nếu lượng BUG phát sinh không nhiều. 
CR6のバグがあまり多くない場合のみに実施
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Pending | - | 現在はCR4,5の仕様のサポートを優先として行っています。
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Test 100% theo checklist đã viết. 
チェックリストを100％まで実施 | Inprogess | 2024-06-18 00:00:00
2.0 | Fix bugs phát sinh trong quá trình test. 
バグが発生すれば改修 | Inprogess | 2024-06-18 00:00:00
3.0 | Trao đổi về BUG của CR 6 phần khách hàng test. 
オータケ様が発見したバグについてやり取り | Inprogess | 確認中の件に引き続き対応
Tiếp tục trao đổi về trouble đang confirm
File: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1155183496&range=2:4
CR 4 Phát bài | Inprogess | - | PIC: Tashi & Scuti
1.0 | Phân tích specs CR 4 & Q&A nếu có.
CR4のBDを分析・不明点確認 | Inprogess | 2024-06-18 00:00:00 | Chỉ tiến hành làm nếu lượng BUG phát sinh không nhiều. 
CR6のバグがあまり多くない場合のみに実施
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Todo | - | Ưu tiên làm hỗ trợ CR4 và CR5 nhưng nếu không có nhiều task làm thì sẽ phân tích CR5
現在はCR4,5の仕様のサポートを優先として行いますが、
もし空きがあればCR5の仕様分析を行います。
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 06052024
週次報告
Weekly Meeting
日時／Time: 14 Wed 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（29-Wed-> 06-June）／Report task of this week (29-Wed-> 06-June）
Tổng quan: 
CR 6
- Tiến độ: Keep tiến độ.
- Chất lượng: Nhờ khách hàng check tiêu chuẩn chất lượng:
 https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=107884495
---------------
全体的
-進捗：オンスケ―
-品質：以下の品質評価資料を確認するようにお願いします。
 https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=107884495
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Hoàn thành 100% code BE theo master schedule
BEを完成する | Done | 2024-06-05 00:00:00
2.0 | Hoàn thành 70% code FE theo master schedule
FEの70％まで完成する | Done | 2024-06-05 00:00:00
3.0 | Hoàn thành 100% create checklist
チェックリスト作成完成 | Inprogess | 2024-06-05 00:00:00 | - Đã hoàn thành checklist phần bên khách test. 
- Checklist phần bên Scuti sẽ bổ sung và hoàn thành sau 06/06
4.0 | Phân chia hai phần test giữa Scuti và Otake
両側のテスト範囲を見分けする | Done | 2024-06-05 00:00:00 | Đã gửi khách hàng: 
https://docs.google.com/spreadsheets/d/1e8aNeRjcWsGu2U2iTonRRtskxCdOxuxzvik0zHpEmD0/edit?pli=1#gid=665683326
5.0 | Hỗ trợ test spec CR6
CR6の仕様確認をチームにサポート | Done | - | SEがテスター、開発者と仕様についてチェックリストの確認やサポートをする。
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Pending | - | CR5の仕様分析を行う
今週は数点の質問を回答いたしました。
現在はCR6の仕様のサポートを優先として行っています。
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Hoàn thành 100% code FE theo master schedule
FEの100％まで完成する | Inprogess | 2024-06-10 00:00:00
2.0 | Test 20% theo checklist đã viết. 
チェックリストを20％まで実施 | Inprogess | -
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | CR6のチェックリストの確認が完了したので、
CR5の仕様分析を行う
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 05292024
週次報告
Weekly Meeting
日時／Time: 14 Wed 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（22-Wed-> 28-Wed）／Report task of this week (22-Wed-> 28-Wed）
Tổng quan: 
CR 6
- Tiến độ: Keep tiến độ.
- Chất lượng: Scuti đang tiến hành làm file tiêu chuẩn chất lượng mới.
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Hoàn thành 50% code BE theo master schedule
BEの50%まで完成する | Done | 2024-05-29 00:00:00
2.0 | Hoàn thành 30% code FE theo master schedule
FEの30％まで完成する | Done | 2024-05-29 00:00:00
3.0 | Hoàn thành 70% create checklist
チェックリスト作成を70％まで完成 | Done | 2024-05-29 00:00:00
4.0 | Cập nhật BD theo QA
QAに沿って基本設計書を更新 | Done | 2024-05-29 00:00:00 | QAがあればその都度更新する。
5.0 | Cập nhật master Schedule
マスタースケジュール更新 | Done | 2024-05-29 00:00:00 | New master schedule:
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1521936835&range=16:27
6.0 | Hỗ trợ test spec CR6
CR6の仕様確認をチームにサポート | Inprogess | - | SEがテスター、開発者と仕様についてサポートをする。
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | CR5の仕様分析を行う
今週は数点の質問を回答いたしました。
現在はCR6の仕様のサポートを優先として行っています。
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Tashi & Scuti
1.0 | Hoàn thành 100% code BE theo master schedule
BEを完成する | Inprogess | 2024-06-05 00:00:00
2.0 | Hoàn thành 70% code FE theo master schedule
FEの70％まで完成する | Inprogess | 2024-06-05 00:00:00
3.0 | Hoàn thành 100% create checklist
チェックリスト作成完成 | Inprogess | 2024-06-05 00:00:00
4.0 | Phân chia hai phần test giữa Scuti và Otake
両側のテスト範囲を見分けする | Inprogess | 2024-06-05 00:00:00
5.0 | Hỗ trọ spec CR6
CR6の仕様のチームサポート | Inprogess | - | SEがテスター、開発者と仕様についてサポートをする。
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | CR5の仕様分析を行う
・時間割の機能を廃止する件を開発者と確認する
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 05222024
週次報告
Weekly Meeting
日時／Time: 14 Wed 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（15-Wed-> 21-Wed）／Report task of this week (15-Wed-> 21-Wed）
Tổng quan: 
CR 6
- Tiến độ: Keep tiến độ.
- Chất lượng: Scuti đang tiến hành làm file tiêu chuẩn chất lượng mới. 

CR 2, 3:
- Trong thời gian UAT (30/04 ~ 08/05) theo master schedule phía Otake phát hiện ra 1 bug UAT, Scuti đã phân tích nguyên nhân và action ở file dưới. 
https://docs.google.com/spreadsheets/d/1UIqZFAgFU-xoNzOowN3dLeSMutOM5nn63TmxoK_CDjs/edit#gid=461481375
-------------------
CR6
-進捗：守っている
-品質：これからのタスクに応じる品質指標ファイルを作成している。
CR2,3
-UAT期間内（4/30日～5/8日）にUAT1件が発見。バグ分析と対策は以下です。
https://docs.google.com/spreadsheets/d/1UIqZFAgFU-xoNzOowN3dLeSMutOM5nn63TmxoK_CDjs/edit#gid=461481375
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Update Estimate + Break task hai phương án
- Chỉnh sửa chỉ tag cấp 3, 4
- Chỉnh sửa cả tag cấp 1, 2, 3, 4
--------------------
詳細見積もりと作業分析
・第3層・第4層を編集可能にする案
・第1層～第4層を編集可能にする案 | Done | 2024-05-22 00:00:00
2.0 | Phân tích CR 6, Q&A các vấn đề chưa rõ.
CR6の要件分析及び不明点のQ＆A | Done | 2024-05-22 00:00:00
3.0 | Create master schedule CR 6
CR6のマスタースケジュール作成 | Done | 2024-05-22 00:00:00 | Master Schedule: không đổi theo phương án 2
マスタースケジュール　（以前連携したものと同じ）
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1#gid=1521936835
4.0 | Nếu còn thời gian sẽ bắt đầu tiến hành Dev và Create Checklist CR 6
時間がまだ残れば、実装とチェックリスト作成を実施する | Done | 2024-05-22 00:00:00 | BE: 20%
FE: 10%
Tester: 10%
5.0 | Cập nhật BD theo QA
QAに沿って基本設計書を更新 | Done | 2024-05-22 00:00:00 | 5つほどQAの内容を反映済み。
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関するMTG 
MTG về CR5 | Done | - | 5/20（月）の日本時間15時より開始予定
Bắt đầu từ 20/05 15 Japan time
2.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | MTG後に仕様分析を行う
Sau MTG phân tích về CR5
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Hoàn thành 50% code BE theo master schedule
BEの50%まで完成する | Inprogess | 2024-05-29 00:00:00
2.0 | Hoàn thành 30% code FE theo master schedule
FEの30％まで完成する | Inprogess | 2024-05-29 00:00:00
3.0 | Hoàn thành 70% create checklist
チェックリスト作成を70％まで完成 | Inprogess | 2024-05-29 00:00:00
4.0 | Cập nhật BD theo QA
QAに沿って基本設計書を更新 | Inprogess | 2024-05-29 00:00:00 | QAがあればその都度更新する。
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Inprogess | - | MTG後に仕様分析を行う
Sau MTG phân tích về CR5
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
SEの今月の作業工数予定が0.4程度となっています。
理由：
・CR6（タグの編集）にて、非効率な開発にならないように開発側と綿密に認識合わせを行ったため
・CR6にて、開発者やテスターの手が止まらないように、設計側の1日あたりの作業時間を増やして対応
・今後の作業（CR５授業管理）も現在設計を行なっており、スケジュールの都合（9月までに機能実装が完了している）もあるので手を止めることはできない
## Sheet: 05142024
週次報告
Weekly Meeting
日時／Time: 14 Wed 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（09-Wed-> 14-Wed）／Report task of this week (09-Wed-> 14-Wed）
Tổng quan: 
1. CR 2, 3
- Team hoàn thành deploy lên Production và Apple
- Team Scuti đang phân tích bug UAT. 
2. CR 6 (Quản lý Tag digital tool
- Team đang hoàn thành BD và phân tích specs. 
--------------------------
全体概要：
1.CR 2, 3
-　本番とAppleにリリース完了
- 　UATバグ分析中
2. CR 6（タグ管理）
- 　BDの最終確認と仕様分析中
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Done | - | PIC: Scuti
1.0 | Deploy Production
本番環境に反映 | Done | 2024-05-08 00:00:00
CR Searh (No 2) | Done | - | PIC: Otake & Tashi & Scuti
1.0 | Deploy Production
本番環境に反映 | Done | 2024-05-08 00:00:00
2.0 | Phân Tích bug UAT
UATバグ分析 | Inprogress | 2024-05-22 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Done | - | PIC: Otake & Tashi & Scuti
1.0 | Deploy Production
本番環境に反映 | Done | 2024-05-08 00:00:00
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 要件の分析とUIの提案 | Done | - | オータケ様側とScuti側で要求の分析とUIの提案をしました。
2.0 | 基本設計書の作成 | Done | - | 5/15のMTGで基本設計書の説明をし、基本設計書の最終版
が完成しました。
3.0 | Update Estimate + Break task hai phương án
- Chỉnh sửa chỉ tag cấp 3, 4
- Chỉnh sửa cả tag cấp 1, 2, 3, 4
--------------------
詳細見積もりと作業分析
・第3層・第4層を編集可能にする案
・第1層～第4層を編集可能にする案 | Pending | - | Deadline phụ thuộc vào việc hoàn thành basic design. 
基本設計書の完成日によって完了予定日が変わる
4.0 | Phân tích CR 6, Q&A các vấn đề chưa rõ.
CR6の要件分析及び不明点のQ＆A | Inprogess | 2024-05-22 00:00:00
5.0 | Create master schedule CR 6
CR6のマスタースケジュール作成 | Pending | 2024-05-22 00:00:00
6.0 | Nếu còn thời gian sẽ bắt đầu tiến hành Dev và Create Checklist CR 6
時間がまだ残れば、実装とチェックリスト作成を実施する | Pending | 2024-05-22 00:00:00
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関するMTG 
MTG về CR5 | Pending | - | CR6の基本設計書が終わり次第開始する。
Sau khi làm xong BD của CR6 thì mới bắt đầu àm MTG của CR5
2.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Pending | - | MTG後に仕様分析を行う
Sau MTG phân tích về CR5
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR 6 Quản lý Digital tool tag | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Update Estimate + Break task hai phương án
- Chỉnh sửa chỉ tag cấp 3, 4
- Chỉnh sửa cả tag cấp 1, 2, 3, 4
--------------------
詳細見積もりと作業分析
・第3層・第4層を編集可能にする案
・第1層～第4層を編集可能にする案 | Todo | 2024-05-22 00:00:00
2.0 | Phân tích CR 6, Q&A các vấn đề chưa rõ.
CR6の要件分析及び不明点のQ＆A | Inprogess | 2024-05-22 00:00:00
3.0 | Create master schedule CR 6
CR6のマスタースケジュール作成 | Todo | 2024-05-22 00:00:00
4.0 | Nếu còn thời gian sẽ bắt đầu tiến hành Dev và Create Checklist CR 6
時間がまだ残れば、実装とチェックリスト作成を実施する | Todo | 2024-05-22 00:00:00
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関するMTG 
MTG về CR5 | Todo | - | 5/20（月）の日本時間15時より開始予定
Bắt đầu từ 20/05 15 Japan time
2.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Todo | - | MTG後に仕様分析を行う
Sau MTG phân tích về CR5
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 05082024
週次報告
Weekly Meeting
日時／Time: 08 Wed 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（26-April-> 08-Wed）／Report task of this week (26-April-> 08-Wed）
Tổng quan: 
1. Tiến độ: 
   - CR 2, 3: Keep tiến độ. 
2. Chất lượng: 
   - CR 2, 3: Tốt so với tiêu chuẩn chất lượng đã đặt ra, Scuti sẽ phân tích 2 bug UAT, sau khi phân tích xong sẽ gửi lại thông tin sang khách hàng. 
--------
全体：
①進捗：
CR2，3：オンスケ―
②品質
CR2,3：品質指標を基に評価すると、品質が良くなっている。UATに発見できた現象：2件で分析できた後に連携する。
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | Hoàn thành toàn bộ phần Dev - Test -  Fix bug CR 3
CR3の全て作業（実装・テスト・バグ改修）完了 | Done | 2024-04-25 00:00:00
2.0 | Deploy STG
ステージング環境に反映 | Done | 2024-04-26 00:00:00
3.0 | Deploy Production
本番環境に反映 | Inprogress | 2024-05-08 00:00:00 | Hiện tại đang đợi khách hàng gửi tài khoản GV để request Apple Review
Appleレビューに使用する先生のアカウントを連携してもらう【待機中】
4.0 | Trao đổi với khách về bug của khách log / nội dung checklist
オータケ様側に報告いただいたCR3のバグの内容確認・修正、CR3のチェックリストの質問を回答 | Done | - | 詳細： https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
Chi tiết: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Hoàn thành toàn bộ phần Dev - Test -  Fix bug CR 2
CR3の全て作業（実装・テスト・バグ改修）完了 | Done | 2024-04-25 00:00:00
2.0 | Deploy STG
ステージング環境に反映 | Done | 2024-04-26 00:00:00
3.0 | Deploy Production
本番環境に反映 | Inprogress | 2024-05-08 00:00:00 | Hiện tại đang đợi khách hàng gửi tài khoản GV để request Apple Review
Appleレビューに使用する先生のアカウントを連携してもらう【待機中】
4.0 | Trao đổi với khách về bug của khách log / nội dung checklist CR2
オータケ様側に報告いただいたCR2のバグの内容確認・修正、CR2のチェックリストの質問を回答 | Done | - | 詳細： https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
Chi tiết: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Deploy Production
本番環境に反映 | Inprogress | 2024-05-08 00:00:00 | Hiện tại đang đợi khách hàng gửi tài khoản GV để request Apple Review
Appleレビューに使用する先生のアカウントを連携してもらう【待機中】
CR 6 Quản lý Digital tool tag | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | Estimate vo hai phương án:
- Chỉnh sửa chỉ tag cấp 3, 4
- Chỉnh sửa cả tag cấp 1, 2, 3, 4
--------------------------
以下の2案を概算見積もりした。
・第3層・第4層を編集可能にする案
・第1層～第4層を編集可能にする案 | Todo | 2024-05-08 00:00:00 | パターン①：第3層, 第4層タグのみ編集可能                 
- BE: 5 MD     
- FE: 8 MD
- Tester: 6.5 MD            
パターン②：第1層, 第2層,第3層, 第4層タグを編集可能
- BE: 16 MD
- FE: 10 MD
- Tester: 13 MD
2.0 | 要件の分析とUIの提案 | Inprogress | -
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | Deploy Production
本番環境に反映 | Inprogress | 2024-05-08 00:00:00 | Hiện tại đang đợi khách hàng gửi tài khoản GV để request Apple Review
Appleレビューに使用する先生のアカウントを連携してもらう【待機中】
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Deploy Production
本番環境に反映 | Inprogress | 2024-05-08 00:00:00 | Hiện tại đang đợi khách hàng gửi tài khoản GV để request Apple Review
Appleレビューに使用する先生のアカウントを連携してもらう【待機中】
2.0 | Phân Tích bug UAT
UATバグ分析 | Todo | 2024-05-15 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Deploy Production
本番環境に反映 | Inprogress | 2024-05-08 00:00:00 | Hiện tại đang đợi khách hàng gửi tài khoản GV để request Apple Review
Appleレビューに使用する先生のアカウントを連携してもらう【待機中】
CR 6 Quản lý Digital tool tag | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 要件の分析とUIの提案 | Inprogress
2.0 | 基本設計書の作成 | Todo
3.0 | Update Estimate + Break task hai phương án
- Chỉnh sửa chỉ tag cấp 3, 4
- Chỉnh sửa cả tag cấp 1, 2, 3, 4
--------------------
詳細見積もりと作業分析
・第3層・第4層を編集可能にする案
・第1層～第4層を編集可能にする案 | Todo | - | Deadline phụ thuộc vào việc hoàn thành basic design. 
基本設計書の完成日によって完了予定日が変わる
4.0 | Phân tích CR 6, Q&A các vấn đề chưa rõ.
CR6の要件分析及び不明点のQ＆A | Todo | 2024-05-15 00:00:00
5.0 | Create master schedule CR 6
CR6のマスタースケジュール作成 | Todo | 2024-05-15 00:00:00
6.0 | Nếu còn thời gian sẽ bắt đầu tiến hành Dev và Create Checklist CR 6
時間がまだ残れば、実装とチェックリスト作成を実施する | Todo | 2024-05-15 00:00:00
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関するMTG 
MTG về CR5 | Todo | - | CR6の基本設計書が終わり次第開始する。
Sau khi làm xong BD của CR6 thì mới bắt đầu àm MTG của CR5
2.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Todo | - | MTG後に仕様分析を行う
Sau MTG phân tích về CR5
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
SEの今月の作業工数予定が0.4程度となっています。
理由：
・CR6（タグの編集）にて、非効率な開発にならないように開発側と綿密に認識合わせを行ったため
・CR6にて、開発者やテスターの手が止まらないように、設計側の1日あたりの作業時間を増やして対応
・今後の作業（CR５授業管理）も現在設計を行なっており、スケジュールの都合（9月までに機能実装が完了している）もあるので手を止めることはできない
## Sheet: 04252024
週次報告
Weekly Meeting
日時／Time: 25 April 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（17-April-> 24-April）／Report task of this week (17-April-> 24-April）
Tổng quan: 
1. Tiến độ: 
   - CR 2, 3: Keep tiến độ. 
2. Chất lượng: 
   - CR 2, 3: Chưa đánh giá được do chưa tới giai đoạn UAT
--------
全体：
①進捗：
CR2，3：オンスケ―
②品質
CR2,3：未評価（UAT未着手の為）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] [Milestone 2] Implement
Thay đổi Projector và tính toán vị trí, sắp xếp các Menu trên màn hình Digital board
ボード画面上の各メニュー位置や内容変更とプロジェクターし方修正 | Done | 2024-04-19 00:00:00
2.0 | Hoàn thành test theo Milestone 1 từ cả 2 phía Otake & Scuti
両側にてマイルストーン１のテスト実施すること | Done | 2024-04-17 00:00:00
3.0 | Hoàn thành 50% test theo Milestone 2 từ cả 2 phía Otake & Scuti
両側にてマイルストーン２の50%テスト実施すること | Inprogress | 2024-04-29 00:00:00 | Hoàn thành 70%
70％ぐらい出来上がった。
4.0 | Trao đổi với khách về bug của khách log / nội dung checklist
オータケ様側に報告いただいたCR3のバグの内容確認・修正、CR3のチェックリストの質問を回答 | Inprogress | - | 詳細： https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
Chi tiết: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 1
-------------------
マイルストーン１のタスクを実装する | Done | 2024-04-17 00:00:00
2.0 | [Dev] coding các task trong Milestone 2
-------------------
マイルストーン2のタスクを実装する | Inprogress | 2024-04-25 00:00:00 | Hoàn thành 90%
90％ぐらい出来上がった。
3.0 | Hoàn thành test theo Milestone 1 từ cả 2 phía Otake & Scuti
両側にてマイルストーン１のテスト実施すること | Done | 2024-04-23 00:00:00
4.0 | テスト（SE,BrSE）
Test của BrSE và SE | Inprogress | - | 品質向上の目的でSE、ブリッジSEもテストに参加
5.0 | Trao đổi với khách về bug của khách log / nội dung checklist CR2
オータケ様側に報告いただいたCR2のバグの内容確認・修正、CR2のチェックリストの質問を回答 | Inprogress | - | 詳細： https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
Chi tiết: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit#gid=1705384102
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Đưa lên Production cùng 2 CR 2, 3
4月末ぐらいにCR2,3と合わせて本番反映 | Todo | -
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | Hoàn thành 100% test theo Milestone 2 từ cả 2 phía Otake & Scuti
両側にてマイルストーン2のテストを100％まで実施すること | Inprogress | 2024-04-26 00:00:00 | Hoàn thành 70%
70％ぐらい出来上がった。
2.0 | Deploy lên STG nếu khách hàng đồng ý.
ステージング環境に反映（承認がいただいた上） | Todo | 2024-04-26 00:00:00
3.0 | Trao đổi với khách về bug của khách log
オータケ様側に報告いただいたCR3のバグの内容確認・修正 | Inprogress | - | 随時実施
Trao đổi với khách nếu cần
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 2
-------------------
マイルストーン2のタスクを実装する | Inprogress | 2024-04-25 00:00:00 | Hoàn thành 90%
90％ぐらい出来上がった。
2.0 | Hoàn thành test theo Milestone 2 từ cả 2 phía Otake & Scuti
両側にてマイルストーン2のテスト実施を完成すること | Todo | 2024-04-26 00:00:00
3.0 | Deploy lên STG nếu khách hàng đồng ý.
ステージング環境に反映（承認がいただいた上） | Todo | 2024-04-26 00:00:00
4.0 | Trao đổi với khách về bug của khách log
オータケ様側に報告いただいたCR2のバグの内容確認・修正 | Inprogress | - | 随時実施
Trao đổi với khách nếu cần
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Đưa lên Production cùng 2 CR 2, 3
4月末ぐらいにCR2,3と合わせて本番反映 | Todo | -
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関するMTG 
MTG về CR5 | Todo | 2024-05-02 00:00:00 | 授業管理に関するMTGの続き (05/02)
MTG chi tiết về CR 5 (02/05)
2.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Todo | - | MTG後に仕様分析を行う
Sau MTG phân tích về CR5
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 04172024
週次報告
Weekly Meeting
日時／Time: 16 April 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（10-April-> 16-April）／Report task of this week (10-April-> 16-April）
Tổng quan: 
1. Tiến độ: 
   - CR 2, 3: Keep tiến độ. 
2. Chất lượng: 
   - CR 2, 3: PM đã hoàn thành tiêu chuẩn chất lượng và gửi tài liệu cho khách
--------
全体：
①進捗：
CR2，3：オンスケ―
②品質
CR2,3：品質指標を見直す資料送付済
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] [Milestone 2] Implement
Thay đổi Projector và tính toán vị trí, sắp xếp các Menu trên màn hình Digital board
ボード画面上の各メニュー位置や内容変更とプロジェクターし方修正 | Inprogress | 2024-04-19 00:00:00 | Hoàn thành 90%
90%ぐらい完成できた。
2.0 | Bắt đầu test Milestone 1 theo plan: 
マイルストーン１のテストに着手
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466&range=14:15 | Done | 2024-04-17 00:00:00
3.0 | QA 対応　（随時） | Inprogress | - | 随時実施
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 1
-------------------
マイルストーン１のタスクを実装する | Done | 2024-04-17 00:00:00
2.0 | [Tester] Hoàn thành viết checklist cho CR 2
「テスター」CR2のチェックリストを完成にする | Done | 2024-04-12 00:00:00
3.0 | QA 対応　（随時） | Inprogress | - | MTGやシートを使用して認識合わせをしました。
4.0 | 基本設計書の更新 | Inprogress | - | MTGやシートを使用して認識合わせをした内容を基本設計書に反映。
5.0 | テスト（SE,BrSE） | Inprogress | 2024-04-19 00:00:00 | 品質向上の目的でSE、ブリッジSEもテストに参加
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Đưa lên Production cùng 2 CR 2, 3
4月末ぐらいにCR2,3と合わせて本番反映 | Todo | -
CR Phát bài - はいふ[No.4] | Done | - | PIC: Otake & Tashi & Scuti
1.0 | はいふ機能の説明MTG
MTG về CR 4 | Done | 2024-04-11 00:00:00
2.0 | QAと分析
QA và phân tích | Done | 2024-04-16 00:00:00
3.0 | 基本設計書の作成
Tạo BD | Done | 2024-04-16 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] [Milestone 2] Implement
Thay đổi Projector và tính toán vị trí, sắp xếp các Menu trên màn hình Digital board
ボード画面上の各メニュー位置や内容変更とプロジェクターし方修正 | Inprogress | 2024-04-19 00:00:00
2.0 | Hoàn thành test theo Milestone 1 từ cả 2 phía Otake & Scuti | Inprogress | 2024-04-17 00:00:00
3.0 | Hoàn thành 50% test theo Milestone 2 từ cả 2 phía Otake & Scuti | Todo | 2024-04-29 00:00:00
4.0 | QA 対応　（随時） | Inprogress | - | 随時実施
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 1
-------------------
マイルストーン１のタスクを実装する | Inprogress | 2024-04-17 00:00:00
2.0 | [Dev] coding các task trong Milestone 2
-------------------
マイルストーン2のタスクを実装する | Todo | 2024-04-25 00:00:00
3.0 | Hoàn thành test theo Milestone 1 từ cả 2 phía Otake & Scuti | Todo | 2024-04-23 00:00:00
4.0 | テスト（SE,BrSE） | Inprogress | 2024-04-19 00:00:00 | 品質向上の目的でSE、ブリッジSEもテストに参加
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Đưa lên Production cùng 2 CR 2, 3
4月末ぐらいにCR2,3と合わせて本番反映 | Todo | -
CR Phát bài - はいふ[No.4] | Pending | - | PIC: Otake & Tashi & Scuti
1.0 | なし
None | CR2, CR3の対応を開発側で行なっているため、
実装はその後の予定。
Vì bên mình ưu tiên làm CR2 CR3 trước nên bên mình bắt đầu làm CR 4 sau.
CR Quản lý lớp học - 授業管理 [No 5] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関するMTG 
MTG về CR5 | Todo | 2024-04-18 00:00:00 | 授業管理に関するMTGの続き
MTG chi tiết về CR 5
2.0 | 授業管理の仕様変更に関する分析
Phân tích CR5 | Todo | -
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 04092024
週次報告
Weekly Meeting
日時／Time: 09 April 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（03-April-> 09-April）／Report task of this week (03-April-> 09-April）
Tổng quan: 
1. Tiến độ: 
   - CR 1 Handler: Khách hàng hoàn thành UAT. 
   - CR 2, 3: Keep tiến độ. 
2. Chất lượng: 
   - CR 1 Handler: Kết thúc quá trình UAT. Không tồn tại bug UAT> 
   - CR 2, 3: PM đang hoàn thành tiêu chuẩn chất lượng. 
--------
全体：
①進捗：
CR１：UAT終了。本番反映待機
CR2，3：オンスケ―
②品質
CR1：UATバグなし
CR2,3：品質指標を見直す資料作成中
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] coding các task trong Milestone 1
- Hoàn thành UI và thông luồng nghiệp vụ
-------------------
「開発者」マイルストーン1の作業を実装する
・UIと業務遷移フロー完成 | Done | 2024-04-04 00:00:00
2.0 | [Dev] [Milestone 2] Implement
Thay đổi Projector và tính toán vị trí, sắp xếp các Menu trên màn hình Digital board
--------------------------
ボード画面上の各メニュー位置や内容変更とプロジェクターし方修正 | Inprogress | 2024-04-19 00:00:00 | Tiến hành coding theo đúng tiến độ. 
オンスケ―
3.0 | Bắt đầu test Milestone 1 theo plan: 
マイルストーン１のテストに着手
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466&range=14:15 | Inprogress | 2024-04-17 00:00:00 | Tiến hành testing theo đúng tiến độ. 
オンスケ―
4.0 | QA 対応　（随時） | Inprogress | - | 随時実施
5.0 | テスト（SE,BrSE） | Done | 2024-04-09 00:00:00 | 品質向上の目的でSE、ブリッジSEもテストに参加
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 1
-------------------
マイルストーン１のタスクを実装する | Inprogress | 2024-04-17 00:00:00 | Tiến hành coding theo đúng tiến độ. 
オンスケ―
2.0 | [Tester] Hoàn thành viết checklist cho CR 2
「テスター」CR2のチェックリストを完成にする | Inprogress | 2024-04-12 00:00:00 | Tiến hành viết checklist theo đúng tiến độ. 
オンスケ―
3.0 | QA 対応　（随時） | Inprogress | - | MTGやシートを使用して認識合わせをしました。
20~30項目程度のQA対応実施済み。
4.0 | 基本設計書の更新 | Inprogress | - | MTGやシートを使用して認識合わせをした内容を基本設計書に反映。
5.0 | テスト（SE,BrSE） | Inprogress | 2024-04-19 00:00:00 | 品質向上の目的でSE、ブリッジSEもテストに参加
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Phân tích bug UAT và báo cáo chất lượng
UATバグ分析と品質報告 | Pending | 2024-04-10 00:00:00 | Kết thúc quá trình UAT nhưng không phát hiện bug UAT. 
Team phát triển đề nghị không cần làm phân tích bug. 
---------------------
UATのバグはありませんでした。
バグ分析をしない検討?
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析・技術調査
Check technical của CR5 | Pending | - | 検索機能と登録箇所のQAの確認、開発者とロジックや遷移が正しいかの確認タスクを優先で行なっていたため、授業管理に関する確認の続きは次週以降対応予定(4/11~)
はいふ機能を優先として行うことに決定。
Check technical có thể sẽ từ 11/04 vì bên mình ưu tiên check phần CR 2
Đã chốt là làm CR phát bài trước CR5
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] [Milestone 2] Implement
Thay đổi Projector và tính toán vị trí, sắp xếp các Menu trên màn hình Digital board
ボード画面上の各メニュー位置や内容変更とプロジェクターし方修正 | Todo | 2024-04-19 00:00:00
2.0 | Bắt đầu test Milestone 1 theo plan: 
マイルストーン１のテストに着手
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466&range=14:15 | Todo | 2024-04-17 00:00:00
3.0 | QA 対応　（随時） | Inprogress | - | 随時実施
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 1
-------------------
マイルストーン１のタスクを実装する | Inprogress | 2024-04-17 00:00:00
2.0 | [Tester] Hoàn thành viết checklist cho CR 2
「テスター」CR2のチェックリストを完成にする | Inprogress | 2024-04-12 00:00:00
3.0 | QA 対応　（随時） | Inprogress | -
4.0 | 基本設計書の更新 | Inprogress | - | MTGやシートを使用して認識合わせをした内容を基本設計書に反映する。
5.0 | テスト（SE,BrSE） | Inprogress | 2024-04-19 00:00:00 | 品質向上の目的でSE、ブリッジSEもテストに参加
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Đưa lên Production cùng 2 CR 2, 3
4月末ぐらいにCR2,3と合わせて本番反映 | Todo | -
CR Phát bài - はいふ[No.4] | Todo | - | PIC: Otake & Tashi & Scuti
1.0 | はいふ機能の説明MTG
MTG về CR 4 | Todo | 2024-04-11 00:00:00
2.0 | QAと分析
QA và phân tích | Todo | -
3.0 | 基本設計書の作成
Tạo BD | Todo | - | はいふ機能の仕様変更MTGの内容を確認後、締め切り日時を決定します。
Sau khi hợp xong về CR4, set deadline
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
## Sheet: 04022024
週次報告
Weekly Meeting
日時／Time: 02 April 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（27-Mar-> 02-April）／Report task of this week (27-Mar-> 02-April）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ, tất cả các task đều đã hoàn thành.  Khách hàng hoàn thành UAT.
- Chất lượng: Cần thêm thông tin UAT từ khách hàng để đánh giá. Team sẽ phân tích sau khi có thông tin UAT.
--------
全体:  
進捗：CRNo.1はオンスケ―です。全て完了できた。UATも終了した。
品質：UATの情報をお客様からもっと共有してもらってから判断を実施する予定
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] coding các task trong Milestone 1
- Hoàn thành UI và thông luồng nghiệp vụ
-------------------
「開発者」マイルストーン1の作業を実装する
・UIと業務遷移フロー完成 | Inprogress | 2024-04-04 00:00:00 | Hoàn thành đúng tiến độ
問題なく完成できた
2.0 | [Tester] Hoàn thành viết checklist cho CR 3
「テスター」CR3のチェックリストを完成にする | Done | 2024-03-27 00:00:00 | Đã hoàn thành và gửi cho phía Otake
作成終了してオータケ様側に連携した。
3.0 | Phân chia plan test giữa hai bên Scuti + Otake
テスト範囲分け | Done | 2024-03-29 00:00:00 | Đã phân chia và gửi cho phía Otake
分担範囲を分けて、オータケ様側に連携した。
4.0 | QA 対応　（随時） | Inprogress | - | 随時実施
CR Searh - 検索機能と登録(No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
------------
基本設計書がすべて作成したら、再度見積もりを行う | Done | 2024-03-29 00:00:00 | 完了した。
2.0 | マネジメントファイルにCR No.2のマスタースケジュールを作成する
Create master schedules cho CR 2 trên file quản lý Management
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1551458477 | Done | 2024-03-29 00:00:00 | Đã hoàn thành: 
作成完了：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466
3.0 | [Dev] coding theo kế hoạch được đưa ra trong master Schedule.
[開発]マスタースケジュール通りにそれぞれ実装する | Inprogress | 2024-04-04 00:00:00 | Team đang coding milestone 1 theo plan: 
以下の計画でマイルストーン１を実装中
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466&range=23:23
4.0 | [Tester] Start viết checklist cho CR 2 theo kế hoạch được đưa ra trong master Schedule
「テスター」マスタースケジュールのようにCR２のチェックリスト作成に着手 | Inprogress | 2024-04-04 00:00:00 | Team đang create checklist theo plan: 
以下の計画でチェックリストを作成している
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466&range=25:25
5.0 | Phân chia plan test giữa hai bên Scuti + Otake | Inprogress | 2024-04-04 00:00:00 | Dự kiến: 
Smoke test: Scuti đảm nhận toàn bộ. 
Functional test:    
  Otake:
              - Test toàn bộ phần admin.
              - Test màn hình danh sách, search của ảnh digital tool đơn (Gồm cả bộ môn và thông thường) trên màn digital board.
   Scuti:
             - Test màn hình danh sách, search của ảnh digital tool SET(Gồm cả bộ môn và thông thường) trên màn digital board.
             - Insert digital tool lên Digital board. 
Intergration Test: Otake test 2 phần, Scuti test 1 phần, sẽ phân chia sau khi viết Checklist xong. (Dự kiến ngày 11/04)
System Test: Otake test 2 phần, Scuti test 1 phần, sẽ phân chia sau khi viết Checklist xong.  (Dự kiến ngày 11/04)
6.0 | QA 対応　（随時） | Inprogress | - | MTGやシートを使用して認識合わせをしました。
20~30項目程度のQA対応実施済み。
7.0 | 基本設計書の更新 | Inprogress | - | MTGやシートを使用して認識合わせをした内容を基本設計書に反映。
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Chờ thông tin UAT và kế hoạch deploy Production từ khách hàng
お客様のUAT結果と本番反映スケージュール待ち | Done | 2024-01-04 00:00:00 | Khách hàng hoàn thành việc test UAT. 
Hiện khách hàng đang confirm 2 vấn đề, phía Scuti đã trả lời 1 vấn đề, 1 vấn đề đang phân tích. 
Đợi cuối tháng 4 sẽ đưa lên Production cùng 2 CR 2 và CR 3
-------------------
UAT終了。
仕様であるかの確認事項は2件発生した。1件解決済みで残り1件Scuti確認中。
4月末にCR2とCR3と合わせて本番に反映
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する概要MTG 
MTG overview về CR5 | Done | 2024-03-27 00:00:00 | 検索機能と登録箇所のQAの確認、開発者とロジックや遷移が正しいかの確認タスクを優先で行なっていたため、
授業管理に関するMTGの続きは次週以降対応予定(4/8~)
MTG chi tiết có thể sẽ từ 08/04 vì bên mình ưu tiên check phần CR 2
2.0 | 授業管理の仕様変更に関する分析・技術調査
Check technical của CR5 | Todo | - | 検索機能と登録箇所のQAの確認、開発者とロジックや遷移が正しいかの確認タスクを優先で行なっていたため、
授業管理に関する確認の続きは次週以降対応予定(4/8~)
Check technical có thể sẽ từ 08/04 vì bên mình ưu tiên check phần CR 2
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] coding các task trong Milestone 1
- Hoàn thành UI và thông luồng nghiệp vụ
-------------------
「開発者」マイルストーン1の作業を実装する
・UIと業務遷移フロー完成 | Inprogress | 2024-04-04 00:00:00
2.0 | [Dev] coding các task trong Milestone 2
- Hoàn thành UI và thông luồng nghiệp vụ
-------------------
「開発者」マイルストーン2の作業を実装する
・UIと業務遷移フロー完成 | Todo | 2024-04-19 00:00:00
3.0 | Bắt đầu test Milestone 1 theo plan: 
マイルストーン１のテストに着手
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466&range=14:15 | Todo | 2024-04-17 00:00:00
4.0 | QA 対応　（随時） | Inprogress | - | 随時実施
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | [Dev] coding các task trong Milestone 1
-------------------
マイルストーン１のタスクを実装する | Inprogress | 2024-04-17 00:00:00
2.0 | [Tester] Hoàn thành viết checklist cho CR 2
「テスター」CR2のチェックリストを完成にする | Inprogress | 2024-04-12 00:00:00
3.0 | QA 対応　（随時） | Inprogress | -
4.0 | 基本設計書の更新 | Inprogress | - | MTGやシートを使用して認識合わせをした内容を基本設計書に反映する。
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Phân tích bug UAT và báo cáo chất lượng
UATバグ分析と品質報告 | Todo | 2024-04-10 00:00:00
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する分析・技術調査
Check technical của CR5 | Todo | - | 検索機能と登録箇所のQAの確認、開発者とロジックや遷移が正しいかの確認タスクを優先で行なっていたため、
授業管理に関する確認の続きは次週以降対応予定(4/8~)
Check technical có thể sẽ từ 08/04 vì bên mình ưu tiên check phần CR 2
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
- Các phần đang pending nếu hết ngày 04/03 phía khách hàng không có kế hoạch gì, thì phía Scuti sẽ tạm bỏ đi trong báo cáo. 
- Do hai phần CR 2, 3 có khối lượng lớn và phát triển trong thời gian ngắn nên phía Scuti đề xuất không tạo file Matrix task nhỏ nữa, mà chỉ quản lý theo Master Schedule
--------------------------------------
「保留」ステータスのタスクに関して、4月3日まで予定がまだ見通せない場合、定例レポートにから削除させていただきます。
No.2・No.3仕様変更はボリュームが多く、短期間に開発しているため、タスクマトリックスの代わりに、マスタースケジュールで管理すると提案。


  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219
## Sheet: 03262024
週次報告
Weekly Meeting
日時／Time: 26 Mar 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（21-Mar-> 26-Mar）／Report task of this week (21-Mar-> 26-Mar）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ, tất cả các task đều đã hoàn thành.  Khách hàng đang UAT.
- Chất lượng: Cần thêm thông tin UAT từ khách hàng để đánh giá. Theo Plan thì hết ngày 03/29 sẽ hoàn thành việc test UAT
--------
全体:  
進捗：オンスケ。「ハンドルについて」CRのUATを3/29日まで実施してもらっている。
品質：現時点、UATのバグなし
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
基本設計書がすべて作成したら、再度見積もりを行う | Done | 2024-03-22 00:00:00 | 最終のBDができた：
https://docs.google.com/presentation/d/1ca105W45AJLgqsAV9TrlKmx_HA8XtPMB/edit#slide=id.p1
2.0 | Create master schedules cho CR 3 trên file quản lý Management
CR３のマスタースケジュール作成
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1551458477 | Done | 2024-03-27 00:00:00 | Master Schedule cho CR 3: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466
3.0 | [Dev] coding theo kế hoạch được đưa ra trong master Schedule.
「実装」マスタースケジュールのように各タスクをコーディングをする | Done | 2024-03-27 00:00:00 | File Master Schedule cho CR 3: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466
4.0 | [Tester] Start viết checklist cho CR 3 theo kế hoạch được đưa ra trong master Schedule.
[テスター ] マスタースケジュールに定義している計画でチェックリスト作成 | Done | 2024-03-27 00:00:00 | File Master Schedule cho CR 3: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1752296466
5.0 | Phân chia plan test giữa hai bên Scuti + Otake
Scutiとオータケ様側のテスト範囲を見分ける | Inprogress | 2024-03-27 00:00:00 | チェックリストが完全に作成終わっていないため、3/29日までにテスト範囲の共有を延長させていただきたいです。
Do chưa hoàn thành việc viết checklist cho CR 3 nên phía Scuti xin phép lùi lịch phân chia tới ngày 03/29
6.0 | 画面レイアウト箇所のボタン表示・画面遷移のケースを洗い出し、マトリックスとサイトマップを作成 | Done | 2024-03-21 00:00:00 | 目的：テスター、開発者、SE、オータケ様側で共通認識を持っておくため。
7.0 | 画面レイアウト箇所のボタン表示・画面遷移のケースを洗い出し、マトリックスとサイトマップのレビュー | Done | 2024-03-22 00:00:00 | 目的：テスター、開発者、SE、オータケ様側で共通認識を持っておくため。
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Done | 2024-03-25 00:00:00 | 最終のBD：
https://docs.google.com/presentation/d/1SEl5JsXoxjOqhMLR1UhKnaQ6L54ktrhW/edit#slide=id.p1
2.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
------------
基本設計書がすべて作成したら、再度見積もりを行う | Inprogress | 2024-03-29 00:00:00
3.0 | マネジメントファイルにCR No.2のマスタースケジュールを作成する
Create master schedules cho CR 2 trên file quản lý Management
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1551458477 | Inprogress | 2024-03-29 00:00:00
4.0 | 検索仕様のMTG | Inprogress | - | 随時開催
5.0 | 基本設計書の翻訳（ベトナム語→日本語） | Inprogress | 2024-03-27 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake
1.0 | Chờ thông tin UAT và kế hoạch deploy Production từ khách hàng
お客様のUAT結果と本番反映指示待ち | Inprogess | - | Đã chốt thời gian UAT cho CR Handler là hết ngày 03/29/2024

UATの実施締め切りは3月29日の予定。
2.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogress | - | 今週はやりとりはございませんでした。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Otake
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Otake
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Scuti
1.0 | [Dev] coding các task trong Milestone 1
- Hoàn thành UI và thông luồng nghiệp vụ
-------------------
「開発者」マイルストーン1の作業を実装する
・UIと業務遷移フロー完成 | Todo | 2024-04-04 00:00:00
2.0 | [Tester] Hoàn thành viết checklist cho CR 3
「テスター」CR3のチェックリストを完成にする | Inprogress | 2024-03-27 00:00:00
3.0 | Phân chia plan test giữa hai bên Scuti + Otake
テスト範囲分け | Inprogress | 2024-03-29 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
------------
基本設計書がすべて作成したら、再度見積もりを行う | Inprogress | 2024-03-29 00:00:00
2.0 | マネジメントファイルにCR No.2のマスタースケジュールを作成する
Create master schedules cho CR 2 trên file quản lý Management
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1551458477 | Inprogress | 2024-03-29 00:00:00
3.0 | [Dev] coding theo kế hoạch được đưa ra trong master Schedule.
[開発]マスタースケジュール通りにそれぞれ実装する | Inprogress | 2024-04-04 00:00:00
4.0 | [Tester] Start viết checklist cho CR 2 theo kế hoạch được đưa ra trong master Schedule
「テスター」マスタースケジュールのようにCR２のチェックリスト作成に着手 | Inprogress | 2024-04-04 00:00:00
6.0 | Phân chia plan test giữa hai bên Scuti + Otake | Inprogress | 2024-04-04 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Chờ thông tin UAT và kế hoạch deploy Production từ khách hàng
お客様のUAT結果と本番反映スケージュール待ち | Todo | - | Đã chốt thời gian UAT cho CR Handler là hết ngày 03/29/2024

UATの実施締め切りは3月29日の予定。
2.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogress | -
CR Quản lý lớp học - 授業管理 [No 5] | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 授業管理の仕様変更に関する概要MTG 
MTG overview về CR5 | Done | 2024-03-27 00:00:00 | 詳細のmtgは04/01から開始
MTG chi tiết sẽ từ 01/04
2.0 | 授業管理の仕様変更に関する分析・技術調査
Check technical của CR5 | Inprogess | - | 本日mtgがあったため、質問内容を確認中。期限はその後報告させていただきます。
27/03 có hợp và chưa check được kỹ các QA nhận được trong MTG nên báo deadline sau.
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Otake
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Otake
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
- Các phần đang pending nếu hết ngày 04/03 phía khách hàng không có kế hoạch gì, thì phía Scuti sẽ tạm bỏ đi trong báo cáo. 
- Do hai phần CR 2, 3 có khối lượng lớn và phát triển trong thời gian ngắn nên phía Scuti đề xuất không tạo file Matrix task nhỏ nữa, mà chỉ quản lý theo Master Schedule
--------------------------------------
「保留」ステータスのタスクに関して、4月3日まで予定がまだ見通せない場合、定例レポートにから削除させていただきます。
No.2・No.3仕様変更はボリュームが多く、短期間に開発しているため、タスクマトリックスの代わりに、マスタースケジュールで管理すると提案。


  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219
## Sheet: 03212024
週次報告
Weekly Meeting
日時／Time: 21 Mar 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（14-Mar-> 20-Mar）／Report task of this week (14-Mar-> 20-Mar）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ tất cả các task coding của Sprint 7 đều đã hoàn thành. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn UAT test. 
--------
全体: 
- 進捗: スプリント7の作業が予定通り完了できた。オンスケである。 
- 品質: UATになったら評価予定。
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Otake
1.0 | Tìm hiểu specs và Q&A sau khi đã có BD hoàn chỉnh. 
BDが確定した後に資料確認およびQ&A | Done | 2024-03-21 00:00:00
2.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
BDが確定した後に、実装予定作業をリストアップしながら再見積もり | Inprogress | 2024-03-22 00:00:00 | Đã cảnh báo khách hàng: 
- Phần Zoom trên màn hình digital board sẽ cần làm sau tháng 4
=> Khách hàng đã đồng ý. 
--------
ボード上のズーム機能を4月後に後回しにした。
➡お客様は承認済み。
3.0 | 画面レイアウト箇所のボタン表示・画面遷移のケースを洗い出し、マトリックスとサイトマップを作成 | Inprogress | 2024-03-21 00:00:00 | 目的：テスター、開発者、SE、オータケ様側で共通認識を持っておくため。
4.0 | 画面レイアウト箇所のボタン表示・画面遷移のケースを洗い出し、マトリックスとサイトマップのレビュー | Inprogress | 2024-03-22 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogress | 2024-03-25 00:00:00
2.0 | Tìm hiểu ヒヤリング và Q&A
仕様確認とQ＆A | Inprogress | 2024-03-29 00:00:00
3.0 | 検索仕様のMTG | Inprogress | 随時開催
4.0 | 基本設計書の翻訳（ベトナム語→日本語） | Inprogress | 2024-03-22 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Hoàn thành toàn bộ task của phần Handler, đang chờ thông tin khách hàng confirm giờ có thể đẩy lên STG bản cuối. 
すべて完了した。本日（3/21日）にスケージュール通りSTG環境に反映できる。 | Inprogress | 2024-03-21 00:00:00
2.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogress | - | 残件なし
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogess | - | PIC: Otake
1.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
基本設計書がすべて作成したら、再度見積もりを行う | Inprogress | 2024-03-22 00:00:00 | Đã cảnh báo khách hàng: 
- Phần Zoom trên màn hình digital board sẽ cần làm sau tháng 4
=> Khách hàng đã đồng ý. 
----------------------
ボード上のズーム機能を4月後に後回しにした。
➡お客様は承認済み。
2.0 | Create master schedules cho CR 3 trên file quản lý Management
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1551458477 | Inprogress | 2024-03-27 00:00:00
3.0 | [Dev] coding theo kế hoạch được đưa ra trong master Schedule.
[開発]マスタースケジュール通りにそれぞれ実装する | Inprogress | 2024-03-27 00:00:00
4.0 | [Tester] Start viết checklist cho CR 3 theo kế hoạch được đưa ra trong master Schedule.
[テスター ] マスタースケジュールに定義している計画でチェックリスト作成に着手 | Inprogress | 2024-03-27 00:00:00
5.0 | Phân chia plan test giữa hai bên Scuti + Otake | Inprogress | 2024-03-27 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogress | 2024-03-25 00:00:00
2.0 | Break task và re-estimate lại toàn bộ CR sau khi đã có BD hoàn chỉnh
------------
基本設計書がすべて作成したら、再度見積もりを行う | Inprogress | 2024-03-29 00:00:00
3.0 | マネジメントファイルにCR No.2のマスタースケジュールを作成する
Create master schedules cho CR 2 trên file quản lý Management
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1551458477 | Inprogress | 2024-03-29 00:00:00
4.0 | 検索仕様のMTG | Inprogress | 随時開催
5.0 | 基本設計書の翻訳（ベトナム語→日本語） | Inprogress | 2024-03-22 00:00:00
6.0 | Phân chia plan test giữa hai bên Scuti + Otake | Inprogress | 2024-03-29 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Chờ thông tin UAT và kế hoạch deploy Production từ khách hàng
お客様のUAT結果と本番反映スケージュール待ち | Todo | - | Nhờ khách hàng chia sẻ kế hoạch UAT phần Handler. 
Scuti đề xuất là hoàn thành phần UAT trong tuần sau. 
----------------
UATのスケジュールをご共有お願いします
2.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogress | - | 残件なし。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 03132024
週次報告
Weekly Meeting
日時／Time: 13 Mar 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（06-Mar-> 13-Mar）／Report task of this week (06-Mar-> 13-Mar）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ tất cả các task coding của Sprint 6 đều đã hoàn thành. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn UAT test. 
--------
全体: 
- 進捗: スプリント6の作業が予定通り完了できた。オンスケである。 
- 品質: UATになったら評価予定。
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogress | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Done | 2024-03-11 00:00:00
2.0 | 仕様の分析 | Done | 2024-03-08 00:00:00
3.0 | QAのやり取り | Done | 2024-03-11 00:00:00
4.0 | 画面レイアウト変更の仕様のMTG | Done | 2024-03-11 00:00:00
5.0 | 完成した基本設計書をチーム全体が分析し、QAを行う | Inprogress | 2024-03-15 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogress | 2024-03-25 00:00:00
2.0 | 検索仕様のMTG | Done | - | 3/8,11,12に検索部分の仕様MTGを実施しました。
3.0 | 完成した基本設計書をチーム全体が分析し、QAを行う | Inprogress | 2024-03-29 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 6: 
スプリント6のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=41:48 | Done | 2024-03-13 00:00:00
2.0 | Hoàn thành run test phần Handler và Context menu
ハンドルとコンテキストメニューに関するテスト実行を完了にする | Done | 2024-03-13 00:00:00
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 数点やり取り済み。残点はなし。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogress | - | PIC: Otake
1.0 | 完成した基本設計書をチーム全体が分析し、QAを行う | Inprogress | 2024-03-15 00:00:00
2.0 | 変更点が発生した場合、BD更新 | Inprogress | 2024-03-15 00:00:00
3.0 | 再度見積もりを行い、必要に応じて工数の見直す | Todo | 2024-03-20 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogress | 2024-03-25 00:00:00
2.0 | チーム全体が分析し、BD作成をサポートする | Inprogress | 2024-03-29 00:00:00
3.0 | 検索仕様のMTG | Todo | - | 3/14,15（15:00-16:30）に検索部分の仕様MTGを2度実施予定。
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 7: 
スプリント7のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=69:72 | Todo | 2024-03-20 00:00:00
2.0 | ハンドル―CRに関するテストを全部終了にする | Todo | 2024-03-20 00:00:00
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 03052024
週次報告
Weekly Meeting
日時／Time: 5 Mar 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（29-Feb-> 05-Mar）／Report task of this week (29-Feb-> 05-Mar）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ tất cả các task coding của Sprint 5 đều đã hoàn thành. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn UAT test. 
--------
全体: 
- 進捗: スプリント5の作業が予定通り完了できた。オンスケである。 
- 品質: UATになったら評価予定。
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogress | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogress | 2024-03-11 00:00:00
2.0 | 仕様の分析 | Inprogess | 2024-03-08 00:00:00
3.0 | QAのやり取り | Inprogess | 2024-03-11 00:00:00 | 随時行う。
4.0 | 画面レイアウト変更の仕様のMTG | Inprogess | 2024-03-11 00:00:00 | 随時行う。
5.0 | 基本設計書の作成 | Inprogess | 2024-03-11 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Todo | 2024-03-25 00:00:00
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 5: 
スプリント5のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=49:54 | Done | 2024-03-06 00:00:00
2.0 | Hoàn thành viết 100% Checklist cho tất cả các phần của CR Handler
ハンドルCR全体のチェックリストを完成させる | Done | 2024-03-06 00:00:00
3.0 | Hoàn thành run test phần COmmon và Context menu
共通とサブメニュー部分のテスト実行を完了にする | Done | 2024-03-06 00:00:00
4.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 数点やり取り済み。残点はなし。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
2.0 | Estimate số người và timeline cho hai CR 2, 3
No2・No3のCRに関する要員と実施期間について見積もり | Done | 2024-03-06 00:00:00
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更 [No 3] | Inprogress | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogress | 2024-03-11 00:00:00
2.0 | 仕様の分析 | Inprogess | 2024-03-08 00:00:00
3.0 | QAのやり取り | Inprogess | 2024-03-11 00:00:00 | 随時行う。
4.0 | 画面レイアウト変更の仕様のMTG | Inprogess | 2024-03-11 00:00:00 | 随時行う。
5.0 | 基本設計書の作成 | Inprogess | 2024-03-11 00:00:00
6.0 | 基本設計書の最終確認（Scutiとオータケ様双方） | Todo | 2024-03-11 00:00:00
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Todo | 2024-03-25 00:00:00
2.0 | 検索仕様のMTG | Todo | 2024-03-08 00:00:00 | 03/08（金）に検索部分の仕様MTGを一回実施予定。
CR Handler - ハンドルについて [No 1]
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 6: 
スプリント6のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=41:48 | Todo | 2024-03-13 00:00:00
2.0 | Hoàn thành run test phần Handler và Context menu
ハンドルとサブメニューに関するテスト実行を完了にする | Todo | 2024-03-13 00:00:00
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | -
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 02282024
週次報告
Weekly Meeting
日時／Time: 28 FEB 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（21-Feb-> 28-Feb）／Report task of this week (21-Feb-> 28-Feb）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ tất cả các task coding của Sprint 4 đều đã hoàn thành. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn UAT test. 
--------
全体: 
- 進捗: スプリント４の作業が予定通り完了できた。オンスケである。 
- 品質: UATになったら評価予定。
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 4: 
スプリント４のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=67:68 | Done | 2024-02-28 00:00:00
2.0 | Hoàn thành viết 100% Checklist cho phần Handler
ハンドルのチェックリストを完成させる | Done | 2024-02-28 00:00:00
3.0 | Hoàn thành run test 50% Checklist cho phần Common và Handler
共通とハンドルについて、書いたチェックリストを50％までテスト実施する | Done | 2024-02-28 00:00:00
4.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 数点やり取り済み。
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
１ | 概算見積もりの作成 | Done | 2024-02-22 00:00:00
2.0 | Estimate vo cho specs của CR No 2
No.2の依頼を概算見積もりした。 | Done | 2024-02-23 00:00:00
3.0 | 仕様確認MTGと技術確認 | Done | 2024-02-28 00:00:00
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 5: 
スプリント5のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=49:54 | Todo | 2024-03-06 00:00:00
2.0 | Hoàn thành viết 100% Checklist cho tất cả các phần của CR Handler
ハンドルCR全体のチェックリストを完成させる | Todo | 2024-03-06 00:00:00
3.0 | Hoàn thành run test phần COmmon và Context menu
共通とサブメニュー部分のテスト実行を完了にする | Todo | 2024-03-06 00:00:00
4.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | -
Change Screen Layout (No 3) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 仕様の分析 | Inprogess | - | 契約とリソースを調整中なので、締切はまだ記載しておりません。
2.0 | QAのやり取り | Todo | - | 契約とリソースを調整中なので、締切はまだ記載しておりません。
3.0 | 画面レイアウト変更の仕様のMTG | Todo | - | 契約とリソースを調整中なので、締切はまだ記載しておりません。
4.0 | 基本設計書の作成 | Todo | - | 契約とリソースを調整中なので、締切はまだ記載しておりません。
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 仕様の分析 | Todo
2.0 | QAのやり取り
1.0 | 検索機能の仕様のMTG | Todo | - | 早ければ今週中にMTGがあります。
4.0 | 基本設計書の作成
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
2.0 | Estimate số người và timeline cho hai CR 2, 3
No2・No3のCRに関する要員と実施期間について見積もり | Todo | 2024-03-06 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 02212024
週次報告
Weekly Meeting
日時／Time: 21 FEB 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（07-Feb-> 21-Feb）／Report task of this week (07-Feb-> 21-Feb）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ tất cả các task coding của Sprint 3 đều đã hoàn thành. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn UAT test. 
--------
全体状況：
・進捗：スプリント３の作業は全て完了して、問題なくスケジュールが守れています。
・品質：未判断（テスト未実施のため）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 3: 
スプリント3の計画通りに実装：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=4:12 | Done | 2024-02-21 00:00:00 | スケージュール通りに完成した。
Tất các các task coding đều hoàn thành đúng tiến độ.
2.0 | Hoàn thành viết 50% Checklist cho phần Handler
ハンドルのチェックリストを50％まで完成させる。 | Done | 2024-02-21 00:00:00 | Hoàn thành 80% Checklist cho phần Handler
80%ぐらいできた。
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 現状は特にございません。
大竹さんからのフィードバックはチームに伝えました。
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 機能一覧の作成 | Done | 2024-02-16 00:00:00
2.0 | 機能一覧のベトナム語への翻訳 | Done | 2024-02-19 00:00:00
3.0 | チームに仕様を説明 | Done | 2024-02-20 00:00:00
4.0 | 概算見積もりの作成 | Inprogess | 2024-02-22 00:00:00
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 4: 
スプリント４のタスクを実施する

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=67:68 | Todo | 2024-02-28 00:00:00
2.0 | Hoàn thành viết 100% Checklist cho phần Handler
ハンドルのチェックリストを完成させる | Todo | 2024-02-28 00:00:00
3.0 | Hoàn thành run test 50% Checklist cho phần Common và Handler
共通とハンドルについて、書いたチェックリストを50％までテスト実施する | Todo | 2024-02-28 00:00:00
4.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | -
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
１ | 概算見積もりの作成 | Inprogess | 2024-02-22 00:00:00
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 02062024
週次報告
Weekly Meeting
日時／Time: 06 FEB 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（31-Jan-> 07-Feb）／Report task of this week (31-Jan-> 06-Feb）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn test. 
--------
全体：
・進捗：バンドルCRはスケジュールが守れています。
・品質：未評価（テスト期間未着手のため）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 2: 
スプリント２の計画通りに実装：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=13:28 | Done | 2024-02-07 00:00:00 | Hoàn thành đúng kế hoạch đặt ra
スケジュールを守っている
2.0 | Hoàn thành viết Checklist cho phần Context Menu
サブメニューのチェックリストを完成 | Done | 2024-02-07 00:00:00 | Hoàn thành đúng kế hoạch đặt ra
スケジュールを守っている
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 一部動作確認用に昨日アプリを配布させていただきました。
その他現状は特にございません。
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 機能一覧の作成 | Inprogess | 2024-02-16 00:00:00 | まだ仕様未確定の箇所もあり、
一部は2/15に仕様のMTGを行って説明していただく予定なので、2/16を一旦の締切としています。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 3: 
スプリント3の計画通りに実装：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=4:12 | Todo | 2024-02-21 00:00:00
2.0 | Hoàn thành viết 50% Checklist cho phần Handler
ハンドルのチェックリストを50％まで完成させる。 | Todo | 2024-02-21 00:00:00
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 現状は特にございません。
CR Searh (No 2) | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | 機能一覧の作成 | Inprogess | 2024-02-16 00:00:00 | まだ仕様未確定の箇所もあり、
一部は2/15に仕様のMTGを行って説明していただく予定なので、2/16を一旦の締切としています。
2.0 | 機能一覧のベトナム語への翻訳 | Todo | 2024-02-19 00:00:00
3.0 | チームに仕様を説明 | Todo | 2024-02-20 00:00:00 | 02/19か02/20を予定しています。
4.0 | 概算見積もりの作成 | Todo | 2024-02-22 00:00:00
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 01312024
週次報告
Weekly Meeting
日時／Time: 31 Jan 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（24-Jan-> 31-Jan）／Report task of this week (24-Jan-> 31-Jan）
Tổng quan: 
- Tiến độ: Phần specs Handler đang keep tiến độ. 
- Chất lượng: Chưa đánh giá được do chưa tới gian đoạn test. 
--------
全体：
・進捗：バンドルCRはスケジュールが守れています。
・品質：未評価（テスト期間未着手のため）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Update master schedule
マスタースケジュールを完成させること | Pending | - | Trong tuần không phát sinh task ảnh hưởng tới Schedule nên tạm Pending task. 
Tuần sau nếu vẫn không phát sinh task sẽ close task này. 
------------------
今週にマスタースケジュールに影響を与える問題が発生されていなかったため、一旦、このタスクのステータスを保留にして、来週も同じ状況の場合、クローズにします。
2.0 | Break task và estimate sơ bộ
作業リストアップと概算見積もり | Pending | - | Trong tuần không phát sinh task cần break task và estimate nên tạm Pending task. 
Tuần sau nếu vẫn không phát sinh task sẽ close task này. 
------------------
今週に再度作業分析と見積もりタスクが発生されていなかったため、一旦、このタスクのステータスを保留にして、来週も同じ状況の場合、クローズにします。
3.0 | Coding các task theo kế hoạch trong tuần 1: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=29:40 | Done | 2024-01-31 00:00:00 | Hoàn thành các task theo kế hoạch: 
以下のように実施する：

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=29:40
4.0 | Viết checklist cho 2 phần Common và Context Menu | Inprogess | 2024-02-09 00:00:00 | - Hoàn thành checklist cho phần common
- Tiến độ viết checklist cho phần Context menu đang đúng tiến độ. 
------------------
-共通部分のチェックリストを完了した。
-サブメニューのチェックリストを予定通りになっている。
5.0 | ハンドラーとメニューのサイズ感の認識合わせ | Done | - | 1/23の午後に実際に動作確認ができるアプリを共有させていただきました。
双方で認識合わせをして、サイズ感を決定できるところをゴールとしております。
->サイズ感の合意が完了しました。
6.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 現状は特にございません。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
2.0 | Estimate sơ bộ 5 CR theo yêu cầu của khách hàng
5段階の依頼を概算みつもり | Done | 2024-02-02 00:00:00 | Phía Scuti đã hoàn thành estimate và lên timeline sơ bộ. 
概算見積もりと期間を立案した。
https://docs.google.com/spreadsheets/d/1DiTYStw0crwBA3F7YOJzCDXe93n5sYQnLmHSI_CEydQ/edit#gid=2122275862
3.0 | 概算見積もり用に、簡易的な機能一覧を作成してPMと開発チームへ説明 | Done | 2024-01-29 00:00:00 | 完了しました。
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Coding các task theo kế hoạch trong tuần 2: 
スプリント２の計画通りに実装：
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=13:28 | Todo | 2024-02-07 00:00:00
2.0 | Hoàn thành viết Checklist cho phần Context Menu
サブメニューのチェックリストを完成 | Todo | 2024-02-07 00:00:00
3.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 現状は特にございません。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Pending | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 01232024
週次報告
Weekly Meeting
日時／Time: 23 Jan 2024 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（17-Jan-> 23-Jan）／Report task of this week (17-Jan-> 23-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Update master schedule
マスタースケジュールを完成させること | Inprogess | 2024-01-24 00:00:00 | Phía Scuti update lại toàn bộ Master Schedule hết ngày 01/24
1/24日までマスタースケジュールを全て更新する。
2.0 | [Common] Break task và estimate sơ bộ
「共通」作業リストアップと概算見積もり | Inprogess | 2024-01-24 00:00:00 | Phía Scuti hoàn thành việc break task và estimate cho CR Handler hết ngày 01/24
01/24までハンドル―CRの見積もりを最終的に提出する
3.0 | [Common] Triển khai tiếp tục coding các task nếu đã rõ yêu cầu và hoàn thành nghiên cứu công nghệ.  

「共通」明確な仕様について、コーディングを行う | Inprogess | - | Team Scuti đã hoàn thành gần như toàn bộ phần Common
Các task tiếp theo sẽ làm theo kế hoạch trong file dưới đây và Master Schedule: 
--------
共通部分のほとんどは完了させました。次の作業は以下のファイルとマスタースケジュールに従って実施します。

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219
4.0 | [Context Menu] Nếu còn thời gian team sẽ bắt đầu coding phần Context menu
「サブメニュ」時間がある場合、サブメニューの実装に着手する | Pending | - | Do thời gian dành cho việc Q&A, break task nhiều nên phần Context menu phía Scuti chưa coding được. 
Q＆Aやり取りと作業分解には時間が多くかかったため、サブメニューの前倒しはできなくなりました。
5.0 | Viết checklist cho 2 phần Common và Context Menu
共通分とサブメニューのチェックリストを作成する | Inprogess | 2024-01-26 00:00:00
6.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 随時内部チームの質問の回答を行なっています。
基本設計書が更新後、再度質問が発生する可能性もあります。
7.0 | ハンドラーとメニューのサイズ感の認識合わせ | Inprogess | - | 1/23の午後に実際に動作確認ができるアプリを共有させていただきました。
双方で認識合わせをして、サイズ感を決定できるところをゴールとしております。
8.0 | 概算見積もり用に、簡易的な機能一覧を作成してPMと開発チームへ説明 | Todo | - | 簡易的な機能一覧作成：30分-1時間程度
概算見積もり時間：簡易資料と簡易的な機能一覧が出来次第展開させていただきます。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
2.0 | Trao đổi về tiêu chuẩn chất lượng dự án giai đoạn Maintaince
-----------------------------------------------
メンテナンス期間の品質指標について相談 | Done | 2024-01-23 00:00:00 | Phía Scuti và Otake đã trao đổi và thống nhất tiêu chí chất lượng cho thời gian tới. 
Scutiとオータケ様側は既に話し合って、品質指標を合意しました。
https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=1303724000
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi & Scuti
1.0 | Update master schedule
マスタースケジュールを完成させること | Todo | - | Phía Scuti sẽ update lại Master Schedule trong các trường hợp sau: 
- Specs thay đổi. 
- Phát sinh Q&A làm thay đổi estimate.
- Gặp phải phần công nghệ khó hơn khi nghiên cứu. 
------------------
以下のように発生した場合、マスタースケジュールを更新します。
①仕様が変更された。
②Q＆Aの回答によって、見積もりが変わる
③想定より技術が難しくなる
2.0 | [Common] Break task và estimate sơ bộ
「共通」作業リストアップと概算見積もり | Todo | - | Phía Scuti sẽ break task và estimate lại trong các trường hợp sau: 
- Specs thay đổi. 
- Phát sinh Q&A làm thay đổi estimate.
- Gặp phải phần công nghệ khó hơn khi nghiên cứu. 
-------------------------------
以下が発生したら、再度作業分解と見積もりを行います：
①仕様が変更された。
②Q＆Aの回答によって、見積もりが変わる
③想定より技術が難しくなる
3.0 | [Common] Triển khai tiếp tục coding các task nếu đã rõ yêu cầu và hoàn thành nghiên cứu công nghệ.  

「共通」明確な仕様について、コーディングを行う | Inprogess | - | Triển khai các task theo kế hoạch: 
以下のように実施する：

https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219
4.0 | Viết checklist cho 2 phần Common và Context Menu | Inprogess | 2024-01-26 00:00:00
5.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 随時内部チームの質問の回答を行なっています。
基本設計書が更新後、再度質問が発生する可能性もあります。
6.0 | ハンドラーとメニューのサイズ感の認識合わせ | Inprogess | - | 1/23の午後に実際に動作確認ができるアプリを共有させていただきました。
双方で認識合わせをして、サイズ感を決定できるところをゴールとしております。
7.0 | 概算見積もり用に、簡易的な機能一覧を作成してPMと開発チームへ説明 | Todo | - | 簡易的な機能一覧作成：30分-1時間程度
概算見積もり時間：簡易資料と簡易的な機能一覧が出来次第展開させていただきます。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Pending | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
2.0 | Estimate sơ bộ 5 CR theo yêu cầu của khách hàng
5段階の依頼を概算みつもり | Todo | 2024-02-02 00:00:00 | Dự kiến sơ bộ sẽ hoàn thành vào 02/02
2/2日まで完了予定
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
- Nhờ khách hàng chia sẻ về việc 2 tháng gần đây không thấy khách hàng đánh giá điểm CSS của dự án, để hai bên cùng tìm giải pháp khắc phục nếu có vấn đề. 
(Tạm thời Scuti vẫn để, khi nào khách hàng đánh giá trở lại thì sẽ xóa đi)
Q：アンケートをご記入をお願いします。
A：記入する。
（次回のアンケート記入依頼までこのQ＆Aを残す。）
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 01172024
週次報告
Weekly Meeting
日時／Time: 107Jan 2023 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（10-Jan-> 17-Jan）／Report task of this week (10-Jan-> 17-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Update master schedule
マスタースケジュール作成 | Pending | - | Pending không tiếp tục làm được do có nhiều câu Q&A tới ngày 01/16 mới được giải quyết
1/16日に解決する予定のQ＆Aはまだ多く存在している為、この作業は一旦保留中
2.0 | [Common] Break task và estimate sơ bộ
「共通」作業リストアップと概算見積もり | Pending | - | Pending không tiếp tục làm được do có nhiều câu Q&A tới ngày 01/16 mới được giải quyết
1/16日に解決する予定のQ＆Aはまだ多く存在している為、この作業は一旦保留中
3.0 | [Common] Triển khai tiếp tục coding các task nếu đã rõ yêu cầu và hoàn thành nghiên cứu công nghệ.  

「共通」明確な仕様について、コーディングを行う | Inprogess | - | Ngày 16/01 Scuti đã tiến hành làm trước 1 số task có thể làm được: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=77:81
Nếu specs tiếp tục được clear thì Scuti sẽ tiếp tục Coding các task đó
-------------------------------
1/16日：できるタスクを全て実施した。
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=77:81 
これから、クリアなところがあったら、また実装する。
4.0 | [Common] Nghiên cứu công nghệ để phát triển các tính năng của specs Handler
「共通」ハンドルに使用予定の技術スタディー | Done | 2024-01-26 00:00:00 | 期限の前にスタディーできたのでコーディングに着手した。
5.0 | 基本設計書の更新 | Done | - | 1/12に仕様に関するMTGを行い、仕様が仮確定。
基本設計書に反映済み。
6.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 随時内部チームの質問の回答を行なっています。
基本設計書が更新後、再度質問が発生する可能性もあります。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | Vẫn gửi nhận được email nên khách hàng tạm thời pending. 
さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | Khách hàng đồng ý là case khách hàng yêu cầu là case hiếm, cần suy nghĩ thêm nên sẽ pending. 
珍しいケースなので、後回し
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
2.0 | Trao đổi về tiêu chuẩn chất lượng dự án giai đoạn Maintaince
-----------------------------------------------
メンテナンス期間の品質指標について相談 | Inprogess | 2024-01-17 00:00:00 | Phíia Scuti đã hoàn thành việc tạo file, hiện tại đang dịch. 

Nhờ khách hàng sắp xếp meeting 1 hôm để trao đổi vấn đề trên. 
https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=1303724000
資料作成は完了した。翻訳中です。別のMTGで相談させていただきます。
https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=1303724000
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Update master schedule
マスタースケジュールを完成させること | Inprogess | 2024-01-24 00:00:00 | Ngày 01/17 Team sẽ update xong BD nên trong tuần sau team sẽ tiến hành tiếp tục breaktask và estimate các phần đã clear sau đó sẽ update master schedule
01/17日にBDの更新（翻訳も含め）が完了するので、また、明確な箇所について、詳細作業をリストアップし、見積もりを行った後に、マスタースケジュールを完成させる。
2.0 | [Common] Break task và estimate sơ bộ
「共通」作業リストアップと概算見積もり | Pending | 2024-01-24 00:00:00 | Ngày 01/17 Team sẽ update xong BD nên trong tuần sau team sẽ tiến hành tiếp tục breaktask và estimate các phần đã clear
01/17日にBDの更新（翻訳も含め）が完了するので、また、明確な箇所について、詳細作業をリストアップし、見積もりを行います。
3.0 | [Common] Triển khai tiếp tục coding các task nếu đã rõ yêu cầu và hoàn thành nghiên cứu công nghệ.  

「共通」明確な仕様について、コーディングを行う | Inprogess | 2024-01-24 00:00:00 | Hoàn thành gần như toàn bộ phần Common
ほとんどの共通部分が完了できた
4.0 | [Context Menu] Nếu còn thời gian team sẽ bắt đầu coding phần Context menu
「サブメニュ」時間がある場合、サブメニューの実装に着手する | Inprogess | - | Nếu tất cả các task trên hoàn thành và còn thời gian thì team sẽ chuyển sang bắt đầu coding phần Context menu. 
(Dự kiến là còn rất ít thời gian)
上記の実装が完了できたら、引き続き、サブメニューの実装に着手すること（残り時間が少ないと想定）
5.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 随時内部チームの質問の回答を行なっています。
基本設計書が更新後、再度質問が発生する可能性もあります。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | さくら側でメールの確認できているため保留中
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | 珍しいケースなので、後回し
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | Khách hàng đồng ý pending.
見積もり結果が多く、工数関係で保留中
2.0 | Trao đổi về tiêu chuẩn chất lượng dự án giai đoạn Maintaince
-----------------------------------------------
メンテナンス期間の品質指標について相談 | Inprogess | - | Phíia Scuti đã hoàn thành việc tạo file, hiện tại đang dịch. 

Nhờ khách hàng sắp xếp meeting 1 hôm để trao đổi vấn đề trên. 
https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=1303724000

資料作成は完了した。翻訳中です。別のMTGで相談させていただきます。
https://docs.google.com/spreadsheets/d/1IFKGmbMvMuA8yjE9uifZDjUHllOcpwWvWKL-R2F3kJY/edit#gid=1303724000
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
- Nhờ khách hàng chia sẻ về việc 2 tháng gần đây không thấy khách hàng đánh giá điểm CSS của dự án, để hai bên cùng tìm giải pháp khắc phục nếu có vấn đề. 
(Tạm thời Scuti vẫn để, khi nào khách hàng đánh giá trở lại thì sẽ xóa đi)
Q：アンケートをご記入をお願いします。
A：記入する。
（次回のアンケート記入依頼までこのQ＆Aを残す。）
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 01102024
週次報告
Weekly Meeting
日時／Time: 10 Jan 2023 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（12月20日～01月10日）／Report task of this week (20-Dec-> 10-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | 12/19の仕様変更後に基本設計書を再度修正(12/20~) | Done | 2023-12-22 00:00:00 | 検討箇所を内部で技術検討、および基本設計書に反映しています。
オータケ様側の年末の予定もあるため、遅くとも12/22や12/25までに基本設計書を完了する必要がある。
2.0 | Meeting lần cuối và chốt 1 phần BD để triển khai làm. 
-----------------------------------------------
オータケ様とMTGを行って、基本設計書を完成する。（レイヤー機能以外） | Done | 2023-12-25 00:00:00 | - Mong muốn phía Scuti sẽ meeting với khách hàng để chốt 1 phần BD trước. 
- Trong quá trình khách hàng nghỉ tết, thì phía Scuti sẽ tiến hành breaktask và estimate. 
-----------------------------------------------
・休み前にオータケ様とMTGを行って、基本設計書を完成する。（レイヤー機能以外）
・オータケ様の休暇中はScuti側は基本設計書の確認、タスクの切り分け、工数見積もりを行います。
3.0 | Tạo 1 phần master schedule
マスタースケジュールの一部分を完成させた。 | Inprogess | - | Phía Scuti đã lên 1 phần master schedule vào ngày 01/08/2024. 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=800815863
Tuy nhiên, còn khá nhiều phần specs chưa clear và cần nghiên cứu công nghệ nên Master Schedule sẽ được hoàn thiện tiếp trong thời gian tới. 
-----------
2024/1/8日にマスタースケジュールの一部を立てました。
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=800815863 
但し、不明なところや技術要調査なところがあるため、正確に見積もりできなく、これから引き続き完成にします。
4.0 | [Common] Break task và estimate sơ bộ
「共通」作業リストアップと概算見積もり | Inprogess | - | Phía Scuti đã break và estimate 1 phần của specs Handler. 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219
Tuy nhiên, còn khá nhiều phần specs chưa clear và cần nghiên cứu công nghệ nên phần breaktask và estimate sẽ được hoàn thiện tiếp trong thời gian tới.
------------------------
ハンドラー開発のタスク一部をリストアップと見積もりできた。
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219 
但し、不明なところや技術要調査なところがあるため、正確に見積もりできなく、これから引き続き完成にします。
5.0 | [Common] Triển khai coding 1 số task có thể làm trước của phần specs Handler | Done | 2023-12-18 00:00:00 | Ngày 04/01 Scuti đã tiến hành làm trước 1 số task có thể làm được: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=S72:S76
6.0 | [Common] Nghiên cứu công nghệ để phát triển các tính năng của specs Handler
「共通」ハンドルに使用予定の技術スタディー | Inprogess | 2024-01-26 00:00:00 | Phần [Common] của specs handler có 2 phần cần nghiên cứu công nghệ thì phía Scuti mới tiến hành làm được. 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=77:81

---------------------------

反転の技術をスタディーした。
7.0 | 12/19の仕様変更後に基本設計書を再度修正(12/20~) | Done | 2023-12-22 00:00:00
8.0 | 内部チームに基本設計書を説明 | Done | -
9.0 | 基本設計書の更新 | Pending | 現在、メニュー、サブメニュー、ロック部分の更新箇所について佐々木さんが資料を準備中。(01/09のmtg)
本日中？に資料を受領できる予定。
10.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | 随時内部チームの質問の回答を行なっています。
基本設計書が更新後、再度質問が発生する可能性もあります。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | Hiện phía Scuti đã báo cáo nguyên nhân do server gửi - nhận email Sakura của khách ưu tiên nhận email ở trên hệ thống Sakura nên phát sinh lỗi. 
Chờ khách hàng confirm về phương hướng giải quyết đã đề xuất. 
--------------------------
メール送受信原因と対応し方を報告しました。ご検討をお願いします。
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | Sau khi điều tra thì phía Scuti nhận thấy phần khách hàng mong muốn khác với specs vốn có của hệ thống. 
Phần này nếu chỉnh sửa theo yêu cầu của khách hàng thì độ ảnh hưởng khá lớn và bên mình cũng cần nhiều thời gian để đánh giá phạm vi ảnh hưởng. 

Nên nhờ khách hàng confirm về độ ưu tiên so với phần specs Handler nhé.
--------------------------
現在は仕様です。お客様の希望のように修正すると、影響範囲が広く、影響範囲の評価時間がかかるリスクがあります。
優先度の検討をお願いします。
CR Thay đổi template CSV -  CSV雛形変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=14:14 | Inprogess | - | PIC: Scuti
1.0 | Chỉnh sửa thêm 1 phần theo yêu cầu khách hàng. 
https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702459060397519
-----------------------------------------------
CSV雛形の中で修正項目を追加依頼 | Done | 2023-12-26 00:00:00
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | - | -Pendding vi tốn thời gian, chuyển sang fix bug ban đầu để tiếp tục sử dụng
----------------------------------------------- 
保留中（見積もりが多いから）。現在の仕様をそのままにする。
2.0 | Trao đổi về tiêu chuẩn chất lượng dự án giai đoạn Maintaince
-----------------------------------------------
メンテナンス期間の品質指標について相談 | Inprogess | 2024-01-17 00:00:00 | Do phía Scuti chưa chuẩn bị được tài liệu, nên xin phép khách hàng lùi việc trao đổi vào ngày 01/17/2024
------------------
資料を作成中です。2024/1/17日に延長させていただきたいです。
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Tạo 1 phần master schedule
マスタースケジュールの一部分を完成させた。 | Inprogess | - | Nếu phía khách hàng chốt được các phần specs và Q&A thì phía Scuti sẽ tiếp tục cập nhật master Schedule
---------
仕様を確定したら、マスタースケジュールに反映する
2.0 | [Common] Break task và estimate sơ bộ
「共通」作業リストアップと概算見積もり | Inprogess | - | Nếu phía khách hàng chốt được các phần specs và Q&A thì phía Scuti sẽ tiếp tục cập nhật file breaktask và estimate. 
仕様が確定したら、作業一覧と見積もりファイルに反映する。
3.0 | [Common] Triển khai tiếp tục coding các task nếu đã rõ yêu cầu và hoàn thành nghiên cứu công nghệ.  

「共通」明確な仕様について、コーディングを行う | Inprogess | - | Ngày 04/01 Scuti đã tiến hành làm trước 1 số task có thể làm được: 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=S72:S76

Nếu specs tiếp tục được clear thì Scuti sẽ tiếp tục Coding các task đó
-------------------------------
1/4日にできるタスクを全て実施した。
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=S72:S76 
これから、クリアなところがあったら、また実装する。
4.0 | [Common] Nghiên cứu công nghệ để phát triển các tính năng của specs Handler
「共通」ハンドルに使用予定の技術スタディー | Inprogess | 2024-01-26 00:00:00 | Phần [Common] của specs handler có 2 phần cần nghiên cứu công nghệ thì phía Scuti mới tiến hành làm được. 
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=1578221219&range=77:81

----------------------------

反転の技術をスタディーする
5.0 | 基本設計書の更新 | Pending | - | 現在、メニュー、サブメニュー、ロック部分の更新箇所について佐々木さんが資料を準備中。(01/09のmtg)
本日中？に資料を受領できる予定。
6.0 | 内部チームからのQA回答(必要に応じて佐々木さんへ質問） | Inprogess | - | 随時内部チームの質問の回答を行う。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | お客様のの検討待ち
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Pending | - | Sau khi điều tra thì phía Scuti nhận thấy phần khách hàng mong muốn khác với specs vốn có của hệ thống. 
Phần này nếu chỉnh sửa theo yêu cầu của khách hàng thì độ ảnh hưởng khá lớn và bên mình cũng cần nhiều thời gian để đánh giá phạm vi ảnh hưởng. 

Nên nhờ khách hàng confirm về độ ưu tiên so với phần specs Handler nhé.
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Pending | -
2.0 | Trao đổi về tiêu chuẩn chất lượng dự án giai đoạn Maintaince
-----------------------------------------------
メンテナンス期間の品質指標について相談 | Inprogess | 2024-01-17 00:00:00 | Do phía Scuti chưa chuẩn bị được tài liệu, nên xin phép khách hàng lùi việc trao đổi vào ngày 01/17/2024

------------------------

資料を作成中です。2024/1/17日に延長させていただきたいです。
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
- Nhờ khách hàng chia sẻ về việc 2 tháng gần đây không thấy khách hàng đánh giá điểm CSS của dự án, để hai bên cùng tìm giải pháp khắc phục nếu có vấn đề. 
アンケートについて
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 1220
週次報告
Weekly Meeting
日時／Time: 20 Dec 2023 / 16:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（12月11日～12月20日）／Report task of this week (11-Dec-> 20-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | ハンドラー仕様変更の分析とQA（内部とオータケ様）(~12/15) | Done | - | ハンドラー仕様変更について、内部とオータケ様宛に10点ほど質問をさせていただきました。
2.0 | ハンドラー仕様変更の基本設計書作成・オータケ様への説明(12/15) | Done | - | 質問で決まった点を基本設計書にまとめ、
12/15にMTGにてオータケ様に説明させていただきました。
ただ、ハンドラー機能やロック機能について説明時に考慮すべき点が出てきたため、佐々木さん側に検討いただきました。
3.0 | 基本設計書作成後のハンドラー仕様変更MTG(12/19) | Done | - | ハンドラー機能やロック機能に関して、検討いただいた箇所を共有いただきました。
4.0 | 12/19の仕様変更後に基本設計書を再度修正(12/20~) | Inprogess | 2023-12-22 00:00:00 | 検討箇所を内部で技術検討、および基本設計書に反映しています。
5.0 | Estimate hai trường hợp khi object bị lock và user muốn dùng command shortcut
----------------------------------------------- 
オブジェクトロックした時にコマンドショットカット使用可・不可の２つ場合の見積もり
https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702546032777149 | Done | - | Team đã estimate và gửi khách hàng.
----------------------------------------------- 
見積もり完了し共有済み
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840

-----------------------------------------------
No.30 お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840 | Pending | - | - Ngày 12/18/2023 phía Scuti đã chỉnh sửa và deploy lên STG. 
- Tuy nhiên, khách hàng test đang không nhận được email. 
- Ngày 12/20/2023 phía Scuti đã kiểm tra lại source code nhưng không tìm thấy gì bất thường, Khách hàng đang tạm pending không chỉnh sửa phần gửi nhận email này nữa.
-----------------------------------------------
- 12/18日にステージング環境に問題なく反映できた。
-藤原さんの確認でメールが指定したメールアドレスに届かないこと確認した。
-Scutiは再度確認したが、そのような現象がないので、
調査に必要な情報を聞いている最中に、お客さんから停止と言われた。
2.0 | No 31: Không ấn được button Back khi login SSO bằng Google.
-----------------------------------------------
No.31：googleアカウントログイン画面左下の’戻る’ボタンを押下すると、画面が遷移した後にページの読み込みが止まらなくなる
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840 | Done | - | Khách hàng đã đồng ý closed ngày 12/15/2023
-----------------------------------------------
12/15日にクローズにした。
3.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789

----------------------------------------------- 
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Inprogess | - | - Ngày 12/19/2023: Phía Scuti đang xin thêm evidence hoặc giải thích chi tiết thêm câu hỏi của khách hàng. 
- Ngày 12/20/2023: Khách hàng đã trả lời, phía Scuti cần thời gian nghiên cứu câu trả lời của khách.
----------------------------------------------- 
－12/19：質問された内容について、やり取りした。
- 12/20：返事した内容を検討中。
CR Thay đổi template CSV -  CSV雛形変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=14:14 | Done | 2023-12-18 00:00:00 | PIC: Scuti
1.0 | Chỉnh sửa thêm 1 phần theo yêu cầu khách hàng. 
https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702459060397519
-----------------------------------------------
CSV雛形の中で修正項目を追加依頼 | Done | 2023-12-18 00:00:00 | - Ngày 12/18/2023: Scuti đã chỉnh sửa và deploy lên STG.
----------------------------------------------- 
-12/18日：開発済みでステージング環境に反映した。
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Tạo file báo cáo effort hàng tháng: 
Đưa ra những việc cần làm trong tháng tới và est mất khoảng bao nhiêu effort.
-----------------------------------------------
毎月の工数見積もりを報告する資料作成
次月の予定作業とかかる工数の想定を記載するもの | Done | 2023-12-11 00:00:00
2.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
----------------------------------------------- 
システム内にお問い合わせメール受信機能について提案と概算見積もり | Inprogress | - | - Ngày 12/19/2023 phía Scuti đã estimate đại khái. 
- Tuy nhiên, phía Scuti không có site nào tương tự, do vậy nếu khách hàng muốn dễ hình dung hơn thì sẽ add vào file backlogs và nhờ Tashi làm BD.
- Hiện đang chờ độ ưu tiên từ khách hàng. 
----------------------------------------------- 
-12/19日：概算見積もり共有済み
-同様なサイトがないので、画像などを共有してほしい場合、Backlogに追加しておいて、担当の赤井がBDを作成する。
-お客様から指示待ち
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | 12/19の仕様変更後に基本設計書を再度修正(12/20~) | Inprogess | 2023-12-22 00:00:00 | 検討箇所を内部で技術検討、および基本設計書に反映しています。
オータケ様側の年末の予定もあるため、遅くとも12/22や12/25までに基本設計書を完了する必要がある。
2.0 | Meeting lần cuối và chốt 1 phần BD để triển khai làm. 
-----------------------------------------------
オータケ様とMTGを行って、基本設計書を完成する。（レイヤー機能以外） | Todo | 2023-12-25 00:00:00 | - Mong muốn phía Scuti sẽ meeting với khách hàng để chốt 1 phần BD trước. 
- Trong quá trình khách hàng nghỉ tết, thì phía Scuti sẽ tiến hành breaktask và estimate. 
-----------------------------------------------
・休み前にオータケ様とMTGを行って、基本設計書を完成する。（レイヤー機能以外）
・オータケ様の休暇中はScuti側は基本設計書の確認、タスクの切り分け、工数見積もりを行います。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840
-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | - Hoàn thành chỉnh sửa trên STG và deploy thành công lên Production
- Khách hàng chỉ pending phần gửi - nhận email. 
-----------------------------------------------
ステージング環境に修正完了させ、本番に反映
（メールの受送信のみ保留）
2.0 | Confirm thêm thông tin từ bug No 88 thuộc case chuyển trường: 
Nội dung: https://docs.google.com/spreadsheets/d/1OJAiSi5YcOX6wtn2vWkDEoL0015osf0u/edit?pli=1#gid=1766527831&range=102:102
Slack trao đổi: https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702631117681789
-----------------------------------------------
No.27の転校バグについて、追加に相談している。
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=1493476311 | Inprogess | - | - Hoàn thành câu trả lời khách hàng trong tuần.
-----------------------------------------------
質問に回答する予定
CR Thay đổi template CSV -  CSV雛形変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=14:14 | Inprogess | - | PIC: Scuti
1.0 | Chỉnh sửa thêm 1 phần theo yêu cầu khách hàng. 
https://eduamobileapp.slack.com/archives/C01SXMJD0GM/p1702459060397519
-----------------------------------------------
CSV雛形の中で修正項目を追加依頼 | Inprogess | - | - Hoàn thành deploy lên môi trường Production
----------------------------------------------- 
本番に反映完了
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Đề xuất và estimate đại khái về chức năng nhận email Contact trong hệ thống.
-----------------------------------------------
システム内にお問い合わせメール受信機能について提案と概算見積もり | Inprogess | - | - Phụ thuộc vào độ ưu tiên khách hàng.
----------------------------------------------- 
お客様の指示待ち
2.0 | Trao đổi về tiêu chuẩn chất lượng dự án giai đoạn Maintaince
-----------------------------------------------
メンテナンス期間の品質指標について相談 | Inprogess | 2023-12-27 00:00:00 | - Ngày 12/27/2023: Phía Scuti sẽ tạo file tiêu chuẩn và trao đổi với khách hàng.
-----------------------------------------------
12/27日に、作成した資料で相談予定
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 1211
週次報告
Weekly Meeting
日時／Time: 11 Dec 2023 / 15:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（12月07日～12月11日）／Report task of this week (07-Dec-> 11-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | -
CR Handler -  ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogess | - | Hiện đang chờ khách hàng chốt specs cuối cùng để Tashi viết BD
-----------------------------
最後の仕様を確定したら、赤いはBDの作成に着手する。
CR Thay đổi template CSV -  CSV雛形変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=14:14 | Done | 2023-12-08 00:00:00 | PIC: Scuti
1.0 | Coding & deploy môi trường Dev & STG
-----------------------------------------------
開発環境とステージング環境に実装と反映 | Done | 2023-12-08 00:00:00 | Otake đã test ok trên STG, ngày 12/12 phía Scuti sẽ deploy lên Production vào 17 JPT
-----------------------------
藤原さんがステージング環境での確認が完了した。問題がなかった。12/12日に17時JPTに本番に反映する予定。
CR Xoá kim đồng hồ - デジタル教具の時計針削除と説明テキスト変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=15:15 | Done | 2023-12-08 00:00:00 | PIC: Scuti
1.0 | Coding & deploy môi trường Dev & STG
-----------------------------------------------
開発環境とステージング環境に実装と反映 | Done | 2023-12-08 00:00:00 | Otake đã test ok trên STG, ngày 12/12 phía Scuti sẽ deploy lên Production vào 17 JPT
-----------------------------
藤原さんがステージング環境での確認が完了した。問題がなかった。12/12日に17時JPTに本番に反映する予定。
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840

-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Pending | - | Nếu phía Otake quyết định Email gửi đi thì Scuti sẽ bắt đầu chỉnh sửa bug trên.

-----------------------------------------------
送信先のメールアドレスが決まったら、バグ修正をします。
2.0 | No 31: Không ấn được button Back khi login SSO bằng Google.

-----------------------------------------------
googleアカウントログイン画面左下の’戻る’ボタンを押下すると、画面が遷移した後にページの読み込みが止まらなくなる | Inprogess | - | Chờ thông tin confirm từ Otake

-----------------------------------------------
藤原さんからの返事待機
Other | Inprogess | - | PIC: Scuti
1.0 | Tạo file báo cáo effort hàng tháng: 
Đưa ra những việc cần làm trong tháng tới và est mất khoảng bao nhiêu effort.

-----------------------------------------------
毎月の工数見積もりを報告する資料作成
次月の予定作業とかかる工数の想定を記載するもの | Inprogess | 2023-12-11 00:00:00
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI - CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler - ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogess | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
Đối ứng Bugs tồn đọng của phía Tanosy khi handover
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840

-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Inprogess | - | Nếu phía Otake quyết định Email gửi đi thì Scuti sẽ bắt đầu chỉnh sửa bug trên.

-----------------------------------------------
送信先のメールアドレスが決まったら、バグ修正をします。
2.0 | No 31: Không ấn được button Back khi login SSO bằng Google.

-----------------------------------------------
googleアカウントログイン画面左下の’戻る’ボタンを押下すると、画面が遷移した後にページの読み込みが止まらなくなる | Inprogess | - | Chờ thông tin confirm từ Otake

-----------------------------------------------
藤原さんからの返事待機
Other - その他 | Inprogess | - | PIC: Scuti
1.0 | Tạo file báo cáo effort hàng tháng: 
Đưa ra những việc cần làm trong tháng tới và est mất khoảng bao nhiêu effort.

-----------------------------------------------
毎月の工数見積もりを報告する資料作成
次月の予定作業とかかる工数の想定を記載するもの | Inprogess | 2023-12-11 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 1206
週次報告
Weekly Meeting
日時／Time: 06 Dec 2023 / 15:00 JPT
出席者／ATTENDEES
Otake側: 大竹さん,佐々木さん
Scuti側: GiangPT, ThuyLP, Tashi, Hiroki Enokuma
Meet Link: https://www.google.com/url?q=http://meet.google.com/rfm-zfmp-tfx&sa=D&source=calendar&ust=1702261793632804&usg=AOvVaw1HbEmevATySFKY2SthSvip
アジェンダ―／AGENDA
１．今週の作業内容（12月01日～12月06日）／Report task of this week (01-Dec-> 06-Dec）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR UI変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake & Tashi
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Team Scuti đang pending chờ khách hàng chốt specs
---------------------------------------
お客様側で仕様をまとめている
CR ハンドルについて
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogess | - | Team Scuti đang hỗ trợ cùng Taishi phân tích specs và trả lời các câu hỏi liên quan tới kỹ thuật.
---------------------------------------
赤井と他の開発チメンバーは一緒に仕様分析と技術関連質問回答をしています。·
進捗：
・基本設計書（0.5人日）
・質問に関しては、随時QAリストでやり取りさせていただきます。
2.0 | Estimate 2 phương pháp làm Lock/ Unlock
-----------------------------------------------
ロック・ロック解除の二つの案を見積もり | Done | 2023-12-06 00:00:00 | Case 1:  Chỉ làm button lock, unlock trên context menu: 2 Mds
Case 2:  Làm button lock, unlock trên context menu, button lock dưới chân object được chọn hoặc button lock dưới 1 group object được chọn 4 Mds

------------
案1：サブメニューのみにロック・ロック解除アイコンを実装：２Mds
案２：サブメニューとオブジェクト（オブジェクトグループ）の下部にロックアイコンを実装：４Mds
              Demo: https://drive.google.com/file/d/1kOI8c9qIPuQK1mRns9K-p0B8QTVZDiuU/view?usp=drive_link
CR CSV雛形変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=14:14 | Inprogess | 2023-12-08 00:00:00 | PIC: Scuti
1.0 | Coding & deploy môi trường Dev & STG
-----------------------------------------------
開発環境とステージング環境に実装と反映 | Inprogess | 2023-12-08 00:00:00 | Team estimate cả code & test & Deploy lên STG: 1 Mds

-----------------------------------------------
ステージング環境でのテストまで：１Mds
CR デジタル教具の時計針削除と説明テキスト変更
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=15:15 | Inprogess | 2023-12-08 00:00:00 | PIC: Scuti
1.0 | Coding & deploy môi trường Dev & STG
-----------------------------------------------
開発環境とステージング環境に実装と反映 | Inprogess | 2023-12-08 00:00:00 | Team estimate cả code & test & Deploy lên STG: 1.5 Mds

-----------------------------------------------
ステージング環境でのテストまで：１,5Mds
タノシーさんから引き継いだバグ対応 | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng

https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840

-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Inprogess | - | 1. Phía Scuti đã tái hiện được. 
2. Lỗi không validate khi nhập email đúng: Phía Scuti cần 0.5 Md để chỉnh sửa. 
3. Tuy nhiên, khi Scuti lật lại specs thì chức năng này không thể gửi được email do địa chỉ email cần gửi đi đâu phía Otake chưa quyết định
https://docs.google.com/presentation/d/1io9COFSFL4Fkb4IISERznL5wf3t6oCKq/edit#slide=id.p32
=> Do vậy, phía Scuti sẽ chỉnh sửa lỗi này khi Otake quyết định email gửi đi.

-----------------------------------------------
1.再現できた
2.修正作業自体の見積もり：0.5Md
3.但し、現在の仕様ではこの機能にてメールを送ることができません。送信先が確定していないからです。
それで、送信先が決まった後に、対応します。
2.0 | No 31: Không ấn được button Back khi login SSO bằng Google.

-----------------------------------------------
googleアカウントログイン画面左下の’戻る’ボタンを押下すると、画面が遷移した後にページの読み込みが止まらなくなる | Inprogess | - | 1. Phía Scuti điều tra thì do chính sách của Google khi hiển thị popup login SSO. 
2. Tuỳ từng devise mà mới xuất hiện button back này. 
3. Phía phát triển không thể can thiệp được do đây là chính sách của google. 

-----------------------------------------------
1.調査によると、SSOログインポップアップを表示する際のGoogleのポリシーだそうです。
2.端末依存で戻るボータンがある・ないものがあります。
3.GoogleのポリシーなのでScutiは修正できません。
Other | Inprogess | - | PIC: Scuti
1.0 | Thêm Sheet Logtime trong file quản lý
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768

-----------------------------------------------
マネジメントファイルに時間記録シートを追記 | Done | 2023-12-06 00:00:00
２．来週の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
Note
CR Thay đổi UI
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=4:4 | Pending | - | PIC: Otake
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Pending | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Handler
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=16:16 | Inprogess | - | PIC: Otake & Tashi
1.0 | Nghiên cứu và phát triển Basic Design
-----------------------------------------------
仕様検討と基本設計書作成 | Inprogess | - | Tashi sẽ bắt đầu làm BD nếu khách hàng chốt specs
---------------------------------------
仕様が固まったら、基本設計書の作成に着手
CR Thay đổi template CSV
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=14:14 | Done | 2023-12-08 00:00:00 | PIC: Scuti
1.0 | Coding & deploy môi trường Dev & STG
-----------------------------------------------
開発環境とステージング環境に実装と反映 | Done | 2023-12-08 00:00:00 | Team estimate cả code & test & Deploy lên STG: 1 Mds

-----------------------------------------------
ステージング環境でのテストまで：１人日
CR Xoá kim đồng hồ
https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045&range=15:15 | Done | 2023-12-08 00:00:00 | PIC: Scuti
1.0 | Coding & deploy môi trường Dev & STG
-----------------------------------------------
開発環境とステージング環境に実装と反映 | Done | 2023-12-08 00:00:00 | Team estimate cả code & test & Deploy lên STG: 1.5 Mds

-----------------------------------------------
ステージング環境でのテストまで：1.5人日
Đối ứng Bugs tồn đọng của phía Tanosy khi handover | Inprogess | - | PIC: Scuti
1.0 | No 30: Không mất validate khi nhập email đúng
https://docs.google.com/spreadsheets/d/1yJ_EkjKURS4ba42_TFviMplt5aE1Ni-3b4_-nb6P6bw/edit#gid=569740840

-----------------------------------------------
お問い合わせメールでGmail/tmail/windowsmail/を入力してもエラーメッセージが出る。 | Inprogess | - | Nếu phía Otake quyết định Email gửi đi thì Scuti sẽ bắt đầu chỉnh sửa bug trên.

-----------------------------------------------
送信先のメールアドレスが決まったら、バグ修正をします。
2.0 | No 31: Không ấn được button Back khi login SSO bằng Google.

-----------------------------------------------
googleアカウントログイン画面左下の’戻る’ボタンを押下すると、画面が遷移した後にページの読み込みが止まらなくなる | Inprogess | - | Chờ thông tin confirm từ Otake

-----------------------------------------------
藤原さんからの返事待機
Other | Inprogess | - | PIC: Scuti
1.0 | Tạo file báo cáo effort hàng tháng: 
Đưa ra những việc cần làm trong tháng tới và est mất khoảng bao nhiêu effort.

-----------------------------------------------
毎月の工数見積もりを報告する資料作成
次月の予定作業とかかる工数の想定を記載するもの | Inprogess | 2023-12-11 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7．備考／Notes
## Sheet: 報告テンプレート／Template
[Test] [Otake] | 週次報告
Weekly Meeting
日時／Time: 09 Jun 2023 / 17:00 JPT
出席者／ATTENDEES
Otake:
Scuti側: GiangPT, ThuyLTP
VFJ側:
アゼンダー／AGENDA
今週の作業内容（6月5日～9日）／Report task of this week (5-Jun-> 9-Jun)
No | タスク名
Task | ステータス
Status | Deadline | 備考
Note
1.0
2.0
来週の予定作業／Plan  next week
No | タスク名
Task | ステータス
Status | Deadline | 備考
Note
1.0
2.0
確認・質問／Q&A
無し／None
リスク・問題点／Risk/Issue
No | タイプ
Type | 内容
Content | ステータス
Status | 履歴（ログ）
Histories log
1.0
2.0
備考／Notes


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\Dịch Weekly Report\[CMIC様] Weekly meeting (1).xlsx`

## Sheet: 0417
週次報告
Weekly Meeting
日時／Time: 2025年4月17日/   13:00 JPT
出席者／ATTENDEES
CMIC 側: 増田さん、北さん、Tamaiさん、Saitoさん
Scuti 側: CanhHT (PM), NgaNTQ (窓口）
Teams リンク: https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZjM5ODkwZGUtZmZiNS00OTEyLWFiMmEtZTgwZjg2ZGY4MTZk%40thread.v2/0?context=%7b%22Tid%22%3a%22d34cdc94-7e0b-4a41-839d-a15c042e77f1%22%2c%22Oid%22%3a%22cca3600c-f2f5-4df9-9436-f4a57bac9efb%22%7d
マスタースケジュール/Master Schedule:
アゼンダー／AGENDA
1．今週の作業内容(04月10日～04月17）／Báo cáo công việc đã làm
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
1 | DFS-5 | Difyバージョンの更新フローにGithubを追加する
Thêm github flow update version Dify | [Scuti] In-review | 2025-04-14 00:00:00 | 2025-04-17 00:00:00 | 資料のURL/Link tài liệu:
https://app.box.com/file/1828893239324
2 | DFS-6 | コンテナーアプリ以外、他の各リソースの各パラメータを追加する。
Thêm các parameter của các resource khác ngoài container app sau khi cập nhật sơ đồ Network | [Scuti] In-review | 2025-04-15 00:00:00 | 2025-04-17 00:00:00 | 資料のURL/Link tài liệu: https://app.box.com/file/1823192853130　

更新内容：
・インフラシートのインフラ構成図を更新済み
・パラメータシートにてSYSTEM SPECを追記済み

Nội dung đã cập nhật: 
- Update lại ảnh sơ đồ kiến trúc ở sheet Infra
- Update thêm SYSTEM SPEC ở sheet Parameter
3 | DFS-4 | ネットワークの観点構成図に関して、アプリケーションログの取得方法を確認する。
Confirm cách get Application log - liên quan đến file Sơ đồ cấu trúc network | Stop | 2025-04-15 00:00:00 | 2025-04-18 00:00:00 | https://cmicscuti.slack.com/archives/C08G7D2744A/p1744334819718199?thread_ts=1744273106.593439&cid=C08G7D2744A　
上記はSlackでのやり取りです。
本タスクは確認不要で、クローズさせていただきます。
Link bên trên là nội dung trao đổi qua Slack với khách hàng. Task này khách bảo không cần xác nhận nên xin phép Close.
4 | DFS-2 | RFI回答検索アプリの開発依頼
Yêu câu phát triển app Tìm kiếm câu trả lời RFI | Inprogess | 2025-04-11 00:00:00 | 2025-04-17 00:00:00
5 | 開発業務に関して確認するためのQ＆Aを作成する
Tạo QA và xác nhận nghiệp vụ phát triển | [Scuti] In-review | 2025-04-11 00:00:00 | 2025-04-17 00:00:00 | Q&Aシート/Link QA: https://app.box.com/file/1823174382100
6 | DFS-7 | BOXとのAPI連携依頼
Yêu cầu liên kết API với BOX | Todo | DFS-2の後に対応する
Đợi hoàn thiện DFS-2
7 | DFS-8 | OCRアプリの構築の調査
Nghiên cứu xây dựng ứng dụng OCR | Todo | DFS-2の後に対応する
Đợi hoàn thiện DFS-2
２．来週の予定作業／Kế hoạch triển khai tiếp theo
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
2 | DFS-2 | RFI回答検索アプリの開発依頼
Yêu câu phát triển app Tìm kiếm câu trả lời RFI | Inprogess | 2025-04-11 00:00:00 | 2025-04-17 00:00:00
3 | 開発業務に関して確認するためのQ＆Aを作成する
Tạo QA và xác nhận nghiệp vụ phát triển | [Scuti] In-review | 2025-04-11 00:00:00 | 2025-04-17 00:00:00 | Q&Aシート/Link QA: https://app.box.com/file/1823174382100
4 | DFS-7 | BOXとのAPI連携依頼
Yêu cầu liên kết API với BOX | Todo | DFS-2の後に対応する
Đợi hoàn thiện DFS-2
5 | DFS-8 | OCRアプリの構築の調査
Nghiên cứu xây dựng ứng dụng OCR | Todo | DFS-2の後に対応する
Đợi hoàn thiện DFS-2
３．依頼
４．相談内容／Nội dung trao đổi
５．備考／Ghi chú cuộc họp | 議事録/Ghi chú cuộc họp
SCUTI 側のご確認
Xác nhận của Scuti | CMIC様のご確認
Xác nhận của CMIC | 確認済 | 要確認（再確認する必要な点がある場合はこちらにご記入ください。）
Nội dung báo cáo:
- Scuti báo cáo công việc tuần trước và kế hoạch tuần tới: CMIC đã hiểu
- CMIC confirm: tickket DFS-7, 8 có thể tiến hành song song với DFS-2 được không?
➡ Scuti trả lời: Hiện tại chỉ có 1 dev làm task, 2 bạn Tình và Lâm chỉ là hỗ trợ giai đoạn đầu liên quan đến Infra. Task số 7 và 8 không liên quan đến Infra. Trường hợp CMIC mong muốn thực hiện song song 3 task, Scuti có thể thực hiện được, nhưng duration của từng task sẽ kéo dài hơn, do thực hiện 3 task 1 lúc. Nếu cần làm song song, CMIC hãy cho Scuti biết, hai bên cùng nhau điều chỉnh duration.
➡CMIC trả lời: Hiện tại, cứ theo plan Scuti đã đưa ra.
- Task DFS-6 (bổ sung thêm parameter): Scuti đang review nội bộ. Sau khi hoàn thành sẽ gửi cho CMIC nhờ review.

Việc Scuti cần làm tiếp theo: 
- Update plan của task DFS-7, 8, báo cáo lại cho khách.
- Các task deadline hôm nay 04/17: hoàn thiện và gửi cho khách hàng.
(Nếu có tài liệu cần dịch, cần cân nhắc đến thời gian dịch)
➡ Đã gửi khách trên Slack
- Thêm status CMIC review vào các task.

Việc CMIC cần làm tiếp theo:
- CMIC review các task DFS-5, DFS-6  sau khi Scuti gửi thông tin
- CMIC phản hồi QA sau khi Scuti gửi QA liên quan đến DFS-2 | ■ 報告内容
・Scuti は先週の作業と来週の計画を報告した。
　CMIC様は内容を理解した。
・CMIC様のご確認：チケットDFS-7、8はDFS-2と並行して進めることは可能か？
　➡ Scuti のご回答：現在、開発者は1名しかいない、TinhとLam はプロジェクトの最初段階でインフラ構築に関することのみをサポートする。チケットDFS-7、8 はインフラ構築とは関係がない。3タスク同時進行は可能だが、各タスクの対応期間が長くなる。ご希望の場合はScutiに連絡してください。
　➡ CMIC回答：現在の計画通りで進めてください。つまり、DFS-7、8 は DFS-2 の後に進行する。
・チケットDFS-6（パラメータ追加）：Scutiにて社内レビュー中。完了次第、CMIC様に提示する。

■ Scuti のやること
・タスク DFS-7、8の計画を更新する。
・期限が本日（4/17）のタスク：完了させ本日中にCMIC様に提示する。
（※翻訳が必要な場合、翻訳時間を考慮すること）
 　➡Slackで提示済み
・各タスクにお客様のレビューというステータスを追加する。
　
■ CMIC様のやること
・DFS-5, DFS-6 の資料をレビューする
（https://cmicscuti.slack.com/archives/C08G7D2744A/p1744870627963609 にて提示済み）
・Scuti からQ＆Aを送付後、ご回答をお願いします。
## Sheet: 0410
週次報告
Weekly Meeting
日時／Time: 2025年4月10日/   13:00 JPT
出席者／ATTENDEES
CMIC 側: 増田さん、北さん、Tamaiさん、Saitoさん
Scuti 側: CanhHT (PM), NgaNTQ (窓口）
Teams リンク: https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZjM5ODkwZGUtZmZiNS00OTEyLWFiMmEtZTgwZjg2ZGY4MTZk%40thread.v2/0?context=%7b%22Tid%22%3a%22d34cdc94-7e0b-4a41-839d-a15c042e77f1%22%2c%22Oid%22%3a%22cca3600c-f2f5-4df9-9436-f4a57bac9efb%22%7d
マスタースケジュール/Master Schedule:
アゼンダー／AGENDA
1．今週の作業内容(04月03日～04月10）／Báo cáo công việc đã làm
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
1 | Difyバージョンの更新資料を作成する
Tạo tài liệu nâng cấp phiên bản Dify | Done | 2025-04-04 00:00:00 | 2025-04-09 00:00:00 | ドキュメントのURL：
Link tài liệu: https://cmic.box.com/s/foyhgwfzowptw2kq9r6eejes88s5m9xg
2 | ネットワークの観点構成図を作成する
Tạo Sơ đồ cấu trúc network | Done | 2025-04-08 00:00:00 | 2025-04-09 00:00:00 | ドキュメントのURL：
Link tài liệu: https://app.box.com/file/1828884542058?s=99wdtz71ldrp2dugpckjq9l27ovsjqgr
3 | Blob Storage が必要であるかを調査する
Nghiên cứu và đánh giá việc sử dụng Blob Storage | Done | 2025-04-09 00:00:00 | 2025-04-09 00:00:00 | チャットで回答済み
Đã trả lời khách hàng
4 | Azure Cache はプライベートエンドポイントを接続できるかどうかを確認する
Kiểm tra Azure Cache có kết nối private endpoint được không | Done | 2025-04-09 00:00:00 | 2025-04-09 00:00:00 | プライベートエンドポイントを接続できる。
チャットで回答済み
Có thể kết nối enpoint.
Đã trả lời khách hàng
２．来週の予定作業／Kế hoạch triển khai tiếp theo
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
1 | マスタースケジュールを作成する
Tạo master schedule | Waiting | 開発依頼の情報をお待ちしております。
Đợi thông tin yêu cầu phát triển
2 | Azure環境のリソース構築
Build resource môi trường Azure | Waiting | VDIの情報をお待ちしております。
Đợi thông tin VDI
3 | Difyインストール・初期設定
Cài Dify và setting khởi tạo | Waiting | VDIの情報をお待ちしております。
Đợi thông tin VDI
３．依頼
‘
４．相談内容／Nội dung trao đổi
・現在、VDIおよび開発依頼に関する情報をお待ちしているため、開発チームで進められる作業が限られている状況です。
開発依頼の情報が判明し次第、すぐに開発に着手できるかと思いますので、可能であれば、いつ頃ご共有いただけるかご教示いただけますと幸いです。
・JIRAの使用プロセスにつきましては、現在Slackでやり取りを行っておりますが、無料プランの場合、30日を経過すると内容が削除される可能性がございます。
そのため、今後タスクをご依頼いただく際には、JIRAにてタスクの登録をお願いしたく存じますが、問題ございませんでしょうか。
https://app.box.com/file/1829704377415　

- Hiện tại việc chưa có thông tin VDI  & yêu cầu cầu phát triển chưa có thông tin nên phía đội phát triển chưa có nhiều công việc thực hiện
=> Trao đổi với phía CMIC về kế hoạch cung cấp thông tin.

- Trao đổi về quy trình sử dụng Jira. Hiện tại các công việc đang được trao đổi trực tiếp qua chat nhưng sau 30 ngày lịch sử chat có thể bị mất đi (do dùng bản không trả phí của Slack)
=> Phía Scuti mong muốn là quy trình giao task phía CMIC chuyển sang Scuti sẽ được tạo ticket trên Jira theo quy trình đã thống nhất trước đó. https://app.box.com/file/1829704377415
５．備考／Ghi chú cuộc họp | 議事録/Ghi chú cuộc họp
SCUTI 側のご確認
Xác nhận của Scuti | Confirmed | CMIC様のご確認
Xác nhận của CMIC | 要確認（再確認する必要な点がある場合はこちらにご記入ください。）
Nội dung báo cáo:
- Công việc đã làm tuần trước và nextplan: báo cáo như trên, khách đã hiểu. 
- CMIC xác nhận một số ý hiểu về Sơ đồ cấu trúc network, infra với Tình và Lâm. Hai bên đã thống nhất được ý hiểu.
- CMIC giới thiệu member mới là Saito (nữ)
Việc Scuti cần làm tiếp theo: 
- Kiểm tra xem blob storage có dùng private link được không. nếu có thì cập nhật lại sơ đồ cấu trúc network
- Confirm cách get Application log - liên quan đến file Sơ đồ cấu trúc network (Tình)
- Add thêm flow update version Dify, thêm github vào
  File update: https://app.box.com/file/1828893239324　
- Add thêm các parameter của các resource khác ngoài container app
  File update: https://app.box.com/file/1823192853130　
Việc CMIC cần làm tiếp theo:
- Gửi yêu cầu task cho Scuti: 10/4
- Gửi tài liệu luồng từ khi user thực hiện? đến khi kết nối container: 11/4 | ■ 報告内容
・先週の作業と次の予定を報告した。CMIC様が理解しました。
・CMIC様が技術リーダー（Tinh）とネットワークの観点構成図について不明な点を確認しました。両方で認識の合わせをしました。
・CMIC様が新しいメンバー（Saitoさん）を紹介しました。

■ Scuti のやること
・Blob storage はプライベートリンクを使用できるかを確認する。
できる場合、ネットワークの観点構成図を再更新する。
・ネットワークの観点構成図に関して、アプリケーションログの取得方法を確認する。
・Difyバージョンの更新フローを追記し、Githubを追加する。
　更新ファイル： https://app.box.com/file/1828893239324　　
・コンテナーアプリ以外、他の各リソースの各パラメータを追加する。
　更新ファイル： https://app.box.com/file/1823192853130
　
■ CMIC様のやること
・4/10にScuti 側に開発依頼をJIRAで送付する→送付済み
・ユーザが実施するから？コンテナー通信までの資料を作成し4/11にScuti 側に送付する
## Sheet: 0403
週次報告
Weekly Meeting
日時／Time: 2025年4月03日/   13:00 JPT
出席者／ATTENDEES
CMIC 側: 増田さん、北さん、Tamaiさん
Scuti 側: CanhHT (PM), NgaNTQ (窓口）
Zoomリンク:
Master Schedule:
アゼンダー／AGENDA
1．今週の作業内容(3月27日～04月03）／Báo cáo công việc đã làm
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
1 | Azure環境要件定義・設計
Định nghĩa yêu cầu môi trường Azure, và design | Inprogess | 2025-03-26 00:00:00 | 2025-03-31 00:00:00 | セキュリティポリシーが決まっていないため、次のスケジュールで締め切りを変更させていただきます。
Reschedule vì cần trao đổi và thảo luận thêm về chính sách bảo mật.
2 | 開発環境のインフラ構成図を統一する
Thống nhất sơ đồ và kiến trúc Infa cho môi trường Development | Done | 2025-03-26 00:00:00 | 2025-03-26 00:00:00 | 統一された構成図は以下のファイルに記載されている。·
Kiến trúc đã thống nhất:

 インフラ構成
3 | セキュリティポリシーを統一する
Thống nhất về chính sách bảo mật | Inprogess | セキュリティポリシーについて、定例会で相談させてください。
Thông tin này cần trao đổi trực tiếp để 2 bên thống nhất
4 | 開発環境構築時に使用するサービスコストの見積書を作成する
Tạo bản Estimate về chi phí các dịch vụ sử dụng khi xây dựng môi trường Development | Done | 2025-03-31 00:00:00 | 2025-03-31 00:00:00
5 | マスタースケジュールを作成する
Tạo master schedule | Waiting | スケジュールを作成できる情報がまだ十分ではないため、タスクの要件定義の情報をお待ちしております。
Chưa đủ thông tin để tạo Schedule, cần đợi thông tin yêu cầu phát triển chi tiết từ khách hàng
6 | Azure環境のリソース構築
Build resource môi trường Azure | Todo | 2025-04-08 00:00:00 | 2025-04-11 00:00:00 | 現時点でVDIとAzureの情報をいただいていない状態で、スケジュールを変更させていただきます。
Reschedule vì hiện tại chưa có thông tin VDI và Azure
7 | Difyインストール・初期設定
Cài Dify và setting khởi tạo | Todo | 2025-04-11 00:00:00 | 2025-04-18 00:00:00 | 現時点でVDIとAzureの情報をいただいていない状態で、スケジュールを変更させていただきます。
Reschedule vì hiện tại chưa có thông tin VDI và Azure
8 | BOXのアカウントを作成し、BOXに参加する
Tạo tài khoản BOX và join workspace | Done | 2025-04-02 00:00:00 | 2025-04-02 00:00:00
２．来週の予定作業／Kế hoạch triển khai tiếp theo
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
1 | Azure環境要件定義・設計
Định nghĩa yêu cầu môi trường Azure, và design | Inprogess | 2025-03-26 00:00:00 | 2025-04-04 00:00:00
2 | 開発環境のインフラ構成図を統一する
Thống nhất sơ đồ và kiến trúc Infa cho môi trường Development | Done | 2025-03-26 00:00:00 | 2025-03-26 00:00:00 | 統一された構成図は以下のファイルに記載されている。·
Kiến trúc đã thống nhất:

 インフラ構成
3 | セキュリティポリシーを統一する
Thống nhất về chính sách bảo mật | Inprogess
4 | 開発環境構築時に使用するサービスコストの見積書を作成する
Tạo bản Estimate về chi phí các dịch vụ sử dụng khi xây dựng môi trường Development | Done | 2025-03-31 00:00:00 | 2025-03-31 00:00:00
5 | マスタースケジュールを作成する
Tạo master schedule | Waiting
6 | Azure環境のリソース構築
Build resource môi trường Azure | Todo | 2025-04-08 00:00:00 | 2025-04-11 00:00:00
7 | Difyインストール・初期設定
Cài Dify và setting khởi tạo | Todo | 2025-04-11 00:00:00 | 2025-04-18 00:00:00
３．依頼
無し／None
４．相談内容／Nội dung trao đổi
ベトナムの祝日のお知らせ
・4月7日（月）はベトナムの祝日のため、Scuti は休業いたします。
・4月30日（水）から5月4日（日）まではベトナムの祝日のため、Scuti は休業いたします。

- Thông báo về lịch nghỉ lễ thứ 2 ngày 07/04 
- Thông báo về lịch nghỉ lễ 30/04.  Nghỉ từ 30/04 (Thứ Tư) tới hết 04/05 (Chủ Nhật)
５．備考／Ghi chú cuộc họp | 議事録/Ghi chú cuộc họp
SCUTI 側のご確認
Xác nhận của Scuti | Confirmed | CMIC様のご確認
Xác nhận của CMIC | 確認済 | 要確認（再確認する必要な点がある場合はこちらにご記入ください。）
Nội dung báo cáo:
- Báo cáo công việc tuần trước và next plan: khách đã hiểu tình hình.
- Các task chưa điền ngày bắt đầu và ngày kết thúc là các task đang chờ thông tin từ CMIC.
- Thông tin VDI và Azure: bên khách sẽ xác nhận lại với PIC nội bộ, có thể trong ngày mai gửi được cho Scuti. Khi nào có khách gửi luôn.
- Tình san giải thích về cấu trúc Infra, trao đổi về chính sách bảo mật.

Việc Scuti cần làm tiếp theo: 
- Add thêm task: xem xét điều tra việc update version Dify
- Kiểm tra lại xem có cần sử dụng Blob Storage không?
  Nếu cần, thực hiện update lại Sơ đồ cấu trúc network.
- Check xem Azure Cache có kết nối private endpoint được không?
- Tạo Sơ đồ cấu trúc network (ネットワーク観点構成図）

Việc CMIC cần làm tiếp theo:
'- Xác nhận với PIC xem ngày mai có gửi được thông tin VDI và Azure không. | ■ 報告内容：
・今週の作業と次の計画の報告：CMIC様側が状況を把握されている。
・開始日と終了日を記載していないタスクはCMIC様からの情報をお待ちしているものである。
・VDIとAzureの情報はCMIC様が内部で確認す。提供できるのは明日になるかもしれない。出来次第、Scuti に連携する。
・Tinhの方がインフラ構成図を説明し、セキュリティポリシーを相談させていただいた。

■ Scuti のやること
・Difyのバージョンの更新を調査する。
・Blob Storage を使用する必要かどうかを確認する。
　必要な場合はこの内容をネットワーク観点構成図に更新する。
・Azure Cache はプライベートエンドポイントを接続できるかどうかを確認する。
・ネットワーク観点構成図を作成する。

■ CMIC様のやること
・いつVDIとAzureの情報を提供できるか確認していただく。
（明日4/4になる？）
## Sheet: 0327
週次報告
Weekly Meeting
日時／Time: 2025年3月27日/   13:00 JPT
出席者／ATTENDEES
CMIC 側: 増田さん、北さん、Tamaiさん
Scuti 側: CanhHT (PM), NgaNTQ (窓口）
Zoomリンク:
Master Schedule:
アゼンダー／AGENDA
1．今週の作業内容(3月24日～03月27）／Báo cáo công việc đã làm
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
1 | キックオフ会議
Kick-off Meeting | Done | 2025-03-24 00:00:00 | 2025-03-24 00:00:00
2 | Azure環境要件定義・設計
Định nghĩa yêu cầu môi trường Azure, và design | Inprogess | 2025-03-26 00:00:00 | 2025-03-31 00:00:00
3 | 開発環境のインフラ構成図を統一する
Thống nhất sơ đồ và kiến trúc Infa cho môi trường Development | Done | 2025-03-26 00:00:00 | 2025-03-26 00:00:00 | 統一された構成図は以下のファイルに記載されている。·
Kiến trúc đã thống nhất:

 インフラ構成
4 | Inprogess | 2025-03-27 00:00:00 | 2025-03-28 00:00:00
5 | 開発環境構築時に使用するサービスコストの見積書を作成する
Tạo bản Estimate về chi phí các dịch vụ sử dụng khi xây dựng môi trường Development | Todo | 2025-03-31 00:00:00 | 2025-03-31 00:00:00
6 | マスタースケジュールを作成する
Tạo master schedule | Inprogess | 2025-03-26 00:00:00 | 2025-03-28 00:00:00 | Slackで連携していただいたプロジェクトトラッカーの内容は以下のスケジュールに入れました。これは最終的なスケジュールになっていますか？後は変更がありますか？
このスケジュールに変更がないのなら、貴社から出した期限日をもとに作業を進める予定です。
Về shedule dưới đây đã là bản final chưa?
Chúng tôi sẽ dựa trên deadline CMIC mong muốn để lên schedule, gửi trong ngày 28.
[CMIC] Schedule
２．来週の予定作業／Kế hoạch triển khai tiếp theo
No. | Jira | タスク名
Công việc | サブタスク
Công việc nhỏ | ステータス
Trạng thái | 開始日
Ngày bắt đầu | 終了日
Ngày kết thúc | 備考
Ghi chú
2 | Azure環境要件定義・設計
Định nghĩa yêu cầu môi trường Azure, và design | Inprogess | 2025-03-26 00:00:00 | 2025-03-31 00:00:00
3 | 開発環境のインフラ構成図を統一する
Thống nhất sơ đồ và kiến trúc Infa cho môi trường Development | Done | 2025-03-26 00:00:00 | 2025-03-26 00:00:00 | 統一された構成図は以下のファイルに記載されている。·
Kiến trúc đã thống nhất:

 インフラ構成
4 | セキュリティポリシーを統一する
Thống nhất về chính sách bảo mật | Inprogess | 2025-03-27 00:00:00 | 2025-03-28 00:00:00
5 | 開発環境構築時に使用するサービスコストの見積書を作成する
Tạo bản Estimate về chi phí các dịch vụ sử dụng khi xây dựng môi trường Development | Todo | 2025-03-31 00:00:00 | 2025-03-31 00:00:00
6 | マスタースケジュールを作成する
Tạo master schedule | Inprogess | 2025-03-26 00:00:00 | 2025-03-28 00:00:00
7 | Azure環境のリソース構築
Build resource môi trường Azure | Todo | 2025-04-01 00:00:00 | 2025-04-04 00:00:00 | 本件に関すQ&Aがあるため、ご回答をお願いします。
QA liên quan đến vấn đề này
Q&A
8 | Difyインストール・初期設定
Cài Dify và setting khởi tạo | Todo | 2025-04-07 00:00:00 | 2025-04-10 00:00:00
３．依頼
無し／None
４．相談内容／Nội dung trao đổi
・JIRAワークスペースに関しては、提供させていただいたアカウントとパスワードでログインできましたか。
　問題ございませんか。
・JIRAの利用プロセスについて相談と統一させていただきたいと思います。
・スケジュールについて相談させていただきたいと思います。

- Liên quan đến tài khoản Jira bên bạn còn gặp vấn đề gì không ?
- Trao đổi và thống nhất về quy trình sử dụng Jira Jiraの利用規定
- Trao đổi về nội dung Schedule [CMIC] Schedule
５．備考／Ghi chú cuộc họp | 議事録/Ghi chú cuộc họp
SCUTI 側のご確認
Xác nhận của Scuti | Confirmed | CMIC様のご確認
Xác nhận của CMIC | 合っている | 要確認（再確認する必要な点がある場合はこちらにご記入ください。）
Nội dung báo cáo:
'- Về format file báo cáo, cách thức báo cáo, cách triển khai weekly meeting: khách đã duyệt cách làm của Scuti
- Về Jira: cả 3 bác khách hàng đã login được. 
- Về thông tin account Azure: hiện tại khách hàng có thể gửi được account cho Scuti, nhưng VDI chưa thiết lập xong thì có account Azure cũng không sử dụng được. Dự kiến trong tuần đầu tháng 4 khách hàng sẽ cung cấp cả thông tin VDI và thông tin Azure. 
- Task số 10 trong schedule cần thực hiện trước task số 4, nên đã thay đổi vị trí task trong file schedule.
- Về việc tạo định nghĩa yêu cầu, khách đã đồng ý quy trình làm việc là: ở task đầu tiên, Scuti sẽ viết định nghĩa yêu cầu chi tiết theo "định nghĩa yêu cầu cơ bản" mà CMIC cung cấp, sau đó nhờ CMIC duyệt, nếu không có vấn đề gì thì tiến hành theo định nghĩa yêu cầu chi tiết đó. 
Sau khi task đầu tiên hoàn thành, hai bên sẽ đánh giá lại quy trình làm việc, nếu có gì cần điều chình thì hai bên sẽ cùng nhau điều chỉnh.

Việc Scuti cần làm tiếp theo: 
- Do chưa có thông tin VDI và Azure nên các task liên quan đến phần này thì PM Cảnh sẽ check lại shedule ở trên, phần nào bị ảnh hưởng thì báo lại khách hàng, phần nào mình xúc tiến được thì xúc tiến trước.
- Về việc thống nhất chính sách bảo mật: Tình san sẽ thông nhất với khách hàng về hạn chế IP/IP制限
- Liên quan đến Build resource môi trường Azure: Tình san gửi cho khách hàng: 
  + Parameter sheet
  + Terraform source

Việc CMIC cần làm tiếp theo:
- Xem file điều khoản sử dụng JIRA, nếu có điểm nào thắc mắc, hay cần điều chỉnh thì xác nhận với Scuti. | ■ 報告内容：
・報告の内容と定例会の進め方：問題ない。次回からも今日の定例会と同様に進める。
・JIRA：CMIC様の方々がログインできた。
・Azure アカウントの情報：共有していただけるが、VDIが設定できていないため、アカウントがあっても使用できない状況。
4月の頭にVDIとAzureの情報を提供していただく予定。
・マスタースケジュールのタスクNo.10「Azure・OSパラメータシートの作成」はタスクNo.4「Azure環境のリソース構築」の前に実施する必要なので、そのようにマスタースケジュールを更新した。
・要件定義書を作成することについて、最初のタスクは共有いただいたDifyアプリ開発要求定義書をもとに、簡単な要件定義書を作成し、ご承認していただく。最初のタスク完了後、両方はこのような要件定義書の作成のやり方が適切かどうかを評価し、問題がなければそのまま進める。もしくは、やり方を改善する必要がある場合は一緒に調整する。

■ Scuti のやること
・VDIとAzureの情報がまだないうちに、現在のスケジュールを確認し影響があるタスクに対して日程調整を行ってCMIC様に報告する。また、影響がなくて進められるタスクはそのまま進める。
・セキュリティポリシーを統一することについて、Tinhの方がCMIC様とIP制限について相談させていただく。
・Azure環境のリソース構築について、Tinhの方が以下のものをCMIC様に提出する。
　▼パラメータシート
    ▼Terraform ソースコード

■ CMIC様のやること
 ・「Jiraの利用規定」ファイルの内容をご確認いただき、不明な点や確認事項、調整したいことなどがございましたら、ご連絡ください。


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\依頼概要\Tool gen tự động unit test_Khái quát yêu cầu 1.pptx`

## Slide 1
© Computer Engineering & Consulting Ltd. All rights reserved.
Cải tiến Tool Gen Tự Động Unit Test　　　　　　　　　　　　Khái quát yêu cầu
事業推進本部　事業企画部
2024/7/24
## Slide 2
Khái quát yêu cầu
Cải tiến hệ thống phân tích source code của program Python bằng AI để tạo ra detail design, unit test design và unit test code.
⇒　Hiện tại đang dự kiến chỉ sử dụng cho cá nhân riêng lẻ, do vậy cần cải thiện để có thể sử dụng theo nhóm nhiều người và nâng cao UI/UX.
Hệ thống được build trên môi trường đám mây (Azure).

Cần xem xét bổ sung dần các ngôn ngữ hỗ trợ.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 3
Hình ảnh quy trình gen tự động unit test
Hình ảnh quy trình gen tự động unit test . Unit test sẽ được gen dần theo các bước sau đây.
Đăng ký source code1-1. Tạo project và đăng ký source code1-2. Phân tích nội dung của source code, extract danh sách các class và method
Tạo detail design2-1. Chọn file cần xử lý2-2. Gen mô tả tổng quan của class2-3. Gen mô tả của field và method trong class2-4. Gen activity diagram của method
Tạo unit test3-1. Gen Decision table, test pattern3-2. Gen test code tương ứng với test pattern
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 4
Danh sách chức năng (1)
Detail Design (Ngôn ngữ mục tiêu: Python)
Gen detail design
            Tổng quan về class, mô tả field/method, activity diagram

Hiển thị gen detail design, và edit
             Hiển thị text và hiển thị render
Có thể chỉnh sửa văn bản text trực tiếp thủ công

Tải xuống detail design
File PDF, file Markdown
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 5
Danh sách chức năng (2)
Gen Unit Test (ngôn ngữ mục tiêu: Python)
Gen unit testDecision table, test pattern, test code
Hiển thị và chỉnh sửa unit testHiển thị text và hiển thị format dạng tableCó thể chỉnh sửa văn bản trực tiếp bằng tay
Download unit testFile PDF, file Markdown
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 6
Function list（3）
3. Chức năng dự án
Đăng ký toàn bộ mã nguồn
Thêm, xóa, cập nhật tệp mã nguồn
4. Chức năng nhóm
Chia sẻ và chỉnh sửa dự án trong nội bộ nhóm
Bình luận vào dự án
5. Chức năng quản lý
Xác nhận tình hình sử dụng
Số lượng người dùng mỗi tháng, số lần tạo thiết kế chi tiết/kiểm thử đơn vị, chi phí sử dụng AI
Cài đặt AI sử dụng cho từng người dùng
Cài đặt quyền truy cập
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 7
Chức năng tổng quan ～ Tạo thiết kế chi tiết (1) ～
Tạo thiết kế chi tiết<Chức năng hiện có>Phân tích nội dung chương trình Python và hiển thị danh sách các lớp và phương thức.
Tạo thiết kế chi tiết
Lớp
Mô tả tổng quan (dạng Markdown)
Mô tả trường và phương thức (dạng Markdown)
Biểu đồ hoạt động của từng phương thức (dạng PlantUML)
Phương thức toàn cục
Mô tả phương thức (dạng Markdown)
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 8
Chức năng tổng quan ～ Tạo thiết kế chi tiết(2)～
Tạo thiết kế chi tiết<Chức năng hiện có>Hiển thị và chỉnh sửa thiết kế chi tiết
Hiển thị dạng văn bản (Markdown) và hiển thị dưới dạng đã render
Văn bản có thể chỉnh sửa trực tiếp. Kết quả chỉnh sửa sẽ được phản ánh động vào bản render.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<Hình ảnh tham khảo  (ảnh hiện tại)>
Hiển thị text
Hiển thị render
## Slide 9
Chức năng tổng quan ～ Tạo thiết kế chi tiết(2)～
Tạo thiết kế chi tiết<Chức năng bổ sung>
Tạo biểu đồ hoạt động cho phương thức toàn cục (dạng PlantUML)
Hiển thị xem trước biểu đồ hoạt động
Biểu đồ hoạt động được render dưới dạng khối mã và hiển thị, vì vậy hiển thị dưới dạng xem trước thay vì mã nguồn.
Tải xuống thiết kế chi tiết (dưới dạng tệp PDF hoặc Markdown)


Tạo thiết kế chi tiết theo đơn vị tệp (module)
Bổ sung ngôn ngữ hỗ trợ (Java, C#)
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
Step2
## Slide 10
Tổng quan chức năng ~ Tạo test đơn vị (1)
Tạo test đơn vị<Chức năng hiện có>
Tạo bảng Decision, các mẫu test và mã test cho từng phương thức※ Không chỉ dựa trên nội dung mã nguồn mà còn xem xét cả nội dung thiết kế chi tiết
Hiển thị và chỉnh sửa bảng Decision và mẫu test
Hiển thị dạng văn bản (định dạng JSON) và hiển thị dạng bảng
Văn bản có thể chỉnh sửa trực tiếp. Kết quả chỉnh sửa sẽ được phản ánh động trong hiển thị dạng bảng.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<Ảnh tham khảo (hiện tại)>
Hiển thị text
format dạng bảng (Decision table và test pattern)
## Slide 11
Khái quát chức năng ~ Tạo Unit test (2) ~
Generate Unit test<Chức năng bổ sung>
Download test design (PDF, Markdown file)
Download test code (test code file)
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 12
Khái quát chức năng ～Project～
ProjectChức năng quản lý bộ source code bao gồm nhiều file.
<Chức năng hiện có>
Liên kết bộ source code khi tạo project.<Chức năng mới>
Add, delete, update source code theo từng file.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 13
Khái quát chức năng ～ Team～
Team<Chức năng mới>
Chức năng quản lý dự án chung với nhiều người dùng.
Chức năng quản lý team
Hiển thị danh sách các team trực thuộc.
Tạo và xóa team.
Chỉnh sửa team (thêm hoặc xóa thành viên).※) Một người dùng có thể tham gia vào nhiều team.
Chức năng quản lý chung
Hiển thị danh sách các project.
Tạo và xóa project.
Hiển thị hoạt động của từng project.
Chức năng bình luận trong project.※) Cho phép trao đổi giữa các thành viên như “Đã sửa ○○” hoặc “Đã kiểm tra nội dung” v.v.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 14
Khát quát chức năng ～ Quản lý～
Quản lý<Chức năng mới>
Chức năng cho phép quản lý người dùng kiểm tra tình trạng sử dụng, cài đặt AI được sử dụng và quyền truy cập.
Tình trạng sử dụng
Hiển thị số lượng người dùng hàng tháng, số lần generate Detail design, số lần generate Unit test, và chi phí sử dụng AI dưới dạng biểu đồ.※) Chi phí sử dụng được tính dựa trên số lượng token.
Cài đặt AI sử dụng
Cài đặt AI có thể sử dụng cho từng người dùng.
Giả định có 3 AI: “GTP3.5-turbo”, “GPT-4o”, và “Claud3-sonet”.
Cài đặt quyền truy cập
Đăng ký group có quyền truy cập.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<Tình trạng sử dụng >
<Setting AI sử dụng>
<Setting quyền truy cập>
## Slide 15
Khái quát chức năng ～ Others～
Xác thực
Lấy thông tin người dùng (tên người dùng, group thuộc về, v.v.) thông qua xác thực AD.
Đăng ký group có quyền truy cập trong màn hình quản lý.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 16
Thông số yêu cầu ～ Yêu cầu phi chức năng (1)～
Thiết kế giao diện
Thiết kế giao diện sẽ dựa trên "Tham khảo) Hình ảnh giao diện", đồng thời sẽ thống nhất thiết kế và ngôn ngữ hiển thị để cải thiện UX, cũng như thực hiện việc add/delete chức năng giao diện.
Ngôn ngữ triển khai
Python 3.11.8
Framework: FastAPI + Jinja2
Log: Sử dụng logging.
Hiệu suất
Thời gian generate: Tối ưu hóa tốc độ càng nhanh càng tốt (cần trao đổi về cấu trúc hệ thống).
Xử lý API sẽ sử dụng xử lý bất đồng bộ (asynchronous) để đảm bảo nhiều người dùng có thể sử dụng đồng thời.※) Ví dụ: khi một người dùng đang tạo bản tóm tắt, những người dùng khác vẫn có thể làm việc.
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 17
Thông số yêu cầu ～ Yêu cầu phi chức năng (2)～
Khả năng mở rộng
Thiết lập giao diện để có thể dễ dàng thêm ngôn ngữ hỗ trợ.
Vận hành và bảo trì
Trong trường hợp xảy ra lỗi, hệ thống cần duy trì hoạt động càng nhiều càng tốt.Ví dụ:
Xảy ra bất đồng bộ dữ liệu trong DB → Hiển thị hộp thoại lỗi, vẫn có thể truy cập dữ liệu bình thường.
Xảy ra lỗi trong quá trình xử lý của AI → Hiển thị hộp thoại lỗi, cho phép gửi lại yêu cầu xử lý.
Log vận hành
Khi xảy ra lỗi, ghi lại log để điều tra nguyên nhân.
Log hoạt động cần có khả năng chuyển đổi mức độ log (log level)
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 18
Sản phẩm bàn giao
Tài liệu thiết kế
Tài liệu đặc tả bên ngoài/external specs
Sơ đồ cấu trúc hệ thống (sơ đồ cấu trúc hệ thống cơ bản được cung cấp bởi CEC)
Tài liệu thiết kế cơ bản (API, giao diện, DB)
Tài liệu và dữ liệu test
Tài liệu đặc tả test IT/ST
Dữ liệu test đã sử dụng trong ST
Khác
Source code, file Compose
Hướng dẫn quy trình xây dựng môi trường
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 19
Schedule～ Tạm thời ～
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
Dự kiến sẽ bắt đầu phát triển sau khi thống nhất được external specs
Dự kiến các bạn sẽ gửi trước cho chúng tôi  lịch trình design, coding, test
Dự kiến sẽ tổ chức các cuộc họp định kỳ với tần suất 1 lần/1-2 tuần (tần suất có thể điều chỉnh) để chia sẻ tình hình phát triển, thống nhất nhận thức và thảo luận các điểm chưa rõ.
Thời gian test nghiệm thu AT (acceptance test) dự kiến là 2 tuần.
## Slide 20
Các mục cần xác nhận
Về các kỹ thuật dưới đây, liệu có thể hỗ trợ bao gồm cả việc nghiên cứu và cải tiến không?
Mở rộng chức năng của Detail design
Tạo prompt để xuất thiết kế chi tiết theo từng file (module).
Cải tiến việc tương tác với AI.
Mở rộng ngôn ngữ hỗ trợ
Trích xuất class và method cho Java, C#.
Cải tiến prompt dành cho Java, C# (nếu cần).
Liệu có thể chỉ định một PM biết tiếng Nhật cho dự án này không?
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 21
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
Tham khảo）Hình ảnh màn hình
## Slide 22
Tham khảo）Hình ảnh màn hình ～TOP screen ～
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<TOP screen>
[Tạo Project]
Tạo project bằng cách chỉ định tên project, mô tả project và file bộ source code (zip).
[Hoạt động]
Hiển thị hoạt động của team mà người dùng đang thuộc (ai đã làm gì, khi nào).
## Slide 23
Tham khảo）Hình ảnh màn hình ～ Team ～
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<Màn hình danh sách tem trực thuộc>
<Màn hình team riêng>
【Màn hình danh sách tem trực thuộc】
・Tạo team mới
・Hiển thị danh sách team đang tực thuộc
[Màn hình Team riêng]
Quản lý thành viên (add/delete).
Tạo project.
Hiển thị danh sách project.
Chức năng bình luận cho từng project.
## Slide 24
Tham khảo）Screen image～project～
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<Project screen>
[Danh sách file]
Hiển thị cấu trúc thư mục để có thể thấy rõ bộ source code đã được đăng ký.
Hiển thị danh sách các class và method được ghi trong từng file.
Khi chọn một file, nội dung của file đó sẽ hiển thị ở phần pane bên phải (ví dụ trong hình bên trái là file main_class.py được chọn).
[Nội dung file (pane bên phải)]
Hiển thị danh sách các class và method trong file đã chọn.
Tạo, hiển thị, và download Detail design và Test design (chi tiết tham khảo trong phần khái quát chức năng về Detail design và tạo Unit test).
Khi chọn class hoặc method từ danh sách file, tự động cuộn đến phần tương ứng trong nội dung.
## Slide 25
Tham khảo）Screen image～project cá nhân～
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<Màn hình project cá nhân>
【Màn hình project cá nhân】
・Tạo project

・Hiển thị danh sách project
## Slide 26
Tham khảo）Screen image～ màn hình quản lý～
‹#›
© Computer Engineering & Consulting Ltd. All rights reserved.
<màn hình quản lý>
[Màn hình quản lý]
Màn hình chỉ có quản trị viên (admin) mới có thể truy cập.※) Đối với người dùng không phải quản trị viên, biểu tượng quản lý sẽ không hiển thị trên thanh bên.
Thực hiện hiển thị trực quan tình trạng sử dụng và cài đặt AI sử dụng, quyền truy cập cho từng người dùng.※) Chi tiết chức năng tham khảo trong phần khái quát chức năng.


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\依頼概要\Tool gen tự động unit test_Khái quát yêu cầu.docx`

TNHH Gochu	
Cải tiến Tool Gen Tự Động9 Unit Test 
Khái quát yêu cầu
Trụ sở xúc tiến kinh doanh 	Phòng Kế hoạch kinh doanh
2024/8/9
Khái quát yêu cầu
Cải tiến hệ thống phân tích source code của program Python bằng AI để tạo ra detail design, unit test design và unit test code.
Hiện tại đang dự kiến chỉ sử dụng cho cá nhân riêng lẻ, do vậy cần cải thiện để có thể sử dụng theo nhóm nhiều người và nâng cao UI/UX.
Hệ thống được build trên môi trường đám mây (Azure).
Cần xem xét bổ sung dần các ngôn ngữ hỗ trợ.
Hình ảnh quy trình gen tự động unit test
Hình ảnh quy trình gen tự động unit test
Unit test sẽ được gen dần theo các bước sau đây.
Đăng ký source code
1-1. Tạo project và đăng ký source code
1-2. Phân tích nội dung của source code, extract danh sách các class và method
Tạo detail design
2-1. Chọn file cần xử lý
2-2. Gen mô tả tổng quan của class
2-3. Gen mô tả của field và method trong class
2-4. Gen activity diagram của method
Tạo unit test
3-1. Gen Decision table, test pattern
3-2. Gen test code tương ứng với test pattern
Danh sách chức năng (1)
Detail Design (Ngôn ngữ mục tiêu: Python)
Gen detail design
Tổng quan về class, mô tả field/method, activity diagram
Hiển thị và chỉnh sửa gen detail design
Hiển thị text và hiển thị render
Có thể chỉnh sửa văn bản text trực tiếp thủ công
Tải xuống detail design
File PDF, file Markdown
Danh sách chức năng (2)
2. Gen Unit Test (ngôn ngữ mục tiêu: Python)
Gen unit test
Decision table, test pattern, test code
Hiển thị và chỉnh sửa unit test
Hiển thị text và hiển thị format dạng table
Có thể chỉnh sửa văn bản trực tiếp bằng tay
Download unit test
File PDF, file Markdown
Danh sách chức năng (3)
3. Chức năng Project
Đăng ký bộ source code
Add, xóa, update file source code
4. Chức năng Team
Chia sẻ và chỉnh sửa chung project trong team
Bình luận/comment vào project
5. Chức năng Quản lý
Kiểm tra tình trạng sử dụng
Số lượng người dùng hàng tháng, số lượng detail design/unit test được gen, chi phí sử dụng AI
Cài đặt AI sử dụng cho từng user
Cài đặt quyền truy cập
Tổng quan chức năng ~ Gen detail design (1) ~
Gen detail design
<Chức năng hiện có>
Phân tích nội dung của chương trình Python và hiển thị danh sách các class và method
Gen detail design
Class
Mô tả tổng quan (định dạng Markdown)
Mô tả field và method (định dạng Markdown)
Activity diagram của từng method (định dạng PlantUML)
Global Methods
Mô tả method (định dạng Markdown)
Tổng quan chức năng ~ Gen detail design ( 2)~
Gen detail design
<Chức năng hiện có>
Hiển thị và chỉnh sửa detail design
Hiển thị dưới dạng văn bản (định dạng Markdown) và render
Văn bản có thể được chỉnh sửa trực tiếp. Kết quả chỉnh sửa sẽ được phản ánh động trong render.
<Hình ảnh tham khảo (màn hình hiện tại)>
Tổng quan chức năng ~ Gen detail design ( 2)~
Gen detail design
<Tính năng bổ sung>
Gen activity diagram của global methods (định dạng PlantUML)
Hiển thị bản xem trước activity diagram
Activity diagram được render dưới dạng block code và hiển thị, thay vì hiển thị dưới dạng mã nguồn.
Tải xuống detail design (file PDF, file Markdown)
Step 2
Tổng quan chức năng ~ Gen unit test (1) ~
Gen unit test
<Chức năng hiện có>
Gen bảng Decision, test pattern và test code cho từng method
Lưu ý: Gen không chỉ dựa trên nội dung source code mà còn xem xét cả nội dung detail design
Hiển thị và chỉnh sửa bảng Decision và test pattern
Hiển thị dưới dạng văn bản (định dạng JSON) và hiển thị format dạng table.
Văn bản có thể chỉnh sửa trực tiếp. Kết quả chỉnh sửa sẽ được phản ánh động trong bảng.
<Hình ảnh tham khảo (màn hình hiện tại)>
Hiển thị văn bản 	Format dạng table (Decision table và test pattern )
Tổng quan chức năng ~ Gen unit test ( 2)~
Gen unit test
<Chức năng bổ sung>
Download test design (file PDF, file Markdown)
Download test code (file program)
Tổng quan chức năng ~ Project ~
 Project
Chức năng quản lý toàn bộ source code từ nhiều file khác nhau
<Chức năng hiện có>
Liên kết toàn bộ source code khi tạo project
<Chức năng mới>
Add, delete, update source code theo từng file
Tổng quan chức năng ~ Chức năng nhóm ~
Chức năng nhóm <là chức năng mới>
Là chức năng nhiều user cùng quản lý chung project
Chức năng quản lý team
Hiển thị danh sách các team thành viên
Tạo và xóa team
Chỉnh sửa team (thêm và xóa thành viên)
*) Lưu ý: Một user có thể tham gia nhiều team
Chức năng quản lý chung
Hiển thị danh sách các project
Tạo và xóa project
Hiển thị activity của từng project
Chức năng bình luận vào project
*) Lưu ý: Cho phép trao đổi giữa các thành viên như "Đã sửa ○○", "Đã kiểm tra nội dung", v.v.
Tổng quan chức năng ~ Quản lý ~
Quản lý 	<Tính năng mới >
Chức năng cho quản trị viên để kiểm tra tình trạng sử dụng, cài đặt AI và quyền truy cập
Tình trạng sử dụng
Hiển thị số lượng người dùng hàng tháng, số lượng detail design được gen, số lượng unit test được gen, và chi phí sử dụng AI dưới dạng đồ thị
*) Lưu ý: Chi phí sử dụng được tính từ số lượng token
Cài đặt AI để sử dụng
Cài đặt AI có thể sử dụng cho từng user
Dự kiến có 3 loại AI: "GPT-4o mini", "GPT-4o", "Claud3-sonet"
                                 Cài đặt quyền truy cập
Đăng ký các nhóm có quyền truy cập
<Tình trạng sử dụng>
                                            <Cài đặt AI sử dụng>
<Cài đặt quyền truy cập>
Tổng quan về chức năng ~ Khác ~
Xác thực
Lấy thông tin người dùng (tên người dùng, nhóm thuộc về, v.v.) qua xác thực AD
Đăng ký các nhóm có thể truy cập trên màn hình quản lý
Yêu cầu đặc tả ~ Yêu cầu phi chức năng (2) ~
Thiết kế màn hình
Thiết kế màn hình cần tuân theo mục "Tham khảo) Screen image" và cải thiện UX bằng cách thống nhất design và text,
 cũng như thêm/xóa các chức năng của màn hình.
Ngôn ngữ thực hiện
Python 3.11.8
Framework là FastAPI + Jinja2
Log sử dụng logging
Hiệu suất
Thời gian gen: Cần được tối ưu hóa để đạt tốc độ nhanh nhất có thể (cần thảo luận khi làm cấu hình hệ thống)
Về xử lý API thì chọn xử lý bất đồng bộ/非同期処理 để hỗ trợ nhiều người dùng cùng sử dụng
Lưu ý: Dù có một user đang chạy auto gen thì các user khác vẫn làm việc bình thường
Yêu cầu đặc tả ~ Yêu cầu phi chức năng (2) ~
Mở rộng
Cần cải thiện giao diện để dễ dàng thêm ngôn ngữ hỗ trợ
Vận hành và bảo trì
Hệ thống cần duy trì hoạt động càng nhiều càng tốt khi xảy ra lỗi (không được down khi bị error)
Ví dụ: Khi phát sinh sự không nhất quán dữ liệu DB → Hiển thị hộp thoại lỗi, vẫn có thể truy cập vào dữ liệu bình thường
Khi xảy ra lỗi trong xử lý AI → Hiển thị hộp thoại lỗi và cho phép thực hiện lại xử lý
Nhật ký vận hành/operation log
Cần lưu lại nhật ký để điều tra nguyên nhân khi xảy ra lỗi
Operation log phải có thể chuyển đổi được log level
Deliverable (Sản phẩm bàn giao)
Tài liệu thiết kế
External specs
Sơ đồ cấu hình hệ thống (Sơ đồ cấu hình hệ thống cơ bản sẽ được cung cấp bởi CEC)
Basic design (API, screen, DB)
Test specs và test data
Test specs của công đoạn IT/ST
Test data sử dụng trong ST
Khác
Source code, file Compose
Tài liệu hướng dẫn thiết lập môi trường
Lịch trình ~Dự kiến ~
Dự kiến sẽ bắt đầu phát triển sau khi thống nhất được external specs
Dự kiến các bạn sẽ chia sẻ trước cho chúng tôi lịch trình design, implement, test
Dự kiến sẽ thực hiện các cuộc họp định kỳ với tần suất 1 lần mỗi 1~2 tuần để chia sẻ tình trạng phát triển, thống nhất nhận thức, và giải quyết các điểm chưa clear. (Tần suất có thể cần điều chỉnh)
Dự kiến thời gian kiểm thử AT là 2 tuần.  
Các mục cần xác nhận
Về các kỹ thuật dưới đây, liệu các bạn có thể thực hiện điều tra và cải tiến không?
Extend chức năng của detail design
Cải thiện promt và cải thiện tương tác với AI để output ra detail design theo từng file (module)
Mở rộng ngôn ngữ hỗ trợ
Extract class và method của Java, C #
Cải thiện prompt dùng cho java và C # (nếu cần)
Liệu có thể cử một PM biết tiếng Nhật không?
Điều kiện báo giá
Hệ thống này sử dụng AppService trên Azure và hoạt động trên container.
Chức năng xác thực sẽ được chúng tôi triển khai, vì vậy không nằm trong phạm vi estimate.
Môi trường Azure sẽ sử dụng môi trường của chúng tôi.
Trong quá trình phát triển, sẽ sử dụng Azure Emulator.
DB: Azure Cosmos DB Emulator
Storage: Azurite
Đối với các chức năng không có emulator, chúng tôi sẽ cung cấp thông tin đích kết nối.
Dự kiến sử dụng Azure Cosmos DB cho cơ sở dữ liệu, và trong quá trình phát triển, sẽ sử dụng Azure Cosmos DB Emulator.
Về đơn vị order thì sẽ theo đơn vị công đoạn, và điều kiện nghiệm thu sẽ như sau:
Điều kiện báo giá
Về các chỉ số chất lượng, sẽ áp dụng chỉ số khắt khe hơn giữa chỉ số của quý công ty hoặc của chúng tôi. Chỉ số chất lượng của chúng tôi.
Về coding convention
Nhờ các bạn mô tả đúng với code nguồn reuse.
Basic rule là:
・Class name: CamelCase
・Function name, variable name: snake_case
Tham khảo) Screen image
Tham khảo) Screen image ~Màn hình TOP ~
< Màn hình TOP>
[Tạo project]
・Project name, mô tả về project
Tạo dự án bằng cách chỉ định file bộ source code (zip).
【Activity】
・Hiển thị hoạt động của team mà bạn đang thuộc về (ai đã làm gì, khi nào).
Tham khảo) Screen image ~ Nhóm ~
<Màn hình danh sách nhóm trực thuộc > 	<Màn hình từng team >
[Màn hình danh sách đội liên kết]
・Tạo một nhóm mới
Tạo team mới
Hiển thị danh sách team mà bạn đang trực thuộc
[Màn hình nhóm cá nhân]
・Quản lý thành viên ( thêm/xóa)
Quản lý member (add, xóa)
Tạo project
Hiển thị danh sách project
Chức năng bình luận (cmt) cho dự án
Tham khảo) Screen image ~ Project ~
<Project screen>
[File list]
・Hiển thị source code đã được đăng ký để biết được cấu trúc thư mục.
・Hiển thị cả danh sách class và method được ghi trong từng file.
- Chọn file để hiển thị nội dung của file đã chọn ở khung bên phải (ví dụ trong hình bên trái là chọn file main_class.py).
[Nội dung file (khung bên phải)]
Hiển thị danh sách class và method của file đã chọn
・Gen, hiển thị, download basic design và test design
(Để biết chi tiết, hãy tham khảo phần gen detail design, unit test)
・Khi chọn class hoặc method từ danh sách file, tự động cuộn đến phần tương ứng.
Tham khảo) Screen image ~ Project cá nhân~
<Màn hình project cá nhân>
[Màn hình project cá nhân]
・Tạo dự án
・Hiển thị danh sách dự án
Tham khảo) Screen image ~ Màn hình quản lý ~
<Màn hình quản lý>
[Màn hình quản lý]
・Màn hình chỉ người dùng quản trị mới có thể truy cập được
*) Các người dùng không phải quản trị viên sẽ không hiển thị icon admin ở side bar.
・Hiển thị tình trạng sử dụng, thiết lập quyền truy cập AI cho từng người dùng.
*) Xem trang tổng quan chức năng để biết chi tiết về các tính năng.
hành trình | mật độ đánh giá | mật độ lỗi | Mật độ bình luận | Mật độ kiểm tra
(Hàng/ KS) | Mật độ lỗi
(Số vụ/KS)
Thiết kế cơ bản | 10～25
phút/cái | 0,2 ～ 1,0
Số lỗi/tờ | 0,2～1,3
Số lượng ý kiến/tờ | - | -
thiết kế chi tiết | 10～25
phút/cái | 0,2～1,0
Số lỗi/tờ | 0,2～1,3
Số lượng ý kiến/tờ | - | -
bài kiểm tra đơn vị | 50～150
phút/mục | 2～5
Số lỗi/ 100 | 3～6
Số lượng bình luận/ 100 | 50～150 | 2～7
Kiểm tra tích hợp | 50～150
phút/mục | 2～5
Số lỗi/ 100 | 3～6
Số lượng bình luận/ 100 | 50～100 | 2～4


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Thực hành dịch\依頼概要\単体テスト自動生成ツール_依頼概要 1 (1).pptx`

## Slide 1
© Computer Engineering & Consulting Ltd. All rights reserved.
単体テスト自動生成ツール改修　　　　　　　　　　　　依頼概要
事業推進本部　事業企画部
2024/7/24
## Slide 2
依頼概要
Pythonプログラムのソースコードの内容をAIで分析し、詳細設計および単体テスト設計、単体テストコードを作成するシステムの改修
⇒　現状は個別利用のみを想定しているため、チーム利用の対応
　　および、UI/UXの向上。

システムはクラウド環境(Azure)に構築

対応言語が随時追加されることを考慮すること
1
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 3
単体テスト自動生成の流れイメージ
単体テスト自動生成の流れイメージ
　単体テストは以下の流れで段階的に生成していきます。

1．ソースコードの登録
1-1．プロジェクトを作成してソースコードを登録
1-2．ソースコードの内容を解析し、クラス・メソッドの一覧を抽出
2．詳細設計の作成
2-1．対象のファイルを選択
2-2．クラスの概要説明を生成
2-3．クラスのフィールド、メソッドの説明を生成
2-4．メソッドのアクティビティ図を生成
3．単体テストの作成
	3-1．Decisionテーブル、テストパターンの生成
	3-2．テストパターンに対応するテストコードの生成
2
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 4
機能一覧（1）
詳細設計（対象言語：python）
詳細設計生成
クラス概要、フィールド/メソッド説明、アクティビティ図

詳細設計生成表示・編集
テキスト表示とレンダリング表示
テキストを手動で直接編集可能

詳細設計ダウンロード
PDFファイル、Markdownファイル
3
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 5
機能一覧（2）
単体テスト生成（対象言語：python）
単体テスト生成
Decisionテーブル、テストパターン、テストコード

単体テスト表示・編集
テキスト表示と表形式表示
テキストを手動で直接編集可能

単体テストダウンロード
PDFファイル、Markdownファイル
4
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 6
機能一覧（3）
プロジェクト機能
ソースコード一式の登録
ソースコードファイルの追加・削除・更新

チーム機能
チーム内でのプロジェクトの共有、共同編集
プロジェクトへのコメント

管理機能
利用状況の確認
　毎月の利用者数、詳細設計/単体テスト生成数、AI利用料金
ユーザ毎の使用AIの設定
アクセス権の設定
5
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 7
機能概要～詳細設計生成(1)～
詳細設計生成
　<既存機能>
pythonプログラムの内容を解析し、クラス・メソッドの一覧を表示

詳細設計の生成
クラス
概要説明（Markdown形式）
フィールド・メソッドの説明（Markdown形式）
各メソッドのアクティビティ図（PlantUML形式）
グローバルメソッド
メソッドの説明（Markdown形式）
6
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 8
機能概要～詳細設計生成(2)～
詳細設計生成
　<既存機能>
詳細設計の表示、編集
　テキスト（Markdown形式）表示とレンダリング表示
　テキストは直接編集可能。編集結果はレンダリングに動的に反映。
7
© Computer Engineering & Consulting Ltd. All rights reserved.
<参考イメージ (既存の画面)>
テキスト表示
レンダリング表示
## Slide 9
機能概要～詳細設計生成(2)～
詳細設計生成
　<追加機能>
グローバルメソッドのアクティビティ図（PlantUML形式）生成

アクティビティ図のプレビュー表示
　アクティビティ図がコードブロックとしてレンダリングされ表示されるため、
　コードではなくプレビュー表示を行う。

詳細設計のダウンロード（PDF、Markdownファイル）

ファイル（モジュール）単位での詳細設計生成

対応言語の追加（java、C#)
8
© Computer Engineering & Consulting Ltd. All rights reserved.
Step2
## Slide 10
機能概要～単体テスト生成(1)～
単体テスト生成
　<既存機能>
メソッド毎にDecisionテーブルおよびテストパターン、テストコードの生成
　※）ソースコードの内容だけでなく、詳細設計内容も考慮して生成
Decisionテーブルおよびテストパターンの表示、編集
　テキスト表示(json形式)と表形式表示
　テキストは直接編集可能。編集結果は表形式表示に動的に反映。
9
© Computer Engineering & Consulting Ltd. All rights reserved.
<参考イメージ (既存の画面)>
テキスト表示
表形式(Decisionテーブルとテストパターン)
## Slide 11
機能概要～単体テスト生成(2)～
単体テスト生成
　<追加機能>
テスト設計のダウンロード（PDF、Markdownファイル）

テストコードのダウンロード（プログラムファイル）
10
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 12
機能概要～プロジェクト～
プロジェクト
　複数ファイルからなるソースコード一式を管理する機能

　<既存機能>
プロジェクト作成時にソースコード一式を紐づける

　<新規機能>
ファイル単位でのソースコードの追加・削除・更新
11
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 13
機能概要～チーム～
チーム　<新規機能>
　複数ユーザでプロジェクトの共同管理を行う機能
チーム管理機能
所属チームの一覧表示
チームの作成・削除
チームの編集（メンバーの追加削除）
　※）1ユーザが複数チームに参加することも可能

共同管理機能
プロジェクトの一覧表示
プロジェクトの作成・削除
プロジェクト毎のアクティビティ表示
プロジェクトへのコメント機能
　※）メンバー間で「○○修正しました」「内容確認しました」等の
　　　やり取りができるように
12
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 14
機能概要～管理～
管理　<新規機能>
　管理ユーザが利用状況の確認や使用AIやアクセス権の設定を行う機能
利用状況
毎月の利用者数、詳細設計生成数、単体テスト生成数、
　AI利用料金をグラフで表示
　※）利用料金はトークン数から算出

使用AIの設定
ユーザ毎に利用可能なAIを設定する
AIは「GTP3.5-turbo」「GPT-4o」
　「Claud3-sonet」の3つを想定

アクセス権の設定
アクセス可能なグループを登録する
13
© Computer Engineering & Consulting Ltd. All rights reserved.
<利用状況>
<使用AIの設定>
<アクセス権の設定>
## Slide 15
機能概要～その他～
認証
AD認証によってユーザ情報(ユーザ名や所属グループ等)を取得
管理画面でアクセス可能なグループを登録
14
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 16
要求仕様～非機能要件(1)～
画面デザイン
画面デザインは「参考）画面イメージ」を踏襲しつつ、UXを向上させるためにデザインや文言の統一や画面機能の追加/削除を行うこと。

実装言語
Python 3.11.8
フレームワークはFastapi + jinja2
ログはlogging

パフォーマンス
生成時間：可能な限り高速化すること（システム構成と要相談）
APIの処理は非同期処理にし、複数ユーザが同時利用できるようにすること
　※）1ユーザが要約作成中も他ユーザが作業できる等
15
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 17
要求仕様～非機能要件(2)～
拡張性
インターフェースを整備し、対応言語を容易に追加できること

運用・保守
エラー発生時に可能な限りシステムがダウンしないこと
　例）DBデータの不整合が発生　→　エラーダイアログを表示、正常データにはアクセス可能
　　　AIの処理でエラーが発生　→　エラーダイアログを表示、再度処理を投げられるようにすること


運用ログ
エラー発生時に原因調査のためのログを残すこと
動作ログはログレベルを切り替えられること
16
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 18
納品物
設計書
外部仕様書
システム構成図（基本のシステム構成図はシーイーシーから提供）
基本設計書（API、画面、DB)

テスト仕様書・テストデータ
IT/STのテスト仕様書
STで使用したテストデータ

その他
ソースコード、Composeファイル
環境構築手順書
17
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 19
スケジュール～暫定～
18
© Computer Engineering & Consulting Ltd. All rights reserved.
外部仕様書の合意をもって開発に着手することを想定しております。
事前に設計、実装、テストのスケジュールを共有いただくことを想定しております。
開発状況の共有・認識合わせ・不明点のすり合わせのための定期MTGを1回/1～2Wの頻度で実施することを想定しております。（頻度は要調整）
受け入れテストは2Wを想定しております。
## Slide 20
確認事項
下記技術について、調査・改良含めて対応していただくことは可能でしょうか？
詳細設計の機能拡張
　　ファイル(モジュール)単位の詳細設計を出力するためのプロンプトや
　　AIとのやり取りの工夫
対応言語拡張
　　java、C#のクラスやメソッド抽出
　　java、C#用にプロンプトの工夫(必要に応じて)

日本語ができるPMを立てていただくことは可能でしょうか？
19
© Computer Engineering & Consulting Ltd. All rights reserved.
## Slide 21
20
© Computer Engineering & Consulting Ltd. All rights reserved.
参考）画面イメージ
## Slide 22
参考）画面イメージ～TOP画面～
21
© Computer Engineering & Consulting Ltd. All rights reserved.
<TOP画面>
【プロジェクトの作成】
・プロジェクト名、プロジェクトの説明
　ソースコード一式ファイル(zip)を
　指定してプロジェクトを作成


【アクティビティ】
・所属しているチームのアクティビティ
　(誰が、いつ、何をしたか）を表示
## Slide 23
参考）画面イメージ～チーム～
22
© Computer Engineering & Consulting Ltd. All rights reserved.
<所属チーム一覧画面>
<個別チーム画面>
【所属チーム一覧画面】
・新しくチームを作成

・所属しているチームを一覧表示
【個別チーム画面】
・メンバー管理（追加/削除)

・プロジェクトの作成

・プロジェクト一覧の表示

・プロジェクトへのコメント機能
## Slide 24
参考）画面イメージ～プロジェクト～
23
© Computer Engineering & Consulting Ltd. All rights reserved.
<プロジェクト画面>
【ファイル一覧】
・登録されているソースコードをフォルダ
　構成を分かるように表示

・各ファイルに記載されているクラスや
　メソッドも一覧に表示

・ファイルを選択することで、右ペイン
　に選択したファイルの内容を表示
　(左図ではmain_class.pyを選択した例)

【ファイル内容(右ペイン)】
・選択したファイルのクラスやメソッドの
　一覧を表示

・詳細設計やテスト設計の生成、表示、
　ダウンロード（詳細は機能概要の詳細設計、
　単体テスト生成参照）

・ファイル一覧からクラスやメソッドを選択
　した際に、対応する部分まで自動で
　スクロールさせる
## Slide 25
参考）画面イメージ～個人プロジェクト～
24
© Computer Engineering & Consulting Ltd. All rights reserved.
<個人プロジェクト画面>
【個人プロジェクト画面】
・プロジェクトの作成

・プロジェクト一覧の表示
## Slide 26
参考）画面イメージ～管理画面～
25
© Computer Engineering & Consulting Ltd. All rights reserved.
<管理画面>
【管理画面】
・管理ユーザのみがアクセスできる画面
　※）管理ユーザ以外は、サイドバーに
　　　管理アイコンを表示しない

・利用状況の可視化、ユーザ毎の使用AI
　アクセス権の設定を行う
　 ※）詳細な機能は、機能概要頁参照


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Tài liệu thực hành dịch IT Comtor\Japanese-for-IT-Business.pdf`

Copyright (C) Japan Online School Corporation. All rights reserved. 
 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
■作成者からのごあいさつ 
 
国内の IT 人材不足を背景に、外国人 IT 人材の需要も高まっています。経済産業省も重要施策の 1 つ
に「IT 人材の育成」を掲げており、グローバル社会に対応した高度 IT 人材の育成・人材の流動化を推進して
います。 
 一般的なビジネス日本語研修では敬語をメインに学びますが、IT 業界では比較的カジュアルな会話も多く、
また、エンジニアは社外より社内メンバーとの会話が多いなど、日本語の使用環境が異なります。そこで、IT 人
材が職場で必要とされる日本語能力を効率的に習得できるように、元 IT エンジニアの日本語教師が、IT 企
業の監修のもと開発したのが本書です。 
日本で働く外国人の方々にとって、そして優秀な外国人人材を活用してグローバルビジネスにチャレンジされ
る企業の皆さまにとって、本書がその一助になれば幸いです。 
 
 
■このテキストの使い方 
 本書は全 10Unit からなり、外国人 IT エンジニアが、日本の IT 企業で働き始めるところから、開発に携わ
り、そして、顧客デモ、アフターサポートまでの一連の流れを場面毎に学ぶ構成です。そのため、場面ごとに必要
な表現を中心に学ぶことができます。現実にそのような状況に直面した際に、慌てることなく学んだ表現を駆使
しながら冷静に対応できるようになることが目標です。 
更に、重要表現を学ぶだけでなく、ロールプレイでその表現を使い、活用していきます。そこでは、実際の場
面に即したロールカードの情報を基に、一人で考え、状況に応じた会話が求められますので、そのような練習を
重ねてより会話力の向上を目指します。 
 また各 Unit の最後に「コラム」や「おさらい」もあります。コラムでは、耳寄り情報を得たり、日本企業文化につ
いて考えたりする機会を設けています。おさらいは、各 Unit の習熟度の指標になります。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
■登場人物 
ワンさん (Unit : 1,2,3,4,6,8,10) 
中国の大学で情報工学を学んだのち、日本向けシステムを開発する大連のソフトウェア会社に 
３年勤務。日本語と、日本の業務を学ぶため、日本のソフトウェア開発会社に就職を希望中。 
将来は、日本と中国を結ぶブリッジ SE になりたい。 
 
田中さん (Unit : 2,3,4,6,8,10) 
ワンさんが所属する JOS システムズ開発部のチームリーダー。 
ワンさんへの仕事の指示などを担当。 
 
斎藤さん (Unit : 4,5,6,8,9,10) 
JOS システムズ開発部のプログラマー。ワンさんの同僚。 
  
渡辺さん (Unit : 8,9) 
JOS システムズ システム技術部のシステムエンジニア。 
ワンさんが開発に携わる業務システムの顧客担当 SE。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
■目次 
Unit レッスンで学ぶこと ページ 
Unit 1 
面接 
・面接の流れを理解する 
・職務経験・保有スキルを説明する 
・コラム : 面接のポイント 
P4 
Unit 2 
新しい職場で 
・自己紹介する 
・作業を依頼する 
・作業内容を確認する 
・コラム : 自己紹介のポイント 
P14 
Unit 3 
指示を受ける 
・指示を受け、期限を確認する 
・次の指示を聞き、優先順位を確認する 
・要件定義書と要求定義書の違いを知る 
・コラム : 日本人のおかしなカタカナ英語 
P22 
Unit 4 
打ち合せ 
・担当業務について質問する 
・業務の詳細を詰める 
・コラム : 「センスの良い質問」と「センスの悪い質問」 
P31 
Unit 5 
開発中のやりとり 
・注意を受ける 
・ミスを認めて謝る 
・アドバイスへのお礼を言う 
・コラム : 誠意が伝わる謝罪のコツ 
P39 
Unit 6 
進捗報告 
・会議で作業の進捗を報告する 
・スケジュール遅延の相談をする 
・コラム : ホウレンソウは上司活用の手法！？ 
P47 
Unit 7 
単体テスト・結合テスト 
・状況を説明する 
・エラーの原因を説明する 
・コラム : 事前にエラーを防ぐために 
P57 
Unit 8 
システムテスト 
・内線電話に応対する 
・仕様変更依頼に対して代替案を示す 
・コラム : 「少し気になる」は「とても気になる」？ 
P66 
Unit 9 
顧客デモ 
・デモ環境セッテイングの手伝いを申し出る 
・顧客の過大な要求に応える 
・コラム : プレゼンテーションで失敗しないコツ 
P75 
Unit 10 
顧客検収テスト・アフタ
ーサポート 
・様々な状況を仮定する 
・検収テストの結果を伝え聞く 
・コラム : 仕事ができる外国人ビジネスパーソン 
P84 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 1 面接 
 
学習目標 
・面接の流れを理解する 
・職務経験・保有スキルを説明する 
 
 
 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
ワンさんは日本でIT技術者として働きたいと思っています。 
今日はJOSシステムズという会社の採用面接を受けます。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
面接での自己紹介（前半） 
 
面接官 ： 次の方、どうぞ。 
ワン ：（ドアを開けて）失礼します。 
    （入室し、ドアを閉める） 
   （椅子の前に立ち） ワンと申します。よろしくお願いいたします。 
面接官 ： おかけください。 
ワン  ： 失礼します。（座る） 
面接官 ： さっそくですが、職務経歴書を拝見しました。 
    中国では日本向けシステムの開発を担当されていたんですね。 
    どんな仕事か、もう少し具体的に教えていただけますか。 
ワン  ： はい。 
    ①【大連のシステム会社で、スマートフォンのソフトウェア開発に携わっておりました。】 
    【主な担当はプログラミングとテストでした。】 
    【特に、Androidアプリケーションに関わった経験が長いので、 
    即戦力になれると思っています。】 
    【具体的には、テストの工数を減らすための設計と、テストの自動化に 
   力を注いできました。】 
面接官 ： 会社と開発チームの規模はどれくらいですか。 
ワン  ： 30人ほどの会社です。 
    日本人SEの下で、8名くらいのチームを組んでいました。 
面接官 ： クライアントサーバー型システムの経験はありますか。 
ワン  ： ②【直接、開発したことはありませんが、新人の頃、テストに関わったことはあります。】 
面接官 ： そうですか。わかりました。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) 経験が豊富なことを説明するフレーズ 
 ｢～で～に携わっておりました。主な担当は～でした。」 
 「特に、～に関わった経験が長いので、即戦力になれると思っています。」 
 「具体的には～に力を注いできました。」 
 
(2) 経験がある(多くはない、少しある)ことを説明するフレーズ 
 「直接、～したことはありませんが、～の頃、～に関わったことはあります。」 
 ※「関わったことがあります」 
 ＞「少し経験があります」 
 ＞「多少～が使えます」 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
面接での自己紹介（後半） 
 
面接官 ： 開発言語は何が使えますか。 
ワン  ： ③【Java とPHP、JavaScriptは問題ありません。】 
    【Cは担当したことはありませんが、学生時代に勉強いたしました。】 
    【また、C#は、現在独学で勉強しております。】 
面接官 ： なるほど。なぜ日本で働こうと思ったのですか。 
ワン  ： ④【学生時代は情報工学を専攻していましたが、 
    日本語のクラスも受講していました。 
    将来的に、日本と中国とを結ぶブリッジSEになりたいと考えており、 
    日本で日本語と業務に関する知識を習得したいと 思ったためです。】 
面接官 ： 弊社に応募された理由をお聞かせください。 
ワン  ： ⑤【海外からの技術者も多く採用していらっしゃるだけでなく、 
    幅広い分野のシステム開発をなさっていることにも 
    大変魅力を感じたためです。】 
    【また、御社は、中国との関わりが多くおありのようですので、 
    ぜひ私もお手伝いさせていただきたいと考えております。】 
面接官 ： わかりました。結果については、後日メールでご連絡します。 
    今日はありがとうございました。 
ワン  ： こちらこそ、貴重なお時間をありがとうございました。 
    どうぞよろしくお願いいたします。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(3) 経験が豊富なこと、経験が浅いこと、勉強済みのこと、勉強中のことを整理して伝える 
 「～は問題ありません。」 
 「～は担当したことはありませんが、～に勉強いたしました。」 
 「また、～は、現在独学で勉強しております。」 
 
(4) 日本での就職を希望している理由を述べる 
 「学生時代は～を専攻していましたが、 
 ～将来的に、～たいと考えており、～たいと思ったためです。」 
 ※過去、現在、未来の状態について述べると、趣旨が明確でわかりやすくなる。 
 ※特に、将来像は、会社も期待しているので、しっかりアピールしよう。 
 
(5) 応募理由を述べる 
 「～だけでなく、～にも大変魅力を感じたためです。」 
 「また、～たいと考えております。」 
 ※会社の魅力を伝えるときは、2～3点、手際よく伝える。 
 ※理由を聞かれた場合は、「～ためです」「～が理由です」のような文末を使う。 
 ※会社の魅力と自分との関係をと結び付けて言う。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
NGな面接 
 
(1) その会社を志望する理由が不明瞭 
 例：「今まで開発にいたので、これからも開発がいいと思ったからです。」 
 ＞大事なのは、「なぜその会社でなければならないのか？」。 
 
(2) 具体的でない会社への貢献 
 例：「開発チーム内でうまくコミュニケーションをして、貢献したいです。」 
 ＞大事なのは、「自分の強みは何で、どんな貢献ができるのか？」 
 
(3) 「何か質問はありますか？」と聞かれたのに、何も質問しない。 
  面接で「何か質問はありますか」と聞かれたら、気になっている事を質問した方が良い。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜職務経歴を説明する＞ 
 
職務経歴書の例 
プロジェクト 
内容 
① 製造業の受発注入出荷管理システム 
担当 
フェーズ 
② 出力系の基本設計書と詳細設計書の作成、 
 単体テスト、結合テスト、システムテスト、一部開発 
開発環境 ③ Windows、Oracle、VB（VisualStudio） 
メンバー数 ④ ８人 
プロジェクトに 
おける 
自分の役割 
⑤ システムエンジニア、プログラマー 
帳票出力等のシステムの出力系に関して、 お客様のニーズ調査から、 
要求定義、基本設計およびテスト。開発が遅れた部分に関しては、 
一部プログラム作成も。 
 
 
＜解答例＞ 
前回携わったプロジェクトは、①【製造業の受発注入出荷管理システム】です。 
担当フェーズは主に②【出力系の基本設計書と詳細設計書の作成】で、 
その他に【単体テスト、結合テスト、システムテストと一部開発】も行ってきました。 
開発環境として③【Windows、Oracle、VB(VisualStudio)】を使用し、 
チームのメンバーは④【8】人でした。 
プロジェクトにおける私の役割は、⑤【システムエンジニアとプログラマー】です。 
【帳票出力等のシステムの出力系に関して、お客様のニーズ調査から、 
要求定義、基本設計およびテスト】を担当しておりました。 
【開発が遅れた部分に関しては、一部プログラム作成も】受け持ってまいりました。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 面接のポイント 
(1)志望動機が良いと良い印象を与える。 
(2)アピールするポイントを的確にしよう。 
(3)自分の癖を見つけよう。(「無くて七癖」) 
(4)やっぱり「パッション」も大事 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「～で～に携わっておりました。主な担当は～でした。」 
・ 「特に、～に関わった経験が長いので、即戦力になれると思っています。」 
・ 「～に関わったことはあります。」 
・ 「～は問題ありません。」 
・ 「～だけでなく、～にも大変魅力を感じたためです。」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 2 新しい職場で 
 
学習目標 
・自己紹介する 
・作業を依頼する 
・作業内容を確認する 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
ワンさんは、ついにJOSシステムズに入社しました。 
開発部に配属され、今日が初出社です。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
入社のあいさつ 
 
田中 ： 皆さん、今日から一緒に仕事をすることになったワンさんを紹介します。 
ワンさん、どうぞ。 
ワン ： 本日よりお世話になります。【中国】から参りました【ワン】と申します。 
これまでは【大連】の【ソフトウェア会社】で【日本向けシステムの開発】をしておりました。 
今後は【日本の業務やシステム開発の経験を積み】たいと考えております。 
日本の会社は初めてですので、わからないことも多いかと思いますが、 
ご指導のほど、どうぞよろしくお願いいたします。 
 
 
基本フレーズ 
本日よりお世話になります。 【 出身国 】から参りました【 名前 】と申します。 
これまでは【 場所 】の【 業種名 】で、【 仕事内容 】をしておりました。 
今後は【 今後の希望 】たいと考えております。 
日本の会社は初めてですので、わからないことも多いかと思いますが、 
ご指導のほど、どうぞよろしくお願いいたします。 
 
※この形式は自己紹介でよく使うフレーズです。 
  【   】内を自分用にアレンジして、用意しておきましょう 
 
 
NGな自己紹介 
 
(1)こんにちは。中国のワンです。 
 大連でシステムの開発をしていました。 よろしくお願いします。 
 ＞これまでの仕事内容など具体的に述べた方が、親近感がわく。 
 
(2) 私は大学でオールAを取り、TOEICも満点でした。 
 ＞自慢に聞こえないように、自己紹介は控えめに。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
作業を依頼する 
 
ワン ： 田中さん、【ちょっと今、お時間いいですか。】 
田中 ： はい、いいですよ。 
ワン ： 【2つお願いしたいことがあるんですが、一つ目は、メールの設定を教えていただき 
たいんです。】 どうしたらいいのか教えていただけますか。もう一つは、日本語で 
レポートを書いたんですけど、自信がないので、チェックし【てもらえませんか。】 
田中 :  メール設定は、今、メールとグループウェアの設定をプ リントアウトして渡しますね。 
グループウェアにログインできたら、そこに事務処理に関する手順や部署のルールなど 
があるから、それも早めに読んでおいてください。レポートのチェックの方ですが、今、 
急ぎの仕事をしているから、1時間後でもいいですか。 
ワン ： はい、今日の5時までにお願いできれば大丈夫です。 【ありがとうございます。】 
 
 
基本フレーズ 
※作業を依頼する時に必要な3つのステップ  (1)声掛け  (2)依頼  (3)お礼 
※上司に頼む場合は敬語を、同僚には丁寧な言葉を使う。 
 
 (1) 声かけ  
上司へ：お忙しいところ恐れ入ります。今お時間よろしいでしょうか。 
同僚へ：ちょっと今お時間いいですか。 
NG ： 「ちょっと！」「これってさー」 
 
 (2) 依頼表現 
 上司へ：～ていただいてもよろしいでしょうか、/  ～ていただけないでしょうか 
 同僚へ：～てもらえませんか、～てくれませんか 
 親しい同僚/部下へ： ～てもらえない↗、 ～てくれる↗ 
 婉曲的な依頼： 「○つお願いしたいことがあるんですが、一つ目は、～ていただきたいんです。・・・」  
 NG : 「やっといて」「頼んだ」「よろしく」 
 
 (3) お礼を言う 
 依頼に応えてもらったら、「ありがとうございます。」とお礼を言う。 
 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
作業内容を確認する 
 
田中 : ワンさん、メールの設定はわかりますか。 
ワン ：ちょっと、時間がかかっていて、まだできないんです。 
田中 : PCはOSとオフィスソフトだけ入っていたと思うんですけど、  
PCの環境設定①【は終わりましたか。】 
ワン ：はい、そこからが進まなくて… 
田中 : じゃ、メールとグループウェアの設定をプリントアウトしますから 
グループウェアにログインしてください。 
そこに事務処理に関する手順や部署のルールなどがあるから、 
読んでおいてもらえますか。 
ワン ：はい。まず、グループウェアにログインするん②【ですね。】 
田中 ：そうですよ。 
ワン ：わかりました。ありがとうございます。あと一つ、お聞きしてもいいですか。 
      週報なんですけど、月曜日に週報を提出する、③【ということでいいですか。】 
田中 ：そうですね。週報は、前の週に行った業務の内容について書いてください。 
あとでサンプルを見せますね。 
ワン ： よろしくお願いします。助かります。 
 
 
基本フレーズ 
※作業内容を確認する時に大切な3つのポイント 
 (1) 不確かなことは確認する 
 (2) 期限を確認する 
 (3) 確認したことを伝える言葉 
 
 (1) 不確かなことは確認する 
「PCの環境設定①【は終わりましたか。】 
＞「～は終わりましたか」は、仕事の進行度を確認する時に使う。 
まず、グループウェアにログインするん②【ですね。】 
＞「～ですね」と、相手の言葉を繰り返すと確認できる。 
月曜日に週報を提出する、③【ということでいいですか。】 
＞「～ということでいいですか。」は、自分の理解が正しいかどうかを確認する表現。 
NG :「～だね」「～って言ってたよね」 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
 
 (2) 期限を確認する 
上司： 再テストやっといて。 
ワン： 再テストは【明日まで】でよろしいでしょうか。 
※期限がわからないまま頼まれた場合は、【いつまで】か確認する。 
 
 (3) 確認したことを伝える言葉 
上司へ ： 承知しました。かしこまりました。 
同僚へ ： わかりました 
親しい同僚/部下へ ： わかった 
NG : 「わかった、わかった」「はいはい」 
 
※上司や先輩からの依頼をどうしても断わらなければならない時は…  
例： 申し訳ありません。【今から、打合せで出かける】ところなんです。 
【1時間後】でもよろしいでしょうか。 
【理由】【いつならできるか】をしっかりと伝えましょう。 
NG : 「それは、無理です。」「できません。」 
＞どうしてできないのか、いつならできるのかを明確にし、丁寧な言葉で対応しましょう。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 自己紹介のポイント 
 
日本には「自慢高慢馬鹿のうち」とか「口自慢の仕事下手」ということわざがあるように、自慢はあまり
良い印象を与えない。むしろ、嫌われる事の方が多い。 
日本人は、「本当に実力がある人は、一緒に仕事をしていけば分かるから、自慢などする必要がな
い」と考えるので、新しい職場で自己紹介をするときなどは、自慢は控えた方が良い。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「お忙しいところ恐れ入ります。今お時間よろしいでしょうか。」 
・ 「ちょっと今お時間いいですか。」 
・ 「～ということでいいですか。」 
・ 「承知しました。」 
・ 「かしこまりました。 」 
・ 「申し訳ありません。今から、打合せで出かけるところなんです。 
  1時間後でもよろしいでしょうか。」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 3 指示を受ける 
 
学習目標 
・指示を受け、期限を確認する 
・次の指示を聞き、優先順位を確認する 
・要求定義書と要件定義書の違いを知る 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
ワンさんが会社に入り、一週間が経ちました。 
チームリーダーの田中さんが、話しかけてきました。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
指示を受け、説明を求める 
 
田中 ： ワンさん、会社には慣れましたか。 
ワン ： はい、みなさん、親切にしてくださいます。 
田中  ： 良かった。そろそろ本格的に開発業務を始めてもらおうと思っています。 
今、うちのチームは流通業の販売管理システムを開発してるんだけど、 
ワンさんもそこに入ってもらえますか。 
ワン ： 流通業①【といいますと…】 
田中 ： かばんやバッグの卸の会社なんです。 
ファイルを共有しておいたので、要件定義書と基本設計書を読んで 
概要を把握しておいてください。 
ワン ： ②【すみません。メモを取らせて下さい。】 
（メモを見ながら）共有ファイルの要件定義書と基本設計書を読んで 
概要を把握しておく③【ということでよろしいでしょうか。】 
田中 ： そうだね。 
ワン ： ③【いつまでに】読んでおけばよろしいでしょうか。 
田中 ： できれば明日の午前中くらいまでに。 
ワン ： 明日の午前中ですね。承知しました。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
指示を受ける上で大切な３つのポイント 
 (1) 曖昧な言葉を確認する 
 (2) 指示はメモを取る 
 (3) 最後に内容の確認と質問をする 
 
(1) 曖昧な言葉を確認する 
 「～といいますと…」を使って、相手の言った言葉を繰り返し、 
 それが意味することを具体的に説明してもらう。 
 NG : 「流通業？」「え？」「何？」のような聞き返し方は、乱暴な印象になる。 
 
(2) 指示はメモを取る 
 失礼にならないように「すみません。メモを取らせて下さい。」と伝えてから、メモを取る。 
 NG : 姿勢が悪い。相手の話の途中で言葉をさえぎる。 
    ＞質問があっても、話は最後まで聞き、不明な点は話が終わってから聞く。 
 
(3) 最後に内容の確認と質問 
 最後にメモを見ながら「～ということでよろしいでしょうか」と、指示された内容の要点を復唱する。 
 【いつまで】【どのように】【何を】など、わからないことは、必ずその場で質問する。 
 
 NG :「はぁ～い」と長い返事、「はい、はい」と二度言う、 
     「相づち」をしない、顔を見ないで返事する、 
     返事をしない、声が小さい、etc 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
次の指示を聞く 
 
ワン ： 今、お時間よろしいでしょうか。 
田中 ： ええ、いいですよ。 
ワン ： 先日ご指示をいただいた要件定義書と基本設計書を読んで 
概要を把握しておく①【件ですが、】 先ほど読み終わりましたので、 
ご報告いたします。 
田中 ： あ、早かったね。わからないところはあった？ 
ワン ： はい、3つほど辞書で調べてもわからない言葉がありましたので、 
お聞きしたいと思っておりました。 
田中  : じゃ、それは斎藤さんに聞いて、教えてもらって下さい。 
次に、テスト仕様書も今日中に読んでおいてくれる？ 
ワン ： ②【あの、実は…大変申し訳ございませんが、】今日の4時までに 
仕上げてほしいというプログラム設計の仕事を斎藤さんから預かっています。 
③【どちらを優先すればよろしいでしょうか。】 
田中 ： 今日の4時までなら、そっち優先でやってください。 
テスト仕様書は明日の午前中までにお願いしますね。 
ワン ： 承知しました。プログラム設計の仕事が終わり次第、テスト仕様書を読み始めます。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) 話を切り出す 
 「~の件ですが」は話を切り出すときに使う。 
  例：「定義書の件ですが～」 
  例：「昨日ご依頼のあった○○の件ですが～」 
 
 NG :「この間のあれのことなんですけど～」  
  ＞具体性に欠け、聞く相手も、イメージが沸きにくい。 
 
 (2) 指示された仕事ができそうにない時の謝罪 
  （できそうにない時は、まず謝る） 
「あの、実は、大変申し訳ございませんが、～」のように、まず謝罪してから、  
どうして指示通りにできないのか、その理由を説明する。 
  
 NG :「斎藤さんに頼まれた仕事があって、それはできません。」 
    ＞最初から「できません」と断らないようにする。 
 
 (3) 指示を仰ぐ 
判断に困ったときは、自分で勝手に判断せず、 
「どちらを優先すればよろしいでしょうか。」などのように、上司の指示を仰ぐ。 
 
 NG : 「二つ同時に仕事を頼まれてもできません」 
   ＞不平不満に聞こえる。 
 
 (4) 同じ上司から矛盾する指示が与えられた 
午前中に「A方式で頼む」と上司に言われたのに、昼には「B方式で頼む」と言われました。 
このような場合は、「先ほどは、A方式で進めるようにご指示を受けたのですが、 
B方式に変更するということでしょうか」と確認をしましょう。 
 
 NG :「さっき言ったことと違うじゃないですか」 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜要求定義書、要件定義書の違い＞ 
1. 要求定義書: 
本来は、顧客の要求をまとめたもの。 
お客様の「～がしたい」「業務上、こういうものがほしい」をまとめたもの。 
2. 要件定義書： 
上記1の要求をもとに、ニーズ/リクエストを整理し、且つ条件を付けて 
体系化したもの。 
※会社によって使われ方が異なることもあるので、確認しましょう。 
 
 
＜指示を受けるときのポイント＞ 
 1) 呼ばれたらまず返事をする 
 2) メモをする 
 3) 疑問点があっても最後まで話を聞く 
 4) 要点を確実に把握する 
 5) カラ返事や二回返事をしない 
 6) 相手の顔を見て聞く 
 7) 復唱・確認をする 
 8) 仕事の優先順位を確認する 
 9) 長期の指示は状況報告をする 
 10) 仕事が完了したら必ず報告する 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 日本人のおかしなカタカナ英語 
 
 日本では、英語から派生したおかしな言葉がたくさんあります。本来の英語の発音と全く違ったり、
省略されて、元の言葉が分からないような言葉があります。 
 打合せや、指示を受ける場面などで、よく使われるおかしなカタカナ英語をご紹介します。 
  
アポ ： アポイントメント リスケ ： リスケジュール 
プレゼン： プレゼンテーション   パワポ ： パワーポイント 
パンフ ： パンフレット  
スマホ ： スマートフォン      ガラケー ： ガラパゴス携帯 
レコメンド：レコメンデーション    メンヘル ： メンタルヘルス 
バイト ： アルバイト （パートタイムジョブ）  
リモコン：リモートコントローラー  マスコミ ：マスコミュニケーション 
 
      
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「～といいますと…」 
・ 「～ということでよろしいでしょうか。」 
・ 「~の件ですが」 
・ 「どちらを優先すればよろしいでしょうか。」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 4 打ち合せ 
 
学習目標 
・担当業務について質問する 
・業務の詳細を詰める 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
ワンさんは、仕様書を読み終えました。 
いよいよ業務の打ち合わせで、詳細を詰めます。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
担当業務について質問する 
 
田中 ： ワンさんは、販売管理システムについては経験があるんだよね。 
ワン ： はい、受発注・入出荷なら、前の会社で開発を担当したことがあります。 
田中 ： それなら、手始めに、出荷の部分を担当してもらってもいいかな。 
ワン ： 出荷の部分【というのは、】基本設計書にある出荷指示からピッキングリスト、 
    出荷完了入力までの３つ【でしょうか。】 
田中 ： そうです。 その３つで、配送伝票出力はやらなくていいですよ。 
ワン ： 配送伝票出力は手掛けず、基本設計書にある出荷指示からピッキングリスト、 
出荷完了入力までの３つですね。【あの、1つ、お伺いしてもよろしいでしょうか。】 
田中 ： 何ですか？ 
ワン ： 詳細設計書【があれば、助かるのですが…】 
田中 ： 出荷指示とピッキングリストは、さっき詳細設計書ができてきました。 
出荷完了入力は、詳細設計からワンさんに作ってもらおうと思っています。 
設計書を書く経験を積んで、スキルアップしてもらいたいからね。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) 理解を明確にするための質問 
・「Aというのは、Bでしょうか」 : Aについて不明確な場合に「私はAをBだと理解している」と伝え、 
物事を明確化する際に使う。 
 
 NG : 「出荷の部分って？」「出荷の部分ってどこですか？」 
     ＞質問が漠然としているので、具体的に質問する。 
 
(2) リクエストのための質問 
 「詳細設計書をもらいたい」とリクエストをする代わりに、 
 ・「あの、1つ、お伺いしてもよろしいでしょうか。」 
 ・「～があれば、助かるのですが…」のように言うとソフトな表現になる。 
 
 NG : 「○○がないんですけど・・」「○○ってありますか」 
＞威張って聞こえますので、注意しましょう。 
 
 (3) 代替案の提示のための質問 
 「○○はワンさんに作ってもらおうと思っています。」と頼まれたときに、 
 「自分にはできない！」と思っても、断らずに他の方法を考える。 
 ＞ 一人ではなくサポートをつけて完成させるという代替案を提示。 
 例：「一人では、自信がないので、斎藤さんにサポートをお願いしてもよろしいでしょうか。」 
 
NG :「え～」「無理ですよ」「それは効率が悪いですよ」 
  ＞ネガティブな発言にならぬよう、提案するつもりで質問する。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
質問を整理する 
 
ワン ： 【すみません、2点質問させてください。】 
【まず一つ目ですが】ピッキングリストは、タブレット端末での画面表示と、 
紙での出力の2つの機能をもたせるとのことですが、確か、ペーパーレスを 
推奨していると以前に伺ったのですが…。どうして紙での出力も行うのでしょうか。 
田中 ： 紙の無駄をなくすためにタブレット端末を導入するとはいえ、慣れるまでは 
紙でも出力できる機能を残してほしいというお客様の要望があってね。 
紙での出力も行うことがあるんですよ。 
ワン ： そうですか。ありがとうございます。 
【二つ目は、】手順の確認になりますが、出荷完了は詳細設計から行うということで 
よろしいでしょうか。 
田中 ： はい。それでお願いします。15日【までに】お願いしますね。 
ワン ： 15日の14時まででよろしいでしょうか。 
田中 ： そうだね。でも大体動いたら、一度チェックするので声をかけてください。 
ワン ： 承知しました。見ていただけると助かります。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) 質問が複数ある 
  いくつ質問があるかを先に伝える ＞ 聞き手も心の準備ができる。 
  例： 「すみません、○点質問させてください。 
      まず一つ目ですが～、二つ目は～、最後に～」 
 
 NG :「え～っと、何を聞くんだったけ・・」  
   「それから～、あ、あれもわからなかったんです」 
 
(2) 「誰に」「いつ」質問するか 
 質問の内容だけでなく、質問をする相手、質問をするタイミングも考えて質問する 
 ＞ 良い回答が得られやすい。 
 
 *適任者 = その任務や業務や役割などを遂行するのに 
         ふさわしい能力や経験などを持っている人 
 
 NG :「今、お忙しいのはわかっているんですが、これがわからないと 
仕事が先に進められないので、教えてくれますか」 
＞自分の都合を優先するのではなく、相手の都合を優先する。 
 
(3) 「明日までに」は「今日か？明日か？」 
 トラブルを避けるために、提出期限は時間も明確にする。 
 
 NG :「なぜ」「どうして」を使った質問は、相手を不快にさせてしまう恐れがあるので注意が必要。 
例）「どうして、やってくれないんですか」 
例) 「どうして私の質問に回答して下さらないのですか」 
 ＞「～してくれないあなたが悪い」と聞こえる。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 「センスの良い質問」と「センスの悪い質問」 
 
 【A】「今度、日本に行きます。オススメはどこですか？」 
 【B】「来月１人で日本に旅行に行きます。 
品川から日帰りで行けるオススメの観光スポットがあれば教えて下さい」 
 
     ＞必要な情報を、過不足なく伝えるのがポイント 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「Aというのは、Bでしょうか」 
・ 「あの、1つ、お伺いしてもよろしいでしょうか。」 
・ 「～があれば、助かるのですが…」 
・ 「すみません、２点質問させてください。まず一つ目ですが～、」 
・ 「15日の14時まででよろしいでしょうか。」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 5 開発中のやりとり 
 
学習目標 
・注意を受ける 
・ミスを認めて謝る 
・アドバイスへのお礼を言う 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
ワンさんは、詳細設計書を書いたので、同僚の斎藤さんにチェックをお願いしました。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
同僚から注意を受ける/謝る 
 
斎藤 ： ワンさん、ちょっといいですか。 
ワン ： はい。 
斎藤 ： 設計書を見たんだけど、一つ気になった点があって… 
ワン ： 何ですか。 
斎藤 ： この「ファンクションの動きを明確にする」とありますけど、 
「動き」じゃなくて「働き」じゃないかなと思って… 
ワン ： 【あ、そうですね。すみません。】すぐ修正します。 
他にもどこか間違えていませんでしたか。 
斎藤 ： 間違いはなかったと思うけど、目次と概要が同じページになっていますよね。 
ページ数が少なくなっていいんだけど、今回は分量が多いから 
別ページにした方がいいかもしれませんよ。 
ワン ： 【気がつきませんでした。】  
「他人の書いた設計書はわかりにくい」とよく聞きますし、 
私自身もそう思いますからレイアウトにも配慮しなければいけませんね。 
斎藤 ： それと、自分で作った設計書でも時間が経つと理解するのに 
時間がかかることがあるから、スペースを気にしないで、 
「概要」には設計書で設計する「機能」がどういう目的のもので、 
誰がどう使うのか、そういう前提知識をしっかり書くといいですよ。 
ワン  ： 【確かにそうですね。今後気をつけます。】  
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) 謝るフレーズ 
 ・反省の度合いと丁寧さは次のとおり ＞ 「ごめんなさい」→「すみません」→「申し訳ございません」 
 ・上司、取引先、お客様に対しては 「（大変）申し訳ございません」が最も一般的。 
 ・「気がつきませんでした。」「確かにそうですね。今後気をつけます。」などの非を認める表現もある。 
 
(2) 謝罪10フレーズ 
1) 「申し訳ございません」 ：  「ごめんなさい」の丁寧な形 
「申し訳ない」は敬語ではないので、上司や先輩には使わない。 
2) 「お詫び申し上げます」 ： 「ごめんなさい」のかしこまった形 
「謹んでお詫び申し上げます」「心からお詫び申し上げます」 
3) 「ご迷惑／ご心配をおかけしました」  
①実害を与えた場合 ＞ 「ご迷惑をおかけしました」   
例：「こちらの手違いで、大変ご迷惑おかけしました」 
②心の負担をかけた場合 ＞ 「ご心配をおかけしました」 
例：「先日は家族のことで、ご心配をおかけしました」 
4) 「(深く)反省しております」 ： 反省していることを伝える時 
例：「私のミスのせいで皆さんに大変なご迷惑をおかけしましたことを、 
深く反省しております」  
5) 「肝に銘じます」 ： ミスを繰り返さないと誓う時 
例：「ご指摘頂いた点、肝に銘じます」  
6) 「弁解の余地もありません」 ： 全面的に自分が悪い時 
7) 「あってはならないことでした」 ：大きなミスをした時 
例：「納品の期日を間違えるなど、あってはならないことでした」 
8) 「勉強不足で申し訳ございません」 ： 知っていて当然のことを知らなかった時 
9) 「この度はお騒がせしました」 ：事後、改めて謝罪する時  (*事態が落ち着いた後に使う) 
10) 「私の力不足です」 ： 未熟な自分を認める 
例：「今期の目標を達成できなかったのは、私の力不足です」 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
アドバイスへのお礼を言う 
 
田中 ： ワンさん、あさっての社内打ち合わせだけど、 
開始時間の変更についてみんなに聞いてある？ 
ワン ： 【申し訳ありません。 まだ、全員に確認しておりませんでした。】 
田中 ： え、まだだったの？会議はあさってですよ。 
社内の打合せでも、時間の変更は早めにみんなに伝えないと、 
みんなの予定が合わなくなってしまうよ。 
ワン ： 【大変申し訳ございません。今すぐ、確認いたします。】 
田中 ： 早急に頼むよ。 
ワン ： 【はい、申し訳ございませんでした。以後、気をつけます。 
確認とり次第、ご報告し、会議室を押さえます。】 
田中 ： 新人の時はいろいろあって、大変だと思うけど期待しているからがんばって。 
ワンさん ： はい、ありがとうございます。 
田中 ： なかなかみんなの確認が取りにくいようだったら、 
「○日○時までにお返事ください」とメモでも残しておくといいんじゃないかな。 
ワン ： 【ご指摘、ありがとうございます。早速、そのように致します。 
またお気づきの点がありましたらおっしゃってください。】 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1)謝るパターン 
 謝る際には謝罪の言葉だけでなく、現状報告や今後の対応策についても伝える。 
 1) 謝罪の言葉＋現状報告 
  例：申し訳ありません。まだ、確認しておりませんでした。 
 2) 謝罪の言葉＋今後の対応 
  例：大変申し訳ございません。今すぐ、確認いたします。 
 3) 謝罪の言葉＋今後の対応の詳細 
  例：はい、申し訳ございませんでした。以後、気をつけます。 
     確認とり次第、ご報告し、会議室を予約します。 
 
(2)お礼を言う （上司や先輩からアドバイスを受けた時の表現） 
 ・「ご指摘、ありがとうございます。早速、そのように致します。 
  またお気づきの点がありましたらおっしゃってください。」 
 ・「いつも的確な助言をいただき、ありがとうございます。」 
 ・「貴重なアドバイスをいただき、ありがとうございました。」 
 
(3)程度を表す言葉 
 ・程度が大きい言葉：「大変」「とても」「心から」など 
       ---感謝、お礼などポジティブなことを伝える際に使う。 
 ・程度が小さい言葉：「ちょっと」「少し」「多少」 など 
       ---断り、拒否などネガティブなことを伝える際に使う。 
 
 
注意を受けている時や叱られている時のNG 
 1) 愛想笑いでごまかす 
 2) 議論をふっかける 
 3) 無反応、無視 
 4) 逆ギレする 
 5) 責任転嫁する 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 誠意が伝わる謝罪のコツ 
 
職場であれば、次のような順番で伝えるのがスマート。 
(1) 迷惑をかけていることへのお詫びの気持ちを伝える 
(2) どうしてそれが起きたかの原因をクリアにする 
(3) 状況を改善するための手段、今後の対策を述べる 
(4) もう一度お詫びの言葉を述べる / 指摘に感謝する 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「（大変）申し訳ございません」 
・ 「ご迷惑をおかけしてすみません」 
・ 「今後気をつけます／ 以後気を付けます 」 
・ 「ご指摘、ありがとうございます。」 
・ 「貴重なアドバイスをいただき、ありがとうございました。」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 6 進捗報告 
 
学習目標 
・会議で作業の進捗を報告する 
・スケジュール遅延の相談をする 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
開発も半ばになり、チーム内で進捗報告会議をすることになりました。 
一人ひとり、今の状況を発表していきます。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
会議で作業の進捗を報告する 
 
田中 ： それでは、チームミーティングをはじめます。 
各自の進捗状況を教えて下さい。ワンさんからお願いします。 
ワン ： はい。 【完了したのは、】出荷指示と出荷完了の詳細設計書です。 
【現在は、】出力サンプルをお客様に確認していただいている一方で、 
ピッキングリストに着手し始めたところです。 【今後は、】ピッキングリストが完成次第、 
出荷完了にとりかかります。【1点問題があるのですが、】設計書を書くのに 
時間がかかってしまって、スケジュールからは少し遅れ気味になっています。 
田中 ： 少しっていうのは、どれくらいですか。 
ワン ： 1日半くらいです。 
田中 ： 遅れはどうやって挽回しますか。 
ワン ： ピッキングリストは得意分野なので、ピッチを上げれば遅れを挽回できると思います。 
田中 ： わかりました。もし、今後、他の案件も含めて遅れが出そうだったら、 
遅れる前に知らせて下さい。場合によってはプロジェクトを立て直すための 
軌道修正をします。今回は、当初のスケジュール通り進められるよう、 
改めて作業進行を見直して今後の予定を教えて下さい。 
ワン  ： 承知しました。ご報告が遅れて、申し訳ありませんでした。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
(1) 進捗を報告する 
 進捗は要点を押さえて手際よく報告する。 
 次のように時間の順番で話すと効果的。  
 1) 「完了したのは～」 ＞ すでに完了したタスクを報告する 
 2) 「現在は～」 ＞ 現在進行中のタスクを報告する 
 3) 「今後は～」 ＞ これから取り掛かるタスクを報告する 
 4) 「○点問題があるのですが～」 ＞  
   重要な問題など早急に対応が必要な場合はすぐに報告する。 
   遅れやトラブルなどネガティブな情報ほど重要。 
 
(2) 概略を述べる 
 話が長くなりそうなときは、以下のような表現を冒頭に使って、 
 先に概略を述べると、聞き手にもわかりやすくなる。 
  「結論から先に申しますと～」 
  「かいつまんで申し上げますと～」 
 
(3) 報告のタイミング  
 1) 指示された仕事が終わったとき 
 2) 長期の仕事の進行状況の中間報告 
 3) 仕事の進め方に変更が必要なとき 
 4) 新しい情報を入手したとき 
 5) 仕事に対する新しい改善方法を見つけたとき 
 6) ミスをしたとき、問題が発生したとき、 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
NGな報告(1) 
 
1) 「まだ終わっていません」 > 理由と対策も報告します。 
 例：「◯◯が原因で作業が遅れているため、まだ終わっていません。 
現在、次工程の担当者である山田さんがヘルプに入っていますので、 
予定通りできるはずです。」 
 
2) 「あの件は、終わりました」 ＞ 結果に加えて、スケジュール、 
   具体的な手順、前回の反省等で学んだことがあれば補足する。 
 例：「前回指摘された部分は、スケジュール通り進めることができました。 
◯◯が原因だったので△△という方法で□□しました。」 
 
3) 何も報告をしない 
・上司に指示された業務の進捗を報告していない 
  ⇒上司が不安に陥り、管理コストがかかる。 
・クレームが発生したのに、報告をしていない 
  ⇒上司の責任が増え、教育不足だとレッテルを貼られる、被害を最小限に抑えられない 
・プロジェクト進行に変更があったが、変更点を報告していない 
  ⇒何かあったときに上司は対応ができない 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
スケジュール遅延の相談をする 
 
ワン ： 田中さん、ちょっとよろしいでしょうか。 
田中 ： どうしましたか。 
ワン ： 【現状をお伝えしますと、】先日の出力サンプルの修正 依頼に対応して 
いるのですが、思ったより時間がかかりそうなんです。このままだと、残業をしても 
予定より2日遅れそうなので、どなたかにヘルプ【をお願いできないでしょうか。】 
田中 ： ヘルプね… 
ワン ： 【問題解決のために】ピッチを上げて取り組んでみたのですが、かなりきついです。 
【解決できなかった理由は、】 予想以上に帳票の項目追加が多く、 
データの取り方とレイアウトの変更が大きくなり、人手が必要になったためです。 
最初からスケジュールにもっと余裕を持たせればよかったと反省しています。 
田中 ： 納期はどうしても動かせないから、ヘルプの件、次工程の担当者、斎藤さんに 
私から打診してみますよ。何の作業が切り出しやすいかな。 
ワン ： 出荷完了でしたらシンプルな処理ですので、お願いしやすいです。 
田中 ： わかりました。早速聞いてみますよ。  
ワン ： お手数をおかけいたします。ありがとうございます。 
田中 ： 納期の短期化が進んでいるから、今後もこのようなケースはあるかもしれないね。 
今回のように早めに相談してくれると対策が立てられるから助かるよ。 
 
 
基本フレーズ 
 (1) 相談のための情報整理 
 相談相手が良いアドバイスを考えやすいように、自分の持っている情報を正確に、要領よく伝える。 
 1) 「現状をお伝えしますと、～」 ＞ 相談したい事柄の現状をシンプルにわかりやすく伝える。 
 2) 「～をお願いできないでしょうか。」 ＞ 依頼したいことを伝える。 
 3) 「問題解決のために～たのですが・・・」 ＞ 相談する前にすでにやったことを伝える表現。 
 4) 「解決できなかった理由は、」 ＞ 目指している状態にならなかった理由を報告する。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
NG な報告(2) 
 
1) 「最初からスケジュールに無理があり、テストが遅れました」 
＞ 後になって不満や遅れを言わない。 
 
2) 「6カ月の納期を1カ月なんて、無理なものは無理です」 
＞ 最初から要求を断るのではなく、上司も交え、問題解決の方法を考えてみる。 
 
3) 「仕様固めは1カ月なのに、ズルズルと半年も引きずった営業が悪い」  
＞他の部のせいにしない。 
 
4) 「コロコロと仕様を追加されては、間に合うものも間に合いません」 
＞お客様のせいにせず、相談をしてより良い方法を模索しよう。 
 
5) 相談をしない 
 ①わからないことがあったのに相談せず勝手に業務を進めた 
  ⇒業務やり直しの可能性 
 ②誰にも相談せず、複数人が関わるプロジェクトを一人で進めた 
  ⇒クオリティの低下 
 ③目標達成が難しそうだったが、何とかなると思い、相談せずに進めて、目標が未達成だった 
  ⇒チームや上司の責任問題へ発展 
 
 
ワンポイントアドバイス 
相談した後、その問題が解決した時、相談に乗ってくれた人やアドバイスをしてくれた人に対して、
「その問題が解決した」という報告と一緒にお礼を伝えよう。 
＞ コミュニケーションがよりスムーズになり、次に問題が起きた時にも相談しやすくなる！ 
 
例：「先日、ご相談させて頂いた〇〇の件は、おかげ様で無事に乗り超えられました。 
田中さんのアドバイスのおかげです。本当にありがとうございました」 
 
  
 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ ホウレンソウは上司活用の手法！？ 
 
■ホウレンソウとは何か？ 
(1)報告 おもに上司からの指示や命令に対して、 部下が業務や作業の経過や結果
を知らせること。 
(2)連絡： 職場の上下関係にかかわらず、業務・作業の情報を関係者に知らせること。
個人の意見や憶測は含まない方が好ましい。 
(3)相談： 自分だけで判断するのが困難な時、上司や先輩や同僚などに参考意見を聞
くこと。職場の上下関係は あまり関係しない。 
 
(1)報告のポイント ＝ 相手(通常は上司)を不安にさせないこと。 
例）開発スケジュールが遅れそうになった場合の、 
・開発担当者(部下)の考え： 
 「ちょっとくらい遅れてもクライアントは文句言わないだろう・・・」 
 「頑張れば遅れを取り戻せるだろう・・・」 
・マネージャー（上司）の考え： 
 「一日でも遅れるとクライアントから損害賠償金を請求されてしまう」 
 「1つの作業が遅れれば、別のチームにも影響がでて、遅れが広がる」 
＞上司と部下とでは、「リスクに対する感度」が違う。 
 この感度の違いを理解した上で報告を行うとトラブルを避けられる。 
 
(2)連絡のポイント ＝ 事実を客観的に伝えること。（主観や個人的意見は必要ない） 
 
(3)相談のポイント ＝ 自分一人で取り組むよりも、より良い答え・方法・アドバイスを得ること。 
 ＞そのために、相談する相手に、 
  「①実現/解決したいこと」 
  「②これまでの経緯」 
  「③現在の状況」 
  「④自分としての考えやアイデア」 
 を過不足なく伝える。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
■ホウレンソウの大切さが部下に理解されにくい理由: 
  「リスクに対する感度」や「視野の広さ」が違うし 
  「結果重視の考え方や「責任範囲の考え方」も違うから。 
 
(1)部下の考え ： なぜ「報連相」を要求されるのか？ 
大事なのは結果だ。結果が全て。プロセスの「報連相」は時間の無駄。 
任された仕事の進め方を決める権限は自分にあるハズ。 
 
(2)上司の考え ： 進め方についても管理が必要だ。 
  プロセスの改善で、自分の経験や知識が役に立つハズ。 
  よりよい進め方をお互いにわかっていれば、今後のためにもなる。 
  チームの責任は上司にある。 
 
■部下はホウレンソウをどう捉えるべきか？ 
 ✕ イヤイヤやる「義務」 
 〇 自分よりも経験や知識が豊富な人のノウハウやアイデアを活用する手段 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「1点問題があるのですが、」 
・ 「結論から先に申しますと～」 
・ 「現状をお伝えしますと、」 
・ 「～をお願いできないでしょうか。」  
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 7 単体テスト・結合テスト 
 
学習目標 
・状況を説明する 
・エラーの原因を説明する 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
プログラムもほぼ終わり、ワンさんは、単体テストの仕様書を作成しています。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
状況を説明する 
 
ワン ： 斎藤さん、今、単体テストの仕様書を作っているんですけど、 
ちょっと聞いてもいいですか。 
斎藤 ： どうぞ。 
ワン ： 【「確認内容」の書き方についてです。】 
【「テスト結果」なんですが】「正しく動作したときのシステム状況」や 
「バグがあって正しく動作しなかったときのシステム状況」も書くように 
言われていたのですが、どのようなことを書けばいいのでしょうか。 
斎藤 ： 状況の概要は簡潔に書けばいいんですよ。 
テスト項目番号16の「正常な操作」と テスト項目番号17の 「誤った操作」は、 
具体的にはどんなことでしたか。 
ワン ： そうですね…それぞれ【2点の工程がありました。】  
16番は【まず、】顧客リストに登録された顧客のIDを入力しました。 
【次に、】顧客情報が正しく表示されることを確認しました。 
【一方、】17番は16番【と違って】、顧客リストに登録されていないIDを入力しました。 
次に、「入力エラー」のメッセージが画面に表示されることを確認しました。 
斎藤 ： 今の状況を簡潔に説明すればいいんですよ。例えば、16番なら「顧客リストに 
登録された顧客のIDを入力すると顧客情報が正しく表示されることを確認する」と 
書けばいいですよ。  
ワン ： わかりました。では、17番は「顧客リストに登録されていないIDを入力すると 
「入力エラー」のメッセージが画面に表示されることを確認する。」のように 
書く ということですね。 
斎藤 ： そうですね。その調子でやってみて下さい。 
ワン ： ありがとうございました。早速取り掛かります。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1)状況を説明する 
説明上手になるコツは”相手に伝えたいポイントを明確にすること”、次の６点に気をつけよう。 
 1) これから何を話すのか、先に宣言しておく。 
   例： 「○○についてです。」 「『テスト結果』なんですが～」 
 2) 理由やポイントが複数ある場合は、その数を伝える。 
   例： 「これを選んだ理由は3つあります」 「今から、○○についてのポイントを4つ説明します」 
 3) 接続詞を上手に使って、整理しながら話す。  
   例： 「まず～、次に～」 「一つ目は～、二つ目は～」 「最後に～」 
 4) 二つの事柄を比較する時は、「一方、～は～と違って～」 
 5) 全体の話を短くする 
 6) 一つの文を短くする 
  ✕：「○○をすると△△になって、それから××をしたら○△になったので、 
これはよくないと思い、△○をしてみたら・・」 
  〇：「まず、○○をすると△△になりました。それから××をしたら○△になりました。 
      これはよくないと思い、△○をしてみたら・・」  
 
NGな説明の仕方 
1) 語尾が曖昧(あいまい) 
✕ 「それについては違うかもしれないんですが・・」 
○ 「それについては違います。」 
2) 話すスピードが速い 
3) 声が小さい・声が大きすぎる 
 
(2) テスト仕様書特有の表現 
結果を端的に表現（◯、✕）できる質問文を作成する。 
 1) ～は正常か、正しく引き渡されているか、正しく制御されているか、正しく遷移(せんい)するか 
 2) 適切に～されているか、正常に行われているか 
 3) ～は生じないか、～は発生していないか、～が可能か、～は良好か、規約に準じているか、 
 4) ～を確認、～をチェック 
 5) ～は表示されるか、～は移動するか、～は消去されるか、～になっているか、抽出されるか 
 6) ～ボタン押下時（おうかじ）、・・・ 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
チームリーダーの田中さんは、完成した部分の結合テストを行っていて、あるエラーを見つけました。 
 
 
 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
エラーの原因を説明する 
 
田中 ： ワンさん、ちょっと来てくれる。 
ワン ： はい。 
田中 ： 単体テストで、画面モジュールとデータベースモジュールは、 
期待した通りに動作したんでしたよね？ 
ワン ： はい、そうですが、何か問題がありましたか。 
田中 ： いざ接続して動作確認をしてみようとすると 
「○○年数の項目は整数で入力してください」というエラーメッセージが 
表示されてしまうんです。 
ワン ： 申し訳ありません。きっと、私が何かを見落としているんだと思います。 
すぐに確認して修正します。 
田中 ： よろしく頼むよ。 
 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
そして、ワンさんは、エラーの原因をみつけ、田中さんに説明する。 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
ワン ： 田中さん、先ほどは失礼しました。 
【エラーの原因について調べましたところ、】画面では1年に満たない端数月は 
小数で入力するようになっていました。 一方、データベースには整数しか 
保存できないようになっていました。 
データベースも少数で入力するよう【修正して更新いたしました。】 
少数と整数を取り違えるという初歩的な【ミスでした。】 
ご迷惑をおかけしました。 
田中 ： あ、そうだったの。今度は大丈夫そうですね。 
ワン ： お手数をおかけして申し訳ありませんでした。今後、気をつけます。 
また、何かありましたらお知らせください。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 1) 原因を説明する際、「原因について話す」ことを冒頭で明言する。 
  例： 「エラーの原因について調べましたところ、～」 
   「原因の一つは～」「問題の原因は～」なども覚えておくと便利。 
  例：「障害の原因の一つは十分なメモリが無かったことです。」 
 
 2) エラーをどのようの処理したのか報告する。 
   例 「修正して更新いたしました。」 
 
 3) 根本的なエラーの原因と予防策についても考える。 
   例 「ミスでした。」 
単純な操作ミス、動作ミスなどの出力エラーなのか、注意力の欠如、疲労などの 
ヒューマンエラーなのかまで詳しく確認しておくと予防策になる。 
予防策まで報告すると、聞き手も安心して仕事を任せることができる。 
 
 
NGなエラーの原因説明 
 
1)小数にすればよかったんです  
＞ 何の前置きもなく、エラーの原因だけを伝える 
 
2)もう、直りましたから大丈夫です 
＞ 修正や更新が終わったかも伝えます 
 
3)動作ミスなので、私のせいではありません 
＞ 担当者として責任のない発言に聞こえる。 
  チームに迷惑をかけたことはしっかり謝りましょう。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 事前にエラーを防ぐために 
 
■ヒューマンエラーのタイプは３つに分けることが出来る。 
①個人的要因 （例：注意力、記憶、疲労、ストレス、知識、経験など） 
②状況的要因 （例：手順書、タイムプレッシャー、作業環境、コミュニケーション） 
③組織的要因 （例：マネジメントの決定、組織制度、企業文化・企業カラー） 
 
■具体的な予防策の例 
例1：タイムプレッシャーがある時の予防策： 
    ＞完成前にダブルチェック・トリプルチェックを行う 
例2：コミュニケーションに不安がある時の予防策： 
    ＞ミスコミュニケーションが起きないように、 
     連絡事項は必ずメールや文章で残す。 
例3：企業文化が違う相手と仕事をする時の予防策： 
    ＞仕事の進め方、ルール、などについて事前に話し合う。 
 
どんなエラーが起こりうるか考え、事前にその予防策を打つと、 
仕事のミスやトラブルが減り、評価も高くなる！ 
 
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「○○についてです。」「『テスト結果』なんですが～」 
・ 「まず〇〇、次に～～」 
・ 「一つ目は～、二つ目は～」 
・ 「一方、～は～と違って～」 
・ 「エラーの原因について調べましたところ、」 
・ 「問題の原因は～」 
・ 「これを選んだ理由は3つあります」 
・ 「今から、○○についてのポイントを4つ説明します」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 8 システムテスト 
 
学習目標 
・内線電話に応対する 
・仕様変更依頼に対して代替案を示す 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
マシンルームでは、第1システム部によるシステムテストが行われています。 
自席で別の仕事をしているワンさん(開発部)に内線がかかってきました。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
内線電話に対応する 
 
ワン ： 【はい、開発部です。】 
渡辺 ： 【第1システム部の渡辺です。】ワンさんいらっしゃいますか。 
ワン ： はい、私です。  
渡辺 ： あ、ワンさんですか。 
いま、システムテストを行っているのですが、出荷伝票の担当はワンさんですよね。 
ワン ： 【はい。不具合かなにか…。】 
渡辺 ： いえいえ。 
印字位置の確認をしているのですが、伝票用紙が足りなくなってしまったのですが、 
そちらに余りがありませんか。 
ワン ： あ、少しで良ければありますので、今から私がそちらにお持ちしましょうか。 
渡辺 ： 助かります。マシンルームで作業していますので、よろしくお願いします。 
ワン ： わかりました。すぐに行きます。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) (内線電話の) 電話応対の基本的な流れ  
 1)内線電話を受けた場合は、部署名のみを伝える。 
   例）「はい、○○部です。」 
 2)内線電話を掛けた場合は、部署名と名前を伝える。 
   例） 「○○部の○○です。」 
 3) 「不具合かなにか．．。」 
   ＞「不具合か何か（問題がありましたか？）」という意味。 
 
 ＊内線電話では、会社名は名乗らない。 
 
(2)電話のマナー 
 ・外線電話を取る時の第一声はなるべく明るいトーンで。 
 ・相手が社外の人の場合、「いつもお世話になっております」と ひと言挨拶をする。 
 ・3コール以内にとる。間に合わなければ「お待たせしました」。 
 ・相手が会社名や名前を言わなかった場合は、 
  「失礼ですが、どちら様でしょうか」と、名前や会社名を確認する。 
 
 
NGな電話の応対 
1) 電話の向こうに大きな話し声や笑い声が聞こえてしまう 
2) 話が終わってから、すぐに電話をガチャンと切る 
3) メモをしたいのに、メモ帳とペンがない 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
システム部から開発部に修正対応の依頼が来ました。 
田中さんがワンさん達にそれを伝えます。 
 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
代替案を示す 
 
田中 ： 受注データのテーブル構造に、一部変更が入りました。修正対応、お願いします。 
斎藤 ： システムテストまで、終わっているのに…。 
田中 ： 一部、テーブルをまとめて、パフォーマンスを上げたいそうです。 
変更の理由は大量データのとき、処理にだいぶ時間がかかってしまうからだそうです。 
SQL部分の変更で済むかもしれません。 
斎藤 ： 【パフォーマンスを上げたいというのはわかるんですが、】  
テストはまたしなくちゃいけないわけですよね。 
【プログラムじゃ、これ以上パフォーマンスは上げられないですよ】 
ワン ： どうしても、修正しなければいけないのでしょうか。 
田中 ： そうだね。今のままだとパフォーマンスが、あまり良くないからね。 
斎藤 ： 【では、こうしてはいかがでしょうか。】  
まず、マシンスペック、ストアドプロシージャとか、サーバー側で改善できる余地を 
探してみる。もしできなかったら、こちらで修正するという順番でいかがでしょう。 
田中 ： それは、提案する価値があるかもしれないね。  
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
(1) 反論する 
 1) 反論の前に、まず相手の意見を認める。  
例：「～というのはわかるんですが、」 
例：「確かにおっしゃる通りかもしれませんが～」 
例：「基本的には賛成ですが～」 
 2) 反論の根拠を示す。 
   「プログラムじゃ、これ以上パフォーマンスは上げられないですよ」  
 
(2) 代替案を出す 
  反対意見を言うだけでは、何の解決にもならない。 
  反対する時には、よりよいアイデアを提示する。 
 例：「では、こうしてはいかがでしょうか。」 
 例：「では、このような案はいかがでしょうか。」 
 
NGな反論 
 「それは無理です。」 
 「できません。」 
 「それは間違っています」 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 「少し気になる」は「とても気になる」？ 
 
日本人の先輩： 
 「この完成度だと、まだちょっと問題があるかも知れないな」 
 
外国人の後輩： 
 「ちょっと問題があるかも・・・ということは、ほとんど問題無いってことだな。 
合格ラインは超えているんだろう。じゃ、今日はもう切りあげて、飲みに行っちゃおう！」 
 
※日本人が「ちょっと」「若干」「多少」「やや」と言う時は、 
  相手を傷つけないように、間接的な表現にしていることが多い。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「失礼ですが、どちら様でしょうか」 
・ 「～というのはわかるんですが、」 
・ 「基本的には賛成ですが～」 
・ 「では、こうしてはいかがでしょうか。」 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 9 顧客デモ 
 
学習目標 
・デモ環境セッテイングの手伝いを申し出る 
・顧客の過大な要求に応える 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
いよいよ顧客デモのための準備をする段階になりました。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
手伝いを申し出る 
 
田中 ： 顧客デモに備えて、今日は、会場設営を行います。 
予め準備のお願いをしておいた人は早速取りかかってください。 
ワン ： 私は何も言われていないんですが、 【何かお手伝いできることはありますか。】  
田中 ： 【手伝ってもらえると助かるよ。】 
会議室にPCをセットしなければいけないから、まずPCを搬入してもらえますか？ 
ワン ： 【はい、承知しました。すぐに取り掛かります。】 
 
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
ワン ： PCの搬入は終わりました。その他、【何かお手伝いしましょうか。】 
田中 ： 私はこっちのデスクトップをセットアップしようと思って いるんだけど… 
ワン ： ではノートは【私がセットアップしましょうか。】 
田中 ： 頼むよ。助かるよ。 
ワン ： ネットワークの設定をして、サーバーへの接続を確認するんですね。 
WifiとLANケーブル、どちらでつなぎましょうか。 
田中 ： うーん。電波状況が悪いといけないから、両方用意しておいてください。 
ワン ： はい、かしこまりました。  
最後に、システム全体が動くことを確認すればよろしいでしょうか。 
田中 ： そうだね。それが一番大事だね。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
(1) 手伝いに関する表現 
 
 1) 手伝いを依頼する 
    「この作業を手伝って頂けませんか。」  
    「～の件で助けて頂けませんか」 
    「～に加わって頂きたいです。」 
 2) 手伝いを申し出る 
    「何かお手伝いできることはありますか。」 
    「何かお手伝いしましょうか。」 
    「私が～しましょうか。」 
    「何かあれば言って下さい。」 
    「次は何をしましょうか」 
 3)手伝いの申し出を受ける 
   ①：自分の立場が上：「手伝ってもらえると助かるよ」 
   ②：①以外      ： 「お願いします」「大変助かります」 
 4)手伝いの申し出を断る 
   手伝いの申し出を断るような場合は特に、失礼にならないようにしましょう。 
    「ありがとうございます。でも、大丈夫ですよ。」 
    「ありがとうございます。もうすぐ終わりますから…。」 
 5)手伝いを依頼された後 
    「はい、承知しました。すぐに取り掛かります。」 
    「はい、お任せください」    
 
(2) 先に帰る時のフレーズ 
 「本日は、これで失礼させていただきます」 
 「お先に失礼します」 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
デモ当日、渡辺さんがお客様に、完成したシステムの操作を説明します。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
顧客の要求に応える 
 
渡辺 ： このように出荷指示の出された受注データが一覧表示されます。 
ここで、必要な付加情報も入力できます。 
顧客 ： なるほど。ちょっと入力してみてもいいですか。 
渡辺 ： どうぞ。実際に、入力なさってみてください。 
顧客 ： 入力画面で、前のフィールドに戻るには、マウスでクリックしないといけませんか。 
キーボードだけで操作したいんだけど。 
渡辺 ： 倉庫での作業になることも考慮して、出荷関係はすべてキーボードで 
操作できるようになっております。フィールドをひとつ前に戻るのは、 
Shift+Tabで、前のフィールドに戻ることができます。 
顧客  ： ああ、なるほど。 
じゃあ、キーボードだけでの操作方法を、マニュアルにまとめておいていただけませんか。 
渡辺 ： ワンさん、どうでしょう。 
ワン ： 【承知いたしました。一覧表を作成しておきます。】 
顧客 ： それから日付入力についてですが、年を4桁入れたら、自動的にスラッシュを 
付加してくれませんか。 
渡部 ： 【そうですね…弊社の標準はエクセル風になっているのですが、 
キーパンチの問題でしょうか、それとも見た感じの問題でしょうか。】 
顧客 ： 入力のキーパンチを極力減らしたいからです。 
キーパンチが多いと業務が回らないので、頼みますよ。 できますか。 
渡部 ： 【大変申し訳ないのですが、かなり仕様が変わってしまいますので、 
私の一存では今ここで決めかねます。 
本日中に上の者と相談して、ご連絡差し上げます。】 
顧客 ： 本日中ですね。お願いしますよ。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
 
(1) 顧客の要求に応える 
 1) 要求を受け入れる  
   「承知いたしました。～しておきます。」 
   「すぐ対応させていただきます。」 
 2) 要求の理由を確認する 
   「そうですね…弊社の標準は～～になっているのですが、 
    ～～の問題でしょうか、それとも～～の問題でしょうか。」 
 3) 要求に難色を示す 
   「大変申し訳ないのですが、～～ので、私の一存では決めかねます。 
    ～～までに上の者と相談してご連絡差し上げます。」 
 
(2) 顧客が怒ってしまったら 
 1)怒りの原因を知る 
 2)顧客が望んでいるものを供給する 
 3)あなたの重大な非だったら何回でも謝罪する。 
 4)一に誠意、二に誠意 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ プレゼンテーションで失敗しないコツ 
 
(1) シンプルに伝える 
   ✕ かっこう良いけど意味が伝わらないプレゼン 
   〇 かっこう悪くても意味が伝わるプレゼン 
 
(2) 正直に伝える 
  まずは、お客様によい印象を与えることを目標に。 
  信頼を得るためには、やはり正直さが大切。 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「何かお手伝いできることはありますか。」 
・ 「ありがとうございます。でも、大丈夫ですよ。」 
・ 「はい、承知しました。すぐに取り掛かります。」 
・ 「本日は、これで失礼させていただきます」 
・ 「お先に失礼します」 
・ 「私の一存では今ここで決めかねます。」 
 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
Unit 10 
顧客検収テスト・アフターサポート 
 
学習目標 
・様々な状況を仮定する 
・検収テストの結果を伝え聞く 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
結合テストが終わり、明日から顧客検収が始まります。 
顧客検収をクリアして、顧客から検収印をいただければ、辛かったプロジェクトもやっと終わりになります
から、みんな緊張しています。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
様々な状況を仮定する 
 
田中 ： 明日から、顧客検収が始まります。2日間の予定なので、よろしくお願いします。 
業務終了後の夜間にも作業が入るので、各処理の作成者は、 
念のため、電話連絡がつくようにしておいてください。 
ワン ： お客様から、直接、電話が来ることがあるのですか。 
田中 ： いいえ、テストにはシステム部が立ち会っていますので、その心配はありません。 
【仮にシステム部がわからない不具合や不明点が出た場合は、】 
システム部から会社待機の私に連絡が来ます。 
私でわかることは、その場でお返事しますが、細かい内容の場合は、 
各作成者に私かシステム部から連絡を入れるかもしれません。 
ワン ： 【その不具合がすぐに解決できそうになかったら、ユーザーと協議の上、 
期日を設定して修正することも可能ですか】。 
田中 ： 期日はあまり延ばせませんが、そうすることになると思います。 
【今までのテスト結果を見ていますと、ほぼ先方の要求仕様通りにできていると 
思います。】 でも、不具合が出るかもしれませんから、気を抜かないで待って 
いてください。 
ワン ： 【不具合が出ないといいんですけど。】  
田中 ： そうですね。私もそう願います。 
斎藤  ： 【検収印をいただいたあかつきには、】打ち上げしましょうよ。 
ワン ： 楽しみです。2日間、がんばります！ 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
(1) 仮定する 
①前提条件を述べる 
「仮に～た場合は、～」 ＝ 「もし~したら」という意味 
「AそうになかったらBすることも可能ですか」 
＞ 「Aの条件でのBの可能性」を質問する表現 
「今までの～と」 
＞ 「今までの経験から申しますと」のように、過去の経験から未来の状態を推測する。 
 
②仮定して意見を述べる： 
  「～たらいいんだけど」「~たらいいのですが」。 
  例：「不具合が出ないといいんですけど。」 
  例：「検収印がもらえたらいいんだけど」 
 
③困難な希望が達成したと仮定して言う 
  「～あかつきには」は、「～したその時には」という意味で、 
  「成功・実現・成就・完成」などの言葉と共に使われる。 
  例： 「検収印をいただいたあかつきには」 
 
(2)連絡の順番の確認 
 「AからBに連絡が来ます。」 
 「AかBから、Cに連絡が行きます」 
 「Cは、いつでも電話に出られるようにしてください」 
 「問い合わせ窓口は、Aになります。Aが問題をきりわけて、担当部署に連絡します」 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜モデル会話＞ 
顧客検収が無事に終わった翌日、斎藤さんと田中さんとワンさんが話しています。 
実際にお客様が運用を始めるカットオーバーの日の体制について、田中さんが指示します。 
 
 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
検収テストの結果を伝え聞く 
 
斎藤 ： 無事に顧客検収も終わったみたいですね。 
田中 ： 多少の修正要請が入ったみたいだけど、大きな不具合はなかったから良かったよ。 
カットオーバーは予定通り来月10日になる【そうです。】  
斎藤さん、ワンさん、その日も、電話待機はお願いします。 
ワン ： 承知しました。検収の時と同じような感じですね。 
導入後の問い合わせや不具合はどうなるのですか？ 
田中 ： 今回のお客さんは、1年のソフトウェア保守契約をしてくれた【とのことです】から、 
その範囲で、対応していきます。 一次窓口は、サポートセンターになります。 
斎藤 ： 保守契約してくれているなら、安心ですね。 
ワン ： 新しい機能の追加などは、保守契約に含まれないんですよね。 
田中 ： 基本的に、設計書の内容以外の機能は対応範囲外ですが、ケースバイケースですね。 
【システム部によれば、先方の満足度はかなり高いとのことでした。】 
【ここだけの話ですが、以前に契約したA社とは比較できないくらい、完璧な仕事を 
迅速にできる会社だと褒められましたよ。】 皆さんのおかげです。ありがとう。 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
基本フレーズ 
(1) 聞き伝える 
 ①聞いたことを伝える ＞  
   「～そうですよ」「とのことです」などは、電話で伝言を預かった時にも役立つ表現。 
 ②情報源を示す ＞  
   「～によれば、~とのことでした（～だそうです）」 
 ③口外を禁じる 
   「ここだけの話ですが」「オフレコですが」「内密ですが」など 
   *「オフレコ」は 「off the record」の意味。 
 ④「～そうだ」「～らしい・～みたいだ」の違い 
   「～そうだ」：確実なことを伝える場合に使う。 
   「～らしい ・ ～みたいだ」：確かではないことを伝える場合に使う。 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜コラム＞ 仕事ができる外国人ビジネスパーソン 
 
 
 
外国人ビジネスパーソンに必要な能力とは？ 
スキル 主な内容 
(1)ビジネス日本語能力 敬語、ライティング（メール）、電話応対、等 
(2)社会人基礎力 マナー、チームワーク、ポジティブシンキング、モチベーション、タイムマネ
ジメント、気配り、他者貢献の精神、ストレス耐性、倫理、寛容さ、
等 
(3)異文化調整能力 日本人の価値観や行動様式、日本のビジネス文化などの理解と適
応 
(4)ビジネススキル マーケティング、情報分析、戦略立案、ロジカルシンキング、プレゼン
テーション、営業、PR、プロジェクトマネジメント、設計、開発、デザイ
ン、等 
 *経済産業省の「外国人留学生向けの研修のあり方について」をもとに作成 
 
できる
外国人
ビジネス
日本語能
力
社会人
基礎力
異文化
調整能力
ビジネス
スキル
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
＜おさらい＞ 特に重要なフレーズ 
 
・ 「仮に～た場合は、」 
・ 「今までの経験から申しますと」 
・ 「～あかつきには」 
・ 「～そうですよ」 
・ 「～によれば、~とのことでした（～だそうです）」 
 
  
 
    
         Sưu tầm by Jlpt247.com
Copyright (C) Japan Online School Corporation. All rights reserved. 
 
 
 
IT 用語集(日英対訳付き)を無料でプレゼントしています。 
こちらのページでご確認ください。 
 
東京 IT パーク : http://www.tokyoitpark.com/  
 
（無料キャンペーンは予告なく中止となる場合がございます。 
最新の情報は WEB にてご確認ください。） 
 
 
誤字・脱字等見つけられた方は、お手数ですが、 
下記の連絡先までご一報いただければ幸いです。 
 
有限会社ジャパンオンラインスクール 
IT ビジネス日本語チーム 
メール ： info@j-os.com 
TEL ： 045-550-3199 
 
 
 
 
 
    
         Sưu tầm by Jlpt247.com


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Tài liệu thực hành dịch IT Comtor\Lý thuyết nghề IT Comtor và kỹ thuật xử lý tài liệu thường gặp.pptx`

## Slide 1
2025/04
IT Comtor
Lý thuyết và Kỹ thuật xử lý tài liệu
Quỳnh Nga IT
Đồng Hành Cùng Bạn!
## Slide 2
Dành cho người biết ngoại ngữ: 
Nhật, Hàn, Anh, Thái, Trung…
IT ComtorLý thuyết nghề
Quỳnh Nga IT
Khởi động hành trình của bạn!
## Slide 3
1
2
3
4
Agenda
Công việc của IT comtor
Quy trình phát triển phần mềm
Các vai trò chính trong dự án
Về phiên dịch
Quỳnh Nga IT - Đồng Hành Cùng Bạn
## Slide 4
Quỳnh Nga IT - Đồng Hành Cùng Bạn
## Slide 5
Position: IT Comtor

Language: Japanese

From: Quang Ninh
           Hai Phong
Introduce 
myself
## Slide 6
"Do what you can, with what you have, where you are."

(No need to wait for perfect conditions to start)
2. Favorite quote
Quỳnh Nga IT - Đồng Hành Cùng Bạn
## Slide 7
3. Fast document translation process
Quỳnh Nga IT - Đồng Hành Cùng Bạn
## Slide 8
Long Word, Excel, PowerPoint, and PDF documents with large volumes take time to process manually, causing delays in development progress.
Google Translate often misses content, especially in Excel, which frequently encounters errors, and large PDF files cannot be processed.
The Problem
Scuti  AI number 1
## Slide 9
Doc file: Using the Translate function on Google Docs.
※  Note: Convert the format to Google Docs.
My Solution - Google doc
Purpose: Everyone can do it themselves
## Slide 10
Upload to Google Sheets and run a script.
Supports all file types: Word, Excel, PowerPoint.
For PDFs, add one step: convert to Word, then process as usual.
https://smallpdf.com/vi/pdf-to-word
My Solution - Script
Purpose: Everyone can do it themselves
## Slide 11
4 .Demo


https://drive.google.com/drive/folders/1M9_VxYQqlrIbF1KOzFMzhMXF_6YN1TkT
Quỳnh Nga IT - Đồng Hành Cùng Bạn
## Slide 12
Thank you!
Quỳnh Nga IT - Đồng Hành Cùng Bạn


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Tài liệu thực hành dịch IT Comtor\Lý thuyết nghề IT Comtor.pptx`

## Slide 1
Dành cho người thông thạo tiếng Nhật
Japanese IT ComtorLý thuyết nghề
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
## Slide 4
Mục tiêu khóa học
Định hình rõ ràng vai trò và công việc của một IT Comtor
Làm chủ bộ kỹ năng thiết yếu: Giao tiếp chuyên nghiệp, biên dịch chính xác tài liệu IT chuyên sâu.
Hiểu rõ quy trình phát triển phần mềm và cách vận hành của một dự án IT.
Sẵn sàng “NHẢY VIỆC” ngay sau khóa học.
## Slide 5
Nội dung
Khóa học
Khái quát về Phát triển phần mềm
2. Công việc của IT Comtor
5. Định hướng nghề
3. Giao tiếp với khách hàng
4. Biên dịch tài liệu
## Slide 6
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Section 2
Khái quát về phát triển phần mềm
## Slide 7
Thu thập Yêu cầu
Phân tích & Thiết kế
Phát triển
Triển khai & Bảo trì
Kiểm thử
Quy trình phát triển phần mềm
Requirements
Design
Development
Testing
Deployment &
Maintenance
## Slide 8
Mô hình phát triển phần mềm
Agile Scrum
Waterfall
Phát triển tuần tự theo từng giai đoạn cố định
Khó thay đổi khi đã hoàn tất một giai đoạn
Phát triển linh hoạt theo từng vòng lặp.
Dễ dàng thay đổi theo phản hồi thực tế.
## Slide 9
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
## Slide 10
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Section 3
Công việc của IT Comtor
## Slide 11
Công đoạn phụ trách
・Dịch meeting, dịch tài liệu requirement.
・Q&A (file/meeting/chat…)
Requirements
Design
Development
Testing
Deployment &
Maintenance
・Dịch và giải thích tài liệu thiết kế (hệ thống, DB, UI…)
・Thực hiện Q&A (file/meeting/chat…)
・Report, Q&A, issue, ・Update document/change request,  
・Regular meeting
・Test plan, test specs, test case, 
・Bug list, bug report, test result, log lỗi, 
・Q&A, regular meeting…
・Demo, User manual, guideline,
・Change request, issue sau triển khai…
Xuyên suốt toàn bộ quá trình phát triển
## Slide 12
Giao tiếp trực tiếp (offline meeting, 
customer care, …
Giao tiếp qua Video (online meeting)
Giao tiếp qua Chat
Giao tiếp qua email
Giao tiếp khách hàng
Biên dịch tài liệu phát triển
Biên dịch tài liệu báo cáo
Biên dịch báo giá, hợp đồng
Biên dịch hướng dẫn sử dụng người dùng, v.v…
Biên dịch tài liệu
Công việc chính
## Slide 13
Các công việc khác
## Slide 14
Quản Lý Đào Tạo 
(Senior Comtor, Comtor Leader)
## Slide 15
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Section 4
Giao tiếp với khách hàng
## Slide 16
Giao tiếp trực tiếp
Trang phục nghiêm chỉnh, lịch sự và phù hợp với hoàn cảnh giao tiếp.

Có thái độ vui tươi, thân thiện, ánh mắt tập trung vào đối phương.

Giới thiệu bản thân rõ ràng, đặc biệt trong lần đầu gặp mặt.

Không làm việc riêng trong khi trao đổi; tắt tiếng điện thoại, laptop.

Cúi chào đúng mực theo văn hóa Nhật (15–30 độ tùy tình huống).

Mang theo danh thiếp (meishi) nếu cần, trao danh thiếp bằng hai tay.

Luôn đến sớm khoảng 5–10 phút trước giờ hẹn.
## Slide 17
Giao tiếp qua video
Thống nhất lịch họp, book link meeting, book phòng, mời tham gia.

Đọc hiểu tài liệu, chuẩn bị trước nội dung họp với team (vd: list up Q&A)

Tham gia họp trước 5–10 phút, mang theo sổ và bút để ghi chú.

Kiểm tra kỹ thiết bị trước buổi họp (mạng, webcam, mic, loa, tai nghe).

Bật camera. Thực hiện record meeting (Công cụ ghi âm và tóm tắt cuộc họp: tl;dv)

Mặc trang phục lịch sự, giữ không gian nền gọn gàng, yên tĩnh.

Mở sẵn tài liệu, nội dung cần chia sẻ.
## Slide 18
Giao tiếp qua email
Kiểm tra địa chỉ email người gửi trước khi soạn và gửi mail.

Tiêu đề email nêu rõ nội dung/chủ đề chính.

Nội dung ngắn gọn, rõ ràng, chia đoạn dễ đọc.

Phong cách viết lịch sự, khiêm nhường. Chú ý viết đúng tên Kanji của khách, tên công ty khách.

Tập tin đính kèm không vượt quá dung lượng cho phép (~20MB). Nếu lớn, dùng dịch vụ chia sẻ file.

Bảo mật thông tin: mã hóa file, đặt mật khẩu, quét virus trước khi gửi.

Luôn chào hỏi đầu thư (ví dụ: お世話になっております) và kết thư lịch sự (ví dụ: 何卒よろしくお願いいたします).

Trả lời email trong vòng 24 giờ, kể cả khi chưa có câu trả lời chính thức thì nên phản hồi tạm để thể hiện đang tiếp nhận thông tin.
## Slide 19
Giao tiếp qua chát (Slack, Teams)
TO: đúng người cần gửi, CC: những người liên quan

Khi nhận được tin nhắn từ khách, thực hiện tiếp nhận 2 lần:

Lần 1: Thông báo đã tiếp nhận thông tin và sẽ xử lý. Sau khi xử lý xong sẽ trả lời lại.

Lần 2: Trả lời lại sau khi đã xử lý

Chú ý: viết đúng tên Kanji của khách

Nội dung trình bày ngắn gọn, nếu là nội dung dài, nên phân chia đoạn, đề mục hợp lý

Nội dung chỉ nên viết trong ⅓ màn hình, không nên viết dài tràn hết chiều ngang màn hình. 

Văn phong lịch sự, kính ngữ, khiêm nhường
## Slide 20
Nguyên tắc khi phiên dịch
Nguyên tắc chuẩn bị

Nguyên tắc về chỗ ngồi

Nguyên tắc về phát âm

Nguyên tắc về sử dụng từ ngữ

Nguyên tắc về ăn mặc, cử chỉ

Nguyên tắc truyền đạt nội dung

Nguyên tắc xử lý sự cố
## Slide 21
Quy tắc chung
Xưng hộ hợp lý, có trên dưới, thể hiện thái độ kính trọng.
(姓・名字) + さん; (姓・名字or会社名) + 様; (姓・名字) + (役職名)
Sử dụng thể lịch sự, hoặc kính ngữ khi cần thiết. KHÔNG sử dụng:
+ Thể thường, ví dụ: 話す、しない
+ Từ nói tắt, ví dụ: ✖出れます→〇出られます、✖これって→〇これは
+ Tiếng lóng (若い言葉), ví dụ: マジ？、ヤバイ、超～
Chào hỏi khi bắt đầu hội thoại.
Khi kiểu giao tiếp bằng văn bản có yêu cầu về quy chuẩn (Ví dụ: Báo cáo tiến độ, Report về bug,...) thì cần tuân theo template hoặc format quy định. *
* Có thể linh hoạt tùy theo hoàn cảnh nhưng vẫn phải đảm bảo đủ các thông tin cơ bản.
Khi giao tiếp bằng giọng nói, cần nói đủ to, rõ ràng, hứng khởi. Tránh thói quen lặp lại các từ câu cửa miệng như: あのう、なんか、え～と
## Slide 22
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Section 5
Biên dịch tài liệu
## Slide 23
Quy tắc chung
Đảm bảo các yếu tố sau: 
1. Độ chính xác: Đảm bảo ý nghĩa được truyền tải chính xác từ bản gốc sang bản dịch.
2. Tính tự nhiên: Sử dụng cách diễn đạt tự nhiên trong tiếng Việt, tránh dịch máy móc theo cấu trúc.
3. Tính nhất quán: Duy trì sự nhất quán trong việc sử dụng thuật ngữ và phong cách xuyên suốt bản dịch.
4. Với tài liệu dài, có độ lặp lại cao: Nhất quán sử dụng thuật ngữ, format.

Đối với dịch xuôi từ tiếng Nhật → tiếng Việt:
1. Dịch song ngữ đối với tên item, message, tên button, để lại từ gốc theo công thức [ログイン/Login], 
            Message “ユーザー名を入力してください/Xin vui lòng nhập username”
2. Đặt  các phần cố định như tên item, message vào ngoặc “”
3. Giữ nguyên định dạng, format file gốc, không thay đổi thứ tự. 
4. Giữ nguyên các thuật ngữ tiếng Anh thường dùng, ví dụ như 'class', 'method', 'UT', 'IT', 'file', 
5. Nhất quán trong việc sử dụng thuật ngữ.
## Slide 24
Quy tắc dịch test case
Format file testcase
Quy tắc dịch áp dụng cho từng cột.
Viết đúng katakana
Cấu trúc thường dùng 
Vると、～が表示されること。
一度Vたら、～ことができない
## Slide 25
Quy tắc dịch weekly report, report
Format file Báo cáo tiến độ
Kiểm tra nội dung và tiến độ từng hạng mục, xác nhận lại với PM nếu có chỗ không đúng/không rõ ràng, hoặc thiếu thông tin. Thực hiện chỉnh sửa khi cần. 
Tiến hành dịch. 
Báo cáo: báo cáo tổng thể trước, sau đó mới đi vào chi tiết, thống nhất các tiến độ: inprogress, VN review, JP review.

Giải thích nội dung chung, ký hiệu: %, bôi màu (nếu ko có ý đồ gì đặc biệt thì cần xóa bôi màu nội bộ đi, nếu có ý đồ thì cần giải thích.
Cần focus vào: Nội dung nào đang bị delay/có khả năng delay/đang trở thành issue
Nếu có issue - cần có giải pháp đi kèm.
## Slide 26
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
## Slide 27
Quỳnh Nga IT - Đồng Hành Cùng Bạn
Section 6
Định hướng nghề
## Slide 28
Định hướng nghề: 
Phát triển skill theo chiều dọc: trau dồi ngôn ngữ, khả năng quản lý để phát triển lên Comtor leader
Phát triển skill theo chiều ngang: học thêm các skill, kiến thức khác ngoài tiếng Nhật để phát triển lên BrSE, BA, PM.
## Slide 29
Link: file excel ghi nội dung khóa coaching 1:1
Mã QR của file:
Chương trình coaching 1:1
## Slide 30
THANK YOU
QUỲNH NGA IT
With the help of a strong job search strategy, job seekers may find and apply for the positions of their dreams while also exhibiting their talents and qualities to prospective employers.


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Tài liệu thực hành dịch IT Comtor\Thực hành dịch New-Bid.docx`

2023/10/24　Stakさんとのヒアリング
●先方　Stak上本さん（多分CTO）
●現状
・Stakさんは標的型メール訓練システムの開発を委託されている。つまり、エンドクライアントさんがいる。
・標的型メール訓練システム の現行システムがあり、色々問題があり、作り直したい。
・マイグレーション時は企業とユーザーデータのみ移行する。それ以外のデータ移行は不要。
・今の構成RoR、Next.js、AWS（移行後も）、MySQL（Aurora）
　→移行後はNode.js+Next.jsを希望。ただし、提案可能
・現行バージョンの問題がたくさんある。クライアントの要望をつかまずにプロトタイプを作ってちょっとずつ育てるという方法で実装した。したがって資料がほとんどない。かつ、	
・RoRのライブラリも今サポート外だったり。なので、言語は変えたい。
・ユーザービリティが悪いので、UIは変えたい。
・機能は基本的に現状を保持する想定だが、クライアントの要望で機能追加が出るかも。
・現行バージョンは運用１年くらい。
・NDA後にステージングのアカウント発行はできるので、それを確認すれば現状の機能がわかるかも。見積もりも、今と同じものを作った場合という前提で作成する。
・移行前後の機能の正誤判定に関しては、
　・Stakさんが受け入れテストで確認
　・Stakさんと先方で設計レビューをする。
●役割分担
・先方は客とのディレクションのみ
・要件定義以降を委託したい
・サーバはAWS / ECSを使っていてコンテナを使っていて、移行後もコンテナを使った運用にしたい。
●スケジュール
ベンダー選定　11月上旬には決めたい
見積もり　11月6日週には揃えたい
着手　12月か年明け（早ければいい）
リリース　着手から半年後くらい（現行バージョンがあるので、必須のリリースはない）
●技術要件
上記
●チーム体制と役割分担
・御社：ディレクションのみ
・弊社：要件定義から全て
—------------------------------------------------------
● Tình hình hiện tại
・Stak san được một bên uỷ thác phát triển “hệ thống hướng dẫn xử lý mail tấn công”. Tức là còn một bên thứ 3 là endclient nữa. 
・Hiện tại, họ đã có một “hệ thống hướng dẫn xử lý mail tấn công” rồi, nhưng hệ thống đó có nhiều vấn đề, nên họ muốn xây dựng lại.
・Cấu hình hiện tại: RoR, Next.js, AWS (sau khi migrate cũng dùng), MySQL (Aurora)
　→ Sau khi migarte thì họ muốn dùng Node.js+Next.js. Tuy nhiên, bên mình có thể đề xuất. 
・Có rất nhiều vấn đề với version hiện tại. Hệ thống trước đây họ làm theo kiểu tạo prototype và đắp dần từng chút một, trong trạng thái chưa hiểu yêu cầu mong muốn của khách hàng. Vậy nên hầu như không có tài liệu nào. Hơn nữa, rất khó để vận hành hệ thống trong trạng thái nó được hình thành không có sự cân bằng hợp lý.
・Thư viện RoR bây giờ cũng không phải đối tượng hỗ trợ nữa. Do đó họ muốn thay đổi ngôn ngữ.
・Usability (tính sử dụng) cũng kém, nên họ muốn thay đổi cả UI.
・Về mặt chức năng, cơ bản họ dự định giữ nguyên như hiện tại, tuy nhiên cũng có thể sẽ có thêm các chức năng khác tùy theo mong muốn của client. 
・Version hiện tại đã vận hành được khoảng 1 năm. 
・Ký NDA xong là họ sẽ phát hành account môi trường staging cho mình, mình vào check thì sẽ nắm được các chức năng của hệ thống hiện tại. Về báo giá thì chúng ta estimate với tiền đề là làm một hệ thống giống như hệ thống hiện tại.
・Về việc xác định tính chính xác của các chức năng ở thời điểm trước và sau khi migrate, thì:
　・Stak san sẽ test AT để check. 
● Phân chia vai trò
・Họ muốn ủy thác từ phần định nghĩa yêu cầu trở đi 
・Về server thì đang dùng AWS / ECS và container, sau khi migrate vẫn muốn vận hành dùng container.
● Schedule
Chọn vendor :　Quyết định vào đầu tháng 11
Start :　Tháng 12 hoặc đầu năm sau (càng sớm càng tốt)
Release:　Khoảng nửa năm sau khi start (Chưa bắt buộc release vì vẫn đang có hệ thống hiện tại)
● Yêu cầu kỹ thuật
Đã ghi ở trên
● Cơ cấu team và phân chia vai trò
・Công ty chúng tôi: Làm toàn bộ từ khâu định nghĩ yêu cầu trở đi


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Tài liệu thực hành dịch IT Comtor\Thực hành dịch_機能要件定義書.xlsx`

## Sheet: 機能一覧
No. | 区分 | 機能区分 | 機能名 | 機能詳細 | ファン | 主催者 | 管理者(conSept) | フロー有無
1 | ユーザーサイト | サインアップ | サインアップ(ファン) | ①ファンがユーザ情報を入力し、SMS認証にて送信されたコードを入力する。
②サービス内で使用するウォレットが生成され、システムにユーザ情報が登録され、ファンはCPを受け取る。
③登録完了し、ユーザは登録完了メールを受け取る。 | True | False | False | 有り
2 | ユーザーサイト | サインアップ(主催者) | ①主催者が各種証明書、活動の実績のアップロードを含むユーザ情報を入力する。
②仮登録が完了し、主催者は仮登録完了メールを受け取る。
③システム管理者に承認依頼メールを送信する。
④管理者が承認すると、主催者の登録が完了する | False | True | True | 有り
3 | ユーザーサイト | 差戻_サインアップ(主催者) | ①主催者は差し戻し修正内容入力画面にて、各種証明書や活動実績をファイルで再アップロードする
②ユーザ情報が仮登録され、完了画面を表示する
③システム管理者に承認依頼メールが送信される
※主催者と管理者はチャットのようにやりとりすることができる。 | False | True | True | 有り
4 | ユーザーサイト | ログイン | ログイン | ①ファンはログイン情報（メールアドレスがログインID）を入力し、正しければウォレット・アクセストークン、CPトークンをファンが取得する。
　※２要素認証(OTPなど)はしない。
②ホーム画面を表示する。
③アクセストークンがない、もしくは期限切れの場合は再度ログインを行う。 | True | True | False | 有り
5 | ユーザーサイト | パスワードリセット | ①ログイン画面にて、パスワードリセット画面にアクセスする
②本人確認情報を入力し、正しければパスワードリセットメールを受信する
③パスワードリセットメールにあるリンクからパスワードリセット画面にアクセスし、新パスワードを設定する。完了するとパスワード変更完了画面を表示する。 | False | True | False | 有り
6 | ユーザーサイト | ファンmint | mint体験 | ①初回ログイン後に、mint体験画面を表示する
②アバターにキーワードを入力した後、生成されたアバターの選択肢から1つアバターを選択する。
③アバター選択後、mintが行われて、自分のアカウントのアバターがCPトークンを消費してmintされ本登録が完了する。 | True | False | False | 有り
7 | ユーザーサイト | アイテムmint | ①画像、文章をアップロードする
②販売するSTトークンを決める
③mintが行われ、STトークンが消費される
※一度設定したSTトークンは変更できない
※動画はファイルサイズを圧縮して小さくできる場合は①のアップロード対象に含める | True | False | False | 無し
8 | ユーザーサイト | mint購入 | ①ファンがmintしたアイテムを閲覧する
②アイテムを購入する
③購入したファンのSTトークンが消費され、販売したファンのSTトークンが増える
※ファン同士でチャットのようにやりとりすることができる。
※不適切なやり取りがあった場合、管理者に通報できる。 | True | False | False | 無し
9 | ユーザーサイト | アカウント管理 | パスワード変更 | ①パスワード変更画面にて、旧・新パスワードを入力する
②半角英数字記号で8~20文字までパスワードは入力許可する
③パスワードの変更が完了すると、ホーム画面を表示する | True | True | False | 有り
10 | ユーザーサイト | プロフィール編集(ファン) | ①ファンはプロフィール画面にアクセスし、プロフィールを編集する
②変更可能な情報
- 電話番号：更新した場合はSMS認証を行う
- メールアドレス（ログインID）：変更完了時にメールを送信して確認
- ニックネーム：一意のものなら変更可
③変更不可の情報
- システムID
- ウォレットアドレス
④プロフィール更新に成功すると、プロフィール編集完了ポップアップが表示され、ホーム画面に遷移する
⑤編集完了メールを送信し、メールアドレスが正しいことを確認する。
※アカウント登録時にダブルアカウントを未然に防ぐための文言を表示する。 | True | False | False | 有り
11 | ユーザーサイト | プロフィール編集(主催者) | ①主催者はプロフィール画面にアクセスし、プロフィールを編集する
②書類で証明している内容を変更する場合は、再度書類を提出して管理者の承認が必要となる
③管理者の承認が得られると、プロフィール編集が完了し、プロフィール編集完了画面が表示される
※主催者と管理者はチャットのようにやりとりすることができる。 | False | True | True | 有り
12 | ユーザーサイト | 退会（ファン） | ①ファンは退会画面にアクセスし、退会を行う
②ウォレットとウォレットに紐づく情報以外は削除される
③ファンは所有していたNFTは残したまま、もしくは管理者に寄付譲渡するかを選択する
　※conSept様側で法務検討が必要。
④退会が完了すると、ファンは完了メールを受信する | True | False | False | 有り
13 | ユーザーサイト | 退会（主催者） | ①主催者は退会画面にアクセスし、NFTが出品されていない場合は退会を実行できる
②主催者には、退会時にウォレットや以前の履歴を復元できない警告が出され、同意をすると退会が実行される
③退会が完了すると、主催者は削除され、主催者は退会完了メールを受け取る | False | True | False | 有り
14 | ユーザーサイト | 演目管理 | 演目登録 | ①主催者は演目登録画面にアクセスし、任意の演目情報を入力する
②主催者は3ヶ月以内の公開日を入力する必要があり、演目が登録されると演目一覧画面に遷移し、表示される
③演目の公開日になると、演目が公開される | False | True | False | 有り
15 | ユーザーサイト | 演目閲覧 | ①主催者は演目一覧画面にアクセスし、自分が登録した演目の一覧を表示する
②一覧から選択した演目の詳細を表示する | False | True | False | 有り
16 | ユーザーサイト | 演目編集 | ①主催者は演目編集画面にアクセスし、任意の演目情報を編集する
②演目の公開日以降に編集をする場合、運営に問い合わせを行う用の画面が表示される
③演目の公開日以前に編集をする場合、編集が問題なく実行されると編集された情報が演目一覧画面に表示される | False | True | False | 有り
17 | ユーザーサイト | 演目削除 | ①主催者は演目詳細画面にアクセスし、演目を削除する
②以下の条件に該当する場合は、削除ができないため、運用に問い合わせを行う用の画面が表示される
　- アイテム(NFT)が発行されている
　- 公開日以降 | False | True | False | 有り
18 | ユーザーサイト | アイテム管理 | アイテム登録 | ①演目一覧画面にアクセスし、演目一覧から演目を選択する
②演目詳細画面からアイテム登録画面にアクセスし、アイテムの情報を入力する。
有形のアイテムと無形のアイテムによって、入力項目を変更する
アイテム毎に公開・非公開を選択できる
③アイテム情報が入力されるとmintが行われ、アイテムがシステム上に登録されてアイテム一覧画面に表示される
演目の公開日にすでに該当のアイテムが登録されている場合は、そのアイテムが公開される
④アイテムが登録されると、主催者と演目をフォローしているファンに新着アイテムのお知らせメールが送信される
長期間ログインしていないファンに対しては、別途ログインに誘導するメールの内容にする | True | True | False | 有り
19 | ユーザーサイト | アイテム閲覧 | ①主催者はアイテム一覧画面にアクセスし、自分が登録したアイテムの一覧を表示する。
②一覧から選択したアイテム詳細を表示する。 | False | True | False | 有り
20 | ユーザーサイト | アイテム削除 | ①主催者はアイテム一覧画面にアクセスし、そこからアイテム詳細画面にアクセスする。
②主催者はアイテム詳細画面から削除申請をし、アイテムを論理削除してアイテム削除完了画面が表示される。
削除されたアイテムはギャラリーには表示されない
③もし該当アイテムがファンに購入されている場合は、返金対応を行い、ファンはアイテム削除通知メールを受信する | True | True | False | 有り
21 | ユーザーサイト | アイテム購入 | 演目・アイテム検索 | ①演目・アイテム検索画面にアクセスする
②検索条件を入力し、検索条件に見合う演目もしくはアイテムの一覧を表示する
③任意の演目を一覧から選択すると、関連するアイテムが表示される。 | True | False | False | 有り
22 | ユーザーサイト | アイテム購入 | ①ファンはアイテム一覧画面から、アイテム詳細画面にアクセスし、アイテム購入を選択する
②アイテム購入が行われると、該当アイテムがシステム上でロックされ、決済の実施およびNFT移行を行う
③アイテム購入が完了すると、購入完了画面が表示され、購入完了メールを受信する
※ファンと主催者はチャットのようにやりとりすることができる。 | True | True | False | 有り
23 | ユーザーサイト | 無形NFT清算 | ①公演終了後、清算対象アイテムを取得し、管理者が一時保管していた代金を主催者に送金する。
②主催者は決済金と取引完了メールを受信する。 | False | True | True | 有り
24 | ユーザーサイト | アイテム発送 | ①主催者は公演終了後、アイテムを発送し、アイテム詳細画面から追跡情報を入力する
②アイテム情報が更新され、発送完了画面が表示され、発送完了メールがファンに送信される
③ファンはアイテム受領時に購入アイテム詳細画面から受領通知を行う。
④アイテム情報の更新後、決済が行われ、代金が管理者から主催者に送金される。
⑤主催者は決済金と取引完了メールを受信する | True | True | False | 有り
25 | ユーザーサイト | リクエスト | リクエスト | ①ファンはリクエスト申請画面からリクエスト情報を記入する(写真や文章)
②問題なければ、リクエスト内容が登録され、主催者にリクエスト依頼メールが送信される
③主催者はリクエスト依頼メールから、リクエスト依頼画面にアクセスする
④リクエストのアイテムを出品しない場合、リクエストを拒否して主催者にはリクエスト一覧画面が表示される。
ファンにはリクエスト拒否メールが送信される
⑤リクエストのアイテムを出品する場合、主催者は出品情報を入力し、アイテムが登録される。
⑥アイテム登録後、リクエスト一覧画面が主催者に表示され、ファンはリクエスト承認メールを受信する。
リクエスト承認直後はリクエストを申請したファンのみ、アイテム購入を行うことができる。
⑦一定期間経過後、アイテムは一般公開され、演目や主催者をフォローしている人に通知される。
※ファンと主催者はチャットのようにやりとりすることができる。 | True | True | False | 有り
26 | ユーザーサイト | お知らせ | お知らせ閲覧 | ①お知らせ画面にアクセスすると、システム上のお知らせ、新着作品のお知らせ、アイテム売買のお知らせ一覧が表示される | True | True | False | 有り
27 | ユーザーサイト | 静的画面 | 静的画面 | ソシアターとは？やFAQなどを表示する。
FAQと使い方マニュアルは主催者向けとファン向けでそれぞれ作成する 
※FAQは主催者と管理者が作成できるが、この機能は管理者が作成する機能である。 | True | True | False | 無し
28 | ユーザーサイト | 問合せ | 問合せ | ①主催者もしくはファンから管理者へ問合せを行う
②管理者からの回答はメールとお知らせで受信する
※本機能の画面に「主催者への問い合わせは各アイテムから行ってください。」というような文言を記載する。 | True | True | False | 無し
29 | ユーザーサイト | 主催者メンバー管理 | 主催者メンバー管理 | 主催者には、主催者とは別に公演ごとに管理者がいることがあるため、その管理者を管理する機能。
①主催者メンバー管理画面にアクセスし、主催者メンバー一覧を表示する
②新規メンバーアカウントを作成する場合、新規メンバーのアカウント情報を入力し、登録。実行後は主催者メンバー一覧画面が表示される
③既存のメンバーを編集（更新、削除）する場合、任意のメンバーの情報を編集できる。編集後にメンバー一覧画面に遷移する
-----
主催者と主催者の中のメンバーは以下の権限で分ける
　権限：
　　フルアクセス：すべての操作とすべてのアクセスが可能　※お金もみえる
　　編集：公演やアイテムの情報を編集、mintできる　※お金は見えない | False | True | False | 無し
30 | ユーザーサイト | 共通 | 操作履歴閲覧 | ①各機能の詳細画面で主催者と主催者のメンバーの操作履歴(作成日、作成者、更新日、更新者、更新内容)を表示する。 | False | True | False | 無し
31 | 管理者サイト | ログイン | ログイン | ①管理者はログイン画面にアクセスし、ログイン情報を入力してログインを実行する
もし以前ログインした際のアクセストークンがある際は、ホーム画面を表示する。
②ログイン実行時に、発行されたアクセストークンをローカルに保持し、管理ホーム画面を表示する
③ログイン時に、マスターの管理者アカウントはホットウォレットを取得し、マスターの管理者がmintを実行できるようにする。
ホットウォレットの秘密鍵は暗号化してサーバに保存し、マスター管理者のみ使用可能にする。
NFTの保管は基本的にコールドウォレット（具体的には、ハードウェアウォレット）を使用し、ホットウォレット内には一時的にNFTを保管するだけとする。 | False | False | True | 有り
32 | 管理者サイト | パスワードリセット | ①ログイン画面にて、パスワードリセット画面にアクセスする
②本人確認情報を入力し、正しければパスワードリセットメールを受信する
③パスワードリセットメールにあるリンクからパスワードリセット画面にアクセスし、新パスワードを設定する。完了するとパスワード変更完了画面を表示する。 | False | False | True | 無し
33 | 管理者サイト | ユーザ管理 | ユーザ管理 | ①管理者はユーザ管理画面にアクセスし、ユーザ一覧を取得する
②管理者は任意のユーザを編集（削除、ブロック）し、編集が反映されるとユーザ一覧を表示する
ユーザブロックとは、任意のユーザにログインできなくさせること | False | False | True | 有り
34 | 管理者サイト | 管理者アカウント管理 | ①管理者アカウント管理画面にアクセスし、管理者アカウント一覧を表示する
②新規管理者アカウントを作成する場合、新規管理者のアカウント情報を入力し、登録。実行後は管理者アカウント一覧画面が表示される
③既存の管理者アカウントを編集（更新、削除）する場合、任意の管理者アカウントの情報を編集し、編集後に遷移する管理者アカウント一覧画面に変更された内容を含む一覧が表示される

-----
管理者は以下の権限で分ける
　権限：
　　フルアクセス：すべての操作とすべてのアクセスが可能　※お金もみえる
　　編集：返金対応はできない。　※お金は見えない | False | False | True | 有り
35 | 管理者サイト | 主催者管理 | 主催者登録承認 | ①主催者がサインアップを行った際に管理者が承認依頼メールを受信する
管理者はメールのリンクから承認詳細画面にアクセスし、詳細情報を表示する
②管理者は、主催者を否認するなら、差し戻しコメントを入力し、主催者に差し戻し通知メールが送信され、承認一覧画面が表示される
③管理者が主催者を承認した場合、承認時にウォレットの生成と主催者の登録、および登録完了メールが主催者に送信され、承認一覧画面が表示される
※主催者が個人の場合、ファンとしてのウォレットも生成できるが、システムでは制御しない。つまり、2つのウォレットを持つことができる。 | False | True | True | 有り
36 | 管理者サイト | 主催者管理 | ①主催者管理画面にアクセスし、主催者一覧を表示する
②管理者は出品しているNFTがない主催者の情報を編集（削除、ブロック）し、主催者に変更通知メール、主催者をフォローしているファンに通知メールがそれぞれ送信され、主催者一覧を表示する
主催者のブロックとは、ログインを不可にするかつ出品しているNFTを非公開にすること。
※主催者が倒産した場合、主催者のNFTを管理者に移行する。 | True | True | True | 有り
37 | 管理者サイト | 演目管理 | ①主催者管理画面にアクセスし、演目一覧を表示する
②管理者は出品しているNFTがない演目を編集（削除、非公開）する場合、演目の編集後、主催者に変更通知メール、主催者をフォローしているファンに通知メールがそれぞれ送信され、演目一覧を表示する
演目の非公開をした場合、ファンは該当演目が閲覧不可となり、出品しているNFTも非公開となる。 | True | True | True | 有り
38 | 管理者サイト | アイテム管理 | ①主催者管理画面にアクセスし、アイテム一覧を表示する
②管理者はアイテムを非公開にする場合、任意のアイテムの編集後、主催者に変更通知メール、主催者をフォローしているファンに通知メールがそれぞれ送信され、アイテム一覧を表示する
アイテムの非公開はファンが該当アイテムを閲覧・購入できない状態にし、購入済の場合は、返金対応フローに進む。 | True | True | True | 有り
39 | 管理者サイト | 返金対応 | 返金対応 | https://drive.google.com/drive/folders/1OQo5ImiKu1qsQgw2vvpTHaPuA5ervlDF | True | False | True | 有り
40 | 管理者サイト | お知らせ管理 | お知らせ管理 | ①お知らせ管理画面から、お知らせ一覧を表示する。
②新規お知らせの登録、既存お知らせの編集（更新・削除）を行い、完了するとお知らせ一覧画面を表示する。
③お知らせは表示期間を設定でき、作成者、更新者、日時などの操作履歴も残すこと。 | False | False | True | 有り
41 | 管理者サイト | 問合せ管理 | 問合せ管理 | ①主催者もしくはファンからの問合せが来た場合、メールとお知らせで受信する
②回答を記入し、主催者もしくはファンに送る | False | False | True | 無し
42 | 管理者サイト | アラート管理 | アラート管理 | ①主催者やファンがアイテムを登録した時に、管理者にアラートを送信する条件を設定する。(価格や個数など) | False | False | True | 無し
43 | 管理者サイト | 共通 | 操作履歴閲覧 | ①各管理機能の詳細画面で操作履歴(作成日、作成者、更新日、更新者、更新内容)を表示する。 | False | False | True | 無し
44 | 管理者サイト | 共通 | メール | ファンや主催者へのメールは、
以下の分類でメールアドレスを分ける

1. 運用に関わる重要なメール
　- フォローしている主催者の削除、ブロック
　- 返金の対応
　- システムメンテナンス
2. 問い合わせのやりとり
3. ニュースレター

※上記の1と2の場合に、Gmailのプロモーションボックスのようなフォルダに自動で振り分けられないように対応が必要。 | False | False | True | 無し
【その他条件】
ユーザサイトはレスポンシブデザインに対応する
管理者サイトはホーム画面のみレスポンシブ対応とする。
ブロックチェーンに刻まれるデータを登録する場合は、確認画面を用意する。
各種操作完了時に完了画面は不要。ポップアップで完了したことを表示する。
## Sheet: 画面一覧
No. | 区分 | 機能名 | 画面名 | 画面詳細
1 | ユーザーサイト | サインアップ(ファン) | サインアップ(ファン) | ファンがユーザ情報を入力し、登録する画面。
2 | ユーザーサイト | SMS入力 | 本人確認のために送られてきたPINコードを入力する画面。
3 | ユーザーサイト | サインアップ(主催者) | サインアップ(主催者) | 主催者がユーザ情報を入力し、登録する画面。
各種証明書、活動の実績ファイルをアップロードすることができる。
主催者内容が差し戻しされた場合も、ここから修正内容を入力する。
4 | ユーザーサイト | ログイン | ユーザログイン | ユーザ(ファン、主催者)がサインアップで登録したメールアドレスとパスワードを入力し、ログインする画面。
パスワードリセットのリンクを配置する。
5 | ユーザーサイト | パスワードリセット | パスワードリセット本人確認 | ログイン前にユーザーがパスワードリセットを開始できる画面。
本人確認情報を入力し、パスワードリセットメールを送信する。
6 | ユーザーサイト | パスワードリセットメール送信完了 | パスワードリセットメールの送信が完了した時に表示される画面
7 | ユーザーサイト | パスワードリセット | 受信したパスワードリセットメールのリンクから遷移する画面。
新規パスワードを設定する。
8 | ユーザーサイト | パスワードリセット完了画面 | 新規パスワードの登録が完了したときに表示される画面。
9 | ユーザーサイト | mint体験 | mint体験画面 | 初ログインの時に表示されるmint体験ができる画面。
自分のアバターにキーワードを入力でき、アバターが生成され、生成された選択肢から1つアバターを選択できる。
10 | ユーザーサイト | アイテムmint | アイテムmint | mintするアイテムの情報を入力する画面。
11 | ユーザーサイト | mint内容確認 | mintするアイテムの入力内容を確認する画面。
12 | ユーザーサイト | mint購入 | mint購入 | ファンがmintしたアイテムを購入する画面。
13 | ユーザーサイト | パスワード変更 | パスワード変更 | ログイン後にユーザーがパスワードを変更できる画面。
旧・新パスワードを入力して新規パスワードを設定する。
14 | ユーザーサイト | プロフィール編集(ファン) | プロフィール（ファン） | ファンのプロフィールを表示する画面。
プロフィールの情報が閲覧でき、編集ボタンもある。
プロフィール編集完了時もこの画面が表示される。
15 | ユーザーサイト | プロフィール編集（ファン） | ファンが自分のプロフィールを編集できる画面。
電話番号、メールアドレス（ログインID）、ニックネームが変更でき、電話番号を変更する場合は電話番号認証が行われる。
16 | ユーザーサイト | SMS入力 | No.2と同様
17 | ユーザーサイト | プロフィール編集(主催者) | プロフィール（主催者） | 主催者のプロフィールを表示する画面。
プロフィールの情報が閲覧でき、編集ボタンもある。
プロフィール編集完了時もこの画面が表示される。
18 | ユーザーサイト | プロフィール編集（主催者） | 主催者が自分のプロフィールを編集できる画面。
書類で証明している内容を変更する場合は、再度書類をアップロードする。
19 | ユーザーサイト | 退会(ファン) | 退会（ファン） | ファンが退会する画面。
所有NFTを残すか、管理者に寄付譲渡するか選択できる。
20 | ユーザーサイト | 退会(主催者) | 退会（主催者） | 主催者が退会する画面。
出品中のNFTがある場合、退会不可メッセージが表示される。
退会時にウォレットや以前の履歴を復元できない警告が表示される。
21 | ユーザーサイト | 退会(ファン)/(主催者) | 退会完了 | 退会完了を表示する画面。
22 | ユーザーサイト | 演目登録 | 演目登録 | 演目の情報を入力し、登録する画面。
23 | ユーザーサイト | 演目閲覧 | 演目一覧 | 演目一覧を表示する画面。
演目の登録・編集完了後もこの画面が表示される。
24 | ユーザーサイト | 演目閲覧 | 演目詳細 | 演目の詳細および、アイテム登録への遷移ができる画面。
演目の削除ができる画面。
25 | ユーザーサイト | 演目編集 | 演目編集 | 主催者が自分で作成した演目の編集ができる画面。
26 | ユーザーサイト | 演目編集 | 運営問い合わせ | 演目の公開日以降に削除/編集をする場合、運営に問い合わせをする画面。
27 | ユーザーサイト | アイテム閲覧 | アイテム一覧 | アイテム一覧を表示する画面。
アイテムが登録・編集・削除されるとこちらにも反映される。
28 | ユーザーサイト | アイテム閲覧 | アイテム詳細 | 任意のアイテムの詳細の情報を閲覧できる画面。
この画面から、アイテムの公開、非公開、削除、発送の際の追跡情報の入力、アイテムの受領通知ができる。
29 | ユーザーサイト | アイテム登録 | アイテム登録 | 新しいアイテムを登録する画面。
有形・無形のアイテムの入力や、公開非公開が選択可能
30 | ユーザーサイト | アイテム登録 | アイテム登録確認 | アイテム登録時に入力した内容を確認する画面
31 | ユーザーサイト | アイテム購入 | アイテム購入 | ファンがアイテムを購入する画面。
32 | ユーザーサイト | アイテム購入 | アイテム購入履歴一覧 | アイテムの購入履歴一覧を表示する画面。
任意の列をタップすると、購入詳細に遷移する。
33 | ユーザーサイト | アイテム購入 | アイテム購入内容詳細 | アイテムの購入詳細を確認する画面。
アイテムの受領や購入内容を確認できる。
34 | ユーザーサイト | 演目・アイテム検索 | 演目・アイテム検索 | 予算、アイテム名、作品名、主催者名、アイテム/演目などでフィルタができる演目とアイテムの検索画面
検索後、該当の演目もしくはアイテムが返却される。
一覧の該当項目をクリックすると、アイテム詳細もしくは演目詳細に遷移する。
35 | ユーザーサイト | リクエスト | リクエスト申請 | 主催者に対するリクエストをファンが送信できる画面。
36 | ユーザーサイト | リクエスト申請一覧 | ファンがリクエストした申請の一覧を確認できる画面。
37 | ユーザーサイト | リクエスト依頼確認 | メールで送られてきたファンのリクエスト依頼を主催者が確認できる画面。
承認、拒否などが可能。
38 | ユーザーサイト | リクエスト一覧 | 主催者がファンからのリクエスト一覧を確認できる画面。タップすると、個別のリクエストを閲覧できる。
39 | ユーザーサイト | お知らせ閲覧 | お知らせ一覧（ファン） | ファンがお知らせ一覧を表示する画面。
システム上のお知らせ、新着作品のお知らせ、アイテム売買のお知らせを閲覧できる。
40 | ユーザーサイト | お知らせ一覧（主催者） | 主催者がお知らせ一覧を表示する画面。
システム上のお知らせ、新着作品のお知らせ、アイテム売買のお知らせを閲覧できる。
41 | ユーザーサイト | お知らせ詳細 | お知らせの詳細情報を表示する画面。
42 | ユーザーサイト | 静的画面 | ソーシアターとは？ | ソーシアターについて説明用画面
43 | ユーザーサイト | ブロックチェーンとは？ | ブロックチェーンについて説明用画面
44 | ユーザーサイト | NFTとは？ | NFTについて説明用画面
ユーザーサイト | 使い方マニュアル（主催者） | 主催者向けの使い方マニュアルを説明する画面
ユーザーサイト | 使い方マニュアル（ファン） | ファン向けの使い方マニュアルを説明する画面
47 | ユーザーサイト | 人気の作品 | 人気の作品を列挙する画面。
48 | ユーザーサイト | FAQ（主催者） | 主催者向けのよくある質問を列挙する画面
ユーザーサイト | FAQ（ファン） | ファン向けのよくある質問を列挙する画面
50 | ユーザーサイト | 個人情報保護方針 | 個人情報保護についての説明用画面
51 | ユーザーサイト | サイトマップ | サイトマップを表示する画面
52 | ユーザーサイト | 利用規約 | 利用規約を表示する画面
53 | ユーザーサイト | 問合せ | 新規お問い合わせ | 問合せ内容を新規に入力する画面
54 | ユーザーサイト | お問い合わせ一覧 | これまでの問い合わせの一覧を表示する画面
55 | ユーザーサイト | お問い合わせ詳細 | 管理者とのやりとりを閲覧する画面。管理者への返信を入力できる。
56 | ユーザーサイト | 主催者メンバー管理 | 主催者メンバー一覧 | 主催者のメンバー(公演ごとの管理者)を管理する画面。
新規主催者メンバーを追加、編集する画面に遷移することができる。
追加、編集後は、この画面に反映される。
57 | ユーザーサイト | 主催者メンバー詳細 | 該当主催者メンバーの詳細の情報を表示する。
ここから主催者メンバーの編集に遷移できる。
58 | ユーザーサイト | 主催者メンバー登録 | 新規主催者メンバーを追加する画面。
59 | ユーザーサイト | 主催者メンバー編集 | 主催者メンバー詳細情報を表示し編集できる画面。
既存主催者メンバーの情報を編集（更新、削除）することができる。
60 | 管理者サイト | ログイン | 管理者ログイン | 管理者がログインする画面
61 | 管理者サイト | 管理ホーム画面 | 管理者の管理ホーム画面。
主催者の承認や返金の対応、問い合わせなど管理者が対応をしないといけないものを表示する。
62 | 管理者サイト | パスワードリセット | パスワードリセット本人確認 | ログイン前にユーザーがパスワードリセットを開始できる画面。
本人確認情報を入力し、パスワードリセットメールを送信する。
63 | 管理者サイト | パスワードリセットメール送信完了 | パスワードリセットメールの送信が完了した時に表示される画面
64 | 管理者サイト | パスワードリセット | 受信したパスワードリセットメールのリンクから遷移する画面。
新規パスワードを設定する。
65 | 管理者サイト | パスワードリセット完了画面 | 新規パスワードの登録が完了したときに表示される画面。
66 | 管理者サイト | パスワード変更 | パスワード変更 | ログイン後にユーザーがパスワードを変更できる画面。
旧・新パスワードを入力して新規パスワードを設定する。
67 | 管理者サイト | ユーザ管理 | ユーザ一覧 | ユーザー一覧を表示する画面。
ユーザー名をクリックすることで、ユーザー詳細情報を閲覧することができる。
68 | 管理者サイト | ユーザ詳細 | 該当ユーザの詳細のユーザ情報を表示する。
ここからユーザの編集に遷移できる。
69 | 管理者サイト | ユーザ編集 | ユーザー情報を閲覧し編集できる画面。
ユーザーの権限を変更・削除・ブロックすることができる。
70 | 管理者サイト | 管理者アカウント管理 | 管理者アカウント一覧 | 管理者アカウントを管理する画面。
新規管理者アカウントを追加、編集する画面に遷移することができる。
追加、編集後は、この画面に反映される。
71 | 管理者サイト | 管理者アカウント詳細 | 該当管理者アカウントの詳細の情報を表示する。
ここから管理者アカウントの編集に遷移できる。
72 | 管理者サイト | 管理者アカウント登録 | 新規管理者アカウントを追加する画面。
73 | 管理者サイト | 管理者アカウント編集 | 管理者アカウント詳細情報を表示し編集できる画面。
既存管理者アカウントの情報を編集（更新、削除）することができる。
74 | 管理者サイト | 主催者登録承認 | 主催者承認一覧 | 主催者登録承認一覧を表示する画面
任意の主催者をクリックすると、承認詳細が表示される。
75 | 管理者サイト | 主催者承認詳細 | 主催者登録承認を行う画面。（承認・否認）
主催者を否認する場合、差し戻しコメントを入力する。
76 | 管理者サイト | 主催者管理 | 主催者一覧 | 主催者を管理する画面。
77 | 管理者サイト | 主催者詳細 | 該当主催者の詳細情報を表示する。
主催者を編集（削除、ブロック、権限変更）する画面に遷移することができる。
78 | 管理者サイト | 主催者編集 | 主催者を編集（削除、ブロック、権限変更）する画面。
79 | 管理者サイト | 演目管理 | 演目一覧 | 管理者が演目一覧を確認できる画面。
80 | 管理者サイト | 演目詳細 | 管理者が任意の演目の詳細を確認できる画面。
81 | 管理者サイト | 演目編集 | 演目を編集（削除、非公開）する画面。
82 | 管理者サイト | アイテム管理 | アイテム一覧 | 管理者がアイテム一覧を確認できる画面。
83 | 管理者サイト | アイテム詳細 | 管理者が該当アイテムの詳細を確認できる画面。
NFT移管完了メールのリンクから該当のアイテムの詳細（この画面）にも遷移する。
返金対応にも遷移可。
84 | 管理者サイト | アイテム編集 | 任意のアイテムを編集し、非公開・公開できる。
85 | 管理者サイト | 返金対応 | 返金対応一覧 | 返金対応の一覧を表示する画面。
86 | 管理者サイト | 移管要請 | ファンのNFTを移管要請できる画面。
87 | 管理者サイト | 返金対応 | ファンがNFTを移管できる画面。
ファンが移管を実行後のメールから表示する。
88 | 管理者サイト | お知らせ管理 | お知らせ一覧 | お知らせ一覧を表示する画面
89 | 管理者サイト | お知らせ詳細 | お知らせの詳細情報を表示する画面。
既存のお知らせの編集（更新・削除）ができる画面に遷移できる。
90 | 管理者サイト | お知らせ編集 | 既存のお知らせを編集(更新・削除）する画面。
91 | 管理者サイト | お知らせ登録 | 新規お知らせを登録する画面。
お知らせの表示期間を設定できる。
92 | 管理者サイト | アラート管理 | アラート一覧 | アラートの一覧を表示する画面。
優先度の高いものから表示する。
93 | 管理者サイト | アラート詳細 | アラートの詳細情報を表示する画面。
アラートの編集（更新・削除）ができる画面に遷移できる。
94 | 管理者サイト | アラート編集 | 既存のアラートを編集(更新・削除）する画面。
95 | 管理者サイト | アラート登録 | 新規アラートを登録する画面。
96 | 管理者サイト | 問合せ管理 | 問合せ一覧 | これまでの問い合わせの一覧を表示する画面
97 | 管理者サイト | 問合せ詳細 | 主催者やファンとのやりとりを閲覧する画面。問合せへの回答を入力できる。
## Sheet: API一覧
No. | 区分 | 機能名 | API名 | API詳細
1 | ユーザーサイト | サインアップ（ファン） | ファンユーザー仮登録 | ファンユーザー情報をDBに仮登録する。
SMS認証コードを発行する。
2 | ユーザーサイト | SMS認証 | 入力されたSMS認証コードが一致しているか検証する。
3 | ユーザーサイト | ファンユーザ情報登録 | ユーザ情報をDBに登録する。
(mint体験前のステータス)
Solanaのウォレット生成APIとCP発行APIを呼び出す。
登録完了メールをファンに送信する。
4 | ユーザーサイト | サインアップ(主催者) | 主催者ユーザ情報仮登録 | ユーザ情報をDBに仮登録する。
仮登録完了メールを主催者に送信する。
承認依頼メールを管理者に送信する。
5 | ユーザーサイト | 主催者申請情報取得 | 主催者の申請情報を取得する。
※管理者サイトと同じAPI
6 | ユーザーサイト | 仮主催者ユーザー情報更新 | 管理者からの差戻しに対応した内容でDBに仮登録しているユーザ情報を更新する。
仮登録完了メールを主催者に送信する。
承認依頼メールを管理者に送信する。
7 | ユーザーサイト | ログイン | ユーザ認証 | ログイン情報を認証する。
Solanaのウォレット取得APIを呼び出す。
ユーザがファンの場合は、CP発行APIを呼び出す。
8 | ユーザーサイト | パスワードリセット | パスワードリセット本人確認 | パスワードリセットする際に、本人確認を行う。
パスワードリセットリンクのあるメールをユーザに送信する。
9 | ユーザーサイト | パスワードリセット | パスワードリセット用の識別子が有効か確認する。
新パスワードに変更する。
10 | ユーザーサイト | mint体験 | アバター生成 | 入力されたアバターキーワードから、3つアバターを生成する。
11 | ユーザーサイト | アバター登録 | ユーザが選択したアバターを登録する。
Solanaのmint実行APIを呼び出す。
ユーザ情報のステータスを正式登録に更新する。
12 | ユーザーサイト | アイテムmint | アイテムmint | ユーザが入力した内容をmintする。
Solanaのmint実行APIを呼び出す。
13 | ユーザーサイト | mint購入 | mint購入 | ユーザがmintしたアイテムを購入する。
SolanaのNFT移行APIを呼び出す。
14 | ユーザーサイト | パスワード変更 | パスワード変更 | パスワード変更の場合、入力された旧パスワードの確認を先に行う。
新パスワードに変更する。
15 | ユーザーサイト | プロフィール編集(ファン) | ファンユーザ情報取得 | ファンのユーザの情報を取得する。
16 | ユーザーサイト | ファンユーザ情報更新 | ユーザ情報を更新する。
編集完了メールをファンに送信する。
17 | ユーザーサイト | SMS認証 | No.2と同じAPI
18 | ユーザーサイト | プロフィール編集(主催者) | 主催者ユーザ情報取得 | 主催者のユーザの情報を取得する。
19 | ユーザーサイト | 主催者ユーザ情報更新 | ユーザ情報を更新する。
書類で証明している内容を変更する場合は、管理者に承認依頼メールが先に送信される。
20 | ユーザーサイト | 退会（ファン） | ファンユーザ削除 | ファンユーザを削除する。
ファンがNFTを管理者に譲渡する選択をした場合、Solana側のNFT譲渡APIを呼び出す。
21 | ユーザーサイト | 退会（主催者） | 出品件数取得 | 主催者が出品しているNFTの件数を取得する。
22 | ユーザーサイト | 主催者ユーザ削除 | 主催者ユーザと履歴を削除する。
23 | ユーザーサイト | 演目閲覧 | 演目一覧取得 | 演目の情報をDBから取得する。
公開日以降の場合、一覧に表示する。
24 | ユーザーサイト | 演目詳細取得 | 選択された演目の詳細情報を取得する。
25 | ユーザーサイト | 演目登録 | 演目登録 | 新しい演目を登録する。
26 | ユーザーサイト | 演目編集 | 演目情報更新 | 演目情報を更新する。
27 | ユーザーサイト | 演目削除 | 演目情報更新 | 演目情報を更新する。
28 | ユーザーサイト | アイテム閲覧 | アイテム一覧取得 | 選択した演目に紐づくアイテム一覧を取得する。
29 | ユーザーサイト | アイテム詳細取得 | 選択されたアイテムの詳細情報を取得する。
30 | ユーザーサイト | アイテム登録 | アイテム登録 | 有形・無形、公開・非公開などのアイテム情報を登録する。
mintが必要な場合、Solana側のmint実行APIを呼び出す。
主催者と公演をフォローしているファンに新着アイテムお知らせメールを送信する。
31 | ユーザーサイト | アイテム削除 | アイテム削除 | アイテムを論理削除する。
もしすでにユーザにアイテムが購入されているなら、ファンにアイテム削除メールを送信する。
購入されていない場合は、NFTに無価値フラグを追加し、アイテム一覧を表示する。
32 | ユーザーサイト | アイテム購入 | アイテム購入 | 該当のアイテムのロックを行い、他から購入できないようにする。
決済処理を実行する。
Solana側のNFT移行APIを呼び出す。
アイテム情報を更新する。
アイテム購入完了メールをファンに送信する。
33 | ユーザーサイト | アイテム清算 | 公演終了後でファンがアイテムを購入した場合、対象アイテムに対して決済処理を実行し、ファンにお金を返却する。
清算完了メールをファンに送信する。
34 | ユーザーサイト | 演目・アイテム検索 | アイテム検索 | 予算、アイテム名、作品名、主催者名の情報から該当アイテムの検索結果を返却する。
35 | ユーザーサイト | アイテム発送 | アイテム発送 | アイテム情報を更新し、ファンに発送完了メールを送信する。
36 | ユーザーサイト | アイテム受領 | アイテム情報を更新し、決済を実行する。
主催者にお金と決済完了メールを送信する。
37 | ユーザーサイト | リクエスト | リクエスト申請 | ファンからのリクエスト情報を登録する。
主催者にリクエスト内容のメールを送信する。
38 | ユーザーサイト | リクエスト | リクエスト承認 | ファンからのリクエストに従い、主催者が入力した出品情報を登録する。（アイテムの登録）
リクエスト承諾メールをファンに送信する。
リクエストのステータスを承認に変更する。
39 | ユーザーサイト | リクエスト | リクエスト拒否 | ファンにリクエスト拒否メールを送信する。
リクエストのステータスを拒否に変更する。
40 | ユーザーサイト | リクエスト | リクエスト一覧取得 | ファンと主催者が閲覧するリクエストの一覧情報を返却する。
41 | ユーザーサイト | リクエスト | リクエスト詳細情報取得 | 選択されたリクエスト情報の詳細情報を返却する。
42 | ユーザーサイト | お知らせ閲覧 | ファンのお知らせ一覧取得 | 該当ファンのシステム上のお知らせ、新着作品のお知らせ、アイテム売買のお知らせを返却する。
43 | ユーザーサイト | お知らせ閲覧 | 主催者のお知らせ一覧取得 | 該当主催者のシステム上のお知らせ、新着作品のお知らせ、アイテム売買のお知らせを返却する。
44 | ユーザーサイト | お知らせ閲覧 | お知らせ詳細取得 | お知らせの詳細情報を返却する。
45 | ユーザーサイト | 問合せ | 問合せ登録 | 問合せ内容を登録する。
46 | ユーザーサイト | 問合せ一覧取得 | これまでの問い合わせの一覧を取得する
47 | ユーザーサイト | 問合せ詳細 | 問合せの内容、管理者とのやりとりを取得する
48 | ユーザーサイト | 問合せ更新 | 管理者からの回答への返信を登録する
49 | 管理者サイト | ログイン | 管理者ユーザ認証 | ログイン情報を認証する。
50 | 管理者サイト | パスワードリセット | パスワードリセット本人確認 | パスワードリセットする際に、本人確認を行う。
パスワードリセットリンクのあるメールをユーザに送信する。
51 | 管理者サイト | パスワードリセット | パスワードリセット用の識別子が有効か確認する。
新パスワードに変更する。
52 | 管理者サイト | ユーザ管理 | ユーザ情報取得 | ユーザ情報を取得する。
53 | 管理者サイト | ユーザ情報削除 | ユーザ情報を削除する。
54 | 管理者サイト | ユーザ情報編集 | ユーザ情報を編集（更新、ブロックなど）する。
55 | 管理者サイト | 管理者アカウント管理 | 管理者アカウント情報取得 | 管理者アカウント情報を取得する。
56 | 管理者サイト | 新規管理者アカウント登録 | 新規管理者アカウント情報を登録する。
57 | 管理者サイト | 管理者アカウント情報編集 | 既存管理者アカウント情報を編集する。
58 | 管理者サイト | 管理者アカウント情報削除 | 既存管理者アカウント情報を削除する。
59 | 管理者サイト | 主催者登録承認 | 主催者承認一覧情報取得 | 承認が必要な主催者の一覧を取得する。
60 | 管理者サイト | 主催者申請情報取得 | 主催者の申請情報を取得する。
※ユーザーサイトと同じAPI
61 | 管理者サイト | 主催者承認 | 主催者の登録を承認または否認する。
仮登録ユーザーの承認ステータスを更新する。
［承認の場合］
Solana側のウォレット生成APIを呼び出す。
登録完了メールを主催者に送信する。
[否認の場合]
管理者の差し戻しコメントを主催者にメールで送信する。
62 | 管理者サイト | 主催者管理 | 主催者一覧取得 | 主催者の一覧を取得する。
63 | 管理者サイト | 主催者詳細情報取得 | 主催者の詳細情報を取得する。
64 | 管理者サイト | 主催者削除 | 主催者を削除する。
変更内容を主催者に、主催者をフォローしているファンに通知メールを送信する。
65 | 管理者サイト | 主催者編集 | 主催者を編集（ブロック、権限変更）する。
変更内容を主催者に、主催者をフォローしているファンに通知メールを送信する。
66 | 管理者サイト | 演目管理 | 演目一覧取得 | 演目の一覧を取得する。
67 | 管理者サイト | 演目詳細情報取得 | 演目の詳細情報を取得する。
68 | 管理者サイト | 演目削除 | 演目を削除する。
主催者とフォローしているファンにメールを送信。
69 | 管理者サイト | 演目編集 | 演目を編集する。
主催者とフォローしているファンにメールを送信。
70 | 管理者サイト | アイテム管理 | アイテム一覧取得 | アイテムの一覧を取得する。
71 | 管理者サイト | アイテム詳細情報取得 | アイテムの詳細情報を取得する。
72 | 管理者サイト | アイテム削除 | アイテムを削除する。
主催者とフォローしているファンにメールを送信。
73 | 管理者サイト | アイテム編集 | アイテムを削除する。
主催者とフォローしているファンにメールを送信。
74 | 管理者サイト | 返金対応 | 返金対応一覧取得 | 返金対応が必要な一覧の情報を取得する。
75 | 管理者サイト | NFT移管申請 | 該当のNFTの情報を更新する。
移管申請メールをファンに送信する。
76 | 管理者サイト | NFT移管 | Solana側でNFT情報を更新する。
移管完了メールを管理者に送信する。
77 | 管理者サイト | 返金 | 決済処理を行い、管理者からファンに送金する。
ファンに返金完了メールを送信する。
78 | 管理者サイト | お知らせ管理 | お知らせ一覧取得 | お知らせの一覧を取得する。
79 | 管理者サイト | お知らせ詳細情報取得 | お知らせの詳細情報を取得する。
80 | 管理者サイト | お知らせ編集 | お知らせ情報を編集する。
81 | 管理者サイト | お知らせ削除 | お知らせ情報を削除する。
82 | 管理者サイト | お知らせ登録 | 新規お知らせを登録する。
83 | 管理者サイト | 問合せ管理 | 回答登録 | 問合せ内容への回答を登録する。
84 | 管理者サイト | 問合せ一覧取得 | これまでの問い合わせの一覧を取得する
85 | 管理者サイト | 問合せ詳細 | 問合せの内容、主催者やファンとのやりとりを取得する
## Sheet: フロー一覧
フロー図は以下の別紙を参照ください。
ユーザサイトの機能のフロー： | 02_ユーザサイトフロー.drawio
管理サイトの機能のフロー： | 03_管理者サイトフロー.drawio
## Sheet: バッチ処理一覧
No. | 区分 | 機能名 | バッチ名 | バッチ詳細
1 | ユーザーサイト | 演目管理 | 演目公開 | 演目に登録されている公開日をチェックし、公開日に到達した演目を公開する。
演目に登録されているアイテムは公開のアイテムのみ。
2 | ユーザーサイト | 無形NFT清算 | アイテム清算 | 公演終了後、ファンが購入した無形のNFTの代金を主催者に送金する。
3 | 管理者サイト | お知らせ管理 | お知らせ公開 | お知らせの表示期間をチェックし、表示日に到達したお知らせを表示し、ファンと主催者に通知する。
また、表示日を過ぎたお知らせは非表示にする。
## Sheet: 画面遷移図
画面遷移図は以下の別紙を参照ください。
04_画面遷移図.drawio
## Sheet: 残課題一覧
No. | 機能名 | 機能概要 | 今回対応しない理由 | 対応フェーズ | 今回のスコープ | スコープ対象外の理由
1 | アイテムバージョンアップ | 主催者がmintしたアイテムに情報を加えたり、新しいNFTとしてバージョンアップする機能。 | Atonoyさんによる技術的支援が必要ため。 | フェーズ1 | 対象外 | 見積の前提の機能一覧に含まれていないため
2 | アイテム移転 | ファンが主催者から購入したNFTと別のファンに売る機能。 | フェーズ2の対象機能のため。
フェーズ1は現金を介しない売買のみファンは実施可能とする。 | フェーズ2 | 対象外 | フェーズ2の機能のため
3 | NFT無効化 | 主催者が誤ってアイテムを発行した場合や、主催者が倒産し、取引中止になった場合に、NFTを無価値にする機能。 | Atonoyさんによる技術的支援が必要ため。
NFTを無価値にするにはどのような方法があるか確認が必要。
所有者の同意なしに無価値フラグを立てることができるのか確認が必要。 | フェーズ1 | 対象外 | 見積の前提の機能一覧に含まれていないため
4 | ギャラリー | 自身の所有するNFT一覧をギャラリーとして他人に公開する機能
アイテム所有者 / 作品別 / アイテム別でフィルタリング機能 | conSept様によるサービス設計が必要なため。
※機能としてはフェーズ1で対応する。 | フェーズ1 | 対象外 | 元々はフェーズ2の機能だったため、見積もりに含まれていないため。
5 | オーナーズラウンジ | 特定のNFTを所持しているバイヤーにのみ権限が付与され、使用できる機能。 | conSept様によるサービス設計が必要なため。
※機能としてはフェーズ1で対応する。 | フェーズ1 | 対象外 | 元々はフェーズ2の機能だったため、見積もりに含まれていないため。
6 | Solana連携 | Solanaと連携し、ウォレットやNFTに対して操作を行う。 | フローに連携する箇所の想定は記載。
その内容が正しいのか、他に考慮すべき点がないのかはAtonoyさんによる技術的支援が必要ため。 | フェーズ1 | 対象外 | Solanaとの連携部分は見積もりに含まれていないため
7 | 主催者用FAQ登録 | 主催者がファン向けにFAQを登録する機能。 | どのように使うか決まっていないため | フェーズ1 | 対象外 | 見積の前提の機能一覧に含まれていないため
2以外は2024年5月までに対応
見積もり対象外


---
**Nguồn:** `Udemy\Udemy - 7-31 - Kỹ thuật và thưc hành dịch cho IT Comtor, BrSE\Tài liệu thực hành dịch IT Comtor\[11_2023] Weekly Report.xlsx`

## Sheet: 01082024
週次報告
Weekly Meeting
日時／Time: 08-Jan 2025 / 16:00 JPT
出席者／ATTENDEES
Otake 側: 大竹さん
Scuti 側: GiangPT, Akai Taishi, NgaNTQ
Meet Link: https://meet.google.com/rhy-iqmt-ftf
【全体的な進捗】Overview
■ CR 13 軽微な改修内容のマスタースケジュール：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898b 
　・No 1, 2 ,3, 4, 5：完了済み
    ・No 6：完了済み
    ・No 7, 8：保留
    ・No 9：テスト中
■ CR 14：基本設計書の作成中
■ CR 15：実装中
■ 優先度のファイル：https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122 
----------------------------------------------------------
Tổng quan: 
CR 13: Mix of many small CR
    No 1, 2 ,3, 4, 5: Done.
    No 6: Done
    No 7, 8: Pending
    No 9: Testing
    Master Schedule: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2085833898#gid=2085833898

CR 14: Đang tạo Basic Design.
CR 15: Coding
Độ ưu tiên:  https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?pli=1&gid=888344122#gid=888344122&range=86:122
１．今週の作業内容（25-Dec-> 07-Jan）／Report task of this week (25-Dec-> 07-Jan）
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] 開発者が実装
[No 9] [Dev] Implement | Done | 2024-12-26 00:00:00
2.0 | [No 9] Scuti 側でテストシートの作成
[No 9] [Test] [Scuti] Write Testcase | Done | 2024-12-26 00:00:00
3.0 | [No 9] Otake 様側で開発環境でテスト
[No 9] [Test] [Otake] Run test at Development environment | Inprogess | 2025-01-08 00:00:00
4.0 | [No 9] Scuti 側で不良修正
[No 9] [Dev] [Scuti] Fix bug | Inprogess | 2025-01-09 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | マスタースケジュールの作成
Create master Schedule | Done | 2024-12-25 00:00:00 | Link: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit?gid=2003904260#gid=2003904260
2.0 | Scuti 側で実装
[Dev] [Scuti] Implement | Inprogess | 2024-01-17 00:00:00
3.0 | Scuti 側でテストシートの作成
[Test] [Scuti] Write Testcase | Done | 2024-01-03 00:00:00 | Link: https://docs.google.com/spreadsheets/d/1i0zaYWbu9-iu0WB2sU8ogH8y4fOQSnCGzgLZN34qOrw/edit?gid=0#gid=0
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Done | 2024-01-07 00:00:00 | 一旦完了しているが、もし追加であれば確認します。
Tạm thời done, nhưng nếu có gì thì phân tích thêm
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-01-09 00:00:00
２．次の予定作業／Plan next week
No | タスク名
Task | ステータス
Status | 締め切り
Deadline | 備考
CR13 軽微な改修内容
CR 13 Mix of many small CR | Inprogess | - | PIC: Otake & Scuti
1.0 | [No 9] Otake 様側で開発環境でテスト
[No 9] [Test] [Otake] Run test at Development environment | Inprogess | 2025-01-08 00:00:00
2.0 | [No 9] Scuti 側で不良修正
[No 9] [Dev] [Scuti] Fix bug | Inprogess | 2025-01-09 00:00:00
3.0 | [No 9] Scuti 側でステージング環境へ反映
[No 9] [Dev] [Scuti] [STG] Deploy | Todo | 2025-01-10 00:00:00
4.0 | [No 9] Otake 側でステージング環境でUATテスト
[No 9] [Test] [Otake] Test UAT at STG | Todo | 2025-01-10 00:00:00
3.0 | [No 9] Scuti 側でUATの不良修正
[No 9] [Dev] [Scuti] Fix bug UAT | Todo | 2025-01-13 00:00:00
4.0 | [No 9] 本番環境へ反映
[No 9] [Dev] [Scuti] [Production] Deploy | Todo | 2025-01-15 00:00:00
CR 15 軽微な修正
CR15 Small CRs | Inprogess | - | PIC: Otake & Scuti
1.0 | Scuti 側で実装
[Dev] [Scuti] Implement | Inprogess | 2024-01-17 00:00:00
3.0 | テスト項目を藤原さんに共有、藤原さんと確認対応
Trao đổi về testcase với khách hàng nếu khách hàng có câu hỏi | Todo | 2025-01-15 00:00:00 | Link: https://docs.google.com/spreadsheets/d/1i0zaYWbu9-iu0WB2sU8ogH8y4fOQSnCGzgLZN34qOrw/edit?gid=0#gid=0
CR 14 完全ロック
CR14  add function to lock | Inprogess | - | PIC: Otake & Taishi
1.0 | Create basic design
 - Check and analyse spec
   仕様の確認と分析 | Done | 2024-01-07 00:00:00 | 一旦完了しているが、もし追加であれば確認します。
Tạm thời done, nhưng nếu có gì thì phân tích thêm
2.0 | Create basic design
-Meeting confirm with Customer
オータケ様側との確認 | Inprogess | 2024-01-09 00:00:00 | 1/10あたりに佐々木さんと基本設計書のMTG予定です。
Dự kiến là tầm 10/01 MTG với bác Sasaki về BD CR14
3.0 | Create basic design
-Meeting tranfer for Scuti team
Scutiチームに仕様を伝える | Todo | 2025-01-10 00:00:00
4.0 | Update basic design
-Update documents
ドキュメントの更新(あれば) | Todo | 2025-01-14 00:00:00
5.0 | Finish basic design
-Meeting confirm with Customer chốt lần cuối BD
 MTGを行い、基本設計書の完成（あれば） | Todo | 2025-01-15 00:00:00
３．確認・質問／Q&A
Refer: https://docs.google.com/spreadsheets/d/19BRdh8D__3UEnj6qwb-ZIw6dV8QORS-Xoz-xzcZnsQc/edit#gid=2048769806
４．リスク・問題点／Risk/Issue
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=746431598
5．Backlogs task
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=832645045
6．Logtime
Refer: https://docs.google.com/spreadsheets/d/14wlszHEMYINVzGVhyVGquXLNEjHiPbpKicWVOwCYibw/edit#gid=644160768
7. Note
・2025/01/13 日本時間 17時より、弊社では社内イベントが行われる予定となっております。
そのため、17時よりSlackでの連絡は引き続きフォローいたしますが、
優先度が低く緊急でないご連絡は追って返信させていただきます。

・2025/01/13 当日はCR13 No9のUAT不良修正の締め切りであるため、万が一、
不良件数が多く修正しきれない場合は、1/14に変更させていただければと思います。
その後の日程は1/15に本番環境に反映する予定で、この変更によって後の日程への影響はございません。

何卒、ご理解・ご了承いただきますようお願い申し上げます。
――――――――――――――――――――――――――――――
Ngày 01/13/2025 phía Scuti có sự kiện diễn ra từ khoảng 15h ~ hết giờ làm việc (Giờ Việt Nam) Bên mình xin phép tham gia Event vào thời gian đó nên: 
- Chúng tôi vẫn sẽ folow chat trên Slack tuy nhiên những phần liên lạc có độ ưu tiên thấp có thể bị chậm trong khoảng thời gian này. 
- Ngày 01/13/2025 là ngày cuối cùng fix bug UAT của CR 13 No 9, nên nếu trong trường hợp số lượng bug UAT nhiều thì phía Scuti xin phép lùi lịch fix bug UAT sang ngày 01/14/2025 (Lịch này không ảnh hưởng tới lịch tổng thể deploy lên Production của CR 13 No 9 vì lịch deploy Production là 01/15/2024)


---
**Nguồn:** `Udemy\Udemy - 8-29 Kỹ thuật viết mail\Kỹ thuật viết mail chuẩn doanh nghiệp Nhật.pptx`

## Slide 1
Kỹ thuật viết mail chuẩn doanh nghiệp Nhật Bản
## Slide 2
Nội dung khóa học
·         9 nguyên tắc trong cách viết business mail đúng
·         Một số mẫu business mail
·         Check list sau khi viết mail
## Slide 3
9 nguyên tắc cần chú ý khi viết business mail đúng
Để viết đúng business mail, cần nắm được 9 nguyên tắc. Bao gồm:
Địa chỉ người nhận (To, Cc, Bcc)
Tiêu đề (件名)
Tập tin đính kèm
Cách ghi tên người nhận
Lời chào & giới thiệu bản thân
Viết tóm tắt trước, chi tiết sau
Lời kết thúc (結びの挨拶)
Chữ ký (署名)
Quy tắc trả lời & chuyển tiếp (返信・転送)
## Slide 4
① Sử dụng đúng To, Cc, Bcc
Có 3 loại trường địa chỉ: To, Cc, Bcc. Tất cả đều có thể gửi đến đối tượng, nhưng mỗi loại có ý nghĩa và cách hiển thị khác nhau.
To: người nhận chính, người cần phản hồi/xử lý nội dung email. Có thể nhập nhiều địa chỉ.
Cc (Carbon Copy – bản sao): gửi để chia sẻ thông tin, không yêu cầu phản hồi. Người trong To sẽ thấy danh sách Cc.
Bcc (Blind Carbon Copy – bản sao ẩn): gửi mà những người trong To/Cc không biết. Địa chỉ của Bcc sẽ không hiển thị cho To/Cc.
Lưu ý:
Với Bcc dễ xảy ra nhầm lẫn (ví dụ: Bcc nhưng lại nhập vào Cc → lộ thông tin cá nhân).
Vì email cũng là thông tin cá nhân, cần hết sức thận trọng khi dùng Bcc.
## Slide 5
② Đặt tiêu đề cụ thể
Tiêu đề phải rõ ràng, giúp người nhận nhìn qua là hiểu ngay nội dung.
❌ Ví dụ tiêu đề không tốt:
「お願い」(Yêu cầu) → không rõ yêu cầu gì
「ご相談」(Trao đổi) → không rõ trao đổi về việc gì
「ご案内」(Thông báo) → không rõ thông báo về cái gì
⭕ Ví dụ tiêu đề tốt:
お見積もり内容ご確認のお願い Yêu cầu xác nhận nội dung báo giá
お打ち合わせ日程調整のお願い Yêu cầu điều chỉnh lịch họp
新製品発売キャンペーンのご案内 Thông báo chiến dịch ra mắt sản phẩm mới
## Slide 6
③ Lưu ý khi gửi tập tin đính kèm
Kích thước: mỗi công ty có giới hạn dung lượng nhận mail khác nhau. Nếu tổng dung lượng > 2MB, nên xác nhận trước với đối phương.
Định dạng: nếu đối phương không có phần mềm phù hợp, file sẽ không mở được (ví dụ: CAD, video…). Hãy xác nhận trước.
Sai sót thường gặp: quên đính kèm, gửi nhầm file. Trước khi gửi luôn kiểm tra lại để tránh lỗi và rò rỉ thông tin.
## Slide 7
④ Cách ghi tên người nhận (宛名)
Email là phương tiện không nhìn thấy mặt đối phương, nên việc ghi tên đúng & lịch sự rất quan trọng.
Mail gửi ra ngoài công ty: 「会社名＋部署名＋氏名＋様」 Ví dụ:
株式会社〇〇 
営業部 課長 
山田太郎 様
 Không viết 「〇〇社御中 ××様」 (御中 không đi kèm tên người). Tên công ty viết đầy đủ: 「株式会社」 thay vì (株).
Mail nội bộ:「部署名＋氏名＋様」 Có thể dùng 「さん」 nếu thân quen.
Khi dùng Cc: Nếu muốn nhấn mạnh, có thể ghi chú thêm ở dưới bằng ngoặc đơn.
## Slide 8
⑤ Lời chào & giới thiệu bản thân
Ngay sau khi ghi tên người nhận là phần chào hỏi và tự giới thiệu.
Đối tác bên ngoài: いつもお世話になっております。〇〇商事〇〇課の△△です。 Xin cảm ơn sự hỗ trợ thường xuyên. Tôi là △△, phòng 〇〇, công ty 〇〇.
Tùy tình huống:
お忙しいところ失礼いたします。Xin lỗi đã làm phiền lúc bận rộn.
初めてご連絡いたします。Tôi liên hệ lần đầu.
ご連絡いただき、誠にありがとうございます。Xin chân thành cảm ơn vì đã liên hệ.)
Nội bộ công ty: お疲れ様です。〇〇課の△△です。
## Slide 9
⑥ Nêu tóm tắt trước, chi tiết sau
Business mail nên đưa kết luận/tóm tắt trước, sau đó mới giải thích chi tiết.
Nếu vòng vo, đối phương dễ khó chịu.
Nếu rõ ràng từ đầu, người nhận hiểu nhanh và hiệu quả.
👉 Bố cục dễ đọc:
Ngắt dòng sau 20–30 ký tự
Chia đoạn bằng khoảng trắng
Dùng bullet points nếu nhiều thông tin
## Slide 10
⑦ Lời chào kết thúc
Email bắt đầu bằng chào, cũng nên kết thúc bằng chào.
Ví dụ:
何卒よろしくお願い申し上げます。
引き続きどうぞよろしくお願いいたします。
Nếu có yêu cầu:
ご確認よろしくお願いいたします。
お力添えのほど、よろしくお願いいたします。
Nếu muốn thể hiện sự quan tâm:
ご不明な点などございましたらお気軽にご連絡ください。
ご多忙と存じますが、くれぐれもご自愛ください。
## Slide 11
⑧ Luôn kèm chữ ký
Chữ ký gồm:
Công ty会社名
Phòng ban部署名
Họ tên (kèm furigana nếu cần) 氏名（読み仮名）
Số điện thoại 電話番号, FAX番号
Địa chỉ, mã bưu điện 郵便番号・住所
Emailメールアドレス
Website công ty 会社WebサイトへのURL
 Thông tin chữ ký thường mới và chính xác hơn danh thiếp cũ.
Lý do: Mọi người thay đổi công ty, vị trí, phòng ban => danh thiếp trước đây đã trao là nội dung đã cũ.
## Slide 12
⑨ Quy tắc trả lời & chuyển tiếp
返信 (Reply): chỉ gửi lại cho người gửi.
全員に返信 (Reply All): gửi cho người gửi + tất cả người trong Cc.
転送 (Forward): gửi email gốc cho người không nằm trong danh sách nhận.
Quy tắc:
Reply thêm 「Re:」
Forward thêm 「Fw:」「Fwd:」
Khi forward nên ghi rõ lý do, giữ nguyên nội dung gốc, không tự ý chỉnh sửa.
## Slide 13
Một số mẫu business mail
## Slide 14
1. Mail gửi cho khách hàng mới
Tiêu đề: 新製品サンプルのご案内
Nội dung:
株式会社ABC
営業部
田中様
 
初めてご連絡いたします。
株式会社XY営業部の吉田と申します。
 
このたび、ぜひ弊社の製品をサンプルとして
◇◇様にお使いいただけないかと思いご連絡いたしました。
Ghi rõ tiêu đề, không rút gọn tên, viết đầy đủ họ tên.
## Slide 15
2. Mail cảm ơn
Tiêu đề: 昨日の打ち合わせの御礼
Nội dung:
株式会社ABC
吉田様
 
いつもお世話になっております。
株式会社XYZの山本です。
 
昨日はお忙しい中、貴重なお時間をいただき、誠にありがとうございました。
Cần ghi rõ cảm ơn ngay đầu nội dung.
## Slide 16
3. Mail đề nghị/đề xuất
Tiêu đề: LMSプロジェクト第1回お打ち合わせの日程調整のご依頼
Nội dung:
株式会社ABC
佐藤様
 
いつも大変お世話になっております。
株式会社XYZの山本です。
 
昨日、お電話でご相談いたしました件について、
一度直接お打ち合わせをしたく存じます。
## Slide 17
4. Mail xin lỗi
Tiêu đề: 納品遅延のお詫び
Nội dung:
株式会社ABC
佐藤様
 
いつも大変お世話になっております。
株式会社XYZの加藤です。
 
先ほどお問い合わせいただきました製品につきまして、
納品が遅れており、大変ご迷惑をおかけしております。
Xin lỗi ngắn gọn, nêu lý do sau. Quan trọng là tốc độ & chính xác.
## Slide 18
Check list trước khi gửi mail
## Slide 19
Checklist trước khi gửi
Địa chỉ (To, Cc, Bcc) đúng chưa?
Tiêu đề có rõ ràng không?
File đính kèm đúng chưa, người nhận có mở được không?
Tên người nhận đầy đủ 「会社名＋部署名＋氏名＋様」?
Lời chào đầu phù hợp tình huống?
Đã giới thiệu bản thân đúng chuẩn chưa?
Nội dung bắt đầu bằng tóm tắt chưa?
Bố cục dễ đọc (ngắt dòng, chia đoạn, bullet points)?
Có lời chào kết thúc không?
Có chữ ký chưa?
Đã kiểm tra lỗi chính tả chưa?
Có từ ngữ nào thiếu lịch sự không?


---
**Nguồn:** `Udemy\Udemy - N1 Course\(Updated) SGK N1_ĐỌC 1_Tìm Thông Tin - Mondai 13.pdf`

N1_Chill Class_ĐỌC 1   
 
ĐỌC 1 : Dạng Tìm thông tin - Mondai 13 Bài 1- 07/2010 清森市 秋の美術コンクール 作品募集  部門  絵画部門、写真部門 募集期間 2010年11月1日～11月30日 審査員  山田太郎（日本アート協会会長）、山本花子（画家）、川上次郎（写真家） 応募規定 1. 清森市内の秋を題材にしたもの。 2. 絵画部門に出品する作品は、イラスト、水彩画、油絵、どれでも可。 写真部門に出品する写真は、フィルム写真、デジタル写真、どちらも可。 ※応募作品は各部門1人1点に限ります。 ※品作の制作年は問わないが、未発表のものに限ります。 （他のコンクールに入賞していたり、出版物や展示会などで公表されたりしていないものであること。）  応募方法 郵送、または持参。ただし、郵送中の事故について、市は責任を負いません。 指定の応募用紙を作品裏側に添付のこと。 応募用紙は市役所の窓口で、または市のホームページ （http://www.kiyomari-shi.jp）から入手可能。  応募先  淸森市商業観光課観光係 （〒951-0022清森市淸森2-8、TEL：084-874-8524）  賞  
  審査結果 清森市のホームページ上に1月15日に発表します。入賞者には1月中に結果を郵送します。電話および窓口での問い合わせには応じられません。 表彰式  2011年2月下旬（予定）最優秀賞と優秀賞の方には、表彰式で賞状および副賞をお渡しします。 注意事項  ※入賞作年を限度に主催者がお預かりして広報活動などに使用し、1年後にお返しします。 ※上記の応募規定を守っていなかった場合には入賞が取り消されることがあります。 （主催）清森市 （協費）昭和デザイン株式会社、山手百貨店、新東京鉄道、清森ホテル  

N1_Chill Class_ĐỌC 1   
 
1.高木さんが制作した以下の作品のうち、応募できるものはどれか。  1.  清森高校に通っていたとき入賞した秋の風景画  2.  清森市にある清森温泉の紅葉の油絵とイラスト  3.  清森市にある清森公園で撮った春の木々の写真  4.  去年清森市で行われた秋祭りの写真と水彩画   2.入賞したかどうかを知るには、高木さんはどうしたらよいか。  1.  1月中旬に清森市のホームページを見る。  2.  1月中旬に直接、観光係に電話して聞く。  3.  2月下旬に市役所の窓口に問い合わせる。  4.  2月下旬に届く予定の通知を待つ。 
N1_Chill Class_ĐỌC 1   
 
Bài 2- 12/2010 財団法人 日本留学生奨学財団 2011年度 外国人留学生奨学金募集要項 1.募集人員 30名 2. 奨学金の支給額・支給方法など   ① 支給額 大学院修士課程(博士前期課程)月額100,000円  大学院博士課程(博士後期課程)月額120,000円   ② 支給期間 在籍する大学院の正規の修学期間で、最長3年間   ③ 支給方法 毎月一回決まった日に、受給者本人名義の銀行口座に直接振り込む 3. 応募資格   ① 国籍・ビザについて 日本以外の国籍を有し、勉強または研究のための在留資格(例えば留学で、日本に入国した者）   ② 対象 · 日本国内の大学院で、理学、工学、農学の分野を専攻している者 · 2010年4月時点で、修士課程の1年次、博士課程の1年次か2年次に在籍している者、または修士課程の2年次で、2011年4月に博士課程進学を予定している者 · 2009年度の大学院での成績が2. 8以上 (満点3.0)で、心身ともに健康な者 · 2011年度に、それぞれの政府、日本政府、他の奨学金支給を受けない者 4. 応募方法  ① 提出書類(指定のものは当財団ホームページからダウンロードして使用すること) · 2011年度日本留学生奨学財団奨学生応募用紙(指定のもの) · 在学証明書と2009年度の成績が分かる成績証明書 · 在籍大学院の指導教授からの推薦書 · 研究計画書(3000字以内) 、書式は自由 ② 応募締め切り 2010年7月31日必着 なお、申請者が直接応募するのではなく、必ず所属の大学院を通じて応募すること 5. 選考方法 応募書類、面接を総合的に判断して決定する 6. 決定通知 2010年9月10日までに所属の大学院を通じ、書面で通知する 7．問い合わせ先 日本留学生小学財団 HTTP://WWW.RYUGAKU.OR.JP/   
N1_Chill Class_ĐỌC 1   
 
 1.日本の大学・大学院に在学している次の学生のうち、この奨学金に応募できるのは誰か。 名前 国籍 2010年4月時点の在籍年次 専攻 成績 2011 年度他の奨学金の受給予定の有無 ソムシリー タイ 修士1年 電子工学 3.0 有 ワン 中国 博士2年 農学 2.9 無 アフマャド エジプト 修士1年 法学 2.8 有 ジョン アメリカ 学部4年 理学 3.0 無 1 ソムシリーさん  2 ワンさん   3 アフマドさん   4 ジョンさん 2. キムさんは、2010年4月現在、日本の大学院の修士課程 2 年生で農学を専攻している。2011年度には博士課程に進学予定である。キムさんが、この奨学金に応募する場合、応募時に必ずしなければならないのは、次のどれか。 1 ホームページから研究計画書の様式をダウンロードする。 2 博士課程進学が決定していることを証明する書類をもらう。 3 出身大学の指導教授の推薦書を取り寄せる。       4 応募書類を大学院の事務所に提出する。   
N1_Chill Class_ĐỌC 1   
 
Bài 3- 07/2011 アルバイト情報 7月号  仕事 内容 時給 (円) 曜日・時間 条件 
1 中国料理店 スタッフ 食器洗います、材料の準備 800 木曜定休 10:00～14:00 週3回以上 なるべく多く勤務できる方を望む 
2 日本そば屋 スタッフ 
注文を取る・料理を出す等の接客、後片付け   900 月曜定休 10:00～21:00 週2回以上 時間は相談可 
3 居酒屋 スタッフ 
注文を取る・料理を出す等の接客、後片付け   900 毎日 17:00～23:00 週2回以上(1回は必ず23:00まで) 20歳以上の男女(学生可) 
4 コンビニ店員 商品販売 および商品管理 900 毎日  (1)8:00～13:00 (2)15:00～21:00 (3)24:00～6:00 
長期できる人 週1、2回でもOK 
5 スーパー店員 
生鮮食品・鮮魚野菜果物・内売り場で商品を切る、並べる、清掃     
850 
水曜定休 9:00～20:00 週1日、1回4時間以上 (時間相談可) 長期できる人 
6 食品工場製造 スタッフ 主に果物の皮むき (～22時) 800 (22時～) 1000 
毎日  (1)8:00～17:00 (2)17:00〜24:00 毎日来られる人 夜間可能な人歓迎 
7 新製品宣伝 スタッフ 
スーパーで新製品(飲み物)をお客様に紹介する 1000  7月の土・日曜 9:00～18:00の うち3時間以上 7月中に2日以上 勤務できる人 
N1_Chill Class_ĐỌC 1   
 
8 引っ越し テアシスタント 荷物を造る、 荷物の出し入れ 950 毎日 原則 9:00～17:00 （残業あり） 
1日だけでも可 
9 試験監督補助 
試験監督の助手 ・問題配布と回収 ・受験生のチェック 
6000 
7月25日（土） 8:30～17:00 大学生 
10 塾講師 (英語) 中学生・高校生の英語の補習授業 2000 火・木・土曜 16:00～20:00 受験指導経験者 長期のみ 
 1.留学生のリーさんは、毎週3回ぐらい店でアルバイトをしたいと考えている。リーさんは平日の午後3時から9時までの間しか働けないが、同じ時間仕事をした場合、一番給料が多いのはどの仕事か。 1 中国料理店スタッフ   2 日本そば屋スタッフ      3 居酒屋スタッフ  4 コンビニ店員 2.大学生の山田さんは夏休みの旅行の費用が少し足りないので、7月に1日か2日だけアルバイトをしたいと考えている。山田さんが応募できる仕事はいくつあるか。 1 1つ                2 2つ                   3 3つ             4 4つ    
N1_Chill Class_ĐỌC 1   
 
Bài 4 - 12/2011 生活便利化協会 2012「生活を便利にする機器・道具」 コンテスト 隣集案内 l. 部門・参加資格 ①	開発部門 企業、高校生以上の一般市民を対象に、生活を便利にするオリジナルな機器を募集します。 ② アイデア部門 (特定課題と自由課題) 中学生以上の一般市民を対象に、便利な道具のアイデアを募集します。 特定課題：片手で簡単に操作できる道具のアイデア 自由課題：「生活を便利にする道具」に関するアイデアで、特定課題に該当しないものなら何でもかもいません。 2. 応募 ① 応募方法 · 開発部門の応募には、機器の実物の動きや使い方がわかるような動画が必要です。 · アイデア部門の応募には、アイデアが具体的にイメージできるようなイラストが必要です。応募はすべて生活便利化協会のホームページ(http://www.benrika. corn/)からいってください。 · 応募フォームに必要事項を記入の上、必要なものを添付して送信してください。応募フォームに添付できないものは郵送してください (送付先はホームページ参照) 。 ② 応募期間 2012年6月15日一7月15日 3. 選考方法 開発部門は、独創性のほか、実用性、有効性、コストパフォーマンスを基準に審査します。一次審査は実物の動画を含めた書類審査、二次審査は模型および書類審査です。 4. 発表・表彰 · 2012年8月にホームページ上で入賞作品を公表し、応募者にも結果を通知します。 · 開発部門の入賞作品は、「2012生活便利化フォーラム東京」で表彰・展示され、デモンストレーションも行われます。アイデア部門の入賞作品は、同フォーラムで表彰され、試作品されます。       
N1_Chill Class_ĐỌC 1   
 
1.次の4人のうち、現段階でデイデア部門の特定課題の応募条件を満たしているのはだれか。 名前 職業 応募作品 提出可能なもの 山田 小学生 帽子のようにかぶれる雨 作品とイラスト 鈴木 高校教師 片手で簡単に開けられる缶切り アイデアのメモ チェン 会社員 ふたがあけやすくこぼれにくい水仙 試作品 川村 大学生 片手で楽に入力できるキーボード イラスト 1 山田さん        2 鈴木さん        3 チェンさん    4 川村さん   2.前川さんは、小さい子供を乗せたまま階段をスムーズに上り下りできる仕組みを持ったベビーカーの実物を見て審査してもらいたいと思っているが、前川さんはどの部門に応募するのが適切化。また、応募の段階で必ず提出しなければならないものは何か。 1 アイデア部門の自由課題に応募し、作品のイラストを提出する。 2 アイデア部門の自由課題に応募し、模型とイラストを提出する。 3 開発部門に応募し、実物の動きなどがわかるような動画を提出する。 4 開発部門に応募し、実物の動きなどを記録した動画と実物を提出する   
N1_Chill Class_ĐỌC 1   
 
Bài 5 - 07/2012   東京都カルチャー会館	4	月開講の講座 ① やさしい英語   4月8日開講 簡単な単語で伝えられるようになるための「聞く、話す」を中心とした講座。中学校レベルの英 語で充分。講師はボランティアの日本人通訳者。事前に見学をすることができます。  ・毎週火曜 18:30 〜 20:00    12 回 16.000 円(教材費別) ・講師 青木一郎(東京友だちつくろう会代表)  ②  外国人としっかり学ぶ英語   4月10 日開講 日本人請師では物足りない。でも、いきかなり語だけの誠語についていく自信はない。 そんな人にぴったりの日本語が話せる外国講師によるユーズ。毎回講師と新聞記事を読みながら英語力を身につける。事前に見学をすることができます。  ・毎週木曜 18:30 〜 20:00      15 回 18,000 円(材費別) ・講師 フレンド外国語学校議師  ③ 初めての英語    4月12日会講 決まり文句をまずレクチャー。あいさつや叶い物などでよく使う表現を紹介。聞くことから入り、日常会話を勉強しながらやさしい文法も学ぶので身につきやすい。英語での実務経験の長い日本人講師が丁寧に教える。事前に見学をすることができます。  ・毎週土曜 12:00 〜 13:30     10回 14,000円(教本日費別) ・講師 石川健ニ  ④ ステップアップの英語    4 月 13 日開講 相手に細かなニュアンスまで伝えられる英語力を身につけたいと思っている方におすすめ。中級以上の文法を習得した方対象。イギリス人講師とさらに複雑なテーマで会語をします。雑誌や新聞などの読本もあり。必ず事前に見学をして、ご自分のレベルに合っているかどうかを確認してからお申し込みください。 ・毎週日曜 10:00 〜 12:00     12 回 20,000 円(教材費別) ・講師 キャサリン・スミス  ＠受講の申し込み 受講の予約、申し込みはお電話で。お電語での申し込み後、受講される講座の案内と振り込み用紙をお送りします。所定日までにお近くの銀行から受講料を振り込んでください。会館の窓口では、申し込みおよび現金の取り扱いはいたしません。 館内には4月からの講座の総合パンフレットを用意しています。気軽にお立ち寄りください。 申し込み/問い合わせ先:03-444-78890 (平日 9:00 17:00 )   
N1_Chill Class_ĐỌC 1   
 
 1. 会社員の山田さんは英語で書かれた新聞を読めるようになりたいと思っている。 週末は出張が多いので平日しか通えない。 山田さんに合う講座はどれか。 1 ①   2 ②   3 ③   4 ④ 2. ④の講座を受講するためにはどのような手続きが必要か。 1 見学をしてレベルを確認してから、電話で受講を申し込む。 2 会館に行って総合パンフレットをもらい、窓口で申し込む。 3 電話で受講申込書を送ってもらい、会館に行って申し込む。 4 事前見学の予約をし、見学後、郵便局で受講料を振り込む。    
N1_Chill Class_ĐỌC 1   
 
Bài 6 - 12/2012 「東西劇場 友の会」 へのお誘い 「東西劇場 友の容」は、伝統芸能、現代融虹、 バレエ、音楽などの舞台芸術を皆様により深く、身近に楽しんでいただくた必の会員組織です。会員の方には様々な特典をご用意しております。 ・東西劇場で行われる分演やイベントの情報をお令えする会報誌「ほうざい」を隔月でお送りいたします。 ・東西劇場で行わねるすべての公演のチケットを合肌割引価格でお求めいただけはます(一般会員10％引、学生浅員15％引) 。また、日本全国の系列劇場の公演にも一部割引を受けられるものがあります (5％引) 。 ・舞台芸術関連書籍を負う東西劇場内直営売店、および刊別劇場売店でも割引が受けちれます (東西劇場10%引、双列劇場5％) 。 割引を受けられる際には、会員証が必要です。 学生会員の方は会員証の他、学生証も併せてご提示ください。 【入学費・年会費】 入会費 (入信時ゆみ) : 1,000円 会費 (1年ごと) : 一般社員 2,000円、学生倒員 1,500円 【ご入会の手続き】 ご入富は東西劇場内の「東西劇場 友の憲」事務局で承ります。 一般員の方は、事務局で入会費のお支払いおよび年会費振替用の金融機関口座のご登録をお願いします (金融機関の講座情報と印鑑をご持参ください) 。年会費は、ご入会の約２か月後に、ご登録の講座からの自動振替となります。 退会のお申し出がない限り、毎年自動的に引き落とされますのでと了承ください。 学生会員の方は、入会申し込みの隊に学生証をお持ちの上、入浅間と年会費を事務局でお支払いください。一年ごとに入会維続の手続きをお願いしています。太会を申し込まれた方にはその場で会員証を発行します。 「束西劇場 胡の憲」 事務局 TEL 03-1834-5578 
N1_Chill Class_ĐỌC 1   
 
 1. サラさんは大学の芸術学部の学生で演劇を勉強している。サラさんが「東西劇場 友の会」の会員になったら、次のどのサービスを受けることができるか。 1 東西劇場の情報が掲載されている会報誌を毎月受け取ることができる。 2 東西劇場で行われる公演をすべて15％割引で観劇することができる。 3 東西劇場と系列劇場で行われる公演をすべて割引で見ることができる。 4 東西劇場と系列劇場の売店で10％割引で買い物をすることができる。 2. 会社員のユアンさんは「東西劇場 友の会」に入会したいと思っている。入会費と年会費の支払いはどのようにするか 1 事務局で入会費と年会費を直接払う。 2 金融機関で入会費と年会費を振り込む。 3 事務局で入会費を直接払い、年会費の自動振替の手続きもする。 4 事務局で入会費を直接払い、金融機関で年会費の自動振替の手続きをする。    
N1_Chill Class_ĐỌC 1   
 
Bài 7 - 07/2013 緑町病院 雇用時健康診断のご案内 【基本検査項目】 ①問診および診察 ②身体計測 ③血圧測定 ④尿検査 ⑤視力検査      ⑥聴力検査 ⑦血液検査 ⑧胸部エックス線検査 ⑨心電図検査 ※その他検査を追加でご希望の方は、ご予約時にお問い合わせください。 【実施日時】 月曜日〜金曜日 9:30一17:00 【予約方法】 ・予約の申し込みは、電話もしくはEメールにて受け付けます。電話の場合は検診日の2日前まで、セメールの場合は4日前までにお願いします。 ・上記①〜⑨以外の検査をご希望の場合は、必ずお電話にてお申し込みください。 【費用】(検診費用および診断書発行まですべてを含んだ金額です) 電話による予約の場合    9,450円(税込み) Eメールによる予約の場合 8,925円(税込み) ※上記①〜⑨以外の検査を受ける方は、追加料金が発生します。 【検査結果】 ・健康診断書は、受診日の1週間後から窓口でのお渡しになります。 郵送も可能です(送料別途) 。 ・結果記入用の指定用紙がある場合は、受診当日、受付にご提出ください。 ・英文による健康診断書も作成いたします(作成料別途)。ご希望の方は、ご予約時にお知らせください。作成には、別途日数が約2日かかります。 【お支払い】 ・当日、窓口にてお支払いください。 各種カードも取り扱っております。 【注意事項】 ・受診6時間前までに食事を終わらせてください。       それ以降は、お水のみでお過ごしください。 ・眼鏡をお使いの方は、当日ご持参ください。   コンタクトレンズをお使いの方は、ケースをご持参ください。 【問い合わせ先】 緑町病院 電話:01-1234-5678  受付時間 : 月曜日金曜日の9:00～17:00 Eメール : yoyaku@midori-machi.com  
N1_Chill Class_ĐỌC 1   
 
1. この病院で基本検査項目のほかに、追加の検査も受ける必要がある場合、予約はどのようにしなければならない決まりになっているか。 1 電話で、2日前までに予約する。 2 電話で、4日前までに予約する。 3 Eメールで、2日前までに予約する。 4 Eメールで、4日前までに予約する。 2. アッさんは健康診断書を会社指定の用紙を使って、英文で作成してもらう必要がある。作成料金を受診当日に支払うこと以外に何をすることが必要か。 1 予約時に英文の診断書の作成を依頼し、受診日までに用紙を郵送する。 2 予約時に英文の診断書の作成を依頼し、受診当日用紙を渡す。 3 受診当日に英文の診断書の作成を依頼し、受診後用紙を郵送する。 4 受診当日に英文の診断書の作成を依頼し、用紙を渡す。        
N1_Chill Class_ĐỌC 1   
 
Bài 8 - 12/2013 原口市市民農園        利用者募集率内 市民農園は、小面積の土地を利用して野葉や花作りを楽しむための貨し農園です。野菜や花作りに興味はあるけれど育てる場所がないといった方々は、市民農園を利用してみませんか。 【対象者】 原口市内にお住まいの人または市内にお勤めの人 【利用期間】 2014年4〜2015年3月(最長3年間の継続利用がが可能) 【農園の場所・特出・料金】今回募集する農園は以下の4か所です  場所 特役 料金/年 
① 原口市東山 指導を受けながら、共同で楽しく野菜や花の栽培ができます(栽培する野菜や花は、農園によって決められています)。 8000円 
② 原口市西川 10m2を個人で借りて、自由に野菜や花の栽培が楽しめます。必要な種、苗、農具などは準備してあります。必要に応じて栽培指導を受けられます。種、苗などは各自で準備してください。農具は貸し出します。 5000円 
③ 原口市三田 10m2を個人で借りて、自由に野菜や花の栽培が楽しめます。種、ページを12月)、15日で出しだな 3000円 
④ 原口市池沢 50mを個人で借りて、じっくり野菜や花の栽培が楽しめます。必要に応じて栽培指導を受けられます。種、苗、必要な農具は、各自で準備してください。農業用大型機械の貸し出を行っています。 5000円 
 ①②③は市街地に近い、比較的利用しやすい場所にあります。(④は豊かな自然に囲まれた部外にあります。 ③④では款培指導は行っていません。 【応募方法】往復はがきに、(1) 刊用を希望する農園の場所、(2) 利用者の名前・住所・電話番号を記入し、市投所市民課市民農園可係宮に送ってください。 希望者が多い場合は抽選になります。 【応募結め切り】2014 年3月2日当日消印有効 【問い合わせ先】原口市役所市民課市民諾園係 電話:031(389)6930  
N1_Chill Class_ĐỌC 1   
 
1.ムディさんは、市民農園を借りたいと考えている。作る野菜自分で決めたいが、農作業の経験がないので作り方を教えてほしいと思っている。ムディさんはどの農園を借りたらよいか。 1 (1)   2 (2)    3 (3)   4 (4) 2. 原口市の市民農園を借りる際に、留意しなければならないことはどれか。 1 原口市に住んでいる人しか借りることができない。 2 同じ農園を 3年以上連続して借りなければならない。 3 自分で農具を準備しなければならない農園がある。 4 早く応募しないと希望の農園が借りられないことがある。     
N1_Chill Class_ĐỌC 1   
 
Bài 9 - 07/2014 CPJカード CPJカードのご案内 カードの種類 A B C D 
お申込みの資格 30歳以上※1 18歳以上※1 18歳以上※1 18歳以上 29歳以下※1 
年会費 ご家族 10500円 3150円 2625円 1050円 ご本人 お一人1050円 お一人420円 お一人420円 無料 御利用可能 最高500万円 最高300万円 最高300万円 最高200万円 
旅行保険 国内 最高5000万円 最高5000万円 最高3000万円 最高2000万円 海外 最高8000万円 最高5000万円 最高3000万円 最高2000万円  (※1） 学生は除きます お申込み方法 1. インターネットまたは電話で資料をご請求ください。 2. 資料が到着しましたら、入会申込書にご記入のうえ、本人確認書類と一緒にご返送ください。(D カードをお申し込みの方は、学生証のコピーも同封してください。) 3. 当社に入会申込書到着後、1か月前後でカードを発行いたします。当社の判断で、ご希望に添えない場合もございます。 本人確認書類は、次のいずれか1点のコピー(お名前、生年月日、現住所の記載面)をご用意ください。 (１) 運転免許をお持ちも方は、必ず運転免許証 (２) 運転免許をお持ちでない方は、以下のいずれか1点のコピー  ①パスポート ②健康保険証 ③住民票 ④在留カードまたは特別永住者証明書 (１)もしくは (２) に書かれた住所と入会申込書のげん住所がい異なる場合は、現住所が記載されている以下の書類のうち、いずれか1点のコピーを並せてご提出ください。 A 公共料金(電気、ガス、水道のいずれか一つ)の領収書 B 社会保険料(健康保険、年金など)の領収書 C 税金を納めたときも証明書 
N1_Chill Class_ĐỌC 1   
 
 1.中西さんは35歳の会社員で、CPJカードを申し込むことにした。中西さんは年会費を500以内に抑えたいが、海外旅行の保険はなるべく高額なものがよい。中西さんに最も合っているカードはどれか。 1 A                    2 B                3 C           4 D  2.会社員の山本さんはC P J カードを申し込むことにした。山本さんは引っ越しをしたばかりのため、運転免許証に書かれた住所と現住所が異なっている。カードを申し込む際、入会申込書のほかに、次のどの書類を提出しなければならないか。 1 運転免許証のコピーだけ                                   2 運転免許証のコピーと住民票のコピー 3 運転免許証のコピーと先月の電話料金の領収書のコピー 4 運転免許証のコピーと先月の水道料金の領収書のコピー     
N1_Chill Class_ĐỌC 1   
 
Bài 10 - 12/2014 就職支援行事(9月〜12月)のスケジュール 就職活動を行う学生のために、各種行事を実施しています。 全行事、申し込みは不要です。当日、学生証を持参のうえ、会場へお越し下さい。  日 時間 行事名 内容 
① 9月19日(金) イ 就職ガイダンス [就職活動全般の基本的な情報]就職活動の 方法やスケジュールなど ② 9月24日(水) ア 留学生ガイダンス 留学生向けの在留資格や留学生の就職状況などの説明 ③ 10月3日(金) イ 就職活動体験談(1) 広告.マスつき業界に就職した卒業生による 就職活動の体験談 ④ 10月16日(水) ア 就職ガイダンス [就職活動全般の基本的な情報]内容は9月1 9日と同じです ⑤ 10月23日(木) ア 留学生ガイダンス 内容は9月2 4日と同じです 
⑥ 10月7日(金) イ 留学生マナー講座 留学生が日本で就職活動を行うにあたっての基本的なマナー講座 ⑦ 11月20日(木) ア 就職活動体験談(2) 金融. 証券業界に就職した卒業生による就職 活動の体験談 ⑧ 12月1日(月) ＊ 合同企業説明会 詳細は下記参照 
⑨ 12月12日(金) ア 就職活動体験談(3) 貿易・流通業界に就職した卒業生による就職 活動の体験談 ⑩ 12月17日(水) ＊ 合同企業説明会 詳細は下記参照 開催時間 : ア...14:50-16:20  イ...18:30-20:00     *合同企業説明会は下記参照 開催場所 : ⑥以外...緑山ホール ⑥...101教室 
N1_Chill Class_ĐỌC 1   
 
 注意事項 ・就職希望者 (留学生含む) は、[就職ガイダンス]のどちらかに必ず出席してください。 ・[留学生ガイダンス]は希望者のみ出席してください。 合同企業脱明会について 合同企業説明会は業種別に、以下の日時に開催されます。各回、約50社が参加予定です。 (途中入退場自由)  12月1日 12月17日 16:00-17:00 金融・ 証券 広告・マスコミ 7:15-18:15 広告・マスコミ メーカー・TT 18:30-19:30 貿易・流通 教育・福祉 緑山大学就職課  1.留学生のマイクさんは日本で就職したいと思っている。マイクさんが必ず出席しなければいけない行事はいくつか。 1 一つ   2 ニつ   3 三つ   4 四つ 2.林さんはマスコミ関連の企業に就職したいので、関連企業に就職した先輩の話や、関連企業の仕事内容について開きたいと思っている。林さんは授業のため 1 7 時以降しか出席できない。林さんに合う行事はどれか。 1 ③と⑧のみ                     2 ③と⑧と⑩              3 ⑧のみ                     4 ⑧と⑩のみ    
N1_Chill Class_ĐỌC 1   
 
Bài 11 - 07/2015 やまかわ新聞の読者モーター募集 紙面に掲載された記事や広告に関するアンケートにお答えください。 募集概要 モニター契約期間:2016年4月から2017年3月まで 応募条件:1～5の条件をすべて満たしている方 (1)モニター契約期間中、以下にお住まいの方関東に1都3県(東京都、神奈川県、千葉県、埼玉県) (2)やまかわ新聞を朝、夕刊ともに自宅で購読中の方 (3)2016年4月2日時点で20歳以上の方 (4)新聞、マスコミ、広告関係の職業従事されていない方 (5)インターネットに接続できるパソコン等をお持ちの方  *過去に「やまかわ新聞読者モニター」をされた方は、応募できません。 募集人数:300人  締め切り:2016年2月1日(月) 募集方法:はがきに「読者モニター希望」の旨と住所、氏名、年齢、性別、職業、メールアドレスをご記入の上、ご送付ください。 結果通知:3月下旬までにメールでご連絡します。  
      
アンケート内容 内容：紙面に掲載された記事や広告についての評価など 実施回数：月2、3回程度 謝礼：回答1回につき図書カード500円分(任期終了時にまとめて発送) 手順：①アンケート実施1週間前にメールで「実施のお知らせ」が届きます ②アンケート実施当日にウエブサイトのアンケート回答ページにアクセスして回答してください。 留意点： *アンケート実施前一週間分の紙面を保管しておいてください。アンケートはその中から当社指定の記事や広告について答えていただきます。 *回答可能時間は、アンケート実施当日の午前7時から24時間です。 *回答形式には自由記述式と選択式があります。自由記述式の箇所は空欄でもかまいませんが、選択式の箇所が末入力であった場合、回答は受付られません。  ＜問い合わせ先＞：やまかわ新聞読者モニター担当 電話：07-1234-9876(受付時間:土日祝日を除く午前10時一午後5時) 
N1_Chill Class_ĐỌC 1   
 
1.次の4人は、読者モニターに応募しようと思っている。全員インターネットを使えるパソコンを持っており、過去にモニターに応募したことはない。応募条件をすべて満たしているのは誰か。 名前 職業 年齢 （2016年4月2日自転） モニター結役期間中の居住地 購読中のかまかわ新聞 水野 大学生 22歳 神奈川県 朝刊のみ ソウさん 広告代理店社員 24歳 埼玉県 朝刊と夕刊 チョウさん 旅行会社社員 27歳 東京部 朝刊と夕刊 
山田さん 銀行員 32歳 千葉県（2016年8月に愛知県へ転出予定） 朝刊と夕刊  1 水野さん       2 ソウきん       3 チョウさん       4 山田さん  2．アンケートに回答するときに、モニターがすべきことは何か。 1 指定時間内に所定のウェブサイトを通じて回答する。   2 保管しておいたすべての新聞を読み直して回答する。 3「実施のお知らせ」を受信してから 24時間以内に回答する。   4 回答形式を問わず、すべての質問に回答する。    
N1_Chill Class_ĐỌC 1   
 
Bài 12 - 12/2015 東あさひ市立博物館“友の会”入会案内 “友の会”会員になると · 東あさひ市立博物館の常設展や、附属の東あさひ市立植物園に何度でも無料で入場 (園)できます。 · 東あさひ市立博物館では、特別展を年数回開催します。会員の方は、各特別展につき1回、無料で入場できます。また、同一の特別展を2回以上ご覧になる際は、2回目以降は割引料金で入場できます。 · 館内レストランでご飲食の際に5%の割引が受けられます。 · 館内のショップで10%の割引が受けられます。ただし、書籍は除きます。 · 東あさひ市立博物館が年6回、毎偶数月に発行する情報誌を無料でお届けします。 入会方法 新規入会：初めて入会する場合(以前入会したことがある方も、会員証の有効期間が終了した場合は、再度、新規入会手続きを行ってください。) 継続入会：会員証の有効期間内に手続きをする場合 新規入会、継続入会ともに、下記のいずれかの方法でお申し込みください。 <窓口> 窓口備え付けの入会申込書にご記入いただき、年会費お支払い後、その場で会員証を発行いたします。 <郵送> 新規入会申込書、または継続入会申込書を本ホームページからダウンロードし、必要事項をご記入の上、下記住所にご郵送ください。 年会費は、郵便局で「払込取扱票」の必要箇所にご記入の上、下記の口座、加入者宛にご送金ください。 お申込書内容とご入金が確認でき次第、会員証を発行し、送付いたします。会員証の到着までには、ご入金後2週間程度かかります。 年会費(1年間有効)  新規入会：10,000円  継続入会：8,500円 お問い合わせ先：電話 091-568-1153    Eメール：hakubutsukan@higashi-asahi.jp 郵送先：〒009-0364    東あさひ市中川5-6-1東あさひ市立博物館友の会担当。 振込先：口座番号0501-111111       加入者名:東あさひ市立博物館友の会    
N1_Chill Class_ĐỌC 1   
 
1.東あさひ市立博物館 “友の会” の会員になると受けることのできるサービスはどれか。 1 常設展をいつでも割引料金で見学できる。 2 開催されるすべての特別展にそれぞれ一度だけ無料で入れる。 3 ショップで売られている本や雑誌を 1 0 %安く買える。 4 半年間、毎月無料で博物館発行の情報誌を送ってもらえる。  2.ノンさんは、家の近所にある東あさひ市立博物館の“友の会”会員である。明後日21日に始まる特別展を見に行く予定だが、明日20日で会員期間が終了することに気がついた。21日に会員サービスが利用でき、年会費がより安く済む方法はどれか。 1 20日までに窓口に行って、継続入会の申し込みをする。 2 20 日までに郵送で、継続入会の申し込みをする。 3 21 日に窓口に行って、継続入会の申し込みをする。 4 21 日に窓口に行って、新規入会の申し込みをする。    
N1_Chill Class_ĐỌC 1   
 
Bài 13 - 07/2016  川村市> レポート募集> 学生レポート募集 学生レポート募集について 川村市では、市の魅力を伝えるため、市のホームページに掲載するレポートを束筆する「学生レポート」を募集します。 [活動内容] 川村市の自然、農産、文化などについて取材し、年度中に4本程度の写真つき記事を出していただきます。 [任期] 2017年4月〜2018年3月(1年間) [謝札] 謝札(年額 10,000)と記念品を差し上げます。 [応募資格] 任期中を通じて、以下のa) 〜 c) の条件をすべて満たす方 a) 大学院、大学、短期大学または専門学校に通う学生である。 ・外国人学生の方も、歓迎します。 b) 川村市内に在住、または、川村市にある学校に在学します。 c) 2017 年3月18日 (土) に川村市役所で行われる事前説明会に出席できる。 [応募方法 ] 市役所広報課にメール (1) 、(2) をご提出ください。 (2017年2月24日(金)締切り) 。折り返し、面接日についてご連絡します。 面接では写真を使ったプレゼンテーション (5分程度) もしていただきます。 必ず (3) をご待参ください。採否は、志望理由書及び面接により決定します。 (1) 申込書 …本ホームページからダウンロードし、必要事項を記入してください。 (2) 志望理由書 …書式自由。川村市学生レポートに応募した理由について 200 字程度で書いてください。 (3) 写真 (テーマ「私は伝えたい川村市」。 人物、風景、物など、何でも結構です。) * 面接時、学生証と現在所がわかるものを確認しますので、ご待参ください。 [その他 ] レポーターをお願いする方には、市で指定するボランティア保険に加入していた担致します。（保険の費用は市で負担到します。） お問合せ：川村市役所 広報課 081-6543-2100/kouhou@kawamurajp 名前 通っている大学 住む所 その他 キムさん 岩里市にある大学 岩里市  カーンさん 川村市の専門学校 岩里市 2017年3月9日から20 日までの間、しばらく帰国する予定 ホンさん 岩里市にある大学 川村市 2017 年1月から川村市に住む クルスさん 川村市にある大学院 川村市 2017年9月修士課程終了後、10月に帰国する予定 
N1_Chill Class_ĐỌC 1   
 
 1.次の4人は、全員「学生レポーター」に応募しようと思っている。この中で、「学生レポーター」に応募できるのは誰か。 1 キムさん     2 カーンさん     3 ホンさん     4 クルスさん 2.「学生レポーター」に応募する人が、2017年2月24日(金)までに必ずしなければならないことは何か。 1 申込書、志望理由書をメールで提出する。                2 申込書、志望理由書を持参して提出する。 3 申込書、志望理由書、写真をメールで提出する。    4 申込書、志望理由書、写真を持参して提出する。    
N1_Chill Class_ĐỌC 1   
 
Bài 14 - 12/2016 大森大学図書館 他大学の図書館の資料の利用について 利用したい資料が本学にない場合、他大学の図書館の資料を利用できます。 ① 他大学の図書館に行く ①-A 相互利用協定校を利用する 相互利用協定に加盟している図書館は、学生証の提示のみで、利用することができます。図書館によって、受けられるサービスが異なりますので、下記一覧を参照してください。 協定に加盟している図書館の一覧  閲覧 貸出 みはま大学図書館 可 可 長島大学図書館 可 可 あおば大学図書館 可 不可 中山工業大学図書館 可 不可 ①ーB 相互利用協定校以外を利用する 本学図書館が発行する紹介状を持参すれば、相互利用協定以外の図書館にも入館できます。受けられるサービスについては、各図書館に問い合わせてください。 紹介状の発行は、所定の申込書に記入本学図書館受付で申し込んでください。 注意：利用時は、必ず学生証と紹介状を持参してください。 紹介状の発行は無料ですが、発行まで約 5 日かかりまする ② 他大学の図書館に複写を依頼し、取り寄せる 本学図書館が他大学の図書館に複写を依頼し、取り寄せることができます。 申し込みは、本学図書館受付、または本学図書館ホームページ上で行ってください。 注意：資料の複写料金、送料などは全額利用者負担となります。 一度に依頼できる件数は5件までです。 ③ 他大学の図書館から借用した資料を見る 本学図書館が他大学の図書館から資料を一定の期間借用し、その資料を本学図書館内にて閲覧することができます。 申し込みは、本学図書館受付で行って下さい。 注意：資料の往複送料などは全額利用者負担となります。 本学図書館内での閲覧に限ります。 貸出はできません。 借用可能な資料は、一人一点限りとなります。 
N1_Chill Class_ĐỌC 1   
 
1.大森大学の学生のリンさんは、明日中に借りたい本がある。明日行ける図書館の中では、以下の4館が所蔵していることがわかったので、メモをした。リンさんが本を借りられるのは、次の方法のうちどれか。 1 学生証を持参して、長島大学図書館に行く。 2 今から紹介状を申請し、それを持参して、あおば大学図書館に行く。 3 学生証を持参して、中山工業大学図書館に行く。 4 今から紹介状を申請し、それを持参して、さくら大学図書館に行く。 2.大森大学の学生のロイさんは利用したい資料があるが、大森大学にはなかった。他大学に行く時間がないため、複写依頼か資料借用のサービスを利用しようと考えている。ロイさんが注意しなければならないこととして合っているのは、次のどれか。 1 写依頼は、資料を所蔵する大学のホームページから行わなければならない。 2 複写依頼は、一度に2件以上まとめて申し込むことはできない。 3 資料の借用に必要な送料は、半額を自身が負担しなければならない。 4 借用した資料は、大森大学図書館内で閲覧しなければならない。    
N1_Chill Class_ĐỌC 1   
 
Bài 15 - 07/2017                           
ご入会案内* 広立としたトレーニングジムとプールで、楽しく汗在湾しませんか。 営業時間 月〜金 8:00〜23:00        土 8:00〜21:00       日 9:00〜20:00 祝日の場合は 20 : 00 で営業終了します。 料金表 曜日や時間など、ご自身に合ったプランをお選びください！          すべてのプランで、トレーニングジムとプールがご利用いただけます。  入会手続き ①〜③をお持ちの上、受付にお越しください。  本人確認書類(免許証、保険証などの公的身分証明書)。 ② 金融機関の通帳とお届け印、またはキャッシャカード ③ 入会金(5,000円)および2か月分(1か月目、2か月目)の月会費や *各種キャンペーン適用により、入会金、月会費が割引になる場合があります。 りんどうスポーツジム 電話 058-556-7788 http://rindou-s.com 
夏のご人会キャンペーツジャ 7月31 日までにご入会の方限定の3つの特典!この機会をお見逃しなく!      *入会手続き等、詳細については「ご入会案内」のポスターをご参照の上、 ご不明な点はスタッフまでお気軽にお問い合わせください。 りんどうスポーツジム 電話 058-556-7788 http://rindou-s.come  
特典① 入会金が無料! 特典② 月会費が1か月分無料!(3か月目の月会費を免除)。 特典③ タオルレンタルが2か月間無料! 
N1_Chill Class_ĐỌC 1   
 
 1.ウーさんは55歳で、このスポーツジムに入会してトレーニングジムとプールを使いたいと考えている。火曜の10時から12時までと、水曜の17時から19時までが両方利用できるもので、できるだけ安いプランがいい。ウーさんの希望に合うプランはどれか。 1 フルタイム   2 平日A  3 平昌B     4 平日C  2.アンガスさんは、このスポーツジムの「夏のご入会キャンペーン」の期間内に入会手続きに行くつもりだ。アンガスさんが入会手続き時に支払わなければならない料金はどれか。 1 入会金と2か月分の月会費              2 入会金と1か月分の月会費 3 2か月分の月会費                        4 1か月分の月会費    
N1_Chill Class_ĐỌC 1   
 
Bài 16 - 12/2017 北山大学 証明書の発行 (在学生) 本学に在籍中の学生には以下の証明書の発行が可能です。証明書の種類や書式によって、発行方法が異なります。 証明書自動発行機で申請・発行できる証明書 (全て北山大学の書式を使用) 種類 手数料 (和文・英文) 受付時間 所要日数 
1. 在学証明書 200 円 月〜土 即日 2. 成績証明書 200 円 3. 卒業見込証明書* 1 200 円 8:30〜20:00 4-a. 健康診断証明書 300 円  ※ 1大学院の学生は、所属研究科の事務室に申請してください。発行は申請から5日後となります。 種類 受付時間 所要日数 4-b. 健康診断証明書 (提出先が指定する青式) 月～金 申請後 5 日 5-a. 調育書 (北山大学の書式 ) 5-b. 調書 (提出先が指定する書式 ) 9:00〜16:30 申請後7日 ※ 2手数料は、お問い合わせください。 ・申請の時点で、その前の学期までの授業料を納入していない場合証明書は発行できません。 ・申請には、学生証が必要です。証明書白動発行機を利用しての申請は、さらにはたのバスワードも必要です。バスワードを忘れた学生は、所届学部の事務に再立付をお願い出てください。 ・3月26日〜4月5日、9月25日〜10月5日は、アーク更新のため、証明吉自動発行機の利用を停止します。この期間は、全ての証明書の申請を学生センター窓口で受け付けます。 電話やメールによる申請はできませんが、郵送での申請は可能です。その場合、郵送にかかる日数も考慮して申請してください。詳しくは、お問い合わせください。 問い合わせ先:北山大学学生センター証明書係(041-295-8941)  
N1_Chill Class_ĐỌC 1   
 
 1.マイクさんは北山大学の4年生である。就職活動のため、以下の四つの証明書が必要になり、メモをした。この中で、受付 時間内に申請をすれば、その日のうちに受け取れるのはどれか。マイクさんのメモ・成績証明書・卒業見込証明書・健康 診断証明書(書式は会社指定のもの)・調査書(書式は会社指定のもの) 1 成績証明書と卒業見込証明書 2 成績証明書と卒業見込証明書と健康診断証明書 3 成績証明書と卒業見込証明書と調査書 4 成績証明書と健康診断証明書  2.証明書の申請に関して、留意しなければならないことはどれか。 1 申請までに、次の学期の授業料を納入しておく必要がある。 2 窓口で申請する場合、学生証とパスワードが必要である。 3 学生センター窓口でしか申請ができない期間がある。 4 大学に行けない場合の申請方法はメールのみである。    
N1_Chill Class_ĐỌC 1   
 
Bài 17 - 07/2018 ふかみ農業公園の 2019 年度ボランティア募集 ふかみ農業公園では、野菜や花を育てたり、季節に応じたイベントを手伝ったりしてくださるボランティアを募集しています。 ボランティア① 畑に野菜の種をまいたり、草取りなどの農作業をしたりして、収穫までの作業を行います。 活動時間 ●日時:2019年4月~翌3月●毎週金曜10時~12時 ボランティア② 花を植えたり、草取りなどの花壇の整備をしたりします。 活動時間●日時:2019年4月~翌3月・毎週木曜10時~12時 ボランティア③ 年3回のイベント(桜祭り、夏祭り、収穫祭)時に、公園内で収穫した野菜を 売ったり、花を売ったりします。 一つのイベントのみの参加も可能です。 活動日時:4月6日桜祭り、8月10日夏祭り、11月9日収穫祭)各イベント当日開始から片付けまで(開始2時間前に集合) 登録説明会(場所:ふかみ農業公園事務所2階会議室) ボランティア①：2019年3月8日(金)、9日(土) ※1 10時~11 時 ボランティア②：2019年3月15日(金)、16日(土)※1 10時~11 時 ※1必ずいずれかの日にご参加ください。 ボランティア③：なし 申し込み方法 以下を明記の上、はがき、Eメール、FAX のいずれかでお申し込みください。 ボランティア①、② : 住所、氏名、年齢、電話番号、参加を希望するボランティア番号、登録説明会の参加希望日 ボランティア③ :住所、氏名、年齢、電話番号、イベント名  締切①、②登録説明会開催日1日目の1週間前、③各イベント実施日の1週間前必着 登録費用(保険料)  ボランティア①、② 300円   ③ 50円[各イベントにつき ※2 ①、②にご参加の方は、活動初日にお支払いください。③にご参加の方は、イベント当日の集合時にお支払いください。 ※2 ①または②にご参加の方が3にも参加された場合、③の登録費用は必要ありません。 ふかみ農業公園 〒009-1527 山川市ふかみ 1569 電話/FAX: 031-849-1111 Eメール: bosyu@fukami-nogyo-koen.com   1.ナイニさんは1 年を通じて花の世話をするボランティアに参加したいと考えている。参加するためには、どうしなければならないか。 1 3月8日の1 週間前までに申し込み、3月8日か9 日の説明会に参加する。 
N1_Chill Class_ĐỌC 1   
 
2 3月8日の1 週間前までに申し込み、 3 月 15 日と 16 日の説明会に参加する。 3 3月15 日の1 週間前までに申し込み、3月 15 日か16 日の説明会に参加する。 4 3月15 日の1 週間前までに申し込み、3月 15 日と16 日の説明会に参加する。 2.フリオさんはボランティア①に参加し、さらに、 ボランティア③の夏祭りのボランティアとしても参加するつもりだ。その場合、夏祭り当日にしなければならないこととして合っているのはどれか。 1 イベント開始2 時間前に公園に行く。 2 イベント開始2 時間前に公園に行き、ボランティア登録費用 50 円を支払う。 3 イベント開始時間に公園に行く。 4 イベント開始時間に公園に行き、ボランティア登録費用 50 円を支払う。


---
**Nguồn:** `Udemy\Udemy - N1 Course\Tổng hợp ngữ pháp mimikara không có trong Shinkanzen.pdf`

１．と言っても過言ではない。 
Ý nghĩa : cho dù nói là.. thì cũng không quá lời. 
夫は会社に殺されたといっても過言ではない。 
Cho dù nói rằng chồng tôi bị công ty bức chết cũng không 
quá lời. 
２．然（しか）るべき:  
Ý nghĩa : là điều đương nhiên, hiển nhiên, thích hợp 
彼の作品のユニークさは、もっと評価されてしかるべきだ
と思う. 
Tôi nghĩ rằng tác phẩm của anh ấy được đánh giá cao hơn nữa 
là điều đương nhiên 
３．以外のなにものでもない。 
Ý nghĩa : không là cái đó thì là cái gì nữa. 
片親（かたおや）家庭の子供には問題児が多いというの
は、偏見（へんけん）以外のなにものでもない。 
Việc nói rằng con cái của những bố mẹ đơn thân thường hư 
hỏng thì đó không phải là thành kiến thì là gì? 
４．は否（いな）めない 
Ý nghĩa: không thể phủ nhận 
彼は確かに性格はよくないかもしれないが、有能であるこ
とは否めない。 
Anh ấy cho dù đúng là tính cách không tốt, nhưng không thể 
phủ nhận rằng anh ấy có năng lực. 
５．ことこの上ない:  
Ý nghĩa: rất là, quá là 
あの厳しい部長との出張は、疲れることこの上ない。 
Chuyến công tác cùng trưởng phòng khó tính quá là mệt mỏi. 
６．もってのほかだ。 
Ý nghĩa: không chấp nhận được! 
親からの仕送りを遊びに使ってしまうなんて、もってのほ
かだ。 
Cái gì mà dùng hết tiền bố mẹ trợ cấp cho vào việc chơi bời 
chứ! Không thể chấp nhận được. 
７．後（あと）を絶（た）たない。 
Ý nghĩa: không ngớt, không ngừng ( nói về việc xấu) 
罰則（ばっそく）が強化されたにもかかわらず、飲酒運転
は後を絶たない。 
Mặc dù đã đẩy mạnh việc phạt, nhưng việc uống rượu lái xe vẫn 
không ngừng. 
８．V るべくして＋V  
Ý nghĩa : V đến như 1 điều tất yếu( sớm muộn cũng đến) 
その事故の原因が飲酒運転なら、事故は起こるべくして起
こったと言えるだろう。 
Nếu nguyên nhân của vụ tai nạn là uống rượu rồi lái xe thì có 
thể nói việc tai nạn đó là điều tất yếu thôi ( sớm muộn gì cũng 
xảy ra thôi) 
９・こそあれ :  
Ý nghĩa :mặc dù… nhưng 
程度の差こそあれ、誰しも嫌いな人の一人や二人はいるの
ではないか。 
Dù mức độ khác nhau, nhưng chẳng phải ai thì cũng có 1,2 
người mà mình ghét hay sao? 
１０．こそすれ＝こそなれ:  
Ý nghĩa: chính xác là vế 1, không thể là vế 2 được 
この投資は利益にこそなれ、絶対損になることはございま
せん。 
Việc đầu tư này chính xác là có lợi, chứ tuyệt đối không có lỗ. 
間違いを指摘してあげたのだから、感謝こそすれ怒るのは
筋違いだ。 
Bởi vì đã được chỉ ra cho lỗi sai, nên chính xác là thấy biết ơn 
chứ tức giận là không đúng. 
１１．つ…つ 
Ý nghĩa: ( diễn tả 2 hành động trái ngược nhau) 
Học thuộc các cụm sau 
行きつ戻りつ: đi đi lại lại 
抜（ぬ）きつ抜かれつ : gay cấn ( cuộc đua, game) 
追（お）いつ追われつ: gay cấn ( cuộc đua, game) 
押（お）しつ押されつ: chen lấn xô đẩy ( trên xe bus) 
持ちつ持たれつ: hỗ trợ nhau ( mối quan hệ) 
浮（う）きつ沈（しず）みつ ( chìm nổi lênh đênh) ( con 
thuyền, lá cây) 
 
恋人たちは浜辺を行きつ戻りつしながら愛を語り合った。 
Những cặp yêu nhau đi lại trên bãi biển và tâm sự tình yêu. 
 
１２．ぶる  
Ý nghĩa: ra cái vẻ.. ( đáng ghét) 
いくらお嬢（じょう）さんぶっても、その言葉遣いではす
ぐばれてしまうよ。 
Cho dù có tỏ vẻ tiểu thư đến đâu thì qua cái cách ăn nói đó 
cũng sớm lộ thôi. 
 
１３．まぎれに 
Ý nghĩa: do quá là v1, nên dẫn tới v2 
首を絞められた彼女は、苦しまぎれに彼の髪をつかんだ。 
Cô ấy bị bóp cổ, quá đau nên đã tóm tóc anh ta. 
 
１４．にかこつけて 
Ý nghĩa: mượn cớ v1, để làm v2 mà mình thích 
父は毎週仕事にかこつけてゴルフに行っている。 
Bố tôi hàng tuần lấy cớ là đi làm để đi chơi golf 
 
１５．をいいことに： 
Ý nghĩa: lợi dụng v1, để làm v2 ( việc xấu) 
母親の入院をいいことに、彼女は夜遅くまで遊びに行って
いる。 
Lợi dụng mẹ nhập viện mà đi chơi tới tận đêm khuya. 
 
１６．Ｎ１とＮ２が相（あい）まって 
Ý nghĩa: N1 kết hợp với N2, cho ra kết quả… 
休日と好天が相まって、行楽地はどこも大変なにぎわいだ
った。 
Vì vừa là ngày nghỉ rồi lại là do thời tiết đẹp nữa, nên các khu 
vui chơi chỗ nào cũng đông nghịt 
 
１７．の…ないの・のなんの 
Ý nghĩa: cực kỳ, quá là…. 
彼の食べ方をいったら早いの早くないの、私が「いただき
ます」と言っている間に、もう食べ終わっているくらいな
んだ。 
Nói về cách ăn của anh ấy thì quá là nhanh, đến mức tôi đang 
nói itadakimasu thì đã ăn xong rồi. 
あの時の驚いたの何の、腰（こし）を抜かしそうだった
よ。 
Lúc đó quá là bàng hoàng, tưởng chừng như không đứng vững 
nổi. 
 
１８．ＶてもＶきれない。 
Ý nghĩa: ( muốn nhấn mạnh V: cực kỳ là..) 
あの時のミスは悔やんでも悔やみきれない。 
Lỗi lầm lúc đó thì tôi cực kỳ hối hận. 
子供を殺した犯人は、どんなに憎んでも憎みきれない。 
Cực kỳ căm ghét hung thủ giết trẻ em. 
 
１９．ＶてのＮ 
Ý nghĩa 1 : N được làm cùng với V 
昨年出産したスミス選手、今回はそのお子さんを連れての
来日です。 
Tuyển thủ Sumisu vừa sinh năm ngoái thì lần này đã đến Nhật 
và mang theo em bé mới sinh đó 
 
Ý nghĩa 2 : N được làm sau khi đã V 
このアイディアを商品化するのは難しいというのが、いろ
いろ試しての結論だ。 
Việc quyết định biến ý tưởng này thành sản phẩm rất là khó, 
nhưng đó là kết luận đã được đưa ra sau khi thử nghiệm rất 
nhiều. 
 
Ｖてのこと :  
Ý nghĩa 3: là bởi vì V 
株を買ったのは老後のことを考えてのことだった。 
Mua cổ phiếu là bởi vì nghĩ cho lúc tuổi già. 
 
２０．Ｖた拍子（ひょうし）に 
Ý nghĩa: ngay sau khi V, thì lập tức v2 ( mang tính chất quán 
tính) 
転んだ拍子に眼鏡が飛んでしまった。 
Ngay sau khi bị ngã thì kính văng ra 
 
２１．Ｖる羽目（はめ）になる。 
Ý nghĩa: bị rơi vào tình cảnh ( ko mong muốn) 
島にキャンプに行ったら台風が来て、１週間も足止めされ
るにはめになった。 
Đi cắm trại trên đảo nhưng có bão, thế là bị ở yên 1 chỗ trong 1 
tuần 
 
２２．めく 
Ý nghĩa: có vẻ là.. 
Học thuộc những từ sau 
春めく・夏めく・秋めく・冬めく 
自信めく : có vẻ tự tin 
皮肉めく: có vẻ mỉa mai 
脅迫（きょうはく）めく: có vẻ đe dọa 
説教（せっきょう）めく: có vẻ giáo huấn 
冗談（じょうだん）めく: có vẻ đùa giỡn 
秘密めく、謎めく: có vẻ bí ẩn 
 
２３．にもほどがある : Quá là….(tiêu cực) 
こんな落書きをするなんて、いたずらにもほどがある。 
Viết bậy như thế này, quá mức nghịch ngợm! 
こんなに仕事をためるなんて、怠けるにもほどがある。 
Để công việc ứ đọng thế này! Quá là lười biếng. 
 
２４．Ｎ／Ｖるには及（およ）ばない。 
Ý nghĩa 1: không cần thiết 
わざわざ来ていただくには及びません。 
Không cần thiết phải mất công tới. 
 
Ý nghĩa 2: không sánh được với 
レストランの味には及ばないが、彼女が作る料理も十分お
いしいです。 
Dù không sánh được với vị ở nhà hàng nhưng món ăn cô ấy nấu 
cũng khá ngon. 
 
２５．Ｖるだけ(は)Ｖ  
Ý nghĩa: không biết kết quả thế nào, không trông mong, nhưng 
cứ làm đã 
1.店長に紹介してあげるだけはしてあげるけど、採用され
るかどうかは保証できないよ。 
Tôi cứ giới thiệu anh với chủ tiệm, nhưng được nhận hay 
không thì tôi không bảo đảm. 
 
2.「だめもとで、頼むだけは頼んでみたら?」 
Vốn dĩ đã không có hi vọng rồi nhưng cứ thử nhờ xem sao? 
 
26. V ます x・たい放題： Thoải mái, tẹt ga, thả phanh (-) 
１．娘は身なりには気をつかうが部屋は散らかし放題だ。 
Con gái tôi chăm chút về ngoại hình, nhưng phòng của nó thì 
bày la liệt. 
２．日ごろの不満を言いたい放題言ったら気分がすっきり
した。 
Tôi cảm thấy thoải mái khi đã nói hết ra những bất mãn hàng 
ngày của mình. 
27. ずくめ：Toàn là 
１.黒ずくめの服装 
Bộ quần áo toàn màu đen 
2. 規則ずくめの学校生活 
Cuộc sống học đường toàn những quy tắc 
２．ホームステイは楽しいことずくめだった。 
Việc ở homestay đã toàn là những điều vui vẻ. 
黒ずくめ 
いいこと、悪いことずくめ 
規則ずくめ 
28. Người + ごとき: thể hiện sự coi thường, khó chịu ( khiêm 
tốn) 
１．あいつ如きが優勝するとは思えないな。 
Cỡ gã đó thì không thể nghĩ là vô địch được. 
２．山田さん如きに教えるものか。 
Tuyệt đối không bảo cho thằng Yamada. 
３．私如き、そんな問題が解けない。 
Như tôi ấy thì không giải được bài đó. 
29. ～いかんでは=いかんによっては：phụ thuộc vào mà có 
thể...  
1．A チームは現在最下位だから、今後数試合の結果いか
んによっては監督の交代もあり得る。 
Đội A hiện đang đứng bét bảng nên dựa vào kết quả các trận 
tới có thể có sự thay đổi huấn luyện viên. 
2．交渉の結果いかんによっては、契約の打ち切りもあり
得る。 
Dựa vào kết quả của cuộc đàm phán mà hợp đồng có thể bị 
chấm dứt. 
３０．からいいようなものの: Bởi vì thế nên vẫn còn may 
đấy,…(vẫn chưa xảy ra vấn đề nghiêm trọng là may rồi) 
1.事故にならなかったからいいようなものの、もっと注意
して運転しなさい！  
Chưa xảy ra tai nạn là may lắm rồi đấy, lái xe phải chú ý 
hơn nữa.  
2. ケガですんだからいいようなものの、もう少しで死ぬと
ころだったのよ！ 
Chỉ bị thương thôi là may lắm rồi đấy khiếp nữa thì chết.  
3.見つかったからいいようなものの、もし見つからなかっ
たらどうしたんだ！ 
May mà còn tìm thấy đấy, nếu như mà không tìm thấy thì biết 
làm thế nào?  
３１．ことやら＝ものやら＝のやら（か。。。分からな
い）: Không biết được là... 
1. この国の経済が回復するのは、いったいいつになるこ
とやら。 
Kinh tế của đất nước này hồi phục thì chẳng biết đến bao 
giờ． 
２．息子は大学を卒業したのに、仕事もせずに何をやっ
ているのやら。 
Mặc dù con trai tôi đã tốt nghiệp đại học rồi , mà nó 
cũng không đi làm, chẳng biết bây giờ nó đang làm cái 
gì?  
３２．チャンス・時・ここぞ＋とばかりに: Nhân cơ hội, 
nhân thời cơ.. 
1.父の機嫌がよかったので、妹は、今がチャンスとばかり
におこづかいをねだった。 
Bởi vì bố đang vui nên em gái tôi đã nhân cơ hội xin tiền tiêu 
vặt.  
 
 
2. 友達がおごってくれると言うので、ここぞとばかりに
ラーメン大盛り（おおざかり）を注文した。 
Vì bạn tôi nói là sẽ chiêu đãi thế nên nhân cơ hội tôi đã gọi 
một suất mì lớn. 
３３．ここぞという場面・時: Thời điểm quan trọng, then 
chốt. 
1. ここぞという大事な場面で力を発揮する方法 
Phương pháp để phát huy năng lực trong những thời 
điểm quan trọng.  
３４．Khoảng thời gian +というもの: Trong suốt khoảng 
thời gian đó (thì luôn…) 
1.ここ１週間というもの、お金がなくてちゃんとしたご飯
を食べていない。 
Suốt một tuần nay thì không có tiền nên không ăn uống 
được cẩn thận.  
2.マークさんはここ１ヶ月というもの、ずっと会社を休ん
でいる。 
Anh Mori suốt một tháng nay đều nghỉ công ty.  
35. でなくてなん(だというの)だろう。 
Không phải cái đó thì là cái gì nữa! 
３６．を境に （さかい） 
Kể từ khi đó là có sự thay đổi đáng kể. 
あの日を境に、職場の友達関係を避けた。 
Kể từ hôm đó, tôi tránh những kiểu quan hệ bạn bè nơi 
công sở. 
37. やしない ：   
Hoàn toàn không( không thèm) ～ / tuyệt đối không  
 
昔の弟は言うことを聞きやしなかったよ。でも社会人にな
って別人みたいに変わった。 
Thằng em tớ ngày xưa nó hoàn toàn chẳng thèm nghe lời 
ai cả. Nhưng mà ra đi làm rồi, nó thay đổi hẳn, cứ như biến 
thành người khác ý. 
38. もしない 
Hoàn toàn không( không thèm) ～ / tuyệt đối không 
A: 失敗したなあ。このシャツ、ちょっと派手（はで）すぎた。－B: 
よく見もしないで買うからよ。 
→ A: Không được rồi. Cái áo này sặc sỡ quá.  ーB: Toàn 
không thèm nhìn mà cứ mua nên bị thế đấy. 
39.  
N の至り 
N の極み 
 
N の至り 感激、感謝、若気（わかげ） 
N の極み 感激、感謝、贅沢 
 
 
４０。とも。。。とも:  
Không rõ được là A hay là B 
Thường đi cùng những từ : 言えない・判断できない・つ
かない・選べない 
 
それは正しいとも間違っているとも言えない 
Việc đó cũng không thể nói được rõ ràng là đúng hay sai 
41. V ますｘ＋に V ～ ：   
Lặp đi lặp lại nhiều lần với mức độ ngày càng tăng  
 
悩みに悩む: rất phiền não 
売れに売れる: bán rất chạy 
降りに降る: mưa rất nhiều 
昨日はテットなので、友達と明け方まで飲みに飲んだ。  
Hôm qua là Tết cho nên, tôi với lũ bạn uống say khướt với 
nhau đến tận sáng. 
４２．V る（が）まま 
Làm y nguyên như được bảo, sai khiến 
言われるがまま 
命令されるがまま 
指示されるがまま 
 
言われるがままにお金を払った 
Thanh toán như được bảo 
 
４３．とは比べ物にならない:  
Không thể thành đối tượng để so sánh với (vì quá khác 
biệt) 
彼はとても優秀で、お前とは比べ物にならないよ。 
Cậu ấy ưu tú lắm, làm sao mà thành đối tượng so sánh với 
mày được. 
44.こととて 
Bởi vì là  
(Đa số trong các trường hợp, sử dụng khi muốn nói xin lỗi 
với đối phương, phía sau thường thể hiện sự tạ lỗi) 
急なこととて、何の準備もできません。 
Do gấp quá nên tôi chưa kịp chuẩn bị gì cả. 
 子供がやったこととて、なんとか大目に見て頂けないでしょうか。 
 Là do tụi trẻ làm nên bằng cách nào (anh/chị) có thể đó 
rộng lượng bỏ qua giùm được không?  
 慣れないこととて、あまり上手に作れませんでした。 
Do không quen với nó, vì vậy tôi không thể làm cho nó tốt 
được.  
 
45. とて 
 Dù là  
私とて悔しい気持ちは皆と同じである。 
Dù là tôi cũng có tâm trạng tức tối như mọi người. 
いくら愚か者だとて、そのくらいのことはわきまえていてもよさそうなもだ
が。 
Dù có đần độn đến đâu, thì những chuyện như thế này, lẽ 
ra nó cũng phải biết phân biệt rõ ràng, vậy mà… 
たとえ病気だとて試合は休むわけにはいくまい。 
Dù có bệnh thì cũng không được nghĩ thi đấu. 
 
46. なりとも 
Dù chỉ (1 chút cũng được)  多少、わずか、一目 
チャンスがあるなら、一目なりとも会ってみたい。 
Nếu có cơ hội thì cho dù chỉ gặp một chút cũng được.  
こちらに非があったことは認めますが、せめて半額なりとも負担いただ
けないでしょうか。 
Tôi thừa nhận rằng bên tôi có lỗi, nhưng mà ít nhất có thể 
chịu trách nhiệm một nửa tiền giúp tôi được không?.  
わずかなりともお役に立てるのであれば、喜んでお手伝いいたしま
す。 
Nếu giúp ích được cho dù chỉ l 
à một chút thì tôi cũng sẵn lòng giúp đỡ.  
 
47. を兼ねて  
Làm v2, đồng thời cùng là để làm v1 
本日は挨拶を兼ねて、開発中の新製品のご紹介に参りま
した。 
Ngày hôm nay thì tôi đến để giới thiệu sản phẩm mới 
đang trong quá trình phát triển và đồng thời cũng là để 
chào hỏi.  
 
日本語のリスニング練習を兼ねて、日本のドラマやアニ
メを見ています。 
Đang xem phim truyền hình và phim hoạt hình của Nhật 
Bản và đồng thời cũng là để luyện nghe tiếng Nhật.  
 
ダイエットを兼ねて、テニスクラブに通おうと思ってる
んだけど、どう思う？ 
Tôi đang định tham gia câu lạc bộ tennis và đồng thời 
cũng là để giảm cân, bạn thấy sao?  
 
 
48. 私としても大変に嬉しい 
Dù là tôi cũng cảm thấy rất vui 
=> Muốn nhấn mạnh ý kiến của cá nhân mình 
 
私としても 
私としては 
私としましても 
私としましては 
 
49. ためしがない   :    
Chưa từng, chưa bao giờ 
 
彼女は約束の時間を守ったためしがない。 
Chưa hề có chuyện cô ta giữ đúng lời hứa 
彼とはよく食事をするが、おごってくれたためしがない。 
Tôi rất thường đi ăn với nó, nhưng chưa hề có chuyện nó bỏ tiền 
ra đãi tôi. 
妹はあきっぽくて、何をやっても三日と続いたためしがな
い。 
Đứa em gái của tôi, tính mau chán, nó chưa hề làm một công 
việc gì quá được 3 ngày. 
 
50．V るには V:  
  V たには V 
Có làm V rồi, nhưng mà 
 
読むには読んだが、分からない。 
新しい言葉は勉強するには勉強したが、覚えられません。 
５１．とみると 
Hễ thấy tình hình như v1 (là phản ứng ngay như v2) 
１．彼は相手が年下だとみると、いつも偉そうに話し始め
る。 
２．課長はめんどくさい仕事だとみると、すぐにその仕事
を部下にまわす。 
３．あの店の店員は客が若者だとみると、とたんに態度が
悪くなる。 
 
52．かれ。。かれ 
Ít nhiều gì, sớm muộn gì, tốt xấu gì…. 
多かれ少なかれ、誰にだって夢がある。 
Ít nhiều gì thì ai cũng có ước mơ. 
遅かれ早かれ、彼は仕事で成功する見込みがある。 
Sớm muộn gì thì anh ấy cũng sẽ có triển vọng thành 
công. 
良かれ悪しかれ、親の考えは保守的だ。（よかれあしか
れ） 
Dù tốt dù xấu thì suy nghĩ của bố mẹ là mang tính 
bảo thủ. 
 
 
５３．N こそ。。。が 
Chỉ có N là.. thôi chứ còn v2 thì… 
私の会社は残業こそ多いですが、給料は高いです。 
あのラーメン屋はサービスこそ悪いが、おいしい。 
あの会社の製品は値段こそ高いが、品質が高い。 
 
54.N くらいのものだ。 
Chỉ có N thôi (ngoài ra không có cái khác) 
彼女が仕事を辞めないように説得できるのは、君ぐらいの
ものだ。 
仕事が忙しくて、ゆっくりできるのは週末ぐらいのもの
だ。 
息子が電話をよこすのは、お金に困った時ぐらいのもの
だ。 
 
 
５５．N という N 
Toàn bộ N 
連休初日は道路という道路は車でいっぱいだ。 
人という人は、少なからず一つは夢を持っているものだ。 
コロナウイルスのせいで、商店街の店という店が閉まって
いる。 
 
56. そびれる 
Quên m ất không làm V, L ỡ mất không làm V  
言いそびれる、聞きそびれる、渡しそびれる  
(Quên không nói, quên không h ỏi, quên không đưa …) 
飛行機で隣の席に座って、とても仲良くなれたのに、連
絡先を聞き そびれてしまった。 
次会ったら絶対に言おうと思っていたけど、今回もまた
言いそびれた。 
申し訳ありません。お伝えしそびれていました。  
 
５７．ものとする 
Coi như là, xem như là 
 
意見を言わない方は賛成しているものとする。 
Những người không nêu ý kiến thì tôi coi như là tán thành. 
 
1週間たってもお返事がない場合はご辞退なさったものと
して扱います。 
Trong trường hợp đã qua một tuần mà không có hồi âm 
thì chúng tôi sẽ xem như là đã từ chối. 
 
住所変更の通知は、その到達によって効力が発生するもの
とする 
Thông báo thay đổi địa chỉ sẽ được coi là có hiệu lực ngay 
khi nó đến. 
 
 
 
５８．ても差し支えない（さしつかえない） 
Cho dù…. cũng không sao 
その書類は印鑑がなくても差し支えない。 
この内容なら、そのまま放送しても差し支えない。 
途中で参加でも差し支えない。 
お支払いは、商品が届いた後でも差し支えない。 
 
５９．暁には 
（あかつきには） 
Sau khi…. 
私が当選した暁には公約を全て実現して見せます。 
成功した暁には、必ずお礼を致します 
成功の暁にはそれを買ってやるぞ！ 
完成した暁には皆様に披露したいと思いますので、ご期待
ください 
 
60.く＋も何ともない。 
Hoàn toàn không… 1 chút nào 
彼のことは聞きたくもなんともない。 
Tôi hoàn toàn không muốn nghe về anh ta. 
私には珍しくもなんともないけど。初めての人は驚くよ
ね。 
Đối với tôi thì hoàn toàn không có gì là hiếm cả nhưng với 
những người gặp lần đầu thì sẽ ngạc nhiên. 
嘘なんて全然知りたくもなんともないけど。  
Tôi hoàn toàn không thích nghe về những tin đồn. 
 
６１．V るんじゃない。 
Đừng có (Cấm/ Không được phép V) 
そんなところで遊ぶんじゃない。 
Đừng chơi ở những nơi như vậy. 
電車の中で走るんじゃない！ 
Đừng chạy trên tàu! 
そんなきたないものを口にいれるんじゃない！ 
Đừng cho những thứ bẩn thỉu như vậy vào miệng! 
６２．V るんじゃなかった。 
Lẽ ra đã không nên làm V 
そんなことするんじゃなかった 
Tôi đáng ra không nên làm điều đó 
結婚なんかするんじゃなかった 
Đáng ra tôi không nên kết hôn 
あの電子メールを送るんじゃなかった 
Đáng ra tôi không nên gửi email đó 
６３．V ますｘ＋でもしたら 
Lỡ chẳng may bị V 
かぜをひきでもしたら大変よ 
もっと注意して運転しなさい！事故を起こしでもしたらど
うするの！ 
歩きスマホはしちゃだめだよ！階段から落ちでもしたら大
ケガするよ 
６４．N＋とでもいうべき 
Có thể gọi là, nên được gọi là 
そこは東洋のパリとでもいうべき優雅な雰囲気のある町で
ある。 
Đó là một thành phố có phong thái thanh lịch, có thể nói là 
Paris của Đông phương. 
彼は映画の神様とでもいうべき存在である。 
Ông ấy có thể nói là một vị thánh trong ngành điện ảnh. 
 
６５．道理で。。わけだ（はずだ） 
A：このジュースの賞味期限は今日までって書いてある 
B：どうりで安いわけだ… 
どうりで嬉しそうな顔をしているわけだ。 
どうりで君は彼を弁護したわけだ。 
 
６６．V ますｘ＋はしない・やしない・もしない 
心配するな。入りはしない 
行きはしない 
６７．だろうに 
Mặc dù   (ấy vậy mà) 
子育てで疲れているだろうに、妻は家事も頑張ってくれてい
る。 
Mặc dù nuôi con mệt rồi, ấy vậy mà vợ tôi vẫn chăm chỉ là
m việc nhà. 
子供を激しく叱るなんてよくないだろうに、叱らないと子供が自
立できない。 
Mặc dù mắng con gay gắt là không tốt, nhưng không mắn
g thì con không thể tự lập được. 
私があなたの立場だったら、辞めているだろうに。 
Tôi mà là bạn thì tôi nghỉ rồi (thế mà bạn không nghỉ) 
６８．ようで（いて） 
吉田さんは普段はおとなしいようでいて、いざとなるとなかなか
  決断力に富んだ女性だ。 
そのとき悟った。しなくてもようでいて、やはり必要なプロセスな
のだと。 
毎日日記を書きつづけることは、 簡単なようでいて、けっこう
難しいことだ。 
Viết nhật ký mỗi ngày tưởng chừng dễ mà lại khá khó. 
６９．N 一つにしても 
Lấy ví dụ 1 cái như N 
食べ方一つにしてもマナーがとても良いと感じる。 
Lấy ví dụ như cách ăn uống thì cũng thấy tác phong rất ch
uẩn. 
例えば虫歯ひとつにしても日々の食生活の違いや、お口の中
の状態の違い、全身状態なども考えて患者様によって様々で
す。 
Ví dụ như là răng sâu, cần nghĩ tới vấn đề chế độ ăn uống
 hàng ngày, trạng thái miệng, trạng thái toàn thân, v.v. sẽ 
khác nhau tùy theo bệnh  
Nhân 
７０．N でいいから 
N thôi cũng được 
一回でいいから。 
友達でいいから。 
嘘でいいから。 
７１．なんでも。。。そうだ。 
Nghe nói hình như là… 
①なんでも、大きな台風が来るそうだよ 
②なんでも山田さんは来月結婚するらしいよ  
③なんでも、彼女は日本語能力試験に満点で合格したんだって！ 
７２．V ずにおく 
Tạm thời sẽ không/ chưa làm gì. 
①今彼女が嫌になったから、彼女の手紙を読まずにおく。 
Bây giờ tôi đang còn gét cô ấy nên chưa đọc thư của cô ấy. 
②年末新しい家を買うことにしたいですから、今贅沢にお金を使わずにおく。 
Cuối năm chúng tôi sẽ mua nhà nên từ bây giờ sẽ không tiêu nhiều tiền. 
③あした病院で検査を受けるなら、夕飯は食べずにおいたほうがいいんじゃないですか。 
Nếu ngày mai phải đi bệnh viện kiểm tra sức khỏe thì tôi nghĩ tốt nhất anh nên để bụng đừng ă
n cơm nhiều.


---
**Nguồn:** `Udemy\Udemy - N1 Course\Update-SGK-N1_ĐỌC-34_Đoản-văn-No-mail.pdf`

N1_Chill Class_ĐỌC 3,4        
ĐỌC 3,4 : Đoản văn 
 BÀI 1: 07/2010 (1) - B 
「コミュニケーション」という言葉はふつう、双方がメッセージを伝え合う
こと、あるいは意思を疎通させること、といった意味合いで用いられているが、こ
れはじっさいのコミュニケーションの全体像をとらえてはいない。たとえば、黙し
て何も語らないこともコミュニケーションの行為であり、また視線の動きやちょっ
とした仕草だけでも、十分にコミュニケーションは成立する。     
  (小竹裕一 『アジア人との正しい付き合い方一異文化へのまなざし』 による) 
 
(?) コミュニケーションの全体像に最も近いものはどれか。  
A. 視線や仕草で相手と意思を疎通させること。             
B. 言葉や言葉以外の方法で思いを伝え合うこと。 
C. 黙って何も言わないことで思いを伝え合うこと。      
D. 言葉を使って相手と意思を疎通させること。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Từ "giao tiếp" thường được sử dụng với ý nghĩa trao đ ổi thông đi ệp hoặc sự 
hiểu biết lẫn nhau giữa hai bên nhưng điều này không phản ánh được bức tranh toàn 
cảnh về giao tiếp thực tế. Ví d ụ, việc im l ặng không nói gì cũng là m ột hành đ ộng 
giao tiếp và thậm chí chỉ cần chuyển động bằng mắt hoặc cử chỉ nhỏ cũng có thể đủ 
để thiết lập sự giao tiếp đầy đủ. 
 
Câu 1. Điều nào sau đây gần nhất với bức tranh tổng thể về giao tiếp? 
A. Giao tiếp với người khác bằng ánh mắt và cử chỉ. 
B. Truyền đạt suy nghĩ thông qua lời nói hoặc phương tiện phi ngôn ngữ. 
C. Truyền đạt suy nghĩ bằng cách giữ im lặng và không nói gì. 
D. Dùng lời nói để giao tiếp với người khác. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 コミュニケーシ
ョン 
COMMUNICATION  Giao tiếp 
2 言葉 NGÔN DIỆP ことば Từ ngữ 
3 双方 SONG PHƯƠNG そうほう Đôi bên, hai bên, hai 
phía 
4 伝え合う TRUYỀN HỢP つたえあう Chia sẻ suy nghĩ, cảm 
xúc, thông tin 
5 疎通 SƠ THÔNG そつう Hiểu ý nhau 
6 意味合い Ý VỊ HỢP いみあい Hàm ý 
7 用いる DỤNG もちいる Áp dụng cho, sử dụng 
8 全体像 TOÀN THỂ 
TƯỢNG 
ぜんたいぞう Bức tranh tổng thể 
9 黙する MẶC もくする Im lặng 
10 語る NGỮ かたる Kể chuyện 
11 行為 HÀNH VI こうい Hành vi 
12 視線 THỊ TUYẾN しせん Ánh mắt 
13 仕草 SĨ THẢO しぐさ Cử chỉ, điệu bộ (body 
language) 
14 成立 THÀNH LẬP せいりつ Tạo thành 
 
LINK QUIZLET  
https://quizlet.com/vn/905161861/n1-mondai-8-bai-1-flash-cards/?i=3uojyn&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
BÀI 2: 7/2010 (2) - D 
 
ネット社会(注1)の匿名性は完全に透明人間の心理です。自分がどこにアクセ
ス(注2)しているかなど、みんなにわかってしまうなら、やっても面白くないはずで
す。それだと制限のある普通の社会と同じだから。ですから、ネット社会の匿名性と
いうのは、心理的には透明人間の世界なのです。しかも初期には規制はほとんどなか
った。今でも巨大 匿名掲示板(注3) 「チャネル」(注4) などでは、犯罪を起こした
場合は摘発されますが、そこまでいかなければ、何を書いてもいい社会になっていま
す。 
(竹内薫・荒野健彦『「透明人間」の作り方』 による) 
(注1) ネット社会 : インターネット上の社会 
(注2) アクセスする : ここでは、インターネットでいろいろなサイトに接続する 
(注3) 匿名掲示板 : 名前を出さずに自由に書き込みができるインターネット上のサイト 
(注4) 「チャネル」 : 日本の匿名掲示板の一つ。幅広い分野を扱い、利用者が多い 
 
(?) 筆者が考えるネット上の透明人間の世界とは、どのようなものか。 
A. 情報の発信者が誰なのかが見えてしまう社会。      
B. 犯罪を起こしても誰からも気づかれない社会。 
C. どんな情報を発信しても犯罪にならない社会。     
D. 誰がどこに接続しているのかわからない社会。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Tính ẩn danh trong xã h ội mạng chính là tâm lý c ủa người vô hình. N ếu mọi 
người biết mình đang truy c ập vào đâu, thì vi ệc đó chẳng còn thú v ị nữa. Vì điều đó 
giống như xã hội bình thường với những hạn chế của nó. Vì vậy, tính ẩn danh của xã 
hội mạng, về mặt tâm lý, là thế giới của người vô hình. Hơn nữa, thời kỳ đầu, hầu như 
không có quy đ ịnh nào. Ngày nay, dù ở các di ễn đàn ẩn danh l ớn như "Channel 
(Kênh)", nếu phạm tội thì sẽ bị truy cứu, nhưng nếu nó không đi quá xa thì bạn có thể 
viết bất cứ điều gì trong xã hội tự do này. 
Câu 1. Thế giới của những người vô hình trên Internet theo như suy nghĩ của tác 
giả là thế giới như thế nào? 
A. Là một xã hội nơi có thể dễ dàng biết được ai là người đang phát tán thông tin. 
B. Là một xã hội mà không có ai nhận ra việc phạm tội. 
C. Là một xã hội mà dù ta phát tán thông tin gì cũng không bị coi phạm tội. 
D. Là một xã hội mà chúng ta không biết ai đang kết nối vào đâu. 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 匿名性 NẶC DANH TÍNH とくめいせい Nặc danh 
2 完全 HOÀN TOÀN かんぜん Viên mãn; toàn diện; đầy đủ 
3 透明人間 THẤU MINH NHÂN GIAN とうめいにんげん Người tàng hình, người vô hình 
4 心理 TÂM LÝ しんり Tâm lý. 
5 アクセス   Truy cập 
6 制限 CHẾ HẠN せいげん Hạn chế 
7 初期 SƠ KÌ しょき Khởi tạo 
8 規制 QUY CHẾ きせい Quy định; quy tắc 
9 巨大 CỰ ĐẠI きょだい Khổng lồ; phi thường 
10 匿名 NẶC DANH とくめい Sự nặc danh 
11 掲示板 YẾT KÌ BẢN けいじばん Bảng thông báo 
12 チャネル   Kênh (tivi, đài) 
13 犯罪 PHẠM TỘI はんざい Tội phạm 
14 摘発 TRÍCH PHÁT てきはつ Sự lộ ra; phơi bày 
 
LINK QUIZLET 
 
https://quizlet.com/vn/902764871/bai-42-flash-cards/?i=4qgd0q&x=1jqt 
 
 
  

N1_Chill Class_ĐỌC 3,4        
BÀI 3: 7/2010 (4) - D 
 
飲料大手の商品開発担当者が「当たり前の名前では消費者の琴線に触れず(注
1)、踏み込みすぎると『ふざけている』と思われる。そのバランスを測り、試行錯
誤を続けるしかない」と語っていましたが、本音でしょう。でも場当たり的なネー
ミング(注2)では過激な競争に勝ち抜けません。音に対する感性を磨き、音の表情に
敏感になり、何はさておき(注3)自社製品を愛し、育てる意欲を持つことがネーミン
グの前提条件です。 
(木通隆行『ネーミングの極意一日本語の魅力は音がつくる』による) 
 
(注1) 琴線に触れず : 心を動かさず 
(注2) 場当たり的なネーミング : 十分考えず思いつきで名前をつけること 
(注3) 何はさておき : まず第一に 
 
(?) 競争に勝つような商品名にするには、まず何が必要だと述べているか。  
A. 音の持つ表情に敏感になり、音と味とのバランスに気を配る。 
B. 自社のイメージを大切に思い、消費者の音の好みを考慮する。 
C. 音と味への感性を磨き、その商品が持つイメージを考慮する。 
D. 開発した商品への思いを大切にし、音の持つ響きに気を配る。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Một người phụ trách phát triển sản phẩm của một công ty đồ uống lớn đã nói 
rằng, "Nếu cái tên quá ph ổ thông thì không th ể chạm đến trái tim ngư ời tiêu dùng, 
nhưng nếu quá l ố lăng thì h ọ sẽ nghĩ chúng tôi đang đùa c ợt. Chúng tôi ch ỉ có thể 
cân nh ắc và th ử nghiệm để tìm ra s ự cân b ằng." Đó là s ự thật. Không th ể chiến 
thắng trong cuộc cạnh tranh khốc liệt với cách đặt tên tạm thời không suy nghĩ c ẩn 
trọng. C ần ph ải mài giũa c ảm quan v ề âm thanh, nh ạy c ảm v ới bi ểu c ảm c ủa âm 
thanh, và trên h ết là phải yêu và muốn nuôi dưỡng sản phẩm của chính mình. Đó là 
điều kiện tiên quyết cho việc đặt tên. 
 
Câu 1. Tác giả nói điều cần thiết đầu tiên để tạo cho sản phẩm một cái tên có thể 
chiến thắng được đối thủ là gì? 
A. Hãy nhạy cảm với sự biểu hiện của âm thanh và chú ý đến sự cân bằng giữa âm 
thanh và mùi vị. 
B. Quan tâm đến hình ảnh của công ty bạn và cân nhắc sở thích về âm thanh của 
người tiêu dùng. 
C. Hãy nâng cao khả năng nhạy cảm của bạn với âm thanh và mùi vị, đồng thời xem 
xét hình ảnh của sản phẩm. 
D. Coi trọng những suy nghĩ về các sản phẩm công ty đã phát triển và chú ý đến sự 
cộng hưởng của âm thanh. 
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 飲料 ẨM LIÊU いんりょう Đồ uống 
2 大手 ĐẠI THỦ おおて Sự mở rộng vòng tay; việc mở 
cả hai tay. 
3 商品開発担当 THƯƠNG PHẨM 
KHAI PHÁT ĐẢM 
ĐƯƠNG 
しょうひんかいはつ
たんとう 
Phụ trách phát triển sản phẩm 
4 消費者 TIÊU PHÍ GIẢ しょうひしゃ Người tiêu dùng; người tiêu 
thụ. 
5 琴線 CẦM TUYẾN きんせん Ｔình cảm sâu xa 
N1_Chill Class_ĐỌC 3,4        
6 触れず= XÚC ふれ Chạm vào, động vào 
7 踏み込み ĐẠP ふみこみ Bước vào 
8 測り TRẮC はかる Đo đạc; cân; kiểm tra 
9 試行 THÍ HÀNH しこう Làm thử,thí điểm 
10 錯誤 THÁC NGỘ さくご Sai lầm 
11 本音 BỔN ÂM ほんね Thật tâm, thật lòng 
12 ネーミング   Đặt tên sản phẩm 
13 競争 CẠNH TRANH きょうそう Sự cạnh tranh; cạnh tranh; thi 
đua 
14 過激な QUÁ KÍCH かげき Quá khích; cực đoan 
15 勝ち抜け THẮNG BẠT かちぬく Vượt qua thử thách, chướng 
ngại lớn 
16 感性 CẢM TÍNH かんせい Cảm tính; tình cảm; nhạy 
cảm; cảm giác 
17 磨き MA がき Đánh bóng; sự cải tiến; láng 
bóng 
18 表情 BIỂU TÌNH ひょうじょう Diện mạo, vẻ mặt 
19 敏感 MẪN CẢM びんかん Mẫn cảm, nhạy cảm 
20 自社製品 TỰ XÃ CHẾ 
PHẨM 
じしゃせいひん Sản phẩm của công ty chúng 
ta 
21 意欲 Ý DỤC いよく Sự mong muốn; sự ước muốn 
22 前提条件 TIỀN ĐỀ ĐIỀU 
KIỆN 
ぜんていじょうけん Điều kiện tiên quyết 
 
LINK QUIZLET 
https://quizlet.com/vn/902803583/bai-43-flash-cards/?i=4qgd0q&x=1jqt 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 4: 12/2010 (1) - A 
 
他の人の成功事例をマネすることが、必ずしも自分の成功を約束するもので
はなくなったのがいまの時代です。昨日までの成功は、今日の成功を意味しませ
ん。そのような時代に大切なのは、やはり創造力です。そして創造力とは新しいも
のをつくりだす力を意味している以上、失敗を避けて培えるものではありません。
創造力を身につける上でまず第一に必要なのは、決められた課題に解を出すことで
はなく、自分で課題を設定する能力です。 
(畑村洋「太郎失敗学のすすめ」による) 
 
(?) 筆者によると、いまの時代に創造力を養うには何が必要か。  
A. 失敗を経験しながら課題を見つけ出す力。       
B. 失敗を重ねながら課題をこなしていく力。 
C. 失敗を生かしながら課題を遂行する力 。          
D. 失敗を受け入れながら課題を解く力。 
 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Trong thời đại hiện nay, vi ệc bắt chước các ví d ụ thành công c ủa người khác 
không còn là b ảo đ ảm cho s ự thành công c ủa b ản thân. S ự thành công c ủa ngày 
hôm qua không có nghĩa là sự thành công của ngày hôm nay. Điều quan trọng trong 
thời đại như v ậy chính là s ức sáng t ạo. Và s ức sáng t ạo, nghĩa là kh ả năng tạo ra 
điều mới, nên nó  không th ể phát triển nếu tránh né th ất bại. Điều đầu tiên và quan 
trọng cần có để phát triển sức sáng tạo không phải là tìm ra gi ải pháp cho m ột vấn 
đề đã được đặt ra, mà là khả năng tự mình đặt ra vấn đề. 
Câu 1. Theo tác gi ả, cần làm gì đ ể bồi dưỡng năng lực sáng t ạo trong th ời đại 
ngày nay? 
A. Khả năng tìm ra vấn đề khi gặp thất bại. 
B. Khả năng hoàn thành nhiệm vụ dù đã thất bại nhiều lần. 
C. Khả năng hoàn thành nhiệm vụ đồng thời vận dụng những thất bại. 
D. Khả năng giải quyết vấn đề khi chấp nhận thất bại. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 成功 THÀNH CÔNG せいこう Thành công. 
2 事例 SỰ LỆ じれい Ví dụ thực tế 
3 マネする   Bắt chước 
4 約束 ƯỚC THÚC やくそく Lời hứa, cam kết 
5 成功 THÀNH CÔNG せいこう Thành công. 
6 創造力 SANG TẠO LỰC そうぞうりょく Sức mạnh sáng tạo 
7 以上 DĨ THƯỢNG いじょう Lớn hơn hoặc bằng 
8 失敗 THẤT BẠI しっぱい Sự thất bại 
9 避けて TỊ さける Phòng; dự phòng 
10 身につける THÂN みにつける Trang bị cho bản thân 
11 必要 TẤT YẾU ひつよう Cấp thiết, cần thiết 
12 設定 THIẾT ĐỊNH せってい Sự cài đặt; sự thiết lập 
13 能力 NĂNG LỰC のうりょく Khả năng 
 
LINK QUIZLET 
https://quizlet.com/vn/902803695/bai-44-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 5: 12/2010 (2) - C 
 
価値観や科学的常識は、誰にとってもいつの世でも、変わらぬものだと感じ
がちです。しかしそれは雲の形のように、一見、静止しているように見えて、じつ
はゆっくりと変化しています。あまりにもゆっくり変化するため、多くの人が、雲
は静止画のように変化しないものだと信じているのです。誰もが、たまたま自分の
成長期に見ていた雲こそが「正しい雲の形」だと思い込みます。 
こうしてそれぞれの世代の人の脳裏にある雲の姿は、お互いに少しずつズレ
てきて、すれ違いが起こるのです。 
(藤沢晃治「わかりやすい教え方」の技術一教え上手」になるための13のポイントによる) 
 
(?) 筆者は、すれ違いが起こる原因をどのように説明しているか。 
A.見る雲の形はどの世代でも変わらないが、一人一人は違う雲の形を見てい
るため。 
B.見る雲の形はどの世代でも同じだが、一人一人の記憶の中で雲の形が変わ
っていくため。 
C.見る雲の形は世代によって違うが、一人一人は雲の形はいつも同じだと思
っているため。 
D.見る雲の形は世代によって異なるが、一人一人の好きな雲の形はそれ以上
に違うため。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Chúng ta có xu hư ớng cảm thấy rằng các giá tr ị quan và nhận thức chung về 
khoa học là không thay đ ổi đối với tất cả mọi người bất kể thời đại nào. Tuy nhiên, 
giống như hình dạng của một đám mây, thoạt nhìn nó có vẻ đứng yên nhưng thực tế 
nó đang dần thay đổi.  Do thay đ ổi quá chậm, nhiều người tin rằng mây không thay 
đổi như một bức tranh tĩnh. M ọi người đều cho rằng hình dạng của những đám mây 
mà họ nhìn thấy khi lớn lên mới là hình dạng đúng (của mây). Vì thế, hình ảnh những 
đám mây trong tâm trí con người mỗi thế hệ dần trở nên khác biệt và nảy sinh những 
hiểu lầm. 
Câu 1. Tác giả giải thích nguyên nhân gây ra sự hiểu lầm như thế nào? 
A. Hình dạng của đám mây mà chúng ta nhìn th ấy vẫn giống nhau dù ở thế hệ nào, 
nhưng mỗi người lại nhìn thấy một hình dạng khác nhau của đám mây. 
B. Hình d ạng của những đám mây nhìn th ấy ở mọi thế hệ đều giống nhau, nhưng 
hình dạng của những đám mây thay đổi theo trí nhớ của mỗi người. 
C. Mặc dù hình dạng của những đám mây được nhìn thấy khác nhau tùy theo thế hệ, 
nhưng mỗi người đều cho rằng hình dạng của những đám mây luôn giống nhau. 
D. Hình dạng của những đám mây mà chúng ta nhìn thấy khác nhau tùy theo thế hệ, 
nhưng hình dạng đám mây yêu thích của mỗi người lại càng khác nhau. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 価値観 GIÁ TRỊ QUAN かちかん Quan niệm về giá trị 
2 科学的 KHOA HỌC ĐÍCH かがくてき Có tính khoa học 
3 常識 THƯỜNG THỨC じょうしき Thường thức (thứ mà ai cũng 
biết) 
4 一見 NHẤT KIẾN いっけん thoạt nhìn, thoáng qua 
5 静止 TĨNH CHỈ せいし Tĩnh, đứng yên 
6 静止画 TĨNH CHỈ HỌA せいしが Hình ảnh tĩnh (ảnh tĩnh) 
7 成長期 THÀNH TRƯỜNG KÌ せいちょうき Tuổi dậy thì, thời kỳ tăng trưởng 
8 世代 THẾ ĐẠI せだい Thế hệ 
9 脳裏 NÃO LÍ のうり Tâm trí 
10 お互い HỖ おたがい Cùng nhau, với nhau 
 
LINK QUIZLET  
https://quizlet.com/vn/905634405/n1-mondai-8-bai-2-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 6: 12/2010 (4) - B 
 
データが示す姿は光の部分もあれば影の部分もある。そのどちらか一方だけ
を強調することは、分かりやすさという面はあるものの、いたずらに対立軸を先鋭
化 (注) させたり、無用の混乱を生じさせる危険性がある。これらをいちいち意識
しているのは大変であるが、少なくともデータをやみくもに信じてしまう態度だけ
はとるべきでない。データの罠を見分ける力、すなわちデータリテラシーは、多く
の人にとって必要なものではあるが、本来は、公平で客観的報道に努めるべきメデ
ィアに携わる人間が、しっかりと備えていなければならない必須の条件である。 
(田村秀「データの異一世論はこうして作られる」による 
 
(注) 先鋭化させる、ここでは、見立たせる 
 
(?) 筆者によると、報道に携わる人間が備えておくべき必須条件とは何か。 
A. 示されたデータから影の部分を取り除く力。      
B. 示されたデータが偏ったものではないか見抜く力。 
C. 示されたデータをありのまま分かりやすく伝える力。 
D. 示されたデータから報道目的に合ったものを選び取る力。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Dữ liệu cho thấy cả phần ánh sáng lẫn bóng tối. Chỉ nhấn mạnh một trong hai 
khía cạnh có thể làm cho mọi thứ dễ hiểu hơn, nhưng cũng có nguy cơ làm cho tr ục 
đối lập trở nên gay g ắt hơn ho ặc tạo ra s ự nhầm lẫn không c ần thiết. Việc luôn ý 
thức về điều này là khó khăn, nhưng ít nh ất chúng ta không nên ch ỉ đơn thuần tin 
tưởng vào dữ liệu một cách mù quáng. Khả năng phân biệt bẫy dữ liệu, hay nói cách 
khác là năng l ực về dữ liệu, là đi ều cần thiết đối với nhiều người, nhưng v ề cơ bản, 
những người làm vi ệc trong lĩnh v ực truyền thông, nh ững người nỗ lực cho s ự báo 
cáo công bằng và khách quan, phải thực sự trang bị đầy đủ điều kiện cần thiết này. 
 
Câu 1. Theo tác giả, điều kiện cơ bản mà người tham gia báo cáo cần phải có là 
gì? 
A. Khả năng loại bỏ cái bóng từ dữ liệu đã được trình bày. 
B. Khả năng nhận biết liệu dữ liệu được trình bày có bị sai lệch hay không. 
C. Khả năng truyền tải y nguyên những dữ liệu được trình bày một cách dễ hiểu. 
D. Khả năng lựa chọn từ dữ liệu được trình bày những gì phù hợp cho mục đích báo 
cáo. 
 
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 データ   Dữ liệu 
2 部分 BỘ PHÂN ぶぶん Bộ phận; phần 
3 強調する CƯỜNG ĐIỀU きょうちょうする Làm nổi bật 
4 対立軸 ĐỐI LẬP TRỤC たいりつじく Trục đối lập. 
5 無用 VÔ DỤNG むよう 
Vô dụng; không cần 
thiết. 
N1_Chill Class_ĐỌC 3,4        
6 先鋭化 TIÊN DUỆ HÓA せんえいか Căn bản; sắc nhọn 
7 混乱 HỖN LOẠN こんらん Lúng túng; hỗn loạn 
8 危険 NGUY HIỂM きけん 
Sự nguy hiểm; mối 
nguy hiểm 
9 態度 THÁI ĐỘ たいど Thái độ. 
10 見分ける KIẾN PHÂN みわける Phân biệt; làm rõ 
11 
データリテ
ラシー   Hiểu biết về dữ liệu 
12 公平 CÔNG BÌNH こうへい Công bình; công bằng 
13 客観的 
KHÁCH QUAN 
ĐÍCH きゃっかんてき 
Khách quan; một cách 
khách quan 
14 報道 BÁO ĐẠO ほうどう 
Sự báo cho biết; sự 
thông báo 
15 努める NỖ つとめる 
Sự cố gắng, nỗ lực của 
bản thân 
16 メディア   
Phương tiện truyền 
thông 
17 携わる HUỀ たずさわる 
Tham gia vào việc; làm 
việc 
18 備えて BỊ そなえる Chuẩn bị; phòng bị 
19 必須 TẤT TU ひっす Cần thiết 
20 条件 ĐIỀU KIỆN じょうけん Điều kiện; điều khoản 
 
LINK QUIZLET 
https://quizlet.com/vn/902803809/bai-45-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 7: 07/2011 (1) - B 
 
食器のバラエティこそ、日本のやきもの (注) の特色の一つだと思います。
そして、日本人のやきものに対する思いとか愛着は、食器のみならず、種類の豊富
さにあらわれているといってもいいでしょう。私たちは食事のたびに、もちろん料
理も食べていますが、知らずに目で食器も食べているのです。だから興味・関心が
ないというのは、不注意なだけなのです。すでに下地はできているのですから、あ
と一歩踏みこめば、やきものに興味・関心がグッと深まるはずなのだと思います。 
(江口混『やきものの世界』による) 
(注)) やきもの : 陶芸品 
 
(?) 筆者の考えに合うのはどれか。 
A. 食事のたびに食器を眺めることで、陶芸品への愛着が強まる。 
B. 日常使う食器に注意を向けることで、陶芸品への関心が高まる。 
C. 食器を通して陶芸品に興味を持つことで、芸術全般への関心が高まる。 
D. 家庭にいろいろな食器を取り入れることで、陶芸品への愛着が強まる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Tôi nghĩ sự đa dạng của dụng cụ ăn uống chính là một trong những đặc trưng 
của gốm sứ Nhật Bản (yakimono). Và tình cảm cũng như sự yêu thích của người Nhật 
đối với gốm không ch ỉ thể hiện qua b ộ đồ ăn, mà còn qua s ự phong phú v ề chủng 
loại c ủa chúng. M ỗi khi ăn, chúng ta không ch ỉ thưởng th ức món ăn mà còn "ăn" 
bằng mắt mà không hề nhận ra. Vì vậy, việc không quan tâm, không có h ứng thú chỉ 
là do không chú ý mà thôi. B ởi vì n ền tảng đã đư ợc hình thành s ẵn rồi, chỉ cần bạn 
bước thêm một bước nữa, tôi nghĩ sự quan tâm, hứng thú của bạn với gốm sẽ trở nên 
sâu sắc hơn. 
 
Câu 1. Đáp án nào phù hợp với ý tưởng của tác giả? 
A. Nhìn vào bộ đồ ăn (bát, đũa..) mỗi khi ăn sẽ giúp bạn gắn bó với đồ gốm hơn. 
B. Bằng cách để tâm đến bộ đồ ăn hàng ngày, mọi người sẽ quan tâm hơn đến gốm 
sứ. 
C. Bằng cách quan tâm đ ến gốm sứ qua bộ đồ ăn, mối quan tâm c ủa một người đối 
với nghệ thuật nói chung sẽ tăng lên. 
D. Việc sắm nhiều loại bộ đồ ăn trong nhà sẽ tăng cường sự gắn bó của bạn với gốm 
sứ. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 食器 THỰC KHÍ しょっき Bát đĩa, chén bát 
2 バラエティ Variety  đa dạng; phong phú 
3 やきもの   
đồ bằng đất nung (bát 
đĩa, đồ gốm...) 
4 特色 ĐẶC SẮC とくしょく 
Đặc điểm; ưu điểm nổi 
bật 
5 愛着 ÁI TRỨ あいちゃく 
Gắn bó, yêu tha thiết; 
quyến luyến 
6 豊富 PHONG PHÚ ほうふ phong phú; giàu có 
7 食事 THỰC SỰ しょくじ Dùng bữa, bữa ăn 
8 関心 QUAN TÂM かんしん quan tâm; quan tâm 
9 不注意 BẤT CHÚ Ý ふちゅうい 
Coi nhẹ; coi thường; 
không chú ý 
10 興味 HƯNG VỊ きょうみ Hứng thú 
11 下地 HẠ ĐỊA したじ Nền tảng, nền móng 
12 一歩踏み NHẤT BỘ ĐẠP いちほふみ Bước một bước 
13 深まる THÂM ふかまる 
Sâu thêm; sâu sắc 
thêm 
 
LINK QUIZLET  
https://quizlet.com/vn/905634895/n1-mondai-8-bai-3-flash-cards/?i=3uojyn&x=1jqt 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 8:  07/2011 (2) - D 
 
おとなは子どもに「嘘つきは泥棒のはじまり」として正直であることを強要
しますが、弱者は苦しい嘘をついてでも自らの尊厳を守ろうとします。論理的に正
しいことを理性と呼ぶとすれば、理性的にあることができるのは強者だからです。
強者はそれゆえに理性的に弱者の過ちを責めようとしますが、弱者の立場からいえ
ば、それは何の意味も持たないことが多いのです。弱者のする謝罪とは、劣勢を一
時的に解消する手続きや儀式にすぎないのです。 
(吉田傘二『ヒトとサルのあいだー一精神はいつ生まれたのか』による) 
 
(?) 筆者は、弱者をどのようにとらえているか。 
A. 弱者は正直であることで自らの尊厳を守ろうとする。  
B. 弱者は理性を持って自らの過ちをわびようとする。 
C. 弱者は正論に頼って劣勢を解消しようとする。    
D. 弱者は謝罪することで自らを守ろうとする。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Người lớn thường dạy dỗ trẻ con phải luôn trung thực với quan niệm rằng "nói 
dối là khởi đầu của việc trở thành kẻ trộm", ấy vậy những người yếu thế thường nói 
dối để bảo vệ lòng tôn nghiêm c ủa mình dù cho đó là l ời nói d ối đau kh ổ. Nếu gọi 
việc làm đúng theo logic là lý trí, thì chỉ có người mạnh mới có thể lý trí. Chính vì vậy, 
người mạnh thường trách móc l ỗi lầm của người yếu từ góc độ lý trí nhưng t ừ quan 
điểm của người yếu thế, việc đó thường không có ý nghĩa gì. Lời xin lỗi của người yếu 
thường chỉ là thủ tục hay hành động tạm thời để giải quyết sự yếu thế của họ. 
 
Câu 1. Tác giả nhìn nhận thế nào là kẻ yếu? 
A. Kẻ yếu cố gắng bảo vệ lòng tôn nghiêm của mình bằng cách trung thực. 
B. Kẻ yếu cố gắng xin lỗi cho lỗi lầm của mình bằng lý trí. 
C. Kẻ yếu cố gắng khắc phục nhược điểm của mình b ằng cách v ịn vào nh ững lý l ẽ 
đúng đắn. 
D. Kẻ yếu cố gắng bảo vệ mình bằng cách xin lỗi. 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 嘘つき HƯ うそつき Kẻ nói dối, kẻ nói láo 
2 泥棒 NÊ BỔNG どろぼう Kẻ trộm, kẻ cắp 
3 正直 CHÁNH TRỰC しょうじき Chính trực, thành thực 
4 強要 CƯỜNG YẾU きょうよう Ép buộc 
5 嘘 HƯ うそ Nói dối, bịa chuyện 
6 尊厳 TÔN NGHIÊM そんげん Tôn nghiêm, tôn trọng 
7 論理的 LUẬN LÍ ĐÍCH ろんりてき Tính logic 
8 理性 LÍ TÍNH りせい Lý tính; lý trí 
9 立場 LẬP TRÀNG たちば Lập trường 
10 謝罪 TẠ TỘI しゃざい Xin lỗi 
11 劣勢 LIỆT THẾ れっせい Kém hơn; yếu hơn 
12 解消 GIẢI TIÊU かいしょう Giải tỏa, xóa bỏ 
13 手続き THỦ TỤC てつづき Thủ tục , quy trình. 
14 儀式 NGHI THỨC ぎしき Nghi thức, nghi lễ 
 
LINK QUIZLET  
 
https://quizlet.com/vn/905635521/n1-mondai-8-bai-4-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 9: 07/2011 (4) - D 
 
思春期を迎えた最近の子どもがストレスに弱いのは、それまでの発達過程で
適度にストレスにさらされる経験を十分にへてこなかったことが深く関係してい
る。しかもそれは、彼らが社会化を十分に遂げてこなかったことと等しい。という
のも、１0代前半までの子どもは、それまでの生活圏を出てより広い社会的文脈のな
かでいかにして自己を実現させるかという課題に取り組むなかで、もっとも強くス
トレスを味わうからにほかならない。 
(正高信男『父親力』 による) 
 
(?)筆者は、思春期を迎える前の子どもにとってどんな経験が必要だと考えている
か。 
A. 家庭の外の社会で多くの社会問題に取り組む経験。 
B. 日々の生活の場で自分自身と向き合うような経験。 
C. 広い社会の中で自分を鍛えることができるような経験。 
D. 日常生活の中で個人の発達段階に応じた役割を担う経験。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Gần đây tr ẻ em bước vào tu ổi dậy thì tr ở nên nhạy cảm và căng th ẳng là do 
trong quá trình p hát triển trước đó, chúng chưa có đ ủ kinh nghiệm tiếp xúc với căng 
thẳng. Hơn n ữa, điều này tương đương v ới việc chúng chưa đư ợc xã h ội hóa hoàn 
toàn. Lý do là vì, tr ẻ em đến trước tuổi 10 sẽ trải qua căng th ẳng mạnh mẽ nhất khi 
họ đối mặt với thách thức là làm thế nào để thực hiện bản thân mình trong b ối cảnh 
xã hội rộng lớn hơn so với phạm vi sống của họ trước đó. 
Câu 1. Tác giả cho rằng những trải nghiệm nào là cần thiết cho trẻ trước khi 
chúng sang tuổi thiếu niên? 
A. Trải nghiệm đối phó giải quyết nhiều vấn đề xã hội trong một xã hội bên ngoài gia 
đình. 
B. Trải nghiệm khiến chúng phải đối diện với chính mình trong cuộc sống hàng ngày. 
C. Trải nghiệm cho phép chúng rèn luyện bản thân trong xã hội rộng lớn. 
D. Trải nghiệm đảm nhận các vai trò phù hợp với giai đoạn phát triển của mỗi cá 
nhân trong cuộc sống hàng ngày. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 思春期 TƯ XUÂN KÌ ししゅんき Tuổi dậy thì 
2 迎える NGHÊNH むかえる Nghênh tiếp 
3 発達 PHÁT ĐẠT はったつ Sự phát triển 
4 過程 QUÁ TRÌNH かてい Quá trình; giai đoạn 
5 適度 THÍCH ĐỘ てきど Mức độ vừa phải; mức độ thích hợp 
6 十分 THẬP PHÂN じゅうぶん Đầy đủ; hoàn toà 
7 社会化 XÃ HỘI HÓA しゃかいか Xã hội hóa 
8 遂げて TOẠI とげる Đạt tới; đạt được 
9 等しい ĐẲNG ひとしい Công bằng, bình đẳng 
10 生活圏 SANH HOẠT QUYỂN せいかつけん Khu vực sống, khu vực của sự sống 
11 文脈 VĂN MẠCH ぶんみゃく Văn cảnh; ngữ cảnh 
12 実現 THỰC HIỆN じつげん Thực hiện. 
13 取り組む THỦ TỔ とりくむ Nỗ lực; chuyên tâm 
 
LINK QUIZLET 
https://quizlet.com/vn/902803901/bai-46-flash-cards/?i=4qgd0q&x=1jqt 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 10: 12/2011 (1) - C 
 
人間は、目の前の物やできごとを、自分の目だけで見ているとか、感じてい
るというように思うかもしれないが、実際には、脳の中では、同時に記憶の中から
同じような情報を引っ張り出して、素早く比較、検討しているのだ。つまり、勘が
いいとか、察しがいいというのは、目で見たこと、開いたことだけでものごとを判
断しているわけではなく、想像力が発達しているということになる。脳の記憶をい
かにうまく使いこなしているかという差が表れてくるのだ。 
(米山公啓『「頭がいい」とはどういうことか』による) 
 
(?) 筆者によると、勘や察しがいいとはどういうことか。 
A.目や耳で得られる情報から、経験したことのないものごとを瞬時に判断できる。 
B.今までの記憶にこだわらずに、目の前のできごとの本質を素早くとらえられる。 
C.頭の中に蓄積した情報を上手に活用し、目の前のものごとを瞬時に判断できる。 
D.目や耳から入る情報に集中し、その場のできごとの全体を一瞬で理解できる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Con ngư ời có th ể nghĩ r ằng h ọ chỉ nhìn và c ảm nh ận m ọi th ứ xung quanh 
bằng mắt của mình, nhưng thực tế, trong não bộ, họ cũng đồng thời rút ra thông tin 
tương tự từ ký ức để nhanh chóng so sánh và đ ối chiếu. Nói cách khác, vi ệc có tr ực 
giác tốt hay phán đoán t ốt không chỉ là dựa vào nh ững gì được nhìn thấy hay nghe 
thấy, mà còn là do trí tư ởng tượng phát triển tốt. Sự khác biệt trở nên rõ ràng ở việc 
chúng ta sử dụng hiệu quả ký ức của não bộ tốt đến mức nào. 
 
Câu 1. Theo tác giả, có trực giác và trực giác tốt là như thế nào? 
A. Bạn có thể ngay lập tức đánh giá những điều bạn chưa từng trải qua trước đây từ 
những thông tin thu thập được bằng cách nhìn và nghe. 
B. B ạn có th ể nhanh chóng n ắm bắt được bản chất của các s ự kiện trước mắt mà 
không cần lo lắng về những ký ức trong quá khứ. 
C. Bạn có thể tận dụng tốt thông tin đã tích lũy trong đầu và đưa ra quyết định ngay 
lập tức về những gì trước mắt. 
D. Có th ể tập trung vào thông tin nh ận được qua m ắt và tai và ngay l ập tức hiểu 
được toàn bộ những gì đang xảy ra tại hiện trường. 
 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 人間 NHÂN GIAN にんげん Nhân loại; con người; 
loài người 
2 実際 THỰC TẾ じっさい Thực tế 
3 脳 NÃO のう Não 
4 記憶 KÍ ỨC きおく Kí ức; trí nhớ 
5 情報 TÌNH BÁO じょうほう Thông tin; tin tức 
6 引っ張り DẪN TRƯƠNG ひっぱり Kéo dài, căng 
7 素早く TỐ TẢO すばやく Nhanh, nhanh chóng 
8 比較 BỈ GIÁC ひかく So sánh 
9 検討 KIỂM THẢO けんたい Xem xét, cân nhắc 
10 勘がいい KHÁM かんがいい Trực giác tốt 
11 察し SÁT さっし Xem xét; phỏng đoán 
12 判断 PHÁN ĐOẠN はんだん Phán đoán 
13 想像力 TƯỞNG TƯỢNG LỰC そうぞうりょく Sức tưởng tượng. 
14 発達 PHÁT ĐẠT はったつ pPhát triển 
 
LINK QUIZLET  
 
https://quizlet.com/vn/905635876/n1-mondai-8-bai-5-flash-cards/?i=3uojyn&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
BÀI 11: 12/2011 (2) - B 
 
専門家・研究者やマスコミには、ごみ問題や斜面林や里山 (注)) などの破壊
といった身近な環境問題を重視せず、いくつかの代表的な環境問題ばかりを取り扱
う傾向が強い。マスコミなどが注目する環境問題に取り組んでいることが、専門家
の専門性を誇示し、専門家としてのステータスを維持させることにつながっている
かのように見える。環境問題が話題性の高いものに特化されることは、日常的な環
境問題が大部分の専門家・研究者から無視され、放置されることになる。 
(御代川貴久夫・関庁子『環境教育を学な人のために』による) 
(注) 里山 (さとやま) : 人家の近くにあって、人の生活と関係が深い森林や山 
 
(?)筆者は、専門家・研究者の環境問題への取り組みをどのようにとらえている
か。 
A. 専門性を生かして日常的な環境問題の解決を図っている。 
B. マスコミが注目している問題に特化して研究を進めている。 
C. 社会的に注目されている身近な課題に積極的に取り組んでいる。 
D. マスコミと連携してあまり注目されない問題を取り上げている。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Các chuyên gia, nhà nghi ên cứu và phương ti ện truyền thông thư ờng có xu 
hướng không chú tr ọng vào các v ấn đề môi trường gần gũi như v ấn đề rác thải, sự 
phá huỷ của các sườn núi dốc và vùng đồi núi gần nhà dân, mà chỉ tập trung vào một 
số vấn đ ề môi trư ờng tiêu bi ểu. Vi ệc t ập trun g vào các v ấn đ ề môi trư ờng đư ợc 
phương tiện truyền thông quan tâm dư ờng như giúp chuyên gia kh ẳng định chuyên 
môn của họ và duy trì v ị thế chuyên gia của mình. Việc chỉ tập trung vào nh ững vấn 
đề môi trường có tính th ời sự cao dẫn đến việc đa số các chuyên gia và nhà nghiên 
cứu bỏ qua và bỏ mặc các vấn đề môi trường hàng ngày. 
 
Câu 1. Tác giả nhìn nhận thế nào về nỗ lực của các chuyên gia và nhà nghiên c ứu 
trong việc giải quyết các vấn đề môi trường? 
A. Họ vận dụng kiến thức chuyên môn của mình để giải quyết các vấn đề môi trường 
hàng ngày. 
B. Họ nghiên cứu tập trung vào các v ấn đề đang thu hút s ự chú ý c ủa giới truyền 
thông. 
C. Họ tích cực giải quyết các v ấn đề quen thuộc đang thu hút s ự quan tâm c ủa xã 
hội. 
D. H ọ làm vi ệc v ới gi ới truy ền thông đ ể nêu b ật những v ấn đ ề chưa đư ợc chú ý 
nhiều. 
 
 
 
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 専門家 CHUYÊN MÔN 
GIA 
せんもんか Chuyên gia 
2 研究者 NGHIÊN CỨU 
GIẢ 
けんきゅうしゃ Nhà nghiên cứu 
3 里山 LÍ SAN さとやま Ngọn núi gần nhà 
4 破壊 PHÁ HOẠI はかい Phá hủy 
5 身近 THÂN CẬN みぢか Thân cận 
N1_Chill Class_ĐỌC 3,4        
6 環境 HOÀN CẢNH かんきょう Hoàn cảnh 
7 重視 TRỌNG THỊ じゅうし Coi trọng; coi trọng. 
8 代表的 ĐẠI BIỂU ĐÍCH だいひょうてき Mang tính đại diện 
9 取り扱う THỦ TRÁP とりあつかう Thao tác; sử dụng 
10 傾向 KHUYNH 
HƯỚNG 
けいこう Khuynh hướng; xu 
hướng 
11 マスコミ MASS 
COMMUNICATIO
N 
 Giới báo chí 
12 取り組む THỦ TỔ とりくむ Nỗ lực; chuyên tâm 
13 誇示する KHOA KÌ こじ Phô trương; khoa 
trương; khoe khoang 
14 ステータス STATUS  Địa vị; vị trí xã hội 
15 維持 DUY TRÌ いじ Duy trì 
16 特化 ĐẶC HÓA とっか Chuyên môn hoá, 
chuyên hóa (kinh 
doanh), chuyên làm gì 
17 日常的 NHẬT THƯỜNG 
ĐÍCH 
にちじょうてき Mang tính thường 
ngày. 
18 大部分 ĐẠI BỘ PHÂN だいぶぶん Đại bộ phận; phần lớn 
19 無視 VÔ THỊ むし Xem thường; phớt lờ 
20 放置 PHÓNG TRÍ ほうち Làm ngơ, bỏ mặc 
 
LINK QUIZLET  
https://quizlet.com/vn/905636244/n1-mondai-8-bai-6-flash-cards/?i=3uojyn&x=1jqt 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 12: 12/2011 (4) - D 
 
人は一人では生きられない。よほどの変人か仙人(注)のような人でなけれ
ば、人は世の中と無関係には生きられない。しかも、その人世の中というものは固
定されたものではなく、ものすごい速さで形を変えていて、それにいちいち適応し
ていくのには、体力も技術も精神力も要る。そんな化け物(注)のような世の中から
自分を守るために、一人きりで孤高の城に籠城すれば(注)、やがて孤独に自滅す
る。その矛盾をどうしていったらいいのだろう。 
(山本文『緒結婚』 による) 
(注) 仙人 (せんにん) : 世の中と離れて生きる神のような人 
(注) 化け物 : 怪物 
(注) 孤高の城に籠城する : ここでは、外部との接触を一切持たずに自分の殻に閉じこもる 
 
(?) この文章で筆者が述べていることは何か。 
A. 世の中から自分を守るには一人で生きる精神力が必要だ。 
B. 世の中の矛盾に耐えるための精神力を維持するのは大変だ。 
C. 社会にうまく適応できたとしても、人間には孤独も必要だ。 
D. 人は孤独に生きられないが、世の中に合わせるのも大変だ。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Con người không th ể sống một mình. Tr ừ khi là ngư ời lập dị hoặc ẩn sĩ, m ọi 
người không th ể sống mà không liên quan đ ến thế giới xung quanh. Hơn n ữa, thế 
giới n ày không ph ải là m ột th ứ cố định, nó thay đ ổi hình d ạng v ới t ốc đ ộ khủng 
khiếp, và vi ệc thích nghi v ới từng thay đ ổi đó đòi h ỏi sức lực, kỹ thuật và s ức mạnh 
tinh thần. Để tự bảo v ệ mình kh ỏi thế giới như con quái v ật này, n ếu bạn tự nhốt 
mình trong lâu đà i cô l ập, cu ối cùng b ạn s ẽ tự hủy di ệt chính mình trong cô đ ộc. 
Chúng ta nên làm gì trước sự mâu thuẫn này? 
 
Câu 1. Tác giả đang nói về điều gì trong bài viết này? 
A. Để bảo vệ bản thân kh ỏi thế giới, bạn c ần có s ức mạnh tinh th ần để sống một 
mình. 
B. Thật khó để duy trì s ức mạnh tinh th ần để chịu đựng những mâu thu ẫn của thế 
giới. 
C. Con người cũng cần sự cô độc, ngay cả khi họ đã thích nghi tốt với xã hội. 
D. Con người không thể sống một mình nhưng cũng khó thích nghi với thế giới. 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 変人 BIẾN NHÂN へんじん 
Người kỳ quặc; người 
kỳ dị 
2 仙人 TIÊN NHÂN せんにん Tiên nhân (thần tiên) 
3 無関係 VÔ QUAN HỆ むかんけい 
Không quan hệ, không 
có liên quan tới 
4 固定 CỐ ĐỊNH こてい Cố định; cố định 
5 適応 THÍCH ỨNG てきおう thích ứng 
6 体力 THỂ LỰC たいりょく Sức lực 
7 技術 KĨ THUẬT ぎじゅつ Kỹ thuật 
8 精神力 TINH THẦN LỰC せいしんりょく 
Sức mạnh tinh thần; 
sức mạnh ý chí 
9 要る YẾU いる Cần 
10 守る THỦ まもる Bảo vệ, Che chở 
11 孤高 CÔ CAO ここう Ở xa, tách xa 
12 籠城 LUNG THÀNH ろうじょう 
Bao vây; bao vây; giam 
cầm 
13 孤独 CÔ ĐỘC こどく Cô đơn; lẻ loi 
14 自滅 TỰ DIỆT じめつ 
Tự làm khó mình, tự 
hủy hoại mình 
15 矛盾 MÂU THUẪN むじゅん Mâu thuẫn 
 
LINK QUIZLET  
 
https://quizlet.com/vn/905636690/n1-mondai-8-bai-7-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 13 : 7/2012 (1) - A 
 
大人になっても、味覚は変わり続ける。二十代の血気盛んな頃、すき焼き鍋
などを囲むと、肉ばかり食べている私を見て、「私たちはもう沢山。年をとると、
キノコ野菜が一番おいしい」などと半ば私を、半ば自分自身を諭すかのように言う
年長者がいた。なるほど、私も、最近では肉の味のしみた野菜やキノコがおいし
い。一方で、肉も相変わらず食べる。年長者だって、肉を食べなくなるわけではな
い。 
(茂木健一郎『食のクオリア』による) 
 
(?)食べることに関して筆者はどのように感じているか。 
A. 若いころ肉が好きでよく食べた人も、年を取ると食べ物の好みが変わる。 
B. 人は年齢を重ねるにつれて、野菜も肉も食べる量が少なくなってくる。 
C. 二十代の頃は肉よりも味のしみたキノコや野菜を好んで食べる人が多い。 
D. 年長者は肉と野菜を片寄りなく半分ずつ食べたほうがいいと思っている。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Kể cả khi đã tr ở thành người lớn, vị giác của chúng ta v ẫn tiếp tục thay đ ổi. 
Vào những năm tháng đôi mươi tràn đ ầy năng lượng, khi ăn lẩu sukiyaki, tôi thường 
chỉ ăn thịt. Nhìn th ấy điều đó, m ột người lớn tuổi đã b ảo tôi r ằng, "Chúng tôi thì đã 
ngấy rồi. Khi già đi, n ấm và rau m ới là thứ ngon nhất," như thể họ đang nửa nói với 
tôi của tuổi đôi mươi, n ửa tự nói với chính b ản thân h ọ của tuổi đôi mươi. Qu ả thật, 
gần đây tôi cũng cảm thấy rau cải và nấm thấm vị thịt rất ngon. Mặt khác, tôi vẫn ăn 
thịt như thường. Những người lớn tuổi cũng không phải là không ăn thịt nữa. 
 
Câu 1. Tác giả cảm thấy thế nào về việc ăn uống? 
A. Ngay c ả những người thích ăn th ịt và thư ờng xuyên ăn th ịt khi còn tr ẻ cũng sẽ 
thay đổi sở thích ăn uống khi lớn lên. 
B. Khi con người già đi, họ ăn ít rau và thịt hơn. 
C. Nhiều người ở độ tuổi hai mươi thích nấm và rau củ tẩm gia vị hơn thịt. 
D. Người cao tuổi cho rằng nên ăn đều nửa lượng thịt và rau.  
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 味覚 VỊ GIÁC みかく Vị giác 
2 血気盛ん HUYẾT KHÍ THỊNH けっきさかん tràn đầy sức sống 
3 焼き鍋 THIÊU OA やきなべ 
Nồi nấu (để quay, 
nướng, v.v.) 
4 沢山 TRẠCH SAN たくさん Đủ; nhiều 
5 野菜 DÃ THÁI やさい Rau củ 
6 キノコ   Nấm 
7 相変わらず TƯƠNG BIẾN あいかわらず 
Như bình thường; như 
mọi khi 
 
LINK QUIZLET 
 https://quizlet.com/vn/905637383/n1-mondai-8-bai-9-flash-cards/?i=3uojyn&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
 
BÀI 14: 7/2012 (2) - C 
 
相手を思いやる気持ち、これも、「あいさつ」の心にちがいありません。 
先年、アフリカへ行ったとき、タンザニアで聞いたことですが、の人たちが
道で知人とあいさつを交わすとき、おたがいに家族の安否をたずねますが、たとえ
自分の家族に病人がいても、それを口に出さないのが暗黙のルールになってい現地
るのだそうです。相手の気持ちに負担をかけまいとする心からです。 
(川崎洋『ことばのカ』による) 
 
(?) 暗黙のルールになっているのはどんなことか。 
A. 安否をたずねる際には、ことばを口に出さないこと。 
B. あいさつを交わすときは、まず安否をたずねること。 
C. あいさつのとき、家族の病気のことは言わないこと。 
D. 病気の人がいる家族とはあいさつを交わさないこと。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Sự quan tâm đ ến ngư ời khác, đ ó cũng là tinh th ần c ủa "l ời chào" . M ột vài 
năm trư ớc, khi tôi đ ến châu Phi, tôi đã nghe ở Tanzania r ằng, khi ngư ời dân đ ịa 
phương gặp nhau trên đư ờng và chào h ỏi nhau, h ọ thường hỏi thăm s ức khỏe của 
gia đình lẫn nhau, nhưng ngay cả khi có người trong gia đình mình đang ốm, họ cũng 
không nói ra đi ều đó, bởi vì đó là quy t ắc ngầm. Điều này xuất phát từ mong muốn 
không làm phiền tâm trạng của người khác. 
Câu 1. Đáp án nào dưới đây thể hiện quy tắc ngầm? 
A. Không nói gì khi hỏi han về sự sức khỏe của ai đó. 
B. Khi hỏi thăm, trước tiên hãy hỏi thăm về sức khỏe không. 
C. Khi chào hỏi, không nói về bệnh tình của gia đình mình.  
D. Tránh chào hỏi những người trong nhà có người đang bị bệnh. 
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 相手 TƯƠNG THỦ あいて 
Đối phương; người đối 
diện 
2 気持ち KHÍ TRÌ きもち Cảm giác; cảm tình 
3 タンザニア   
Cộng hòa thống nhất 
tanzania 
4 現地 HIỆN ĐỊA げんち 
Tại địa phương; trong 
nước; nước sở tại 
5 安否 AN PHỦ あんぴ Sự an nguy 
6 ルール   Quy tắc. 
7 負担 PHỤ ĐAM ふたん Sự gánh vác 
 
LINK QUIZLET 
https://quizlet.com/vn/903187989/bai-57-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 15: 7/2012 (3) - B 
 
毎年、花の種を蒔いたり、球根を植えたりする季節が近づくと、種苗を扱う
農園から、色刷りのカタログが送られてくる。私には植物を実際に取り寄せて植え
る土地などはないから、それを眺めて空想庭園を楽しかのである。しかし、それら
の誇らしげに咲いている花の見合い写真を次々に見ていくと、連中(注)が一様にあ
る傾向を有していることに嫌でも気がつく。つまり、すべての花を「品種改良」に
よって、より大輪(注)にし、そして何でもかでも八重咲(注)に造りかえてしまおう
という、人間の趣味と努力と一種の意地がそこに反映しているのである。 
(奥本大三郎『虫の宇宙誌』 による) 
(注) 連中: ここでは、花のこと       
(注) 大輪: 花の大きさが普通よりも大きいこと 
(注) 八重咲き: 花びらが数多く重なっていること 
 
(?) そこは何を指しているのか。 
A. 品種改良されていない花。          
B. カタログに掲載されている花。 
C. 筆者が取り寄せたいと思った花。         
D. 筆者が空想している庭園の花。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Mỗi năm, khi mùa gieo h ạt hoa ho ặc trồng củ đến gần, tôi nh ận được những 
cuốn catalogue màu s ắc từ các trang trại cây giống. Tôi không có đ ất để trồng thực 
sự, vì v ậy, việc tôi làm là thư ởng thức những khu vư ờn tưởng tượng từ những hình 
ảnh đó. Tuy nhiên, khi lư ớt qua những hình ảnh của các loài hoa khoe s ắc kiêu hãnh 
này, tôi không th ể không nhận thấy rằng tất cả chúng đều có chung m ột xu hư ớng 
nhất định. Đó là, thông qua "c ải tiến giống", con người đã nỗ lực biến tất cả các loài 
hoa thành nh ững bông hoa l ớn hơn và bi ến m ọi th ứ thành hoa kép, ph ản ánh s ở 
thích, nỗ lực và một loại tâm hồn của con người. 
 
Câu 1. Cái đó là đang ám chỉ điều gì? 
A. Hoa chưa được nhân giống. 
B. Hoa được liệt kê trong danh mục. 
C. Hoa mà tác giả muốn đặt hàng. 
D. Một bông hoa trong vườn mà người viết đang tưởng tượng. 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 球根 CẦU CĂN きゅうこん Củ; củ giống 
2 季節 QUÝ TIẾT きせつ Mùa; thời vụ 
3 種苗 CHỦNG MIÊU しゅびょう 
Hạt giống và cây giống; 
con giống, trứng giống 
4 農園 NÔNG VIÊN のうえん Trang trại. 
5 色刷り SẮC XOÁT いろずり 
Sự in màu, bản in màu; 
tranh khắc gỗ nhiều 
màu 
6 植物 THỰC VẬT しょくぶつ Thực vật; cây cối 
7 取り寄せる THỦ KÝ とりよせる Mang đến; gửi đến 
8 土地 THỔ ĐỊA とち Đất đai 
9 空想 KHÔNG TƯỞNG くうそう Ảo tưởng, mơ mộng 
10 庭園 ĐÌNH VIÊN ていえん Vườn 
11 傾向 
KHUYNH 
HƯỚNG けいこう 
Khuynh hướng; xu 
hướng 
12 品種改良 
PHẨM CHỦNG 
CẢI LƯƠNG 
ひんしゅかいりょ
う 
Sự sinh sản có chọn 
lọc 
13 大輪 ĐẠI LUÂN たいりん 
Bánh xe lớn; bông hoa 
lớn 
14 反映 PHẢN ÁNH はんえい Sự phản ánh 
15 連中 LIÊN TRUNG れんちゅう Đám đông; nhóm 
16 写真 TẢ CHÂN しゃしん Hình ảnh. 
 
LINK QUIZLET 
https://quizlet.com/vn/903187484/bai-55-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 16: 7/2012 (4) - B 
 
生きものは危機と遭遇しそれを乗り切ることで進化してきました。人間社会
も同じです。環境変化による影響を受けにくくするため、私たちの祖先は集団生活
を始め、都市を築き文明を育ててきました。協調が社会の基本にあります。文明の
初期段階では、生き延びるため、皆が協調します。しかし、生存が既定のものと思
うようになると、自分さえよければいいという自己利益の最大化に走ります。結果
は滅亡です。 
（日本経済新聞二０一０年三月八日付朝刊による） 
 
(?) 人間について、この文章からわかることは何か。 
A. 環境の変化に関係なく、協調性より自己利益を追求する。 
B. 生命の危機がなくなると、他者との協調性が薄れる。 
C. 文明が発展するにつれて、協調性が生まれる。 
D. 協調性を育てるために、集団生活をする。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Mọi sinh vật đều tiến hóa thông qua vi ệc gặp phải và vượt qua các khủng hoảng. Xã 
hội loài người cũng vậy. Để giảm thiểu ảnh hưởng từ sự thay đổi môi trường, tổ tiên 
chúng ta đã b ắt đầu sống theo c ộng đồng, xây d ựng thành ph ố và phát tri ển nền 
văn minh. Sự hợp tác là nền tảng của xã hội. Trong giai đoạn đầu của nền văn minh, 
mọi người hợp tác để sinh tồn. Tuy nhiên, con ngư ời cảm thấy sinh tồn đã trở thành 
đương nhiên rồi (không đáng lo ngại nữa), người ta bắt đầu theo đuổi lợi ích cá nhân 
tối đa mà không quan tâm đến người khác. Kết quả là sự diệt vong. 
 
Câu 1. Chúng ta có thể biết được gì từ đoạn văn này về con người? 
A. Con người coi trọng lợi ích cá nhân hơn là hợp tác với người khác, bất chấp những 
thay đổi của môi trường. 
B. Khi không còn nh ững nguy hi ểm đến tính m ạng, con ngư ời ta d ần trở nên ít h ợp 
tác với người khác. 
C. Sự hợp tác giữa người với người xuất hiện cùng với văn minh phát triển. 
D. Con người sống theo tập thể để nuôi dưỡng sự hợp tác. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 危機 NGUY KI きき Khủng hoảng, nguy cơ 
2 遭遇 TAO NGỘ そうぐう 
Cuộc chạm trán; bắt 
gặp thình lình 
3 乗り切る THỪA THIẾT のりきる 
Vượt qua (trở ngại, khó 
khăn) 
4 進化 TIẾN HÓA しんか tiến hoá 
5 影響 ẢNH HƯỞNG えいきょう Ảnh hưởng; ảnh hưởng 
6 祖先 TỔ TIÊN」 そせん Tổ tiên 
7 集団生活 
TẬP ĐOÀN SANH 
HOẠT 
しゅうだんせいか
つ sống tập thể 
8 築き文明 TRÚC VĂN MINH きずくぶんめい xây dựng nền văn minh 
9 協調 HIỆP ĐIỀU きょうちょう hiệp lực; trợ giúp 
10 文明 VĂN MINH ぶんめい Văn minh 
11 初期段階 SƠ KÌ ĐOẠN GIAI しょきだんかい Giai đoạn ban đầu 
12 延びる DUYÊN のびる 
Giãn ra; tăng lên; phát 
triển lên; kéo dài 
13 協調 HIỆP ĐIỀU きょうちょう hiệp lực; trợ giúp 
14 既定 KÍ ĐỊNH きてい Mặc định 
15 滅亡 DIỆT VONG めつぼう Diệt vong 
 
LINK QUIZLET  
https://quizlet.com/vn/906435195/n1-mondai-8-bai-10-flash-cards/?i=3uojyn&x=1jqt 
  

N1_Chill Class_ĐỌC 3,4        
 
BÀI 17: 12/2012 (1) - B 
 
ファッションなど、流行は模倣を前提にしている。真似られなければ、ファ
ッションなど成立しない。ミニスカートをデザインしたとしても、特定のデザイナ
ーのものだけが売れるのでは、流行にはならない。多くの者が模倣してはじめて流
行は成立するため、ファッションなどには、模倣を誘発させようとする意図が最初
から織り込みずみだ。 
 
(?) 流行について、筆者はどのように考えているか。 
A. 多くの者に購買意欲を誘発させるものである。         
B. 多くの者に真似されることなしには始まらない。 
C. 特定のデザイナーによる誘発が欠かせない。         
D. 特定のデザイナーのものを真似られなければならない。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Các xu hư ớng ch ẳng h ạn như v ề lĩnh v ực th ời trang đ ều d ựa trên vi ệc mô 
phỏng(bắt chước). Nếu không bị bắt chước thì thời trang không thể tồn tại. Giả sử khi 
thiết kế ra một chiếc váy ng ắn, nếu nó ch ỉ là sản phẩm bán ch ạy của một nhà thi ết 
kế cụ thể nào đó thì đó không ph ải là xu hư ớng. Xu hư ớng thời trang chỉ được hình 
thành khi có nhiều người bắt chước chúng, do đó từ ban đầu, thời trang đã được thiết 
kế với mục đích kích thích sự mô phỏng. 
Câu 1. Tác giả nghĩ gì về các xu hướng? 
A. Xu hướng thúc đẩy nhiều người mua hàng. 
B. Một xu hướng không thể nổi lên nếu không có nhiều người bắt chước. 
C. Xu hướng cần được giới thiệu bởi một nhà thiết kế cụ thể. 
D. Phải có khả năng bắt chước một nhà thiết kế cụ thể. 
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 ファッション   Thời trang; mốt. 
2 流行 LƯU HÀNH りゅうこう lưu hành 
3 模倣 MÔ PHỎNG もほう bắt chước; sao chép 
4 前提 TIỀN ĐỀ ぜんてい Tiền đề; tiên đề 
5 真似 CHÂN TỰ まね bắt chước; mô phỏng 
6 成立 THÀNH LẬP せいりつ thành lập; thành lập; làm. 
7 ミニスカート   Váy mini; váy ngắn 
8 特定 ĐẶC ĐỊNH とくてい Cố định 
9 誘発 DỤ PHÁT ゆうはつ Gây ra, kích hoạt, làm phát 
sinh 
10 織り込む CHỨC NHẬP おりこみ Hòa quyện vào nhau 
LINK QUIZLET  
https://quizlet.com/vn/906435403/n1-mondai-8-bai-11-flash-cards/ 

N1_Chill Class_ĐỌC 3,4        
BÀI 18: 12/2012 (3) - C 
 
情報化、グローバル化と言われ、視野を広げるべき時代に、実は極めて限ら
れた世界、社会でしか情報や価値観を得られていない人が増えているように思えま
す。インターネットは世界中どこにでもつながりますが、自分で意識しないと、限
られた価値観の情報だけが集まり、さらに深く入り込む。世界観を広げるインター
ネットが、逆に世界観や価値観を狭めてしまう、視野狭容(注)に陥らせる道具とな
ってしまうのです。 
(伊藤真『会社コンプライアンスー一内部統制の条件』 による) 
(注)視野狭容 (きょうさく) : 見える範囲が狭くなること 
 
(?) この文章で、筆者はインターネットをどのようにとらえているか。  
A.広い視野を失わずに使用すれば、より深い情報を得ることができる。 
B.限られた情報や、個人の興味のあるものを得るには便利な道具である。 
C.便利なものだが、使い方に気をつけないと限られた世界で生きることになる。 
D.意識して使用しなければ、自分の価値観に合った情報が得られないことになる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Dù đang sống trong thời đại thông tin hóa và toàn c ầu hóa, nơi chúng ta c ần 
mở rộng tầm nhìn nhưng th ực tế lại có rất nhiều người chỉ có thể tiếp cận thông tin 
và quan đi ểm trong một thế giới, xã h ội cực kỳ hạn chế. Mặc dù Internet có th ể kết 
nối tới mọi nơi trên th ế giới, nhưng n ếu không t ự ý thức mở rộng, chúng ta ch ỉ thu 
nhận thông tin với quan điểm giới hạn, và càng lún sâu vào đó. Internet, công c ụ vốn 
dĩ giúp mở rộng tầm nhìn và quan đi ểm thế giới, lại trở thành công cụ làm hẹp tầm 
nhìn và quan điểm, đẩy con người vào tình trạng hạn chế tầm nhìn. 
Câu 1. Tác giả nhìn nhận về Internet trong bài viết này như thế nào? 
A. N ếu s ử dụng Internet mà không làm m ất đi t ầm nhìn r ộng t hì có th ể thu th ập 
được những thông tin sâu sắc hơn. 
B. Đây là một công cụ hữu ích để thu thập các thông tin có gi ới hạn hoặc những thứ 
thuộc sở thích cá nhân. 
C. Internet rất tiện lợi, nhưng nếu không biết dùng đúng cách (không c ẩn thận), bạn 
sẽ có thể bị sống trong một thế giới bị giới hạn. 
D. Nếu không s ử dụng một cách thông minh, b ạn sẽ không thể tìm được thông tin 
phù hợp với giá trị của mình. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 グローバル化   Toàn cầu hóa 
2 情報化 TÌNH BÁO HÓA じょうほうか Thông tin hóa 
3 視野 THỊ DÃ しや Tầm nhìn 
4 極めて CỰC きわめて Cực kỳ; rất; vô cùng 
5 価値観 GIÁ TRỊ QUAN かちかん Quan niệm về giá trị 
6 世界観 THẾ GIỚI QUAN せかいかん Quan niệm về thế giới 
7 広げる QUẢNG ひろげる Mở rộng ra 
8 狭める HIỆP せばめる Thu hẹp lại; làm nhỏ lại 
9 陥る HÃM おちいる 
Rơi vào (một hoàn cảnh 
không tốt) 
10 道具 ĐẠO CỤ どうぐ Dụng cụ; phương tiện 
 
LINK QUIZLET  
https://quizlet.com/vn/906673051/n1-mondai-8-bai-12-flash-cards/?i=3uojyn&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
BÀI 19: 12/2012 (4) - C 
 
この社会にはどこかに中心があって、自分はその中心から遠く離れたところ
に押しやられ（注１）ていると感じている 人は多い。しかし、私は私自身の「生き
る意味」を創造し、私の生きる世界に意味を与える存在なのであり、世界の中 心は
私自身にあるのだ。しかし、それは「自己チュー」（注２）の世界ではない。なぜ
なら、私自身が意味を生み出す中心 であることを認めるとき、私たちの周りには私
だけでなくたくさんの中心があることが分かってくるからだ。 
（上田紀行「生きる意味」による） 
（注1）押しやる:押してどける 
（注2）自己チュー:自己中心のこと。自分のことしか考えないこと 
 
(?) 筆者の考えを最もよく表しているのはどれか。 
A. 誰もが社会の中心から遠く離れた存在だ。 
B. 誰もが他人の存在を認めることが大切だ。 
C. 一人一人が生きる意味を持っている大切な存在だ。 
D. 一人一人が自分の生きる世界を見つけることが大切だ。  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Có nhiều người cảm thấy rằng luôn có m ột trung tâm ở đâu đó trong xã h ội 
này, và b ản thân h ọ thì bị đẩy ra xa trung tâm đó. Tuy nhiên, tôi đã sáng t ạo ra "ý 
nghĩa của cuộc sống" của riêng mình và là người mang lại ý nghĩa cho thế giới mà tôi 
đang s ống. Do đó, trung tâm c ủa th ế giới chính là b ản thân tôi. Nhưn g đi ều đó 
không có nghĩa là m ột thế giới "chỉ biết đến bản thân" (chú thích 2), b ởi vì khi tôi 
thừa nhận rằng mình là trung tâm t ạo ra ý nghĩa, tôi cũng nh ận ra rằng xung quanh 
tôi có rất nhiều trung tâm khác chứ không chỉ riêng tôi. 
(Trích từ "Ý nghĩa của cuộc sống" của Ueda Noriyuki) 
Câu hỏi: Câu nào sau đây thể hiện rõ nhất suy nghĩ của tác giả? 
A. Mọi người đều là những tồn tại xa rời trung tâm của xã hội. 
B. Điều quan trọng là mỗi người phải công nhận sự tồn tại của người khác. 
C. Mỗi cá nhân đều là một tồn tại quan trọng có ý nghĩa trong cuộc sống. 
D. Điều quan trọng là mỗi người tìm ra thế giới sống của riêng mình. 
 
TỪ VỰNG 
 
Từ vựng Âm Hán Việt Cách đọc Nghĩa 
創造 SÁNG TẠO そうぞう Sáng tạo 
離れた LI はなれた Rời xa, tách biệt 
自己 TỰ KỶ じこ Bản thân, tự mình 
認める NHẬN みとめる Công nhận, thừa nhận 
押し ÁP おし Nhấn, đẩy 
自身 TỰ THÂN じしん Bản thân 
 
 
LINK QUIZLET 
https://quizlet.com/vn/1011570758/bai-19-flash-cards/?i=1dye7p&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 20: 7/2013 (1) - D 
 
現代、恋愛は、通常は部分でしか他者とかかわり合いをもたない個人にとっ
て、例外的に全人格と全人格とのぶつかりあいを経験する、特別な関係なのであろ
うか。それとも、｢全人格的｣というのは幻想で、恋愛もまた互いに自己のある一面
を見せあう、部分的関係の一例か。これはもちろん、そのどちらなのか、という問
題ではなく、個々の恋愛はこの振幅のどこかにあるということになるだろう。だ
が、趨勢（注）としては後者の方へと振れてきているのではないだろうか。 
(草柳千早「AERA MooK」A. 999年7月A. 0日号による) 
(注) 赴勢 : 傾向 
 
(?) 筆者は、現代の恋愛はどうなってきていると考えているか。 
A. 全人格でぶつかりあう関係が一般的になってきた。  
B.  全人格でぶつかりあう関係は現実には存在しなくなった。 
C. 自己の一部しか見せあわない関係は敬遠されてきている。  
D. お互いに自己の一部しか見せあわないようになってきている。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Trong xã h ội hiện đại, liệu tình yêu có còn l à một trải nghiệm đặc biệt, 
nơi hai con người toàn diện gặp gỡ và va chạm, điều mà các cá nhân thường chỉ 
tương tác h ời hợt với nhau trong các m ối quan h ệ khác? Hay ph ải chăng, khái 
niệm "toàn diện" chỉ là một ảo tưởng, và tình yêu cũng chỉ là một dạng quan hệ 
từng phần, nơi m ỗi người chỉ thể hiện một khía c ạnh của bản thân? T ất nhiên, 
không có câu tr ả lời tuyệt đối, mà m ỗi mối tình s ẽ dao động giữa hai thái c ực 
này. Tuy nhiên, dường như xu hướng đang dần nghiêng về giả thuyết thứ hai. 
 
Câu 1. Tác giả nghĩ gì về tình yêu hiện đại? 
A. Những mối quan hệ trong đó mọi cá tính xung đột đang trở nên phổ biến hơn. 
B. Những mối quan hệ trong đó mọi cá tính xung đột không còn tồn tại trên thực tế. 
C. Nh ững m ối quan h ệ mà chúng ta ch ỉ bộc l ộ một ph ần con ngư ời mình đa ng bị 
tránh né. 
D. Chúng ta đang dần dần chỉ còn thể hiện một phần con người mình với nhau. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 恋愛 LUYẾN ÁI れんあい Sự luyến ái; tình yêu 
2 現代 HIỆN ĐẠI げんだい Hiện đại; hiện nay 
3 通常 
THÔNG 
THƯỜNG つうじょう 
Thông thường; thường 
thường 
4 部分 BỘ PHÂN ぶぶん Bộ phận; phần 
5 個人 CÁ NHÂN こじん Cá nhân; cá thể 
6 例外的 LỆ NGOẠI ĐÍCH れいがいてき Khác thường, ngoại lệ 
7 全人格 
TOÀN NHÂN 
CÁCH ぜんじんかく Nhân cách 
8 経験 KINH NGHIỆM けいけん Kinh nghiệm 
9 関係 QUAN HỆ かんけい Quan hệ; sự quan hệ 
10 互い HỖ たがい 
Cả hai bên; song 
phương. 
11 自己 TỰ KỈ じこ 
Sự tự bản thân; tự 
mình 
12 振幅 CHẤN PHÚC しんぷく Biên độ trong giao động 
13 趨勢 XU THẾ すうせい Xu thế. 
14 振れて CHẤN ふれる Rung chuyển; lắc 
 
LINK QUIZLET 
 
https://quizlet.com/vn/902764725/bai-41-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 21: 7/2013 (2) - C 
 
これから起こる社会の変化を読みとるのは難しい。しかし、その変化を見極
めて将来に対する指針をもたなければ、激しく変化する社会のなかで自分を見失っ
てしまう。歴史学は、この時代の変化を長い時間のなかにおいて見据え、社会の進
む方向を教えてくれる学間である。けっして、過ぎ去った過去を記憶したり、なぞ
ったりする学問ではない。ゆるやかに流れる時代にあっても激動する時代にあって
も、歴史学は私たちの行く手(注)を照らす一条 (注)の光なのだと思う。 
 
(注) 行く手 : 行く先           (注) 一休 : 一筋 
 
(?) 歴史学について、筆者はどのように考えているか。 
A. 社会の流れを読み取り、将来のために記録しておくものである。 
B. 現代社会や人々の活動の変化を、過去の時代と比較するものである。 
C. 社会の変化を時間の流れのなかに位置づけて、進む道を示すものである。 
D. 社会の変化や流れを振り返り、これまでの出来事を検証するものである。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Thật khó để dự đoán những thay đổi sẽ xảy ra trong xã hội sắp tới. Tuy nhiên, 
nếu không nhận ra những thay đổi này và có một định hướng cho tương lai, chúng ta 
sẽ đánh mất chính mình trong m ột xã hội thay đổi nhanh chóng. L ịch sử là một lĩnh 
vực học thuật giúp chúng ta nhìn nhận những thay đổi thời đại trong bối cảnh lâu dài 
và chỉ ra hướng đi cho xã h ội. Đó không ph ải là một ngành học chỉ nhớ lại hoặc lặp 
lại quá khứ. Dù trong th ời đại chảy chậm hay trong thời đại biến động, tôi cho r ằng 
lịch sử là một tia sáng soi rọi con đường phía trước của chúng ta. 
 
Câu 1. Tác giả nghĩ gì về lịch sử học? 
A. Lịch sử là để nắm bắt những gì xảy ra trong xã hội và ghi chép lại cho tương lai. 
B. Lịch sử là để so sánh những thay đổi trong xã h ội hiện đại và hoạt động của con 
người với thời đại trước. 
C. Lịch sử đặt ra s ự thay đổi xã h ội theo dòng th ời gian và ch ỉ ra con đư ờng phía 
trước. 
D. Lịch sử là để cho chúng ta nhìn l ại những thay đ ổi và xu hư ớng trong xã h ội và 
xem xét các sự kiện trong quá khứ. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
 TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 見極める KIẾN CỰC みきわめる 
Nhìn rõ; nhìn thấu; nhìn 
thấu suốt 
2 将来 TƯƠNG LAI しょうらい Tương lai 
3 指針 CHỈ CHÂM ししん Kim chỉ nam 
4 激し KÍCH げきし Mãnh liệt, dữ dội 
5 歴史学 LỊCH SỬ HỌC れきしがく Sử học. 
6 方向 
PHƯƠNG 
HƯỚNG ほうこう Phương hướng 
7 過去 QUÁ KHỨ かこ Quá khứ 
8 記憶 KÝ ỨC きおく Ký ức; trí nhớ 
9 激動 KÍCH ĐỘNG げきどう Biến động; thay đổi 
10 照らす CHIẾU てらす Chiếu sáng 
11 一条 NHẤT ĐIỀU いちじょう 
Một vấn đề; một trích 
dẫn 
12 光 QUANG ひかり Ánh sáng 
 
LINK QUIZLET  
 
https://quizlet.com/vn/906672972/n1-mondai-8-bai-13-flash-cards/?i=3uojyn&x=1jqt 
   

N1_Chill Class_ĐỌC 3,4        
BÀI 22: 7/2013 (3) - D 
 
昔も今も、才覚というのは一定の軌道から飛び出してゆく能力のことで、み
んなにそんな例外的な能力が備わっていたら、そもそも大地にはりつく農業も、分
業で成り立つ産業社会も有り得ない。いつの世も、才覚のある者が新しいビジネス
を起こしてゆくのは事実だが、それをビジネスとして成立させるのは社員の労働と
献身であるし、それがなければ起業者の才覚が活きることもない。 
(高村『裏人生一平成雑記帳二つ〇モーニO〇九』 による) 
 
(?) 才覚のある人について、この文章ではどのように述べられているか。  
A. 優秀な能力を使って、社員を率いてゆく責任がある。 
B. 人並み外れた能力をビジネスに活かすことが必要である。 
C. 誰の助けを借りることもなく、企業を成功に導くことができる。 
D. 他者の支えによって初めて能力をビジネスに活用することができる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Ngày xưa và ngày nay, tài năng là kh ả năng bứt phá ra kh ỏi quỹ đạo thông 
thường, nếu ai cũng có nh ững khả năng ngoại lệ như vậy thì sẽ không thể có ngành 
nông nghiệp dựa trên s ự gắn kết với đất đai và xã h ội công nghi ệp dựa trên phân 
công lao động. Thực tế là, ở mọi thời đại, những người có tài năng luôn bắt đầu công 
việc kinh doanh m ới, nhưng để doanh nghiệp đó thành công thì c ần sự lao động và 
cống hiến của nhân viên, và n ếu không có đi ều này, tài năng c ủa người khởi nghiệp 
cũng không thể phát huy. 
 
Câu 1. Đoạn văn này nói gì về những người có tài? 
A. Họ có trách nhiệm lãnh đạo nhân viên bằng khả năng xuất sắc của mình. 
B. Họ cần phát huy khả năng phi thường trong kinh doanh. 
C. Họ có thể dẫn dắt công ty của mình đến thành công mà không cần sự giúp đỡ của 
bất kỳ ai. 
D. Khả năng của họ chỉ có thể được sử dụng trong kinh doanh khi có s ự hỗ trợ của 
người khác. 
 
  
N1_Chill Class_ĐỌC 3,4        
 TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 才覚 TÀI GIÁC さいかく nhanh nhẹn, nhạy bén 
2 軌道 QUỸ ĐẠO きどう quĩ đạo 
3 飛び出す PHI XUẤT とびだす Lao ra, nhảy ra 
4 能力 NĂNG LỰC のうりょく Năng lực 
5 備わる BỊ そなわる Có lắp; có đặt; sẵn có 
6 大地 ĐẠI ĐỊA だいち Đất đai. 
7 農業 NÔNG NGHIỆP のうぎょう Ngành nông nghiệp 
8 分業 PHÂN NGHIỆP ぶんぎょう phân công (lao động) 
9 成り立つ THÀNH LẬP なりたつ Củng cố và phát triển 
10 産業 SẢN NGHIỆP さんぎょう Công nghiệp 
11 有り得る HỮU ĐẮC ありうる Có thể xảy ra 
12 労働 LAO ĐỘNG ろうどう Lao động 
13 献身 HIẾN THÂN けんしん hiến dâng; dâng hiến 
14 起業者 
KHỞI NGHIỆP 
GIẢ きぎょうしゃ Người khởi nghiệp 
 
LINK QUIZLET  
https://quizlet.com/vn/906673126/n1-mondai-8-bai-14-flash-cards/?i=3uojyn&x=1jqt 
   

N1_Chill Class_ĐỌC 3,4        
BÀI 23: 7/2013 (4) - C 
 
今の世には明るいものは余りに少なく、暗いものは余りに多く見えるが、両
者は別個のばらばらではない。絶望と見える対象を嫌がったり恐れたりして目をつ
ぶって、そこを去れば、もう希望とは決して会えない。絶望すべき対象にはしっか
と(注)絶望し、それを克服するために努力し続ければ、それが希望に転化(注)して
ゆくのだ。そうだ、希望は絶望の真ん中の、そのどん底に実在しているのだ。 
(むのたけじ『希望は絶望のど真ん中に』による) 
 
(注) しっかと : しっかり           
(注) 転化 : 変化 
 
(?) この文章で筆者が言いたいことは何か。 
A. 絶望を希望に変える方法を模索しなければならない。  
B. 絶望していては希望にたどり着くことはできない。 
C. 絶望に立ち向かってゆけばその先に希望がある。        
D. 絶望から目をそらすと希望が見えてくる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Trong th ế giới ngày nay, có v ẻ như quá ít nh ững th ứ sáng s ủa, trong khi 
những thứ u tối lại quá nhi ều, nhưng c ả hai không tác h biệt. Nếu bạn ghét ho ặc sợ 
hãi nh ững th ứ mà b ạn cho là đáng tuy ệt v ọng và nh ắm m ắt l ại r ồi b ỏ đi, b ạn s ẽ 
không bao gi ờ gặp lại hy v ọng. Nếu bạn thực sự tuyệt vọng trước những thứ đáng 
tuyệt vọng và tiếp tục nỗ lực để vượt qua chúng, chính những nỗ lực đó sẽ biến tuyệt 
vọng thành hy v ọng. Đúng vậy, hy vọng thực sự tồn tại ngay trong s ự tận cùng của 
tuyệt vọng. 
 
Câu 1. Tác giả đang muốn truyền đạt điều gì thông qua bài viết này? 
A. Chúng ta phải tìm cách biến tuyệt vọng thành hy vọng. 
B. Bạn không thể đạt được hy vọng nếu bạn đang tuyệt vọng. 
C. Nếu bạn đối mặt với sự tuyệt vọng để bước tiếp, sẽ có hy vọng ở phía trước. 
D. Vượt qua khỏi sự tuyệt vọng, bạn sẽ nhìn thấy hy vọng. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 明るい MINH あかるい Tươi sáng; vui vẻ 
2 余り DƯ あまり Dư; số dư 
3 両者 LƯỠNG GIẢ りょうしゃ Hai người. 
4 別個 BIỆT CÁ べっこ Riêng biệt 
5 絶望 TUYỆT VỌNG ぜつぼう tuyệt vọng; tuyệt vọng 
6 希望 HI VỌNG きぼう Hi vọng 
7 克服する KHẮC PHỤC こくふく Khắc phục 
8 努力 NỖ LỰC どりょく Nỗ lực 
9 転化 CHUYỂN HÓA てんか chuyển hoá; thay đổi 
10 真ん中 CHÂN TRUNG まんなか ở giữa; trung tâm 
 
LINK QUIZLET  
 
https://quizlet.com/vn/906673188/n1-mondai-8-bai-15-flash-cards/?i=3uojyn&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
BÀI 24: 12/2013 (2) - A 
 
何かを学ぶということは、もちろん問題に答える知識や技術を身につけると
いう意味もあるけれど、それは実は学ぶことの本質ではない。ぼくらは本や学校
で、これまでひとが見出してきたさまざまな秩序、筋道を学ぶ。 だけどそうやって
さまざまな「型」を学ぶことによって今まで見えていなかったあるいはぼんやりと
しか見えていなかった「型やぶり」なものが見えてくるようになる。つまりは、学
べば、学ぶほど、見えてくる問題は増えるというわけだ。 
(野矢茂樹 『はじめて考えるときのように、『わかる』ための哲学的道案内』による) 
 
(?) 筆者は、学ぶことの本質とは、どのようなことだと考えているか。  
A.「型」を学ぶことで、気づいていなかった問題を認識できるようになること。 
B.知識や、技術を身につけて、さまざまな秩序や筋道が見えるようになること。 
C.既存の「型」に固執せず、常に「型やぶり」なことに挑むこと。 
D.他人が見出したことを学ぶのではなく、自分自身で考えること。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Việc học tất nhiên là vi ệc lĩnh h ội kiến thức và kỹ năng để giải quyết các vấn 
đề, nhưng đó th ực sự không phải bản chất của việc học. Trong sách v ở và ở trường, 
chúng ta tìm hi ểu về các trật tự và đạo lý khác nhau mà con ngư ời đã khám phá ra 
qua nhiều năm.Tuy nhiên, chính b ằng cách học những "khuôn mẫu" khác nhau theo 
cách này, chúng ta m ới bắt đầu nhìn th ấy "những điều phá khuôn m ẫu", những thứ 
trước đây không th ể thấy hoặc chỉ nhìn thấy một cách mơ h ồ. Nghĩa là, càng h ọc, 
càng có nhiều vấn đề hiện ra trước mắt chúng ta. 
 
Câu 1. Tác giả cho rằng bản chất của việc học là gì? 
A. Là việc bằng cách học theo “khuôn mẫu", bạn sẽ có thể nhận ra những vấn đề mà 
bạn chưa biết. 
B. Là việc bạn trau dồi kiến thức và kỹ năng để nhận biết thêm những trật tự và logic 
khác nhau. 
C. Là việc bạn cố gắng thử thách làm những điều “khác thường” mà không bám theo 
những “khuôn mẫu” hiện có. 
D. Là việc tự mình tư duy chứ không phải học theo những gì người khác đã khám phá 
ra. 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 知識 TRI THỨC ちしき Tri thức 
2 技術 KĨ THUẬT ぎじゅつ Kỹ thuật 
3 身につける THÂN みにつける Tiếp thu các kiến thức, kỹ năng... 
4 本質 BỔN CHẤT ほんしつ Thực chất; bản chất 
5 見出し KIẾN XUẤT みだし Tựa đề, đầu đề 
6 秩序 TRẬT TỰ ちつじょ Trật tự 
7 筋道 CÂN ĐẠO すじみち Đạo lý; lý lẽ 
8 ぼんやり   Thong thả; thong dong; nhàn nhã 
9 増える TĂNG ふえる Tăng 
 
LINK QUIZLET 
 https://quizlet.com/vn/906673281/n1-mondai-8-bai-16-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 25: 12/2013 (3) - A 
 
医者、ナース(注)と患者との間の意味のズレやスレ違いは、患者の身体的症
状に対する専門的な医学的認識、患者自身の意味づけとの間に生まれている。医療
関係者の課題の一つは、患者自身の身勝手な解択とそれに基づいた治療行動を再考
させて、医学的に求められる治療活動だけに目を向けさせることであろう。 
つまり、愚者の内面にある認識構造の再構成というむずかしい問題にぶつか
るのである。 
(梶田正巳『勉強カをつける一認識心理学からの発想』 による) 
 (注) ナース : 看護師 
 
(?) 筆者によると、医療関係者に求められていることは、何か。  
A. 患者の希望を聞いて治療方法を再考すること。           
B. 患者が、納得できる医学的な見解を示すこと。 
C. 患者の目を最新の治療方法に向けさせること。          
D. 患者を医学的な認識に導くこと。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Sự không nhất quán và hi ểu lầm ý c ủa "bác sĩ", "y tá" và "b ệnh nhân" phát 
sinh từ sự chênh lệch giữa nhận thức chuyên môn y khoa v ề triệu chứng cơ th ể của 
bệnh nhân và cách b ệnh nhân t ự giải thích tình tr ạng của mình. M ột trong nh ững 
thách thức đối với nhân viên y t ế là làm cho b ệnh nhân xem xét l ại quyết định cá 
nhân và hành đ ộng điều trị dựa trên đó, đ ể chỉ tập trung vào ho ạt động điều trị yêu 
cầu từ góc độ y khoa. Nói cách khác, h ọ phải đối mặt với vấn đề phức tạp là tái c ấu 
trúc cấu trúc nhận thức bên trong của bệnh nhân. 
Câu 1. Theo tác giả, một nhân viên y tế phải có phẩm chất gì? 
A. Lắng nghe mong muốn của bệnh nhân và xem xét lại phương pháp điều trị. 
B. Đưa ra những giải thích mang tính y khoa có thể thuyết phục bệnh nhân. 
C. Giúp bệnh nhân mở mang tầm mắt về những phương pháp điều trị mới nhất. 
D. Dẫn dắt bệnh nhân tới những kiến thức về y học. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 ナース   Y tá; điều dưỡng 
2 患者 HOẠN GIẢ かんじゃ Bệnh nhân 
3 身体的 THÂN THỂ ĐÍCH しんたいてき Thuộc vật chất 
4 症状 CHỨNG TRẠNG しょうじょう Tình trạng bệnh 
5 専門的 CHUYÊN MÔN ĐÍCH せんもんてき Mang tính 
chuyên môn 
6 認識 NHẬN THỨC にんしき Sự nhận thức 
7 医療関係者 Y LIỆU QUAN HỆ GIẢ いりょうかんけいしゃ Nhân viên y tế 
8 身勝手 THÂN THẮNG THỦ みがって Vị kỷ, ích kỷ 
9 治療 TRÌ LIỆU ちりょう じりょう Sự điều trị 
10 行動 HÀNH ĐỘNG こうどう Hành động 
11 内面 NỘI DIỆN うちづら Mặt trong 
12 構造 CẤU TẠO こうぞう Cấu tạo 
13 再構 TÁI CẤU さいこう Sự tái cơ cấu 
 
LINK QUIZLET 
https://quizlet.com/vn/902804000/bai-47-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
BÀI 26: 12/2013 (4) - B 
 
日記とは限りなく私的な記録であり、読者が存在しないどころか、他人には
読まれたくない秘密の表現であるともいえる。ただ一人だけ奇妙な読者が存在す
る。いつでも自由に日記を読むことのできる日記の筆者である。その読者は筆者と
は異なる場に立って様々な配慮を動かす。万が一、日記が盗み読まれたり (注) 、
死後に他人の目に曝されるような事態が発生した場合、こんなことが、書かれてい
るのはまずいのではあるまいか、等々と。しかし、これは限りなく私的な記録であ
るの日記にとっては矛盾である。 
 
(?) 矛盾であるとあるが、何が矛盾か。 
A. 他人に読まれる可能性のある日記に秘密を書き残すこと。 
B. 日記の筆者が他人に読まれることを想定すること。 
C. 日記は筆者しか読まないのに、他人にも、読みやすく書くこと。 
D. 日記は私的なものなのに、他人に自由に読まれるかもしれないこと。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Nhật ký là m ột bản ghi chép c ực kỳ cá nhân, không ch ỉ không có ngư ời đọc, 
mà thậm chí còn là m ột bí m ật mà ngư ời viết không mu ốn bị người khác đ ọc. Tuy 
nhiên, có một người đọc kỳ lạ duy nhất tồn tại: chính là người viết nhật ký, người có 
thể tự do đọc nhật ký bất cứ lúc nào. Người đọc này đứng ở một vị trí khác với người 
viết và suy nghĩ v ề nhiều khía c ạnh khác nhau. (H ọ lo lắng rằng) trong trư ờng hợp 
xấu nhất, nếu nhật ký bị đọc trộm hoặc bị người khác xem sau khi người viết qua đời 
thì không ổn. Tuy nhiên, đây là m ột mâu thuẫn đối với nhật ký, loại ghi chép c ực kỳ 
riêng tư này. 
Câu 1. Mâu thuẫn được nói đến ở đây là mâu thuẫn là gì? 
A.Viết những bí mật vào nhật ký để người khác có thể đọc được. 
B.Người viết nhật ký cho rằng người khác sẽ đọc nó. 
C.Mặc dù nhật ký chỉ có tác giả đọc nhưng phải được viết sao cho người khác dễ đọc. 
D.Mặc dù nhật ký riêng tư nhưng cũng có khả năng bị người khác đọc tự do. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 日記 NHẬT KÍ にっき Nhật ký 
2 私的 TƯ ĐÍCH してき Cá nhân, riêng tư 
3 記録 KÍ LỤC きろく ghi chép;ghi lại; lưu lại 
4 存在 TỒN TẠI そんざい tồn tại 
5 秘密 BÍ MẬT ひみつ Bí mật 
6 表現 BIỂU HIỆN ひょうげん Biển hiệu, biểu thị 
7 奇妙 KÌ DIỆU きみょう Điều kỳ diệu; kỳ diệu 
8 異なる DỊ ことなる Khác; khác với 
9 配慮 PHỐI LỰ はいりょ quan tâm; chăm sóc 
10 死後 TỬ HẬU しご Sau khi chết; sau cái chết. 
11 事態 THÁI じたい Tình hình. 
12 発生 PHÁT SANH はっせい Phát sinh 
13 矛盾 MÂU THUẪN むじゅん Mâu thuẫn 
 
LINK QUIZLET 
https://quizlet.com/vn/905637050/n1-mondai-8-bai-8-flash-cards/?i=3uojyn&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
BÀI 27: 7/2014 (2) - C 
 
井上ひさし(注)さんが、「エッセイとはすなわち、自慢話である」といった
ことを書いていらしたのを、以前読んだことがありますが、私はその文を一読した
瞬間、「ああっ! 」と叫んで赤面(注)したのでした。エッセイー自慢、とはまさに
その通り。エッセイを書く仕事をしている私は、心のどこかでそのことを感じつ
つ、気付かない努力をしていた気がする。しかしそのようにズバリ言われると、
「私は今まで、自慢話によって、口を糊して(注)きたのだなぁ」ということが、明
確に理解できるのです。 
(酒井順子『黒いマナー』 による) 
(注) 井上ひさし : 日本の小説家  
(注) 赤面する : 顔が赤くなる   
(注) 口を糊して: ここでは、生計を立てる 
 
(?) 筆者が「ああっ! 」と叫んだのはなぜか。 
A. 前々から抱いていた自身の思いを先に言われたから。  
B. だれかに言いたかった自身の気持ちを見抜かれたから。 
C. 意識しないようにしていた自身の思いを指摘されたから。 
D. 言葉にできないでいた自身の気持ちをズバリ言われたから。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Trước đây tôi đã đọc được bài viết của ông Inoue Hisashi có tiêu đề  "Bài luận cơ bản là một 
câu chuyện tự mãn" và khoảnh khắc đọc bài viết này lần đầu tiên tôi đã kêu lên "A!" và đ ỏ 
mặt. Đúng vậy, bài lu ận là đ ể tự mãn. Là ngư ời viết luận, tôi c ảm thấy mình đã c ố gắng 
không nhận ra đi ều đó, m ặc dù ở một nơi nào đó trong trái tim tôi bi ết rõ. Nhưng khi đư ợc 
nói một cách trực tiếp như vậy, tôi có thể hiểu rõ ràng rằng, "Suốt thời gian qua, tôi đã ki ếm 
sống bằng những câu chuyện tự mãn của mình." 
 
Câu 1. Tại sao tác giả lại thốt lên “A!”? 
A. Bởi vì tác giả đã bị nói người khác nói mất những suy nghĩ mà tác giả đã ấp ủ từ lâu. 
B. Bởi vì tác giả đã bị ai đó nhìn thấu tâm tư, cảm xúc của mình. 
C. Bởi vì tác giả đã bị chỉ trích về những suy nghĩ mà tác giả đã cố tình không nhận ra. 
D. Bởi vì tác giả đã bị người khác nói thẳng ra những cảm xúc mà tác giả không thể diễn tả 
bằng lời. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 自慢話 TỰ MẠN THOẠI じまんばなし Khoe khoan, khoác lác 
2 エッセイ   Bài luận; bài tản văn; tùy bút 
3 瞬間 THUẤN GIAN しゅんかん Khoảnh khắc 
4 赤面 XÍCH DIỆN せきめん Mặt đỏ 
5 自慢 TỰ MẠN じまん Tự hào, hãnh diện, tâm đắc 
6 気付 KHÍ PHÓ きつけ 
Xin gửi hộ; nhờ chuyển hộ 
(thư,...) 
7 努力 NỖ LỰC どりょく Nỗ lực; chuyên tâm 
8 ズバリ   Nói thẳng ra, はっきり言うと 
9 糊して HỒ のりする Dính, dán 
10 明確 MINH XÁC めいかく 
Sự rõ ràng và chính xác; sự 
minh xác. 
11 理解 LÍ GIẢI りかい Sự hiểu; sự lĩnh hội 
 
LINK QUIZLET 
https://quizlet.com/vn/902764533/bai-40-flash-cards/?i=4qgd0q&x=1jqt 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 28: 7/2014 (3) - A 
 
人間の社会的な日常生活は、無数の暗黙の約束を相互に共有することで成り
立っています。 暗黙というのは、そうした約束が明瞭に意識されたり、どこかには
っきり書かれているわけではないということです。 習慣化し、なかば無意識的に守
られている社会的な約束事の海に、共に浸かっているから、われわれはこの世界の
中に安心して毎日生きていられるのであり、これから何が起きるのか、自分はどう
行動したらよいのか、一々思い悩まずにいられるわけです。 
(著者代表森『異文化への理解] による) 
 
(?) 思い悩まずにいられるとあるが、なぜか。 
A. 習慣化された社会共通の約束事があるから。        
B. 社会的な約束事は日常生活で教えられるから。 
C. 社会でお互いの約束事が意識的に守られているから。  
D. 習慣行動に関する約束事を共有する場が持てるから。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Cuộc sống hàng ngày c ủa con người trong xã h ội được xây dựng dựa trên vô 
số những thỏa thuận ngầm được chia sẻ lẫn nhau. "Ngầm" ở đây có nghĩa là nh ững 
thỏa thuận đó không đư ợc nhận thức rõ ràng ho ặc được viết ra m ột cách cụ thể ở 
đâu cả. Chúng ta s ống hàng ngày trong s ự an tâm vì chúng ta đ ều ngập trong biển 
những quy ư ớc xã h ội được tuân th ủ một cách n ửa vô th ức, cho phép chúng ta bi ết 
điều gì sắp xảy ra tiếp theo và làm thế nào để hành động mà không cần phải lo lắng 
suy nghĩ về mỗi hành động. 
Câu 1. Trong bài có câu nói rằng bạn có thể ngừng lo lắng nhưng lý do là tại 
sao? 
A. Bởi vì có những quy ước xã hội phổ biến đã trở thành thông lệ. 
B. Bởi vì quy ước xã hội được dạy trong cuộc sống hàng ngày. 
C. Bởi vì những thỏa thuận chung được tuân thủ một cách có ý thức trong xã hội. 
D. Bởi vì có có thể có một nơi để chia sẻ những quy ước liên quan đến hành vi theo 
thói quen. 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 人間 NHÂN GIAN にんげん Nhân loại; con người 
2 日常生活 NHẬT THƯỜNG 
SANH HOẠT 
にちじょうせいかつ Cuộc sống thường nhật; sinh 
hoạt đời thường 
3 無数 VÔ SỔ むすう Vô số. 
4 暗黙 ÁM MẶC あんもく Trầm mặc; lặng lẽ; yên lặng; 
im lặng 
5 約束 ƯỚC THÚC やくそく Lời hứa 
6 相互 TƯƠNG HỖ そうご Lẫn nhau, qua lại; từ hai phía 
7 共有 CỘNG HỮU きょうゆう Sự sở hữu công cộng; cùng 
nhau trao đổi 
8 成り立って THÀNH LẬP なりたつ Bao gồm; hình thành từ 
9 約束 ƯỚC THÚC やくそく Lời hứa 
10 明瞭 MINH LIỆU めいりょう Rõ ràng; sáng sủa 
11 意識 Ý THỨC いしき Ý thức; tri giác 
12 習慣化 TẬP QUÁN HÓA しゅうかんか Tập thành thói quen 
13 無意識的 VÔ Ý THỨC ĐÍCH むいしきてき Vô ý thức 
14 約束事 ƯỚC THÚC SỰ やくそくごと Sự hứa hẹn 
15 浸かって TẨM つかる Được hoàn toàn đắm mình, bị 
ngập nước, được ngâm 
16 安心 AN TÂM あんしん Sự yên tâm; sự an tâm; yên 
tâm; an tâm 
 
LINK QUIZLET 
https://quizlet.com/vn/903187773/bai-56-flash-cards/?i=4qgd0q&x=1jqt 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 29: 7/2014 (4) - C 
 
白色度というのは物理的な指標であって感受性の指標ではない。したがって
白色度が高いというだけでは白は印象づけられないのである。 咲き乱れる花々の印
象は真っ白でも、その背後にコピー用紙程度の紙を置いてみると、花そのものの白
さは紙の白さほどではないことに気が付く。花弁 (注) は淡い色を含み水分をたた
えた (注) 重たい白である。しかし咲き誇る花々が僕らの心に届けてくる白は鮮烈
に白い。 
(原研哉『白 (しろ) 』による) 
(注) 花弁 : 花びら         (注) たたえる : ここでは、 含む 
 
(?) 筆者の考えを表しているのはどれか。 
A. 花そのものの白さは物理的な指標で示せない。  
B. 花そのものの白さは他のものとの比較によって決まる。 
C. 花の白さの印象は白色度では説明できない。  
D. 花びらより咲き誇る花々のほうが白色度が高い。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
"Độ trắng" chỉ là một chỉ số vật lý,  không ph ải là chỉ số của cảm giác. Vì vậy, 
chỉ có "độ trắng" cao không đủ để tạo ấn tượng về màu trắng. Những bông hoa nở rộ 
tạo ấn tượng về sự trắng xóa, nhưng khi bạn thử đặt tờ giấy trắng phía sau chúng, ta 
mới nhận ra rằng màu trắng của hoa không trắng như màu trắng của giấy. Cánh hoa 
có màu tr ắng đậm, nhẹ và chứa đầy nước . Tuy nhiên, màu tr ắng của những bông 
hoa nở rộ mang đến cho trái tim chúng ta màu trắng sống động sắc nét. 
Câu 1. Đáp án nào sau đây thể hiện suy nghĩ của tác giả? 
A. Độ trắng của hoa không thể được biểu thị bằng các chỉ số vật lý. 
B. Độ trắng của hoa được xác định bằng cách so sánh với những thứ khác. 
C. Ấn tượng về độ trắng của hoa không thể giải thích được bằng độ trắng. 
D. Hoa nở có độ trắng cao hơn cánh hoa. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 物理的 VẬT LÍ ĐÍCH ぶつりてき Tính vật lý 
2 指標 CHỈ TIÊU しひょう Chỉ tiêu 
3 感受性 CẢM THỤ TÍNH かんじゅせい năng lực cảm thụ 
4 白色度 BẠCH SẮC はくしょくど độ trắng 
5 印象 ẤN TƯỢNG いんしょう Ấn tượng 
6 真っ白 CHÂN BẠCH まっしろ trắng tinh 
7 咲き乱れる TIẾU LOẠN さきみだれる Nở rộ 
8 背後 BỐI HẬU はいご Phía sau lưng, đứng phía sau 
9 用紙 DỤNG CHỈ ようし Mẫu giấy trắng; form trắng 
10 淡い色 ĐẠM SẮC あわいいろ Nhạt màu, màu nhạt 
11 水分 THỦY PHÂN すいぶん Lượng nước 
12 重たい TRỌNG おもたい Nặng; nặng nề 
13 届け GIỚI とどけ Giấy; đơn 
14 鮮烈 TIÊN LIỆT せんれつ chói lọi 
15 誇る KHOA ほこる Tự hào; kiêu hãnh 
 
LINK QUIZLET  
https://quizlet.com/vn/906673342/n1-mondai-8-bai-17-flash-cards/?i=3uojyn&x=1jqt 
 
 
 
 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 30: 12/2014 (1) - C 
 
   失敗はすべて子どもがその後の人生を大過（注）なく生きるための血となり
肉となる。そう思えば失敗する前に手を出すことがいかに愚かな教育かわかろうと
いうものです。ただし親は常に子どもをそばでしっかり見守っていなければなりま
せん。手は出さないけれどいつでも危険から救ってやれるよう待機するのです。そ
うしてもし子どもが転んでケガをしたら「ほら痛いでしょう。ぶつからないように
注意するのよ」と教えてやる。そういう姿勢が親に求められるのです。 
                     (大宅映子『親の常識』による) 
(注)大過：大きな過ち 
 
(?) 筆者が親に対して言いたいことは何か。 
A.  子どもが失敗しなくなるまであきらめずに教えることが大切だ 
B.  子どもが失敗しないようあらかじめ教えることが大切だ 
C.  子どもが失敗するまでは何も言わずに見守ることが大切だ 
D.  子どもが失敗したとしてもそのまま見守ることが大切だ 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Mọi thất bại đều trở thành máu thịt giúp trẻ có thể sống mà không m ắc phải sai 
lầm lớn trong su ốt cuộc đời sau này. N ếu nghĩ như v ậy, ta có th ể hiểu rằng việc ra tay 
ngăn cản trước khi tr ẻ thất bại là m ột hành đ ộng giáo d ục ngu ng ốc đến nhường nào. 
Tuy nhiên, cha m ẹ phải luôn dõi theo con cái một cách cẩn thận ở bên cạnh. Họ không 
can thiệp, nhưng luôn trong tư th ế sẵn sàng cứu con khỏi nguy hiểm bất cứ lúc nào. Và 
nếu con b ị ngã và b ị thương, họ sẽ dạy rằng: "Đau ph ải không? L ần sau con ph ải cẩn 
thận để không va vào nữa nhé." Đó chính là thái độ mà cha mẹ cần có. 
Câu hỏi: Tác giả muốn nói điều gì với các bậc cha mẹ? 
A. Điều quan tr ọng là không t ừ bỏ và tiếp tục dạy dỗ cho đến khi tr ẻ không còn 
thất bại. 
B. Điều quan trọng là dạy trước để trẻ không mắc sai lầm. 
C. Điều quan trọng là im lặng quan sát cho đến khi trẻ thất bại. 
D. Điều quan tr ọng là ngay c ả khi trẻ thất bại, cha m ẹ vẫn tiếp tục quan sát mà 
không can thiệp. 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
 
Từ vựng Âm Hán Việt Cách đọc  Nghĩa 
失敗 THẤT BẠI しっぱい  Thất bại, sai lầm 
大過 ĐẠI QUÁ たいか  
Sai lầm lớn, lỗi lầm nghiêm 
trọng 
愚かな NGU おろかな  Ngu ngốc, dại dột 
危険 NGUY HIỂM きけん Nguy hiểm 
待機する ĐÃI CƠ たいきする  Chờ đợi, sẵn sàng 
ぶつかり ĐỘT ぶつかり Va chạm, đụng vào 
 
LINK QUIZLET  
https://quizlet.com/vn/1011568316/bai-42-flash-cards/?i=1dye7p&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 31: 12/2014 (3) - A 
 
以下は、諦めについて書かれた文章である。 
人が自分の能力以上のことに憧れ、それがどうしても出来ないというのに、
なお執着を持っているとしたら、登れない壁の下で、徒らにじしたばたしているよ
うなもので、気の毒でもありますが、滑稽でもあります。この場合は諦めが必要で
す。ただそれは、その次の、自分の能力に合った憧れなり、道なりを求めるために
のみ必要であって、諦めの中に憩ってしまうことは少し見当が外れていることにな
るかもしれません。 
(串田孫一『考える攻』による) 
 
(?) 筆者の考えに合うのはどれか。 
A. 前へ進みたいなら、無理なことに執着せずに諦めることも必要だ。 
B. 前へ進めない理由がわからないなら、諦めることが必要だ。 
C. 能力を超えていると思っても、すぐに諦めてしまっては前へ進めない。 
D. 能力に合った憧れや道を求めるなら、何事も諦めてはいけない。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Dưới đây là một đoạn văn viết về việc từ bỏ. 
Khi con ngư ời mơ ư ớc v ề điều gì đó vư ợt qua kh ả năng c ủa b ản thân dù  
không thể thực hiện được, họ vẫn giữ niềm đam mê mãnh li ệt, giống như đang vô 
vọng dưới chân bức tường không thể leo lên, không chỉ đáng thương mà còn có phần 
buồn cười. Trong trư ờng hợp này, s ự từ bỏ là cần thiết. Tuy nhiên, đi ều này ch ỉ cần 
thiết để tìm ra ước mơ hoặc con đường phù hợp hơn với khả năng của bản thân, chứ 
không phải để nghỉ ngơi trong sự từ bỏ. 
 
Câu 1. Đáp án nào phù hợp với suy nghĩ của tác giả? 
A. Muốn tiến về phía trước thì c ần phải biết từ bỏ và không đư ợc chấp niệm những 
điều bản thân không thể làm. 
B. Nếu bạn không hiểu tại sao mình không thể tiến về phía trước, bạn cần phải từ 
bỏ. 
C. Ngay cả khi bạn cho rằng nó vượt quá khả năng của mình, bạn sẽ không thể tiến 
về phía trước nếu bỏ cuộc quá sớm. 
D. Nếu bạn đang tìm kiếm một khát vọng hay một con đường phù hợp với khả năng 
của mình thì bạn đừng bao giờ từ bỏ bất cứ điều gì. 
  
N1_Chill Class_ĐỌC 3,4        
 TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 諦め ĐẾ あきらめ Sự từ bỏ; sự cam chịu; sự phục 
tùng 
2 能力 NĂNG LỰC のうりょく Khả năng 
3 憧れ SUNG こがれ Niềm mơ ước 
4 出来 XUẤT LAI しゅったい Tay nghề, thạo nghề, thực hiện, 
hoàn thành 
Kết quả, điểm số, kỷ lục 
Chất lượng (vụ mùa) 
Giao dịch 
5 執着 CHẤP TRỨ しゅうちゃく Không lúc nào quên 
6 壁 BÍCH かべ Bức tường 
7 気の毒 KHÍ ĐỘC きのどく Đáng thương; bi thảm; không 
may 
8 滑稽 HOẠT KÊ こっけい Buồn cười; ngố; ngố tàu; lố bịch; 
pha trò 
9 諦め ĐẾ あきらめ Sự từ bỏ; sự cam chịu; sự phục 
tùng 
10 憩って KHẾ いこう Nghỉ ngơi; thư giãn 
11 見当 KIẾN ĐƯƠNG けんとう Hướng; phương hướng, sự ước 
tính; sự ước đoán 
 
LINK QUIZLET 
https://quizlet.com/vn/903186131/bai-50-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 32: 12/2014 (4) - D 
 
私が 35歳になったころ、「このごろは、少年時代に経験したような、ものす
ごい雷雨おがなくなった」と口にしたことがあります。ところが、60歳ぐらいにな
ったとき、35歳ぐらいの人から同じ言葉を聞いたのです。つまり、私が強い雷雨は
なくなったと感じたとき、その人はまだ少年時代で、強い雷雨を経験していたこと
になります。この場合は、なくなったのは、少年時代特有の自然から受ける鮮烈な
印象、驚き、恐れでしょ う。 
(倉鳴厚『日和見の事典一一食嶋 厚の人文気象学ノート』による) 
 
(?) 筆者の考えに合うのはどれか。 
A. 少年時代に経験した雷雨の記憶は、人によって異なる。 
B. 同じ雷雨でも、今の人は昔の人と同じような印象は受けない。 
C. 大人になると、子供時代に経験した雷雨の記憶は薄れてしまう。 
D. 昔も今も雷雨はあるが、大人になると子供のときほど強い印象は受けな
い。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Khi tôi bước sang tuổi 35, tôi đã từng nói "gần đây, những cơn mưa giông sấm 
sét khủng khiếp giống như tôi đã trải qua hồi nhỏ không còn nữa." Tuy nhiên, khi tôi 
khoảng 60 tuổi, tôi nghe th ấy một người khoảng 35 tuổi cũng nói m ột câu như v ậy. 
Điều này có nghĩa là, vào th ời điểm tôi cảm thấy mưa bão đã giảm bớt, người đó vẫn 
còn trong độ tuổi thiếu niên và đang trải qua những cơn giông bão lớn. Trong trường 
hợp này, những điều đã mất đi có lẽ là những ấn tượng sống động, sự ngạc nhiên và 
sợ hãi mà thiên nhiên mang lại cho chúng ta trong thời thiếu niên. 
 
Câu 1. Đáp án nào phù hợp với suy nghĩ của tác giả? 
A.Mỗi người có ký ức khác nhau về những cơn mưa giông thời thơ ấu. 
B.Những cơn mưa giông không gây ấn tượng mạnh cho con ngư ời ngày nay như 
trong quá khứ. 
C.Khi chúng ta l ớn lên, ký ức về những cơn mưa giông th ời thơ ấu trở nên mờ 
nhạt dần. 
D.Ngày xưa và ngày nay đều có giông bão, nhưng khi con người ta trưởng thành hơn 
thì không còn những ấn tượng mạnh mẽ về chúng như hồi còn nhỏ. 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 少年時代 
THIỂU NIÊN THÌ 
ĐẠI しょうねんじだい Thời thiếu niên 
2 経験 KINH NGHIỆM けいけん Kinh nghiệm 
3 雷雨 LÔI VŨ らいう Bão tố 
4 言葉 NGÔN DIỆP ことば Từ ngữ 
5 特有 ĐẶC HỮU とくゆう vốn có; cố hữu 
6 鮮烈 TIÊN LIỆT せんれつ Tính chất chói lọi 
7 印象 ẤN TƯỢNG いんしょう Ấn tượng 
8 驚き KINH おどろき ngạc nhiên 
9 恐れ KHỦNG おそれ Nỗi sợ; mối lo ngại 
 
LINK QUIZLET  
https://quizlet.com/vn/906673612/n1-mondai-8-bai-21-flash-cards/?i=3uojyn&x=1jqt 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 33: 7/2015 (1) - D 
 
「できる人のモノサシ」は、ごく一部であるエリートにしか通用しません。
でも大多数に属している平凡な自分がもつ「ふつうのモノサシ」は、世の中の多く
の人に通用するモノサシです。その「ふつうのモノサシ」からこそ、多くの人に共
感されるヒット商品が生み出せると思うのです。自分は平凡だとか、つまらない人
間だと思っている人にこそ、「売れる発想」がわき、「売れるシナリオ」が組み立
てられ、「売れる商品」を作れるのではないか。 私はそんなふうに考えています。 
(吉川美樹『半径A. メートルの「売れるり発想術』 による) 
 
(?)「売れる商品」を作れるとあるが、なぜか。 
A. 平凡な人は自身のモノサシを大多数の人に合わせて変えられるから。 
B. 平凡な人は自身のモノサシが世の中に通用すると理解しているから。 
C. 平凡な人はエリートより独創的なモノサシをもっているから。 
D. 平凡な人は大多数の人に受け入れられるモノサシをもっているから。 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
“Thước đo c ủa ngư ời thành công” ch ỉ phù h ợp v ới m ột b ộ phận nh ỏ người 
thuộc tầng lớp ưu tú. Nhưng “thư ớc đo bình thư ờng” mà b ản thân tôi, ngư ời thuộc 
đại đa số bình thường, sở hữu lại là thước đo có th ể áp dụng cho nhiều người trong 
xã hội. Tôi nghĩ r ằng, chính t ừ “thước đo bình thư ờng” ấy, có th ể tạo ra nh ững sản 
phẩm thành công nh ận đư ợc sự đồng c ảm t ừ đông đ ảo m ọi ngư ời. Tôi nghĩ r ằng, 
chính những người cảm thấy mình bình thư ờng, không có gì đ ặc biệt, lại có th ể nảy 
sinh “ý tư ởng bán ch ạy”, xây d ựng “k ịch bản bán ch ạy”, và t ạo ra “s ản ph ẩm bán 
chạy”. 
 
Câu 1. Trong đoạn có câu “bạn có thể tạo ra sản phẩm có thể bán được” ; lý do là 
vì sao? 
A. Bởi vì người bình thường có thể thay đổi thước đo của mình để phù hợp với số 
đông. 
B. Bởi vì những người bình thường hiểu rằng thước đo của họ được sử dụng trong xã 
hội. 
C. Bởi vì người bình thường có thước đo sáng tạo hơn giới thượng lưu. 
D. Bởi vì người bình thường có thước đo được đa số mọi người chấp nhận. 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 エリート   Tinh túy; cái tốt nhất; cái đã 
được chắt lọc 
2 通用 THÔNG DỤNG つうよう Thông dụng. 
3 大多数 ĐẠI ĐA SỐ だいたすう Đại đa số; cực nhiều 
4 属し CHÚC ぞくする Thuộc vào loại; thuộc vào 
nhóm 
5 平凡 BÌNH PHÀM へいぼん Bình phàm; bình thường; 
phàm 
6 世の中 THẾ TRUNG よのなか Xã hội; thế giới; các thời 
7 共感 CỘNG CẢM きょうかん Sự đồng cảm; sự đồng tình; sự 
thông cảm 
8 ヒット   Cú đánh 
9 商品 THƯƠNG PHẨM しょうひん Sản phẩm; hàng hóa 
10 発想 PHÁT TƯỞNG はっそう Sáng tạo 
11 組み立てられ TỔ LẬP くみたてられ Sự xây dựng; sự lắp ráp; sự tổ 
chức; lắp ráp; xây dựng 
 
LINK QUIZLET 
https://quizlet.com/vn/903188206/bai-58-flash-cards/?i=4qgd0q&x=1jqt  

N1_Chill Class_ĐỌC 3,4        
 
BÀI 34: 7/2015 (2) - B 
 
グーテンベルクの活版印刷革命から約500年、今世紀、デジタル技術による情
報爆発の時代が始まった。だれもが発信者になるインターネット世界で、すでに情
報は飽和している。すると、「いかに蓄積された情報を統合的に再利用するか」が
キー (注) になる。大量に蓄積された情報の中から、重要なものを発掘して新たな
創造に結びつけていく技術。それは古代から書物を大量に蓄積し、索引検索によっ
て利用できるようにしてきた図書館の基本システムそのものだ。図書館は、私たち
が思っているよりはるかに未来的なものだ。 
(朝日新聞グロープによる) 
(注) キー : ここでは、重要な点 
 
(?)未来的とあるが、どのような点が未来的なのか。 
A. インターネット世界よりも情報を検索する仕組みが優れている点。 
B. インターネット世界と同様に情報の蓄積と検索の仕組みがある点。 
C. インターネット世界と同様にだれもが自由自在に情報を検索できる点。 
D. インターネット世界では見られない古代からの情報を蓄積している点。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Từ cuộc cách m ạng in ấn của Gutenberg k hoảng 500 năm trư ớc, thế kỷ này 
đã mở ra kỷ nguyên bùng n ổ thông tin b ằng công ngh ệ số. Trong th ế giới Internet 
mà ai cũng có thể trở thành người gửi thông tin, thông tin đã trở nên bão hòa. Vì vậy, 
"làm thế nào để tái sử dụng tích hợp thông tin đã được tích lũy" trở thành chìa khóa. 
Kỹ thuật khai thác thông tin quan trọng từ số lượng lớn thông tin đã được tích lũy để 
đem đến sự sáng tạo mới. Đó chính là h ệ thống cơ bản của thư viện- nơi mà đã tích 
lũy số lượng lớn sách từ thời cổ đại và giúp chúng ta s ử dụng (sách) b ằng cách tìm 
kiếm chỉ mục. Thư viện là thứ có triển vọng tương lai hơn nhiều so với chúng ta nghĩ. 
 
Câu 1. Trong đoạn có nói đến “triển vọng tương lai”, những điểm nào là triển 
vọng tương lai? 
A. Hệ thống tìm kiếm thông tin tốt hơn Internet. 
B. Có cơ chế lưu trữ và tìm kiếm thông tin tương tự như thế giới Internet. 
C. Cũng giống như trong thế giới Internet, bất kỳ ai cũng có thể tìm kiếm thông tin 
một cách tự do. 
D. Nó lưu trữ thông tin từ thời xa xưa không thể tìm thấy trên Internet. 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 活版印刷革命 HOẠT BẢN ẤN 
LOÁT CÁCH MỆNH 
 Cuộc cách mạng in letterpress 
2 世紀 THẾ KỈ せいき Thế kỷ. 
3 デジタル   Kỹ thuật số 
4 情報爆発 TÌNH BÁO BẠO 
PHÁT 
じょうほうばくは
つ 
Bùng nổ thông tin 
5 発信者 PHÁT TÍN GIẢ はっしんしゃ Người phát tín hiệu 
6 統合 THỐNG HỢP とうごう Sự kết hợp; sự thống nhất; sự 
tích hợp. 
7 飽和 BÃO HÒA ほうわ Bão hòa 
8 蓄積 SÚC TÍCH ちくせき Sự tích luỹ; sự lưu trữ 
9 再利用 TÁI LỢI DỤNG さいりよう Sự tái sử dụng 
10 発掘 PHÁT QUẬT はっくつ Sự khai thác; sự khai quật 
11 創造 SANG TẠO そうぞう Sự sáng tạo 
12 索引 TÁC DẪN さくいん Mục lục. 
13 図書館 ĐỒ THƯ QUÁN としょかん Thư viện 
14 システム   Hệ thống 
15 未来的 VỊ LAI ĐÍCH みらいてき Mang tính tương lai 
 
LINK QUIZLET 
https://quizlet.com/vn/903188400/bai-59-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 35: 7/2015 (3) - D 
 
職業として芸術家や学者、あるいは創造にかかわるひとびととは生涯コドモ
としての部分がその作品をつくる。その部分の水分が蒸発せぬよう心がけねばなら
ないが、このことは生活人のすべてに通じることである。万人にとって感動のある
人生を送るためには、自分のなかのコドモを蒸発させてはならない。じつをいう
と、この世のたいていの職は、オトナの部分で成立している。とくに法律や経理の
ビジネスの分野はそうである。ところが、うれしいことに、そういう職業人のなか
に豊潤な鑑賞家や趣味人が多い。 
(司馬譜太郎『風塵抄』による) 
 
(?)うれしいことにとあるが、何がうれしいのか。 
A.この世のたいていの職業は、コドモの部分も必要としていること。 
B.コドモの部分で成立している職業の人は、感動のある人生を送れること。 
C.コドモの部分を持っていれば、オトナの部分で成立している職業に就けること。 
D.オトナの部分で成立している職業の人でも、コドモの部分を持ち続けているこ
と。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Với những nghề nghiệp như nghệ sĩ, học giả, hay những người liên quan đ ến 
sự sáng tạo, thì phần mãi mãi là tr ẻ thơ trong họ chính là phần đã tạo ra tác ph ẩm. 
Những người này ph ải cố gắng không đ ể phần trẻ thơ này bi ến mất, nhưng đ ối với 
mọi ngư ời trong c uộc s ống cũng c ần như v ậy. Đ ối v ới m ọi ngư ời, để có m ột cu ộc 
sống đầy cảm xúc thì ph ải cố gắng không đánh m ất phần trẻ thơ trong mình. Th ực 
tế là, hầu hết các công việc trên thế giới này được xây dựng dựa trên phần người lớn. 
Đặc biệt là trong lĩnh vực kinh doanh pháp luật và kế toán. Tuy nhiên, đáng mừng là 
là có nhi ều người trong nh ững nghề nghiệp đó là nh ững ngư ời có s ở thích phong 
phú và là những người biết thưởng thức nghệ thuật. 
 
Câu 1. Trong bài có câu “đáng mừng là”, điều gì là điều đáng mừng? 
A. Hầu hết các công việc trên thế giới này đều có yêu cầu về phần trẻ thơ. 
B. Những người có nghề nghiệp nhờ vào phần trẻ thơ của mình có thể có một cuộc 
sống tràn đầy hứng thú. 
C. Nếu có phần trẻ thơ trong mình, bạn có thể kiếm được một công việc dựa vào 
phần người lớn. 
D. Ngay cả khi nghề nghiệp của một người dựa trên phần người lớn thì họ vẫn có 
phần trẻ thơ bên trong mình. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 職業 CHỨC NGHIỆP しょくぎょう Ｎghề nghiệp 
2 芸術家 VÂN THUẬT GIA げいじゅつか Nhà nghệ thuật. 
3 創造 SANG TẠO そうぞう Sự sáng tạo 
4 生涯 SANH NHAI しょうがい Sinh nhai; cuộc đời. 
5 コドモ   Những đứa trẻ 
6 水分 THỦY PHÂN すいぶん Thành phần nước, hàm 
lượng nước thành phần 
7 蒸発 CHƯNG PHÁT じょうはつ Sự làm bay hơi, sự bay 
hơi 
8 感動 CẢM ĐỘNG かんどう Sự cảm động; cảm động; 
sự xúc động 
9 人生 NHÂN SANH じんせい Đời người 
10 オトナ   Người lớn 
11 法律 PHÁP LUẬT ほうりつ Pháp luật. 
12 成立 THÀNH LẬP せいりつ Sự thành lập; thành lập; 
làm. 
13 経理 KINH LÍ けいり Kế toán 
14 ビジネス   Việc buôn bán; việc kinh 
doanh 
15 分野 PHÂN DÃ ぶんや Lĩnh vực 
16 職業人 CHỨC NGHIỆP 
NHÂN 
しょくぎょうじん Người chuyên nghiệp 
17 豊潤 PHONG NHUẬN ほうじゅん Thịnh vượng và giàu; xa 
hoa; dư thừa 
18 鑑賞 GIÁM THƯỞNG かんしょう Sự đánh giá cao; sự hiểu 
rõ giá trị 
LINK QUIZLET 
https://quizlet.com/vn/905163547/n1-mondai-8-bai-60-flash-cards/?i=3uojyn&x=1jqt 
 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 36: 7/2015 (4) - C 
 
我々は裸の眼でものを見ているように思っているが、実際そうではない。
我々は、常識という色眼鏡でものを見ている。そして、常識を作ったのは、過去の
偉大な人間であり、その偉大な人間はある学問や芸術を創り出し、そして、新しく
世界を見る眼を我々に教えた。その眼が歴史的に我々に伝承され、我々はその眼で
もって、ものを見、しかも裸の眼でものを見ていると思っている。しかし、一つの
眼である限り、それは世界を歪んで見ているのである。その眼からはどうしても見
えない何かがあるのである。 
(梅原疾『状宴一梅原猛随想、と対話』 による) 
 
(?) この文章で筆者が述べていることは何か。 
A.我々は裸の眼でものを見ている限り、世界のすべてを見ることはできない。 
B.我々は過去の偉大な人間と同じ見方で世界を見ていると思い込んでいる。 
C.我々は常識に縛られているために、見えるものが限られている。 
D.我々は常識という色眼鏡を外して裸の眼で世界を見るべきだ。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Chúng ta thư ờng cho r ằng mình đang nhìn th ế giới b ằng đôi m ắt thư ờng, 
nhưng th ực t ế lại không ph ải v ậy. Chúng ta đang nhìn th ế giới qua lăng kính c ủa 
những quan niệm chung. Những quan niệm này được tạo ra bởi những con ngư ời vĩ 
đại trong quá kh ứ, những người đã sáng tạo ra các lĩnh v ực học thuật và nghệ thuật 
nào đó, và dạy chúng ta cách nhìn thế giới một cách mới mẻ. Những kiến thức này đã 
được truyền lại qua th ời gian, và chúng ta s ử dụng nó đ ể nhìn nhận thế giới, mà l ại 
nghĩ rằng mình đang nhìn bằng mắt thường. Tuy nhiên, nếu chỉ có một lăng kính đó, 
nó s ẽ làm chúng ta nhìn th ế giới một cách méo mó. Luôn có nh ững th ứ chúng ta 
không thể nhìn thấy từ góc nhìn đó. 
Câu 1. Tác giả đang nói về điều gì trong bài viết này? 
A. Chừng nào còn nhìn m ọi thứ bằng mắt thường, chúng ta v ẫn sẽ không thể nhìn 
thấy được tất cả mọi thứ trên thế giới. 
B. Chúng ta đang l ầm tư ởng r ằng b ản thân đang nhìn nh ận th ế giới gi ống như 
những vĩ nhân đã làm trong quá khứ. 
C. Những gì chúng ta có th ể nhìn thấy đang bị giới hạn vì chúng ta b ị ràng buộc bởi 
lẽ thường. 
D. Chúng ta nên qua lăng kính của lẽ thường để nhìn thế giới bằng mắt thường. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 実際 THỰC TẾ じっさい Thực tế. 
2 常識 THƯỜNG THỨC じょうしき 
Kiến thức thông thường; 
bình thường 
3 色眼鏡 SẮC NHÃN KÍNH いろめがね Kính râm 
4 偉大 VĨ ĐẠI いだい Vĩ đại; to lớn; xuất chúng 
5 創り出す SANG XUẤT つくりだす sáng tạo 
6 芸術 VÂN THUẬT げいじゅつ Nghệ thuật 
7 我々 NGÃ われわれ Chúng tôi; chúng ta 
8 伝承 TRUYỀN THỪA でんしょう Truyền đạt, tuyên truyền 
9 歪む OAI ゆがむ Bẻ cong; xuyên tạc; bôi nhọ 
 
LINK QUIZLET  
https://quizlet.com/vn/909419770/n1-mondai-8-bai-22-flash-cards/?i=3uojyn&x=1jqt 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 37: 12/2015 (1 ) - D 
無駄なものを早めに見極め、優先度をつけ、いかにスピーディーに仕事をこ
なしていくか。それが賢く成果を出す方法だ。目の前の先輩たちも、そうやって働
いている人も多いのではないかと思います。でも、そうした人たちの問題点は、仕
事の判断軸が自分になるということです。 結局自分が効率的に働けるか、自分が求
められている仕事量を時間内にこなせるかが最大の判断軸になっていくのです。す
ると、できる範囲のこと、無理のないことに収まっていってしまうのです。 
(高橋克航『「上司がさっぱりわかってくれない」と思っているあなたへ』による) 
 
(?) この文章で筆者が言いたいことは何か。 
A.無駄を見極められなければ、自分に求められている仕事をこなせなくなる。 
B.成果を出すことばかりを考えていると、自分の基準を人にも求めるようになる。 
C.効率性を重視しすぎると、自分が求められている仕事がわからなくなる。 
D.効率的に働くことばかりを考えていると、自分にできる仕事しかしなくなる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Phát hiện ra những thứ vô ích sớm, xác định thứ tự ưu tiên, và làm thế nào để 
hoàn thành công việc một cách nhanh chóng. Đó là cách thông minh để đạt được kết 
quả. Tôi nghĩ rằng nhiều tiền bối xung quanh mình cũng đang làm việc theo cách đó. 
Tuy nhiên, vấn đề với những người này là họ chính là trọng tâm của đánh giá (để đưa 
ra quyết định). Trọng tâm c ủa đánh giá l ại là vi ệc họ có thể làm việc hiệu quả hay 
không, họ có thể hoàn thành lư ợng công vi ệc yêu c ầu trong th ời gian quy đ ịnh hay 
không. Kết quả là, họ chỉ dừng lại ở những việc họ có thể làm, những việc không gây 
áp lực cho họ. 
 
Câu 1. Tác giả đang muốn truyền tải điều gì trong đoạn văn này? 
A. Nếu không thể xác định được sự lãng phí, bạn sẽ không thể thực hiện được công 
việc mà bạn mong đợi. 
B. Nếu bạn chỉ nghĩ đến việc đạt được kết quả, bạn sẽ bắt đầu mong đợi người khác 
đáp ứng những tiêu chuẩn của riêng bạn. 
C. Nếu bạn quá chú trọng đến tính hiệu quả, bạn sẽ nhận ra được những gì bạn cần 
phải làm. 
D. Nếu bạn chỉ nghĩ đến việc làm việc hiệu quả, bạn sẽ chỉ có thể làm được những 
việc mà bạn có thể làm. 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 無駄 VÔ ĐÀ むだ Vô ích; không có hiệu quả 
2 見極め KIẾN CỰC みきわめ Sự biết chắc, sự thấy chắc 
3 優先度 ƯU TIÊN ĐỘ ゆうせんど Độ ưu tiên 
4 スピーディ   Nhanh nhẹn; mau lẹ 
5 賢く HIỀN かしこい Thông minh; khôn ngoan 
6 成果 THÀNH QUẢ せいか Thành quả; kết quả. 
7 先輩 TIÊN BỐI せんぱい Tiền bối; người đi trước 
8 判断 PHÁN ĐOẠN はんだん Suy xét, xem xét 
9 結局 KẾT CỤC けっきょく Kết cục; cuối cùng thì 
10 効率的 HIỆU SUẤT ĐÍCH こうりつてき Mang tính hiệu suất 
11 最大 TỐI ĐẠI さいだい Sự lớn nhất; sự vĩ đại nhất 
12 範囲 PHẠM VI はんい Phạm vi 
13 無理 VÔ LÍ むり Quá sức; quá khả năng 
 
LINK QUIZLET 
https://quizlet.com/vn/903186423/bai-51-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 38: 12/2015 (3) - D 
 
コンピューター化の進行とともに、記憶力のみならず、計算力とか、情報整
理力とか、いくつもの脳の雑用と思われている作業を電脳(注)に負わせるようにな
った。肉休労働だけでなく、精神労働の負担からも人間を解放し、特てる力をなる
べく創造的な仕事に振り向けようというのだろう。しかし、創造力とは何だろう。
記憶力や情報整理力など脳の基礎的体力の上に成り立つもののような気がしてなら
ないのだ。 
(注) 電脳 : コンピュータ 
 
(?) この文章で筆者が最も言いたいことは何か。 
A. コンピュータ化の進行が、人間を肉体労働から解放する。 
B. コンピュータ化の進行とともに、脳の基礎体力を失うことになる。 
C. コンピュータに任せている脳の雑用こそが、創造力の土台になる。 
D. コンピュータによる精神労働からの解放が、人間を創造的にする。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Cùng với sự phát triển máy tính, không ch ỉ trí nhớ mà còn c ả khả năng tính 
toán, sắp xếp thông tin và nhi ều công vi ệc được coi là vi ệc vụn vặt của bộ não đã 
được giao cho máy tính. M ục đích không ch ỉ là giải phóng con ngư ời khỏi lao đ ộng 
chân tay mà còn cả gánh nặng lao động trí óc, để có thể tập trung sức mạnh đặc biệt 
vào công vi ệc sáng t ạo. Tuy nhiên, s ức sáng t ạo l à gì? Tôi cho r ằng nó đư ợc xây 
dựng trên nền tảng của năng lực cơ bản của bộ não, như trí nhớ và khả năng tổ chức 
thông tin. 
Câu 1. Điều tác giả muốn nói nhất trong đoạn văn này là gì? 
A. Những tiến bộ trong tin học hóa sẽ giải phóng con người khỏi lao động chân tay. 
B. Khi tin học hóa phát triển, chúng ta sẽ mất đi năng lực cơ bản của bộ não. 
C. Các việc vụn vặt của bộ não được giao cho máy tính thực hiện lại chính là nền 
tảng của sự sáng tạo. 
D. Sự giải phóng khỏi lao động trí óc nhờ có máy tính khiến con người sáng tạo hơn. 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 進行 TIẾN HÀNH しんこう Tiến triển 
2 記憶力 KÍ ỨC LỰC きおくりょく Trí nhớ. 
3 計算力 KẾ TOÁN LỰC けいさんりょく Khả năng tính toán 
4 情報整理力 
TÌNH BÁO CHỈNH 
LÝ LỰC 
じょうほうせいり
りょく 
Khả năng tổ chức 
thông tin 
5 脳の雑用 NÃO TẠP DỤNG のうのざつよう Công việc trí óc 
6 作業 TÁC NGHIỆP さぎょう Công việc 
7 電脳 ĐIỆN NÃO でんのう 
Máy điện toán, máy 
tính 
8 負わせる PHỤ おわせる 
Ấn định (hình phạt, 
thuế, nghĩa vụ) 
9 負担 PHỤ ĐAM ふたん Sự gánh vác 
10 精神労働 
TINH THẦN LAO 
ĐỘNG せいしんろうどう Lao động trí óc 
11 解放し GIẢI PHÓNG かいほう Giải phóng 
12 創造的 SANG TẠO ĐÍCH そうぞうてき Sáng tạo 
13 振り向け CHẤN HƯỚNG ふりむく Ngoảnh mặt; đổi hướng 
14 創造力 SANG TẠO LỰC そうぞうりょく Sức mạnh sáng tạo 
15 基礎的 CƠ SỞ ĐÍCH きそてき Cơ sở, nền tảng 
16 成り立つ THÀNH LẬP なりたつ Bao gồm; hình thành từ 
 
LINK QUIZLET 
https://quizlet.com/vn/903186597/bai-52-flash-cards/?i=4qgd0q&x=1jqt 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 39: 12/2015 (4) - A 
 
誰にとっても、感情とどうつきあうかということはなかなか厄介な問題である。感
情とうまくつきあうということは、単に社会的場面での感情表現をうまくコントロールする
ということではない。むしろ、感情の豊かさや複雑さを通して、またしばしば測りがたく統
御 (注) しがたい感情の動きを通して、生きることを味わい、人生を活性化しながら、しか
も感情の力に支配されないということであろう。 
                       (井上俊・船津衛編『自己と他者の社会学』 による) 
(注) 統御する : 思いどおりに扱う 
 
(?) 感情とのつきあい方について、筆者はどうすればよいと述べているか。 
A. 感情と深くかかわりながらも、感情に縛られないようにする。 
B. 感情を無理にコントロールせずに、感情に任せるようにする。 
C. 感情をコントロールして、感情に流されないようにする。 
D. 感情を隠すことも、強く表現することもないようにする。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Làm thế nào để ứng phó v ới cảm xúc là m ột vấn đề khó khăn đ ối với tất cả 
mọi người. Ứng phó t ốt với cảm xúc không ch ỉ đơn giản là ki ểm soát tốt biểu hiện 
cảm xúc trong các tình huống xã hội. Đúng hơn, chính nhờ sự phong phú và phức tạp 
của nh ững c ảm xúc, và nh ững c ảm xúc thay đ ổi mà chúng ta khó lư ờng trư ớc và 
kiểm soát, mà người ta có thể vừa tận hưởng việc đang được sống, làm cuộc sống trở 
nên sống động hơn vừa không bị chi phối bởi sức mạnh của cảm xúc. 
 
Câu 1. Tác giả nói gì về cách giải quyết cảm xúc? 
A. Vừa dính dáng sâu sắc với cảm xúc (để cho cảm xúc được phát triển) vừa cố gắng 
không bị ràng buộc bởi cảm xúc 
B. Hãy để cảm xúc của bạn tuôn chảy mà không kiểm soát chúng. 
C. Kiểm soát cảm xúc của bạn và tránh bị chúng cuốn đi. 
D. Đừng che giấu cảm xúc của bạn hoặc thể hiện chúng quá mạnh mẽ. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 感情 CẢM TÌNH かんじょう Cảm tình、tâm trạng; 
cảm xúc 
2 厄介な ÁCH GIỚI やっ かいな Phiền hà, rắc rố 
3 場面 TRÀNG DIỆN ばめん Cảnh (kịch); tình trạng; 
bối cảnh 
4 感情表現 CẢM TÌNH BIỂU 
HIỆN 
かんじょうひょうげ
ん 
Biểu hiện tình cảm 
5 コントロール   Điều khiển, sự quản lý 
6 豊か PHONG ゆたか Phong phú; giàu có 
7 複雑さ PHỨC TẠP ふくざつさ Sự phức tạp, sự rắc rối, 
điều phức tạp 
8 統御 THỐNG NGỰ とうぎょ Sự điều khiển. 
9 活性化 HOẠT TÍNH 
HÓA 
かっせいか Sự hoạt hoá, sự làm 
phóng xạ, kích hoạt 
10 支配 CHI PHỐI しはい Sự ảnh hưởng; chi phối 
 
LINK QUIZLET 
https://quizlet.com/vn/903186941/bai-53-flash-cards/?i=4qgd0q&x=1qqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 40: 7/2016 (2) - A 
 
「自分は間違ってない」と思うことから始まる怒りは、妥当な怒りです。少
しも後ろめたくありません。むしろ、「間違ってない」と思いながら怒りをごまか
してしまったときのほうが後味は悪いのです。「なんで怒らなかったんだろう」と
いう後悔は、惨めな気持ちになって長く続きます。怒りを抑えでばかりいると、こ
の惨めな気持ちにも慣れてしまいます。敗北感に慣らされてしまうのです。わたし
はこれがいちばん怖いと思っています。 
 
(?)  筆者の考えに合うのはどれか。 
A. 怒りの原因を明らかにしたいなら、怒りをごまかさないほうがいい。 
B. 怒りを抑えていると、ますます怒りが増してしまう。 
C.  自分が間違っていないと思うなら、怒りを抑えなくていい。 
D. 自分が間違っていると気づけば、怒りは長く続かない。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Cảm giác tức giận bắt nguồn từ suy nghĩ "tôi không sai" là m ột cảm giác tức 
giận hợp lý. Không h ề cảm thấy tội lỗi chút nào. Ngư ợc lại, cảm giác khi che gi ấu sự 
tức giận của mình dù b ạn nghĩ r ằng mình "không sai" còn t ệ hơn. Sự hối tiếc vì "t ại 
sao tôi lại không tức giận" sẽ khiến bạn cảm thấy tồi tệ trong một khoảng thời gian 
dài. Nếu bạn luôn kìm nén sự tức giận, bạn sẽ quen với cảm giác khổ sở này. Tôi nghĩ 
đây chính là điều đáng sợ nhất. 
 
Câu 1. Đáp án nào dưới phù hợp với suy nghĩ của người viết? 
A. Nếu muốn tìm ra nguyên nhân khiến mình tức giận, tốt hơn hết bạn đừng nên che 
giấu nó. 
B. Nếu bạn kìm nén cơn giận, bạn sẽ càng trở nên giận dữ hơn. 
C. Nếu bạn không cho rằng mình sai thì bạn không cần phải kìm nén cơn tức giận. 
D. Cơn tức giận không kéo dài lâu nếu bạn nhận ra mình sai. 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 間違 GIAN VI まちがい Lỗi lầm; nhầm lẫn. 
2 怒り NỘ いかり Phẫn nộ. 
3 妥当 THỎA ĐƯƠNG だとう hợp lý; đúng đắn 
4 後味 HẬU VỊ あとあじ Dư vị 
5 後悔 HẬU HỐI こうかい hối hận; ăn năn 
6 惨めな気持ち THẢM KHÍ TRÌ みじめなきもち Cảm thấy đau khổ 
7 抑える ỨC おさえる kiềm chế, kìm nén, hạn chế. 
8 慣れる QUÁN なれる Làm quen, trở nên quen với. 
9 敗北感 BẠI BẮC CẢM はいぼくかん Cảm giác thua cuộc 
10 怖い PHỐ こわい Sợ; đáng sợ 
 
LINK QUIZLET 
https://quizlet.com/vn/901584246/bai-30-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 41 : 7/2016 (3) - C 
 
    引っ越しというのは、誰にとっても面倒だが、いい面もあるだろう。すな
わち、これまでの生活を振り返り、今後望むような生活を思い描きながら、そのた
めに不要なものをどんどん処分する機会である、と。そういう意味では、引っ越し
は日常生活を更生させるよいきっかけでもあるはずだ。私はいつもそのきっかけを
活かしたいと思いながらも、なかなか実行するに至らない。むしろ何十年も、まる
で亀のごとく重い物を背負いながら転々としてきたわけである。 
 (マイク・モラスキー日本経済新聞2014年3月25日付夕刊による) 
 
(?) 引っ越しについて、筆者はどのように述べているか。 
A.不要なものを捨てる機会であり、自分もそのための引っ越しを何度もしている 
B.望むような生活をするためであり、自分もいい場所があれば引っ越しをしたい 
C.生活を一新する機会だが、自分は引っ越しをしてもそれを活かせていない 
D.いい面もあるが、自分は面倒であまり引っ越しをしていない 
  
N1_Chill Class_ĐỌC 3,4        
 
 BẢN DỊCH  
Chuyển nhà là m ột điều phiền phức đối với tất cả mọi người, nhưng cũng có 
những mặt tốt của nó. Đó là cơ h ội để nhìn lại cuộc sống đã qua, hình dung cu ộc 
sống mà bạn mong muốn trong tương lai, và v ứt bỏ những thứ không cần thiết cho 
cuộc sống đó. Theo nghĩa đó, chuy ển nhà cũng là một khởi đầu tốt để cải thiện cuộc 
sống hàng ngày. Tôi luôn mu ốn tận dụng cơ h ội đó, nhưng mãi v ẫn chưa th ực hiện 
được. Thay vào đó, tôi đã lang thang hàng ch ục năm trời, như một con rùa cõng trên 
lưng những đồ vật nặng trĩu.  
(Theo Mike Morasky, Nihon Keizai Shimbun, ngày 25 tháng 3 năm 2014, ấn bản buổi tối) 
Câu 1: Tác giả đã đề cập đến điều gì Về việc chuyển nhà?  
A. Đó là cơ h ội để vứt bỏ những thứ không cần thiết, và b ản thân tác gi ả cũng đã 
nhiều lần chuyển nhà vì mục đích đó.  
B. Đó là đ ể có m ột cu ộc s ống như mong mu ốn, và b ản thân tác gi ả cũng mu ốn 
chuyển nhà nếu có một nơi ở tốt.  
C. Đó là cơ h ội đ ể làm mới cuộc sống, nhưng b ản thân tác gi ả dù đã chuy ển nhà 
cũng chưa tận dụng được điều đó.  
D. Tuy có mặt tốt, nhưng bản thân tác giả thấy phiền phức nên không chuyển nhà 
nhiều lắm. 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
Từ vựng Âm Hán Việt Cách đọc Nghĩa 
面倒 DIỆN ĐẢO めんどう Phiền phức, rắc rối 
すなわち TỨC すなわち  Tức là, có nghĩa là 
背負い BỐI PHỤ せおい  Cõng, gánh vác 
更生 CANH SINH こうせい  Cải tạo, tái sinh 
望む VỌNG のぞむ Mong muốn, kỳ vọng 
処分 XỬ PHÂN しょぶん  Xử lý, thanh lý 
実行 THỰC HÀNH じっこう Thực hiện, thi hành 
至る CHÍ いたる  Đạt đến, dẫn đến 
亀 QUY かめ  Con rùa 
 
LINK QUIZLET 
 
https://quizlet.com/vn/1011569851/bai-41-flash-cards/?i=1dye7p&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 42 : 7/2016 (4) - D  
 
いま人間の欲望がいろいろと問題になっているのは、それが余りにも脹みす
ぎて、欲望の充足それ自体が目的と化し、本来の意味、つまり私たちの必要を満た
し、私たちに心身の安定とやすらぎ(幸福)をもたらす範囲を遥かに逸脱してしまっ
たことにある。私たちの多くはこの過度に肥大した欲望ゆえに、日々を楽しく過せ
るどころか、絶えざる欲求不満に苛まれるという不幸な状態に陥っている。 
(鈴木孝夫「人にはどれだけの物が必要か―ミニマム生活のすすめ」による) 
 
(?)  欲望について、筆者はどのように述べているか。 
A. 欲望が満たされたため、本当に必要なものがわからなくなっている 
B. 欲望が簡単に満たされるために、日々の楽しみが失われている 
C. 欲望が脹みすぎて、欲望を満たすことをあきらめるようになっている 
D.  欲望が脹みすぎたため、幸福が感じられなくなっている 
 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Hiện nay, sự ham muốn của con người đang nổi lên như m ột vấn đề là do nó 
đã phát tri ển quá m ức, và vi ệc th ỏa mãn ham mu ốn đó đã tr ở thành m ục đích t ự 
thân, vượt xa ý nghĩa ban đầu của nó, tức là đáp ứng nhu cầu của chúng ta, mang lại 
cho chúng ta s ự ổn định và yên bình (hạnh phúc) v ề cả thể chất lẫn tinh th ần. Rất 
nhiều người trong chúng ta vì ham mu ốn quá đ ộ này mà không nh ững không th ể 
sống vui v ẻ mỗi ngày, mà còn rơi vào tr ạng thái b ất hạnh khi b ị dày vò b ởi sự bất 
mãn về nhu cầu không ngừng.  
(Theo Suzuki Takao "Con người cần bao nhiêu thứ? - Khuyến nghị về cuộc 
sống tối giản") 
Câu 1: Tác giả đã đề cập đến điều gì về ham muốn?  
A. Do ham muốn được thỏa mãn, chúng ta đã không còn bi ết được những gì thực sự 
cần thiết.  
B. Do ham muốn được thỏa mãn một cách dễ dàng, niềm vui hàng ngày đã bị mất đi. 
C. Do ham mu ốn phát tri ển quá m ức, chúng ta đã ph ải t ừ bỏ việc th ỏa mãn ham 
muốn.  
D. Do ham mu ốn phát tri ển quá m ức, chúng ta đã không th ể cảm nhận được hạnh 
phúc. 
TỪ VỰNG 
Từ vựng Âm Hán Việt Cách đọc Nghĩa 
欲望 DỤC VỌNG よくぼう Dục vọng, ham muốn 
脹み TRƯỚNG ふくらみ Sự phồng lên, sưng lên 
充足 SUNG TÚC じゅうそく Đầy đủ, sung túc 
範囲 PHẠM VI はんい Phạm vi 
欲求 DỤC CẦU よっきゅう Nhu cầu, mong muốn 
苛まれる HÀ さいなまれる Bị giày vò, dằn vặt 
状態 TRẠNG THÁI じょうたい Trạng thái, tình trạng 
 
LINK QUIZLET 
https://quizlet.com/vn/1011568316/bai-42-flash-cards/?i=1dye7p&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 43: 12/2016 (1) - C 
 
教師 = 話す人、生徒 = 聞く人という構造が知らずのうちに教室空間にでき
あがり、そして固定化してしまうのは恐ろしいことではないかと思う。教師が先取
りしてしまうことで、生徒が自分自身で考え、解決しようとする芽をつみとってし
まう場合がある。いつも話し続けるのがコミュニケーションでない。教師側が沈黙
し、「待つ」という行為や時には大切であろう。もう少し話したい、と思うところ
で一歩ひいてみる(注)ことで、相手が言おうとすることを引き出すことができるの
である。 
(徳井厚子『日本語教師の「衣」再考一多文化共生への課題』 による) 
(注) 一歩かいてみる : ここでは、話すのをやめてみる 
 
(?) 筆者の考えに合うのはどれか。 
A. 教師と生徒が自由に発言し合うことも必要だ。             
B. 教師は生徒の考えを想像するべきだ。 
C. 教師は生徒の発言を待つことも必要だ。                   
D. 教師は生徒に沈黙の時間を与えないようにすべきだ。  
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Tôi nghĩ r ằng c ấu trúc "giáo viên là ngư ời nói" và "h ọc sinh là ngư ời nghe" 
được thiết lập trong không gian l ớp học và tr ở nên cố định là m ột điều kinh kh ủng. 
Nếu giáo viên gi ải quyết vấn đề trước, có th ể sẽ làm mất đi cơ h ội để học sinh t ự 
mình suy nghĩ và giải quyết vấn đề. Việc liên tục nói không phải là giao tiếp. Đôi khi, 
việc giáo viên gi ữ im lặng và "chờ đợi" là quan tr ọng. Bằng cách lùi lại một bước tại 
thời điểm mình muốn nói thêm, có thể giúp khuyến khích đối phương bày tỏ suy nghĩ 
của họ. 
 
Câu 1. Đáp án nào dưới đây phù hợp với suy nghĩ của tác giả? 
A. Giáo viên và học sinh cũng cần phải nói chuyện thoải mái với nhau. 
B. Giáo viên nên thử tưởng tượng xem học sinh của mình đang nghĩ gì. 
C. Giáo viên cũng cần đợi học sinh nói. 
D. Giáo viên nên tránh để cho học sinh khoảng thời gian im lặng. 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 教師 GIÁO SƯ きょうし Giáo viên; giảng viên 
2 生徒 SANH ĐỒ せいと Học trò. 
3 構造 CẤU TẠO こうぞう Cấu trúc; cấu tạo 
4 空間 KHÔNG GIAN くうかん Không gian 
5 固定化 CỐ ĐỊNH HÓA こていか Mang tính cố định 
6 恐る KHỦNG おそる Sợ, lo sợ 
7 先取 TIÊN THỦ せんしゅ Có được trước, giành 
được trước 
8 生徒 SANH ĐỒ せいと Học trò. 
9 自分自身 TỰ PHÂN TỰ THÂN じぶんじしん Bản thân. 
10 解決 GIẢI QUYẾT かいけつ Giải quyết 
11 コミュニケ
ーション 
  Giao tiếp 
12 教師 GIÁO SƯ きょうし Giáo viên; giảng viên 
13 沈黙する TRẦM MẶC ちんもくする Im lìm. 
14 行為 HÀNH VI こうい Hành vi; hành động 
15 大切 ĐẠI THIẾT たいせつ quan trọng. 
16 相手 TƯƠNG THỦ あいて Đối phương; người đối 
diện 
17 引き出す DẪN XUẤT ひきだす Kéo ra; lấy ra 
 
LINK QUIZLET 
https://quizlet.com/vn/909419832/n1-mondai-8-bai-23-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 44: 12/2016 (3) - C 
 
異文化間での対話を議論するときに、必ずといってよいくらい出てくるの
が、価値観の理解と共有である。他者と対話を通して、人間関係を樹立していくに
は、自己の価値観を保存したままで、他者の価値観を理解するという方略だけでは
十分ではない。 相互的な働きかけを通じて、何か新たな価値を共有することが要求
さもれるのである。すなわち、自らの価値観を相対化し、新たな価値を対話という
共同作業を通して創り上げ、それを共有していく態度が必要なのだ。 
 
(ARCLE編集委員会・田中茂範・アレン玉井光江・根岸雅史・吉田研作編著『幼児から成人まで一貫し
た英語教育のための棒組み一ECF-English Curriculum Framework』 による) 
 
(?) 筆者によると、異文化間で対話を通して人間関係を築く上で最も大切なことは
何か。 
A. 自己の価値観を理解してもらおうとする態度。 
B. 自己の価値観を保ちながら、他者の価値観を理解する態度。 
C. 他者と自己の共通の価値観を創り上げていく態度。 
D. 他者の価値観の中に自己の価値観との共通点を見つける態度。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Khi thảo lu ận v ề việc giao ti ếp gi ữa các n ền văn hóa khác nhau, m ột đi ểm 
thường xuất hiện là s ự hiểu biết và chia s ẻ các quan đi ểm giá tr ị. Để thiết lập mối 
quan hệ với người khác thông qua đ ối thoại, việc giữ nguyên quan đi ểm giá tr ị của 
bản thân và hi ểu quan điểm của người khác là chưa đ ủ. Điều cần thiết là thông qua 
tương tác lẫn nhau, cùng tạo ra và chia sẻ những giá trị mới. Nói cách khác, chúng ta 
cần có thái đ ộ tương đ ối hóa quan đi ểm giá tr ị của b ản thân và t ạo ra giá tr ị mới 
thông qua quá trình đối thoại chung, sau đó chia sẻ chúng. 
 
Câu 1. Theo tác giả, điều quan trọng nhất trong việc xây dựng mối quan hệ thông 
qua giao tiếp giữa các nền văn hóa khác nhau là gì? 
A. Thái độ cố gắng khiến đối phương hiểu được giá trị quan của bản thân chúng ta. 
B. Thái độ hiểu giá trị quan của đối phương trong khi v ẫn giữ giá trị quan của chính 
mình. 
C. Thái độ tạo ra giá trị quan chung giữa mình và đối phương. 
D. Thái đ ộ tìm ra đi ểm chung gi ữa giá tr ị quan của người khác v ới giá tr ị quan của 
mình. 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 異文化 DỊ VĂN HÓA いぶんか Nền văn hoá khác nhau 
2 対話 ĐỐI THOẠI たいわ 
Cuộc đối thoại; cuộc 
nói chuyện 
3 議論する NGHỊ LUẬN ぎろんする Nghị luận, thảo luận 
4 価値観 GIÁ TRỊ QUAN かちかん Quan niệm về giá trị 
5 理解 LÍ GIẢI りかい hiểu; lĩnh hội 
6 共有 CỘNG HỮU きょうゆう 
sở hữu công cộng; 
cùng nhau trao đổi 
7 対話 ĐỐI THOẠI たいわ 
Cuộc đối thoại; cuộc 
nói chuyện 
8 人間関係 
NHÂN GIAN 
QUAN HỆ にんげんかんけい 
Mối quan hệ với mọi 
người 
9 樹立 THỤ LẬP じゅりつ Thiết lập 
10 相対化 TƯƠNG DỐI HÓA そうたいか tương đối hóa 
11 要求 YẾU CẦU ようきゅう yêu cầu; đòi hỏi 
12 共同作業 
CỘNG ĐỒNG 
TÁC NGHIỆP 
きょうどうさぎょ
う Làm việc nhóm tập thể 
13 態度 THÁI ĐỘ たいど Thái độ. 
 
LINK QUIZLET 
https://quizlet.com/vn/906673402/n1-mondai-8-bai-18-flash-cards/?i=3uojyn&x=1jqt  
 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 45 : 12/2016 (4) - A 
 
以下は、劇を作ることを仕事にしている人が書いた文章である。 
僕は「変な人」です。そうでなければ、こんな仕事はしてません。そして僕
は「普通の人」です。だからこそこの仕事が成立しています。「特別なもの」を生
み出そうとするとき、それがどんなふうに特別なのかを「普通」という視点から見
極める必要があります。「特別」と「普通」、定規を何度も持ち替えるのです。そ
のために自分の中の普通さを死守するのです。 
(小林賢太郎『僕がコントや演劇のために考えていること』による) 
 
(?)この文章で筆者が述べていることは何か。 
A. 「普通」 という視点がないと、「特別なもの」は作れない。 
B. 「普通の人」が普通のものを作ると、「特別ながもの」になる。 
C. 「変な人」が普通のものを作ると、「特別ながもの」になる。 
D. 「変な人」 の視点でしか、「特別なもの」は作れない。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Dưới đây là đoạn văn được viết bởi nhà soạn kịch. 
Tôi là m ột người "kỳ lạ". Nếu không, tôi đã không làm công vi ệc này. Và tôi 
cũng là m ột người "bình thư ờng". Chính vì th ế công vi ệc này m ới có th ể được t ạo 
nên. Khi cố gắng tạo ra "thứ đặc biệt", bạn cần phải xác định nó đặc biệt như thế nào 
từ góc đ ộ "bình thư ờng". "Đ ặc bi ệt" và "bình thư ờng", b ạn ph ải liên t ục thay đ ổi 
thước đo. Đó là lý do tại sao tôi giữ vững sự bình thường trong bản thân mình. 
Câu 1. Tác giả đang nói gì trong bài viết này? 
A. Nếu bạn không có quan điểm “bình thường” thì bạn không thể tạo ra thứ gì đó 
“đặc biệt”. 
B. Khi “người bình thường” làm ra những thứ bình thường, nó trở thành “những thứ 
đặc biệt”. 
C. Khi một “người kỳ lạ” làm một điều gì đó bình thường, nó sẽ trở thành một điều gì 
đó đặc biệt. 
D.Chỉ khi đứng trên quan điểm của “người kỳ lạ”,  bạn mới có thể tạo ra “điều đặc 
biệt” . 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 劇 KỊCH げき Kịch 
2 変な人 BIẾN NHÂN へんなひと Người lạ 
3 成立 THÀNH LẬP せいりつ Sự thành lập; thành lập; làm. 
4 特別 ĐẶC BIỆT とくべつ Đặc biệt 
5 生み出す SANH XUẤT うみだす Phát minh ra; sinh ra; tạo ra 
6 普通 PHỔ THÔNG ふつう thông thường; phổ thông 
7 視点 THỊ ĐIỂM してん Điểm nhìn, quan điểm. 
8 見極める KIẾN CỰC みきわめる Nhìn rõ; nhìn thấu 
9 必要 TẤT YẾU ひつよう Cấp thiết, cần thiết 
10 定規 ĐỊNH QUY じょうぎ Thước đo 
11 替える THẾ かえる Thay thế; thay đổi 
12 死守 TỬ THỦ ししゅ liều chết để bảo vệ 
 
LINK QUIZLET 
https://quizlet.com/vn/902764136/bai-39-flash-cards/?i=4qgd0q&x=1jqt 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 46: 7/2017 (2) - C 
 
以下は、動物園の飼育環境について書かれたものである。 
動物たちにとって飼育係は大事な環境要因である。展示場としての環境の改
善だけでは、動物たちの飼育環境の真の改善にはならない。 日々動物と接触する飼
育係は、時として動物たちのストレス源になることがある。飼育係がストレス源に
ならないためには動物をよく観察し、行動にあわわせた世話をし、その動物の種と
しての特徴、個体としての性格を知らなければならない。 
(小宮輝之『物語 上野動物園の歴史』 による) 
 
(?)  筆者の考えに合うのはどれか。 
A. 動物たちにとって、飼育係との関係は展示場の改善よりも重要である。 
B. 飼育環境を改善しても、動物にストレスがたまることがある。 
C. 飼育環境の改善には、飼育係が動物の特徴や性格を把握することも重要で
ある。 
D. 飼育係の使命は、動物の特徴や性格に合った展示場を作ることである。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Đoạn văn dưới đây viết về môi trường nuôi dưỡng trong sở thú. 
Đối với các loài đ ộng vật, nhân viên vư ờn thú (người chăm sóc) là m ột yếu tố 
môi trường quan trọng. Chỉ cải thiện môi trường vườn thú không thì không th ể thực 
sự cải thiện môi trư ờng nuôi dư ỡng động vật. Nhân viên vư ờn thú là ngư ời tiếp xúc 
hàng ngày v ới động vật, nhưng đôi khi l ại có th ể trở thành nguồn gây căng th ẳng 
cho chúng. Để không trở thành yếu tố gây căng thẳng, các nhân viên vư ờn thú phải 
quan sát k ỹ lưỡng, chăm sóc phù h ợp v ới hành vi c ủa chúng, và ph ải hi ểu rõ đ ặc 
điểm của loài cũng như tính cách của từng cá thể động vật. 
 
Câu 1. Đáp án dưới đây nào phù hợp với suy nghĩ của tác giả? 
A. Đối với các loài động vật, mối quan hệ với nhân viên vườn thú quan trọng hơn việc 
cải thiện vườn thú. 
B. Ngay c ả khi môi trường nuôi dư ỡng được cải thiện, động vật trong s ở thú vẫn có 
nguy cơ bị căng thẳng. 
C. Để cải thiện môi trư ờng nuôi dưỡng, điều quan tr ọng là nhân viên vư ờn thú ph ải 
hiểu được đặc điểm và tính cách của động vật. 
D. Nhiệm vụ của nhân viên vư ờn thú là t ạo ra môi trư ờng vườn thú phù h ợp với đặc 
điểm và tính cách của con vật. 
 
 
 
 
 
 
 
 
 
 
 
 
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 動物園 ĐỘNG VẬT VIÊN どうぶつえん Vườn bách thú.sở thú 
2 飼育環境 TỰ DỤC HOÀN CẢNH しいくかんきょう Môi trường chăn nuôi 
3 飼育 TỰ DỤC しいく nuôi; nuôi nấng 
4 大事 ĐẠI SỰ だいじ việc quan trọng 
5 環境要因 
HOÀN CẢNH YẾU 
NHÂN 
かんきょうようい
ん nhân tố môi trường 
6 展示場 TRIỂN KÌ TRÀNG てんじじょう Quầy trưng bầy. 
7 改善 CẢI THIỆN かいぜん cải thiện 
8 接触 TIẾP XÚC せっしょく tiếp xúc 
9 ストレス源  ストレスげん nguồn gây căng thẳng 
 
LINK QUIZLET  
 
https://quizlet.com/vn/906673467/n1-mondai-8-bai-19-flash-cards/ 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 47 : 7/2017 (3) - D 
 
人と人とのコミュニケーションが希薄化していると言われる今日、それを如
何に円滑に、如何に真意を外さずに行うかは、誰にとっても大きな課題だ。時に人
は「力」によって他者を動かそうとする。あるいは「経済力」が人を動かす手段と
もなる。企業という組織では、「役職＝ポジション」を使って人を動かすケースも
多い。だがそういった「上意下達」 (注) 「弱肉強食」のコミュニケーションで
は、人は本質的な満足は得られない。人が人である所以 (注) は、力対力の抗では
なく、他者との「共感」によって「動く」「動かす」ことができる点にある。 
(佐渡容・辻秀一 『感じて動く』による) 
(注) 上意下達 : 上に立つ者の考えや命令を下位の者へ伝えること 
(注) 所以 : 理由 
 
(?)  筆者の考えに合うのはどれか。 
A. 企業では「共感」によるコミュニケーションで人を動かしている。 
B. 企業では「役職」を使って人を動かすことも考えるべきだ。 
C. 人は本質的な満足が得られると確信しない限り動かない。 
D. 人は「力」より「共感」によって動こうとする。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Ngày nay, khi mà giao ti ếp giữa con ngư ời với nhau đang tr ở nên xa cách thì 
việc làm th ế nào để giao tiếp một cách trôi ch ảy mà không l ệch lạc khỏi ý đ ồ ban 
đầu thực sự là một thách thức lớn đối với mọi người. Đôi khi, con ngư ời cố gắng gây 
ảnh hưởng lên ngư ời khác b ằng cách s ử dụng “quyền lực”. Hay "s ức mạnh kinh t ế" 
cũng tr ở thành phương ti ện thúc đ ẩy con ngư ời. Trong các t ổ chức như doanh 
nghiệp, có nhiều trường hợp sử dụng "chức vụ = vị trí" để gây ảnh hưởng đến người 
khác. Tuy nhiên, con người không th ể đạt được sự hài lòng cơ b ản thông qua ki ểu 
giao tiếp “cấp trên-cấp dưới” “ăn thịt” như v ậy. Lý do con ngư ời là con ngư ời nằm ở 
chỗ không phải là sự đối kháng giữa sức mạnh với sức mạnh, mà là kh ả năng "được 
di chuyển (được ảnh hưởng)" và "d i chuyển(ảnh hưởng)" thông qua "s ự đồng cảm" 
với người khác. 
 
Câu 1. Đáp án nào dưới đây phù hợp với suy nghĩ của người viết? 
A. Các công ty thúc đẩy nhân viên thông qua giao tiếp dựa trên “sự đồng cảm”. 
B. Các công ty cũng nên cân nh ắc việc sử dụng “chức vụ” gây ảnh hưởng đến người 
khác. 
C. Con ngư ời sẽ không hành đ ộng trừ khi họ bị thuyết phục rằng họ sẽ có được sự 
hài lòng thực chất. 
D. Con ngư ời có xu hư ớng đư ợc thúc đ ẩy hành đ ộng b ởi “s ự đồng c ảm” hơn là 
“quyền lực". 
 
  
N1_Chill Class_ĐỌC 3,4        
 TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 希薄化 HI BẠC HÓA きはくか trở nên nhạt nhòa 
2 如何 NHƯ HÀ どう Như thế nào 
3 円滑 VIÊN HOẠT えんかつ Trôi chảy; trơn tru 
4 真意 CHÂN Ý しんい Chân ý 
5 手段 THỦ ĐOẠN しゅだん Thủ đoạn 
6 経済力 KINH TẾ LỰC けいざいりょく 
năng lực tài chính, khả 
năng tài chính 
7 企業 XÍ NGHIỆP きぎょう Doanh nghiệp 
8 組織 TỔ CHỨC そしき Tổ chức 
9 役職 DỊCH CHỨC やくしょく 
Chức vụ phụ trách; vị 
trí quản lý 
10 
コミュニケ
ーション 
COMMUNICATIO
N  Giao tiếp 
11 ケース CASE  Trường hợp 
12 本質的 BỔN CHẤT ĐÍCH ほんしつてき Về bản chất 
13 満足 MÃN TÚC まんぞく thỏa mãn; hài lòng 
14 共感 CỘNG CẢM きょうかん đồng cảm; đồng tình 
 
LINK QUIZLET  
https://quizlet.com/vn/906673536/n1-mondai-8-bai-20-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 48: 7/2017 (4) - B 
 
人間には、道具をつくり、その道具に適応しようとする性質がある。そして
その道具に適応し過ぎてしまうことで、本来の人間の能力を削がれて (注) しまう
ことがある。その適応力が仙 (注) となり、人間がつくった道具により人間が左右
される。まるで、人間がつくった道具に人間がつくられてしまうかのように。 歩き
ながらでもスマートフォン (注) を使いたいという欲求にかられ、挙げ句に視野を
大きくそこへ奪われ、自ら、そして他者をも危険な状況に追い込んでしまう。これ
もその現象のひとつだ。 
(小川和也『デジタルは人間を奪うのか』による) 
(注) 削ぐ : 削る 
(注) 仙 : ここでは、害 
(注) スマートフォン : パソコンの機能もある携帯電話 
 
(?) その現象とはどのような現象のことか。 
A. 道具によって人間が便利さに鈍感になる現象。      
B. 道具によって人間が振り回されている現象。 
C. 道具が人間にとって危険なものになる現象。       
D. 道具の発展が人間の欲求を拡大させる現象。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Con người có bản chất là tạo ra công cụ và cố gắng thích nghi với chúng. Tuy 
nhiên, việc thích nghi quá mức với công cụ đôi khi lại làm giảm bớt khả năng tự nhiên 
của con ngư ời. Sức mạnh thích nghi này tr ở thành một lưỡi dao hai lư ỡi, khiến con 
người bị chi phối bởi chính công c ụ mà họ tạo ra. Điều này giống như thể chính con 
người được tạo ra b ởi công c ụ mà họ đã tạo ra. S ự thèm muốn sử dụng điện thoại 
thông minh (smartphone) m ọi lúc mọi nơi, dẫn đến việc bị thu hút toàn b ộ tầm nhìn 
vào nó và cu ối cùng đưa bản thân và ngư ời khác vào tình hu ống nguy hiểm, cũng là 
một ví dụ của hiện tượng này. 
 
Câu 1. Hiện tượng đó là hiện tượng như thế nào? 
A. Một hiện tượng trong đó các công cụ khiến con người ít nhạy cảm hơn với sự tiện 
lợi. 
B. Hiện tượng con người bị các công cụ ném lung tung. 
C. Hiện tượng các công cụ trở nên nguy hiểm đối với con người. 
D. Một hiện tượng trong đó sự phát triển của các công cụ làm tăng thêm nhu cầu của 
con người. 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 人間 NHÂN GIAN にんげん Con người 
2 道具 ĐẠO CỤ どうぐ Dụng cụ; phương tiện 
3 適応 THÍCH ỨNG てきおう Sự thích ứng 
4 性質 TÍNH CHẤT せいしつ Tính chất 
5 本来 BỔN LAI ほんらい 
Thuộc về bản chất; 
thuộc về cơ bản 
6 能力 NĂNG LỰC のうりょく Khả năng 
7 左右 TẢ HỮU さゆう 
Phải trái; bên phải và 
bên trái 
8 
スマートフ
ォン   Điện thoại thông minh 
9 欲求 DỤC CẦU よっきゅう 
Sự khao khát; sự mong 
mỏi 
10 挙げ句 CỬ CÚ あげく Sau; sau rốt 
11 視野 THỊ DÃ しや Tầm hiểu biết 
12 危険 NGUY HIỂM きけん 
Sự nguy hiểm; mối 
nguy hiểm 
13 状況 TRẠNG HUỐNG じょうきょう Tình huống 
14 追い込ん TRUY おいこむ Đưa; lùa; dồn 
15 現象 HIỆN TƯỢNG げんしょう Hiện tượng 
 
LINK QUIZLET 
 
https://quizlet.com/vn/905163199/n1-mondai-8-bai-61-flash-cards/?i=3uojyn&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 49: 12/2017 (2) - D 
 
あらゆる仕事はなんらかの形で、その人を世界の中に位置づける。畑仕事の
ような個人作業でもそうだ。自然のサイクルの中に、自分の存在を確かめることが
できる。人はどんなに大金持ちになっても、なんらかの形で働こうとする生き物だ
ろう。お金持ちはお金持ちなりの仕事を、自分でつくり出すはずだ。それは人間
が、外の世界との関わり合いを通じてしか自分が存在する実感を得ることができ
ず、またそれを常に渦望 (かつぼう) (注) していることを示している。 
(注) 渦望 (かつぼう) する : 強く望む 
 
(?)  筆者の考えに合うのはどれか。 
A. 世界に存在するあらゆる仕事には、それぞれの価値がある。 
B. 自然の中で働き、自身の存在を確認することが大切だ。 
C. 人はどんなに豊かになっても、働くことをやめてはいけない。 
D. 人は仕事を通じして、自身が存在する意義を実感できる。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Tất cả mọi công vi ệc đều sẽ định hình cho con ngư ời ta m ột vị trí trong th ế 
giới này theo m ột cách nào đó. Nh ững công vi ệc làm m ột mình như vi ệc đồng áng 
cũng vậy. Trong chu trình t ự nhiên, chúng ta có th ể cảm nhận sự tồn tại của mình. 
Dù trở nên giàu có đ ến đâu, con ngư ời vẫn là sinh v ật luôn tìm cách làm vi ệc theo 
một cách nào đó. Nh ững người giàu có sẽ tạo ra công việc phù hợp với họ. Điều này 
cho thấy con người chỉ cảm nhận được sự tồn tại của mình qua m ối quan hệ với thế 
giới bên ngoài và luôn khao khát điều đó. 
 
Câu 1. Cái nào phù hợp với ý tưởng của tác giả? 
A. Mỗi công việc trên thế giới đều có giá trị riêng. 
B. Điều quan trọng là phải làm việc trong môi trường tự nhiên và xác nhận sự tồn tại 
của chính bạn. 
C. Dù có trở nên giàu có đến đâu, con người cũng không bao giờ nên ngừng làm việc. 
D. Con người có thể nhận ra ý nghĩa về sự tồn tại của bản thân thông qua công việc. 
 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 位置づける VỊ TRÍ いちづける Đặt vào, xếp vào 
2 畑仕事 SĨ SỰ はたしごと việc đồng áng 
3 個人 CÁ NHÂN こじん Cá nhân; cá thể 
4 サイクル   Chu kỳ; chu trình. 
5 存在 TỒN TẠI そんざい tồn tại 
6 確かめる XÁC たしかめる 
Xác nhận; làm cho rõ 
ràng 
7 大金持ち ĐẠI KIM TRÌ おおがねもち Người rất giàu có 
8 関わり合い LIÊN HỢP かかわりあい gắn kết 
9 通じて THÔNG つうじて 
Chung chung, tổng 
quát 
10 実感 THỰC CẢM じっかん Cảm giác thực. 
11 得る ĐẮC える Giành đuợc; lấy được 
12 渦望 QUA VỌNG うずもち xoáy nước 
 
LINK QUIZLET 
 
https://quizlet.com/vn/909419884/n1-mondai-8-bai-24-flash-cards/?i=3uojyn&x=1jqt 
 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 50: 12/2017 (3) - C 
 
「すべての歴史は現代史である。」この有名な言葉が示す内容は、われわれ
が史料 (注) に対した場合、けっきょく史料をとおして過去を見るのは、ほかなら
ぬ現在のわれわれであり現在の眼 (め) である、ということである。われわれは、
公平舞私に (注) 、また古い時代の人の心になって対処しようとしても、われわれ
が生きている現在の時代の人間である、ということから脱出することはできないか
らである。要するに歴史学は、こうした性格をもった学問である。 
 
(注) 史料 : 歴史研究のために必要な文献や遺物など 
(注) 公平無私に : 私的な感情を持たずに公平に 
 
(?)  筆者によると、歴史学とはどのようなものか。 
A. 史料の分析をとおして現代史を解明するもの。             
B. 古い時代の人々の立場に立って研究するもの。 
C. 過去を現代の人々の視点で解釈するもの。            
D. 過去を現代史と比較して理解するもの。 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Câu nói nổi tiếng "Tất cả lịch sử đều là lịch sử hiện đại" chỉ ra rằng, khi chúng 
ta tiếp xúc v ới tài li ệu lịch sử, thực chất chúng ta đang nhìn v ề quá khứ thông qua 
cách nhìn hiện tại của chính mình. Dù chúng ta cố gắng đặt mình vào vị trí của người 
sống ở thời cổ đại và xử lý mọi việc một cách công bằng và không thiên v ị, chúng ta 
không thể thoát khỏi thực tế rằng chúng ta là con ngư ời của thời đại hiện tại. Nói 
cách khác, lịch sử học là một ngành học mang những đặc điểm này. 
 
Câu 1. Theo tác giả, lịch sử học là gì? 
A. Là làm sáng tỏ lịch sử hiện đại thông qua việc phân tích các tài liệu lịch sử. 
B. Là đứng trên lập trường của con người từ thời xa xưa để nghiên cứu. 
C. Là giải thích về quá khứ từ góc độ của con người hiện đại ngày nay. 
D. Là so sánh quá khứ với lịch sử đương đại để hiểu về quá khứ. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 歴史 LỊCH SỬ れきし Lịch sử 
2 現代史 HIỆN ĐẠI SỬ げんだいし Lịch sử đương đại 
3 言葉 NGÔN DIỆP ことば Từ ngữ; lời nói 
4 史料 SỬ LIÊU しりょう Tài liệu lịch sử 
5 ほかならぬ   Không ai khác ngoài 
6 われわれ   Chúng tôi; chúng ta 
7 対処 ĐỐI XỨ たいしょ đối xử, ứng phó 
8 脱出する THOÁT XUẤT だっしゅつ Thoát khỏi 
9 公平 CÔNG BÌNH こうへい Công bình; công bằng 
10 有名な HỮU DANH ゆうめいな Nổi tiếng. 
11 過去 QUÁ KHỨ かこ Quá khứ; ; qua; trước 
12 性格 TÍNH CÁCH せいかく Tính cách 
13 要する YẾU ようする Yêu cầu; đòi hỏi. 
14 脱出する THOÁT XUẤT だっしゅつ Thoát khỏi 
 
LINK QUIZLET 
 
https://quizlet.com/vn/901583850/bai-25-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 51: 12/2017 (4) - B 
 
人間は古い昔から、「人間とは何か」を問ってきた。けれどそれは、早く言
えば「人間は動物とどこがちがうか?」という問いかけであった。いわく (注) 「人
間には動物にはない言語がある」、いわく「人間には思想がある」、「人間には文
化がある」等々。しかしこの問いかけは、根本的にまちがっていた。 問題は「人間
は動物とどうちがうか?」ではなくて、「人間は他の動物とどうちがうか?」という
ことだったのである。これに答えるには、人間はどういう動物であるかを問う以外
にない。 
(注) いわく : ここでは、よく言われるように  
 
(?)  筆者の考えに合うのはどれか。 
A. 言語・思想・文化は、人間だけのものと考えるべきではない。 
B. 人間も動物であるという視点で、人間について考えるべきだ。 
C. 人間と他の動物とのちがいを問いても意味がない。 
D. 人間と動物のちがいを根本的に問い直すべきだ。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Từ xa xưa, con người đã luôn tự hỏi "Con người là gì?" Tuy nhiên, câu h ỏi này 
nói một cách đơn gi ản, là "Con ngư ời khác biệt với động vật ở điểm nào?" Có ngư ời 
nói rằng "Con người có ngôn ngữ mà động vật không có", có người nói "Con người có 
tư tưởng" hay "Con người có văn hóa" v.v... Tuy nhiên, câu hỏi này đã nhầm lẫn ngay 
từ bản chất. Vấn đề không phải là "Con ngư ời khác biệt với động vật như thế nào?" 
mà là "Con ngư ời khác biệt với các loài đ ộng vật khác như th ế nào?". Để trả lời câu 
hỏi này, không có cách nào khác ngoài vi ệc tìm hiểu xem con ngư ời là loại động vật 
như thế nào. 
 
Câu 1. Đáp án nào dưới đây phù hợp với suy nghĩ của người viết? 
A. Không nên cho rằng ngôn ngữ, tư tưởng và văn hóa là những thứ của riêng con 
người. 
B. Chúng ta nên nghĩ về con người dưới góc độ con người cũng là động vật. 
C. Thật là vô nghĩa khi dò hỏi về sự khác biệt giữa con người và các loài động vật 
khác. 
D. Về cơ bản chúng ta nên xem xét lại sự khác biệt giữa con người và động vật. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 人間 NHÂN GIAN にんげん Con người 
2 思想 TƯ TƯỞNG しそう Tư tưởng 
3 根本的 CĂN BỔN ĐÍCH こんぽんてき Một cách căn bản 
4 動物 ĐỘNG VẬT どうぶつ Động vật 
5 以外 DĨ NGOẠI いがい 
Ngoài ra; ngoài; ngoại 
trừ 
6 文化 VĂN HÓA ぶんか Văn hóa 
7 言語 NGÔN NGỮ げんご Ngôn ngữ; tiếng nói 
8 いわく   Nói; rằng; nêu lý do 
 
LINK QUIZLET 
 
https://quizlet.com/vn/901583908/bai-26-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 52: 7/2018 (1 ) - B 
 
人生やビジネスに目標を持つべきだ、というようなことが最近よく言われる
が、わたしはそういう言い方に違感を覚える。目標というものは、「持つべきだ」
とか「持ったほうがいい」ものではなく、「持たなければいけない」とわざわざ啓
蒙するものでもない。人生のあらゆる局面における「前提」なので、そのことがコ
ンセンサス (注)になっている社会では、目標を持つことについて語られることはな
いからだ。 
(注) コンセンサス : ここでは、共通の理解 
 
(?) 目標について、筆者の考えに合うのはどれか。 
A. 目標は必ずしも持たなくてよい。 
B. 目標は持っているのが当然である。 
C. 目標は持ちたいと思って持てるものではない。 
D. 目標を持っていても成功するとは限らない。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Gần đây ngư ời ta nói r ất nhi ều r ằng m ọi người nên có m ục tiêu trong cu ộc 
sống và kinh doanh, nhưng tôi c ảm thấy không đồng tình với cách nói như v ậy. Mục 
tiêu không ph ải là th ứ "nên có" hay "t ốt hơn là nên có", cũng không ph ải là thứ mà 
cần phải được mất công khai sáng r ằng "phải có". Mục tiêu là "đi ều kiện tiên quyết" 
trong mọi khía cạnh của cuộc sống, và trong m ột xã h ội mà vi ệc có m ục tiêu đã tr ở 
thành tiêu chuẩn chung, thì việc nói về việc có mục tiêu không được nhắc đến. 
 
Câu 1. Đáp án nào dưới đây phù hợp với quan điểm của tác giả về mục tiêu? 
A. Bạn không nhất thiết phải có mục tiêu. 
B. Có mục tiêu là điều đương nhiên. 
C. Mục tiêu không phải là thứ bạn có thể có chỉ vì bạn muốn có chúng. 
D. Có mục tiêu không đảm bảo bạn sẽ thành công. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 人生 NHÂN SANH じんせい Đời người 
2 ビジネス   
Việc buôn bán; việc 
kinh doanh 
3 目標 MỤC TIÊU もくひょう Mục tiêu. 
4 言い方 NGÔN PHƯƠNG いいかた Cách nói; kiểu nói 
5 違感 VỊ CẢM いかん 
Cảm giác không tự 
nhiên 
6 わざわざ THÁI わざわざ Cất công 
7 啓蒙 KHẢI MÔNG けいもう 
Khai hoá, khai sáng tư 
tưởng, nhận thức 
8 あらゆる PHÀM あらゆる Mọi thứ; mỗi 
9 局面 CỤC DIỆN」 きょくめん 
Cục diện; phương diện; 
mặt 
10 前提 TIỀN ĐỀ ぜんてい Tiền đề; tiên đề 
11 
コンセンサ
ス CONCENSUS  đồng lòng; đồng tâm 
12 語る NGỮ かたる 
Kể chuyện; kể lại; thuật 
lại 
 
LINK QUIZLET 
 
https://quizlet.com/vn/901583977/bai-27-flash-cards/?i=4qgd0q&x=1jqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 53: 7/2018 (2) - C 
 
以下は、恥じらい(注)の表情と喜びの表情の違いについて述べた文章であ
る。 
心理学者のアゼンドルフは、 恥じらいと喜びの表情をいろいろ集めて分析し
た結果、微笑みが最高潮に達する時期と視線を伏せる時期との微妙なタイミングの
ズレが健であることを突き止めた。すなわち、微笑みがピークに達する一秒ほど前
に視線が伏せられると恥じらいの表情として見えるが、ピークに達した直後に目が
伏せられるとそれは喜びの表情と判断されるというのだ。試しに、鏡に向かってや
ってみていただきたい。違いが分かるだろう。 
(注) 恥じらい : 恥ずかしがること                          
 
(?)  恥じらいと喜びの表情はどの点で違うか。 
A. 微笑みがピークに達するまでの時間が速いか遅いか。 
B. 微笑む直前の視線の動きが上か下か。 
C. 視線を伏せるのが微笑みのピークの前か後か。 
D. 視線を伏せている時間が長いか短いか。 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Sau đây là đo ạn văn mô t ả sự khác biệt giữa nét m ặt xấu hổ và nét m ặt vui 
mừng. 
Nhà tâm lý học Asendorf, sau khi thu thập và phân tích các biểu hiện của sự e 
thẹn và ni ềm vui, đã phát hi ện ra r ằng sự chênh lệch tinh t ế về thời gian gi ữa thời 
điểm nụ cười đạt đến đỉnh điểm và thời điểm hạ thấp ánh nhìn. Cụ thể, nếu ánh nhìn 
được hạ xuống khoảng một giây trước khi nụ cười đạt đến đỉnh điểm thì đó được coi 
là biểu hiện của sự e thẹn, trong khi đó, nếu mắt được hạ xuống ngay sau khi nụ cười 
đạt đến đỉnh điểm thì đó được xem là biểu hiện của niềm vui. 
 
Câu 1. Biểu hiện của xấu hổ và niềm vui khác nhau như thế nào? 
A. Cần mất thời gian nhanh hay chậm để nụ cười của bạn rực rỡ nhất? 
B. Ánh mắt của bạn di chuyển lên hay xuống ngay trước khi bạn cười? 
C. Bạn hạ thấp ánh mắt trước hay sau khi cười? 
D. Bạn dành nhiều hay ít thời gian để nhìn xuống? 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 恥じらい SỈ はじらい 
Tính nhút nhát, tính bẽn 
lẽn, tính e thẹn 
2 表情 BIỂU TÌNH ひょうじょう Biểu cảm 
3 喜び HỈ よろこび Hân hạnh 
4 心理 TÂM LÍ しんり Tâm lý. 
5 分析 PHÂN TÍCH ぶんせき Phân tích 
6 結果 KẾT QUẢ けっか Kết quả; hệ quả 
7 微笑み VI TIẾU ほほえみ Mỉm cười 
8 最高潮 TỐI CAO TRIỀU さいこうちょう Cao trào 
9 時期 THÌ KÌ じき Thời kỳ 
10 視線 THỊ TUYẾN しせん 
Ánh mắt; tầm nhìn, cái 
liếc; nhìn 
11 伏せる PHỤC ふせる 
Giấu đi; giấu giếm; che 
giấu 
12 微妙な VI DIỆU みみょう Mơ hồ 
13 タイミング   
Thời điểm; giờ giấc phù 
hợp 
14 すなわち   Đó là; cụ thể là; tức là 
15 微笑 VI TIẾU びしょう Sự mỉm cười 
16 一秒 NHẤT MIỂU いちびょう Một giây 
17 直後 TRỰC HẬU ちょくご Đi theo ngay sau 
18 判断 PHÁN ĐOẠN はんだん Phán đoán 
 
LINK QUIZLET 
https://quizlet.com/vn/903185635/bai-48-flash-cards/?i=4qgd0q&x=1qqt 

N1_Chill Class_ĐỌC 3,4        
 
BÀI 54: 7/2018 (3) - A 
 
「今」の勝負、つまり本番に弱いというひとは、失敗を恐れる気持ちがつよ
いのだとおもう。誰しも失敗は望まないが、人並み以上に失敗を恐れるのは、皮肉
にも精度の高い到達イメージ、完成形が描けている結果だともいえる。完全なもの
への願望は融通に欠ける到達のイメージでひとを縛ってしまうので、「今」 起こっ
ている現実そのものに合わせていくという柔軟な態度をゆるさない。予定どおりで
ないにしろ、その場で、なんとかやり過ごせる (注) 、間に合わせられる、という
行動が本番では求められているのだ。 
(注)やり過ごす : ここでは、切り抜ける 
 
(?)  筆者によると、本番に弱いひとはどうすればいいか。  
A. 事前に描いた完成形にこだわらず、現実に合わせて対応する。 
B. 事前に完成形を描かずに、あらゆる事態に備える。 
C. 到達イメージを意識しつつ、失敗を恐れない気持ちで臨む。 
D. 精度の高い到達イメージに行動を合わせるようにする。 
 
 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Tôi nghĩ kẻ yếu thế trong "cuộc chiến hiện tại", là do họ quá sợ thất bại. Mặc 
dù không ai mong mu ốn thất bại, nhưng việc sợ hãi thất bại hơn người bình thường, 
cũng có th ể nói một cách m ỉa mai đó là k ết quả của việc có m ột hình ảnh đích đ ến 
chính xác cao và hoàn h ảo được vẽ ra. Khát v ọng về sự hoàn hảo là hình ảnh đích 
đến không linh ho ạt, khiến người ta bị trói buộc, không có thái đ ộ linh hoạt để thích 
nghi với thực tế đang diễn ra ngay lúc đó. Dù không theo k ế hoạch, nhưng vi ệc có 
thể xoay sở và đối phó trong th ời khắc đó, hoặc tìm cách đ ể kịp thời hoàn thành, là 
hành động những người này cần làm khi chính thức hành động gì đó. 
 
Câu 1. Theo tác giả, người yếu thế khi chính thức hành động nên làm gì? 
A. Không nên bám vào khuôn khổ đã định sẵn, hãy linh hoạt đối phó dựa theo tình 
hình thực tế. 
B. Chuẩn bị cho mọi tình huống có thể xảy ra mà không dự tính trước kết quả. 
C. Suy tính về những gì bạn sẽ đạt được, đồng thời thử thách bản thân mà không sợ 
thất bại. 
D. Điều chỉnh hành động của bạn sao cho phù hợp với dự tính có độ chính xác cao về 
những gì bạn sẽ đạt được. 
 
 
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 勝負 THẮNG PHỤ しょうぶ 
thắng hay thua; cuộc thi 
đấu 
2 本番 BỔN PHIÊN ほんばん 
(Buổi biểu diễn) thật, 
chính thức 
3 失敗 THẤT BẠI しっぱい Thất bại 
4 恐れる KHỦNG おそれる Khiếp sợ 
5 気持ち KHÍ TRÌ きもち Cảm giác; cảm tình 
N1_Chill Class_ĐỌC 3,4        
6 人並み NHÂN TỊNH ひとなみ 
Trung bình (về khả 
năng, diện mạo, mức 
sống); bình thường 
7 皮肉 BÌ NHỤC ひにく 
Giễu cợt; châm chọc; 
mỉa mai 
8 精度 TINH ĐỘ せいど Độ chính xác 
9 到達 ĐÁO ĐẠT とうたつ đạt đến; đạt được 
10 イメージ Image  Ấn tượng (về cái gì đó) 
11 描く MIÊU えがく Vẽ 
12 完全 HOÀN TOÀN かんぜん 
Viên mãn; toàn diện; 
đầy đủ 
13 願望 NGUYỆN VỌNG がんぼう Mong ước; khát vọng 
14 融通 DUNG THÔNG ゆうずう 
Khả năng học hỏi 
nhanh 
15 欠ける KHIẾM かける Thiếu 
16 到達 ĐÁO ĐẠT とうたつ đạt đến; đạt được 
17 縛る PHƯỢC しばる Buộc; trói; băng bó 
18 柔軟 NHU NHUYỄN じゅうなん mềm dẻo; linh hoạt 
19 態度 THÁI ĐỘ たいど Thái độ. 
20 
間に合わせ
る GIAN HỢP まにあわせる Kịp thời 
21 求める CẦU もとめる Yêu cầu; mong muốn 
 
LINK QUIZLET 
https://quizlet.com/vn/901584160/bai-29-flash-cards/?i=4qgd0q&x=1jqt 
 
 
 
 
 

N1_Chill Class_ĐỌC 3,4        
BÀI 55: 7/2018 (4) - A 
 
日頃の他者とのつきあいでは、相手の一言一言が嘘だと疑ってかかっている
わけではない。いちいちそんなふうに接したら失礼にあたる。つまり「性善説」 
(注) をデフォルト (基本) として相手と接するのが普通だろう。相手の発言は真実
だと思ってそれを基準に判断するから、それを嘘だろうと見直すのは難しい。そう
すると、仮に多少不自然な言い方やしぐさがあったとしても、そしてそれが実際に
嘘の手がかりとして有効でやったとしても、見落としてしまう可能性がある。 
(注) 性善説 : 人問は生まれつき善い人だという考え方 
 
(?)見落としてしまう可能性があるのはなぜか。 
A. 普通相手は嘘をつかないと思っているから。 
B. 相手を疑うのは失礼だと教えられてきたから。 
C. 嘘かどうかを判断する基準を持つのは難しいから。 
D. 嘘を見つける有効な手がかりが見つからないから。 
 
 
 
  
N1_Chill Class_ĐỌC 3,4        
BẢN DỊCH 
Trong giao ti ếp hàng ngày v ới người khác, chúng ta khôn g nghi ng ờ từng lời 
nói của người khác là d ối trá. Thật bất lịch sự nếu tiếp xúc v ới người khác một cách 
nghi ngờ như vậy. Nói cách khác, vi ệc tiếp xúc v ới người khác d ựa trên nguyên t ắc 
"giả thuyết thiện nghĩa" (mọi người đều là người tốt) được coi là cơ bản. Chúng ta tin 
rằng những gì người khác nói là sự thật và dùng nó làm cơ s ở để đánh giá, vì thế rất 
khó để xem xét l ại nó thành l ời nói dối . Do đó, ngay c ả khi có m ột số cách nói hay 
hành động không tự nhiên, và ngay cả khi những điều đó thực sự là dấu hiệu của sự 
dối trá, chúng ta cũng có thể bỏ qua chúng. 
 
Câu 1. Tại sao lại có khả năng bị bỏ qua? 
A. Bởi vì thông thường ta sẽ nghĩ đối phương không nói dối. 
B. Bởi vì ta đã được dạy rằng nghi ngờ người khác là điều thô lỗ. 
C. Rất khó có tiêu chuẩn để xác định điều gì đó có phải là dối trá hay không. 
D. Bởi vì không có manh mối xác đáng nào để phát hiện ra lời nói dối. 
 
 
  
N1_Chill Class_ĐỌC 3,4        
TỪ VỰNG 
STT Từ Âm Hán Việt Cách đọc Nghĩa 
1 日頃 NHẬT KHOẢNH ひごろ 
Thông thường; thường 
xuyên 
2 嘘 HƯ うそ 
Lời nói dối; sự dối trá; 
sự giả dối 
3 疑って NGHI うたがう Nghi ngờ; thắc mắc 
4 いちいち   
Không cùng nhau; 
thành người riêng, vật 
tách riêng ra 
5 接する  せっする Tiếp xúc với 
6 失礼 THẤT LỄ しつれい Sự vô lễ 
7 性善説 
TÍNH THIỆN 
THUYẾT せいぜんせつ 
Con người sinh ra bản 
tính ban đầu vốn thiện 
và tốt lành 
8 デフォルト   Mặc định 
9 相手 TƯƠNG THỦ あいて 
Đối phương; người đối 
diện 
10 発言 PHÁT NGÔN はつげん Phát ngôn 
11 真実 CHÂN THỰC しんじつ Chân thật 
12 基準 CƠ CHUẨN きじゅん Tiêu chuẩn; tiêu chí 
13 判断 PHÁN ĐOẠN はんだん 
Sự phán đoán; sự đánh 
giá. 
14 見直す KIẾN TRỰC みなおす 
Nhìn lại; xem lại; đánh 
giá lại. 
15 不自然 BẤT TỰ NHIÊN ふしぜん 
Không tự nhiên; cứng 
nhắc 
16 可能性 KHẢ NĂNG TÍNH かのうせい 
Tính khả năng; tính khả 
thi; khả năng 
 
LINK QUIZLET 
https://quizlet.com/vn/903187178/bai-54-flash-cards/?i=4qgd0q&x=1jqt
