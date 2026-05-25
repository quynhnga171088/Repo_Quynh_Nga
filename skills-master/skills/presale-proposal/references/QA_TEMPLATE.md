# QA Template | 質問テンプレート

## Template File QA | QAファイルテンプレート

```markdown
# QA - Câu hỏi Làm rõ Yêu cầu | 要件確認質問書
# [Tên Dự án] | [プロジェクト名]

---

## Thông tin Dự án | プロジェクト情報

| Hạng mục | Nội dung |
|----------|----------|
| Tên dự án | [ProjectName] |
| Khách hàng | [CustomerName] |
| Ngày tạo | [YYYY-MM-DD] |
| Người tạo | Kaopiz Technical Team |
| Version | 1.0 |

---

## Tổng quan Đánh giá Tài liệu | ドキュメント評価概要

### Checklist Độ đầy đủ | 完成度チェックリスト

| # | Hạng mục | 項目 | Trạng thái | Ghi chú |
|---|----------|------|------------|---------|
| 1 | Mô tả nghiệp vụ tổng quan | 事業概要 | ✅/⚠️/❌ | |
| 2 | User roles & permissions | ユーザーロール | ✅/⚠️/❌ | |
| 3 | Danh sách chức năng chi tiết | 機能一覧 | ✅/⚠️/❌ | |
| 4 | Wireframe/Mockup | ワイヤーフレーム | ✅/⚠️/❌ | |
| 5 | User flow/Screen flow | 画面遷移図 | ✅/⚠️/❌ | |
| 6 | Yêu cầu phi chức năng | 非機能要件 | ✅/⚠️/❌ | |
| 7 | Yêu cầu tích hợp | 外部連携 | ✅/⚠️/❌ | |
| 8 | Timeline & milestones | スケジュール | ✅/⚠️/❌ | |
| 9 | Ràng buộc kỹ thuật | 技術制約 | ✅/⚠️/❌ | |
| 10 | Môi trường triển khai | 本番環境 | ✅/⚠️/❌ | |

**Chú thích | 凡例:**
- ✅ Đầy đủ | 完備
- ⚠️ Có nhưng chưa chi tiết | 不完全
- ❌ Chưa có | 未提供

### Đánh giá Tổng thể | 総合評価

| Mức độ | Mô tả |
|--------|-------|
| 🟢 Đủ để estimate | Có thể estimate chính xác |
| 🟡 Cần làm rõ một số điểm | Estimate với assumption |
| 🔴 Cần bổ sung nhiều | Chưa thể estimate |

**Đánh giá hiện tại:** [🟢/🟡/🔴]

---

## Câu hỏi Làm rõ | 確認質問

### 1. Về Nghiệp vụ | 業務について

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| B1 | | | 🔴 High | |
| B2 | | | 🟡 Medium | |
| B3 | | | 🟢 Low | |

### 2. Về Người dùng & Quyền hạn | ユーザーと権限について

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| U1 | Có bao nhiêu loại user role? | ユーザーロールは何種類ですか？ | 🔴 High | |
| U2 | Mỗi role có quyền gì? | 各ロールの権限は？ | 🔴 High | |
| U3 | Số lượng user dự kiến? | 想定ユーザー数は？ | 🟡 Medium | |

### 3. Về Chức năng | 機能について

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| F1 | | | | |
| F2 | | | | |

### 4. Về Tích hợp | 外部連携について

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| I1 | Có tài liệu API của hệ thống tích hợp không? | 連携先のAPI仕様書はありますか？ | 🔴 High | |
| I2 | Đã có tài khoản sandbox/test chưa? | テスト用アカウントはありますか？ | 🟡 Medium | |
| I3 | | | | |

### 5. Về Yêu cầu Phi chức năng | 非機能要件について

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| N1 | Số lượng concurrent users tối đa? | 最大同時接続ユーザー数は？ | 🟡 Medium | |
| N2 | Yêu cầu về response time? | レスポンスタイムの要件は？ | 🟡 Medium | |
| N3 | Yêu cầu về availability (uptime)? | 可用性（稼働率）の要件は？ | 🟡 Medium | |
| N4 | Có yêu cầu bảo mật đặc biệt? | セキュリティ要件は？ | 🔴 High | |
| N5 | Ngôn ngữ hỗ trợ? | 対応言語は？ | 🟡 Medium | |

### 6. Về UI/UX | UI/UXについて

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| D1 | Đã có design sẵn chưa? | デザインはありますか？ | 🔴 High | |
| D2 | Có brand guideline không? | ブランドガイドラインは？ | 🟡 Medium | |
| D3 | Cần responsive không? | レスポンシブ対応は必要？ | 🟡 Medium | |

### 7. Về Môi trường & Hạ tầng | 環境・インフラについて

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| E1 | Cloud provider yêu cầu? | 利用クラウドは？ | 🟡 Medium | |
| E2 | Có yêu cầu về region không? | リージョンの指定は？ | 🟡 Medium | |
| E3 | Cần môi trường nào? (Dev/Staging/Prod) | 必要な環境は？ | 🔴 High | |

### 8. Về Timeline & Scope | スケジュール・スコープについて

| # | Câu hỏi (VI) | 質問 (JP) | Độ ưu tiên | Trả lời |
|---|--------------|-----------|------------|---------|
| T1 | Deadline mong muốn? | 希望リリース日は？ | 🔴 High | |
| T2 | Có chia phase không? | フェーズ分けは？ | 🟡 Medium | |
| T3 | MVP features là gì? | MVP機能は？ | 🔴 High | |

---

## Assumptions (Nếu không có câu trả lời) | 前提条件

Nếu không nhận được câu trả lời, estimate sẽ dựa trên các assumption sau:

| # | Assumption (VI) | 前提条件 (JP) |
|---|-----------------|---------------|
| A1 | | |
| A2 | | |

---

## Ghi chú Thêm | 追加メモ

[Thêm ghi chú nếu cần]

---

## Lịch sử Cập nhật | 更新履歴

| Version | Ngày | Người cập nhật | Nội dung |
|---------|------|----------------|----------|
| 1.0 | [Date] | Kaopiz | Tạo mới |
```

---

## Các Câu hỏi Thường Gặp | よくある質問

### Về Nghiệp vụ | 業務関連

1. **User flow chi tiết** - Luồng xử lý nghiệp vụ từ đầu đến cuối?
2. **Edge cases** - Các trường hợp ngoại lệ cần xử lý?
3. **Existing system** - Có hệ thống hiện tại không? Cần migrate data không?

### Về Kỹ thuật | 技術関連

1. **Tech constraints** - Có ràng buộc về công nghệ không?
2. **Integration** - Tích hợp với hệ thống nào? Có API docs không?
3. **Performance** - Yêu cầu về hiệu năng?

### Về Timeline | スケジュール関連

1. **Deadline** - Có deadline cứng không?
2. **Priorities** - Chức năng nào ưu tiên nhất?
3. **Phases** - Có thể chia phase không?

