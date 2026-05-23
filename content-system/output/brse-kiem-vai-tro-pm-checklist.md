# ✅ Checklist BrSE Kiêm Vai Trò PM – Theo 3 Giai Đoạn Dự Án

> **Hướng dẫn sử dụng:** Đọc tài liệu đào tạo `brse-kiem-vai-tro-pm.html` trước, sau đó dùng checklist này để thực hành theo từng giai đoạn. Hoàn thành mục nào thì tick `[x]` vào ô đó.

---

## 🚀 GIAI ĐOẠN 1 — START DỰ ÁN
*(Initiating + Planning — Trước khi team bắt đầu dev/test thật sự)*

---

### Bước 1 · Xác nhận thông tin nền của dự án

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận mục tiêu dự án: phát triển mới / maintain / migration / upgrade / fix bug / refactor / takeover | |
| - [ ] | Xác nhận scope ban đầu gồm những gì | |
| - [ ] | Xác nhận output/deliverable khách kỳ vọng | |
| - [ ] | Xác nhận timeline/milestone lớn đã có chưa | |
| - [ ] | Lập danh sách stakeholder phía **khách**: PO, PM, tech lead, reviewer, tester, người approve | |
| - [ ] | Lập danh sách stakeholder phía **ta**: PM, BrSE, dev lead, tech lead, tester, PQA, manager | |

---

### Bước 2 · Thống nhất kênh communication

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận tool dùng để liên lạc: Slack / Teams / Skype / email / Backlog / Jira comment | |
| - [ ] | Xác nhận bên nào tạo group chat, ai được add vào | |
| - [ ] | Thống nhất dùng kênh nào cho việc gì: Chat (hỏi nhanh) / Email (chính thức) / Jira-Backlog (task/bug/Q&A) / Meeting (phức tạp) | |
| - [ ] | Thống nhất ngôn ngữ sử dụng: Nhật / Việt / Anh / song ngữ | |
| - [ ] | Thống nhất thời gian phản hồi kỳ vọng: trong ngày / 24h / urgent thì gọi trực tiếp | |

---

### Bước 3 · Thống nhất meeting cadence

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận có daily meeting không, lúc mấy giờ, ai tham gia | |
| - [ ] | Xác nhận có weekly meeting không, format thế nào | |
| - [ ] | Xác nhận sprint planning/review/retro nếu chạy Agile/Scrum | |
| - [ ] | Xác nhận meeting với khách và meeting nội bộ tách riêng hay gộp | |
| - [ ] | Xác nhận ai chuẩn bị agenda, ai ghi minutes, ai follow action item | |

---

### Bước 4 · Thống nhất nơi lưu trữ tài liệu

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận nơi lưu tài liệu chung với khách: Google Drive / Box / SharePoint / Confluence / Notion | |
| - [ ] | Xác nhận bên nào tạo folder, quyền truy cập của từng người | |
| - [ ] | Thống nhất quy tắc đặt tên file/version | |
| - [ ] | Xác nhận tài liệu nội bộ được tách khỏi tài liệu share khách | |
| - [ ] | Nếu có PQA: request PQA tạo folder/project theo quy định. Nếu không có: PM/BrSE tự tạo | |
| - [ ] | Tạo cấu trúc thư mục nội bộ theo chuẩn: `01_Contract_Scope` / `02_Requirement` / `03_Schedule` / `04_Meeting_Minutes` / `05_Design` / `06_Test` / `07_Report` / `08_Deliverable` / `09_Retrospective` | |

---

### Bước 5 · Xác nhận source code và môi trường

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận source code mới nhất đang ở đâu: GitHub / GitLab / Bitbucket / Azure DevOps / server riêng | |
| - [ ] | Xác nhận team đã có quyền access chưa — nếu chưa, nhờ khách cung cấp ngay | |
| - [ ] | Xác nhận branch chính, branch dev, release branch | |
| - [ ] | Xác nhận cách clone source: VPN, IP allowlist, mở port nếu cần | |
| - [ ] | Tạo ticket mở port/request quyền truy cập theo quy trình nội bộ nếu cần | |
| - [ ] | Kiểm tra README/setup guide có đủ không | |
| - [ ] | Xác nhận môi trường dev/staging/production và quyền truy cập từng môi trường | |

---

### Bước 6 · Thống nhất tool quản lý task/bug

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận tool dùng: Jira / Backlog / Redmine / GitHub Issues / Azure Boards / tool của khách | |
| - [ ] | Xác nhận dự án do mình tạo hay khách tạo | |
| - [ ] | Thống nhất workflow ticket: To Do → In Progress → Review → QA → Done | |
| - [ ] | Thống nhất loại ticket: task / bug / story / Q&A / change request | |
| - [ ] | Thống nhất quy tắc assign, due date, priority, status — ai được quyền close ticket | |
| - [ ] | Định nghĩa bug severity/priority: Critical / High / Medium / Low | |
| - [ ] | Nếu có Ksystem hoặc tool nội bộ: request PQA tạo project theo process công ty | |

---

### Bước 7 · Xác định deliverable và chuẩn bị template tài liệu

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận danh sách deliverable cuối dự án: source code / build / design doc / test case / test report / release note / operation manual / QA evidence / weekly report / meeting minutes / Q&A list / bug list / handover doc | |
| - [ ] | Chuẩn bị template cho BrSE/PM: kickoff document, weekly report, meeting minutes, Q&A list, issue/risk list | |
| - [ ] | Chuẩn bị template cho Tester/QA: test case, test result/report, bug report | |
| - [ ] | Xác nhận template cho Dev/Tech lead với dev lead: basic/detail design, API spec, DB design, setup guide, release note | |

---

### Bước 8 · Thống nhất test strategy

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận có cần Unit Test không, ai viết, coverage yêu cầu bao nhiêu | |
| - [ ] | Xác nhận có cần Integration Test không | |
| - [ ] | Xác nhận có cần System Test không | |
| - [ ] | Xác nhận có cần Regression Test không | |
| - [ ] | Xác nhận có cần hỗ trợ khách UAT không | |
| - [ ] | Xác nhận ai tạo test case, ai review test case | |
| - [ ] | Xác nhận cách lưu test evidence | |
| - [ ] | Xác nhận bug được report ở đâu (tool nào, ticket type nào) | |
| - [ ] | Xác nhận tiêu chí pass/fail và release criteria | |

---

### Bước 9 · Tạo kickoff document và tổ chức kickoff meeting

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Soạn kickoff document gồm: Background/mục tiêu, Scope/out-of-scope, Team structure & role | |
| - [ ] | Bổ sung vào kickoff doc: Communication rule, Meeting schedule, Tool sử dụng | |
| - [ ] | Bổ sung vào kickoff doc: Deliverable list, Milestone/schedule tổng quan | |
| - [ ] | Bổ sung vào kickoff doc: Risk/issue ban đầu, Quy trình change request, Quy trình confirm/approve | |
| - [ ] | Tổ chức kickoff meeting với khách (và nội bộ nếu cần) | |
| - [ ] | Gửi minutes kickoff meeting, chờ khách confirm | |

---

### Bước 10 · Tạo detail schedule

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Tạo WBS/task list với người phụ trách và estimate | |
| - [ ] | Điền start/end date, dependency, milestone | |
| - [ ] | Xác định review point, test period, buffer, delivery date | |
| - [ ] | Dev lead/test lead review tính khả thi của schedule | |
| - [ ] | Manager nội bộ confirm schedule | |
| - [ ] | Gửi schedule cho khách confirm | |

---

## ⚙️ GIAI ĐOẠN 2 — GIỮA DỰ ÁN
*(Executing + Monitoring & Controlling — Trong suốt quá trình dev/test)*

---

### Nhóm 1 · Điều phối communication hằng ngày

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Theo dõi câu hỏi từ khách mỗi ngày | |
| - [ ] | Dịch/diễn giải yêu cầu cho dev/tester trước khi họ bắt tay vào làm | |
| - [ ] | Chuẩn hóa câu trả lời trước khi gửi khách (không mơ hồ, không cam kết vượt quyền) | |
| - [ ] | Ghi lại decision quan trọng vào ticket/minutes/document | |
| - [ ] | Nhắc khách confirm các điểm còn pending | |

---

### Nhóm 2 · Quản lý requirement và Q&A

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Làm rõ requirement chưa rõ trước khi để dev làm | |
| - [ ] | Tách requirement thành ticket/task dễ hiểu trên tool quản lý | |
| - [ ] | Cập nhật Q&A list thường xuyên | |
| - [ ] | Phân loại Q&A: business / UI/UX / API / DB / logic / test / operation | |
| - [ ] | Khi khách thay đổi yêu cầu: xác nhận ảnh hưởng trước khi chuyển cho dev | |
| - [ ] | Hỗ trợ PM đánh giá change request: impact về scope / schedule / cost / quality | |

---

### Nhóm 3 · Theo dõi schedule và progress

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Cập nhật tiến độ task trên Jira/Backlog theo quy tắc đã thống nhất | |
| - [ ] | So sánh actual vs plan định kỳ (ít nhất mỗi tuần) | |
| - [ ] | Phát hiện task bị delay sớm, nhắc assignee update status | |
| - [ ] | Tổng hợp blocker hằng tuần | |
| - [ ] | Báo PM khi có rủi ro ảnh hưởng tiến độ | |
| - [ ] | Chuẩn bị nội dung daily/weekly report | |

---

### Nhóm 4 · Hỗ trợ quản lý chất lượng

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Theo dõi bug trend: số lượng bug mở/đóng theo tuần | |
| - [ ] | Cùng tester/dev lead kiểm tra các bug nghiêm trọng (Critical/High) | |
| - [ ] | Xác nhận từng bug: đúng requirement hay do hiểu sai? | |
| - [ ] | Hỗ trợ triage bug: priority, severity, target fix version | |
| - [ ] | Theo dõi test case/test result/test evidence có đầy đủ không | |
| - [ ] | Đảm bảo UT/IT/ST được thực hiện đúng test strategy đã thống nhất | |

---

### Nhóm 5 · Hỗ trợ quản lý issue/risk

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Ghi nhận issue/risk vào issue/risk list khi phát hiện | |
| - [ ] | Làm rõ owner và deadline xử lý từng issue/risk | |
| - [ ] | Báo cáo PM khi có rủi ro ảnh hưởng delivery | |
| - [ ] | Chuẩn bị cách giải thích tình huống cho khách (nếu cần) | |
| - [ ] | Đề xuất phương án xử lý: giảm scope / tăng resource / đổi ưu tiên / chia phase / xin thêm thời gian | |

---

### Nhóm 6 · Chuẩn bị và gửi báo cáo định kỳ

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Weekly report có đủ: tổng quan trạng thái (Green/Yellow/Red) | |
| - [ ] | Weekly report có đủ: tiến độ tuần này, kế hoạch tuần sau | |
| - [ ] | Weekly report có đủ: task hoàn thành, task delay | |
| - [ ] | Weekly report có đủ: issue/risk, Q&A/chờ khách confirm | |
| - [ ] | Weekly report có đủ: bug/test status (khi đang trong phase test) | |
| - [ ] | Weekly report có đủ: request cần khách hỗ trợ | |
| - [ ] | Gửi report đúng lịch, lưu vào folder tài liệu | |

---

### Nhóm 7 · Quản lý thay đổi (Change management)

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Khi có yêu cầu thay đổi: xác nhận rõ đây là bug / change request / hay scope ban đầu | |
| - [ ] | Nếu là change request: ghi nhận nội dung, lý do, impact, estimate, deadline | |
| - [ ] | Không để dev tự thực hiện khi chưa có PM/khách confirm | |
| - [ ] | Không cam kết ngay với khách nếu chưa đánh giá impact | |

---

## 🏁 GIAI ĐOẠN 3 — CUỐI DỰ ÁN
*(Closing — Delivery, nghiệm thu, đóng dự án)*

---

### Nhóm 1 · Xác nhận trạng thái deliverable

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Source code đã merge đúng branch chưa | |
| - [ ] | Build/package đúng version chưa | |
| - [ ] | Test case đã hoàn thành chưa | |
| - [ ] | Test report đã đủ chưa | |
| - [ ] | Không còn bug open nào ngoài known issue đã được khách chấp nhận | |
| - [ ] | Document cần giao đã đủ chưa | |
| - [ ] | Release note đã có chưa | |
| - [ ] | Hướng dẫn deploy/operation đã có chưa | |

---

### Nhóm 2 · Hỗ trợ final test/release

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Theo dõi regression test hoàn thành | |
| - [ ] | Kiểm tra bug fix confirmation | |
| - [ ] | Hỗ trợ khách UAT nếu có | |
| - [ ] | Tổng hợp danh sách lỗi còn lại | |
| - [ ] | Xác nhận tiêu chí release đã đạt | |
| - [ ] | Chuẩn bị và gửi release note | |
| - [ ] | Hỗ trợ communication nếu có lỗi sát ngày release | |

---

### Nhóm 3 · Chuẩn bị nghiệm thu / sign-off

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Xác nhận ai là người approve phía khách | |
| - [ ] | Xác nhận hình thức approve: email / ticket / biên bản nghiệm thu / tool nội bộ | |
| - [ ] | Xác nhận điều kiện nghiệm thu | |
| - [ ] | Xác nhận item nào (nếu có) được carry over sang phase sau | |
| - [ ] | Nếu có known issue: có văn bản xác nhận khách đồng ý release không | |
| - [ ] | Nhận sign-off/approve chính thức từ khách | |

---

### Nhóm 4 · Bàn giao tài liệu và tri thức

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Bàn giao: source/repository information | |
| - [ ] | Bàn giao: environment information | |
| - [ ] | Bàn giao: setup/deploy guide | |
| - [ ] | Bàn giao: design document bản cuối | |
| - [ ] | Bàn giao: test case/test report | |
| - [ ] | Bàn giao: bug list | |
| - [ ] | Bàn giao: release note | |
| - [ ] | Bàn giao: operation manual (nếu có) | |
| - [ ] | Bàn giao: remaining issue/known issue list | |
| - [ ] | Bàn giao: handover document | |
| - [ ] | Bàn giao: account/access list (theo security policy) | |

---

### Nhóm 5 · Đóng tool và lưu trữ

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Jira/Backlog ticket được close đúng trạng thái | |
| - [ ] | Export/archive tài liệu cần lưu dài hạn | |
| - [ ] | Meeting minutes, Q&A, report, deliverable đã vào đúng folder chưa | |
| - [ ] | Thu hồi quyền access nếu dự án kết thúc và policy yêu cầu | |
| - [ ] | Đóng project trên Ksystem/tool nội bộ nếu có quy trình | |
| - [ ] | Xác nhận folder nội bộ đã đủ tài liệu cho audit/PQA | |

---

### Nhóm 6 · Retrospective / Lessons learned

| # | Hạng mục | Ghi chú |
|---|----------|---------|
| - [ ] | Tổng hợp điểm làm tốt trong dự án | |
| - [ ] | Tổng hợp vấn đề phát sinh, nguyên nhân delay/bug/rework | |
| - [ ] | Đề xuất cải thiện communication cho dự án sau | |
| - [ ] | Đề xuất cải thiện estimate/schedule/test cho dự án sau | |
| - [ ] | Ghi lại lesson learned vào tài liệu | |
| - [ ] | Tổng hợp feedback từ khách nếu có | |
| - [ ] | Lưu tài liệu retrospective vào folder `09_Retrospective` | |

---

## 📌 Ghi chú sử dụng

- **Cột "Ghi chú"**: Điền thông tin thực tế của dự án vào đây (tên tool, tên người, link tài liệu...).
- **Không phải mọi item đều bắt buộc**: Một số mục phụ thuộc vào quy mô dự án và quy định của khách hàng — hãy đánh dấu `N/A` nếu không áp dụng.
- **Ưu tiên giai đoạn Start**: Làm rõ càng nhiều càng tốt trước khi dev bắt đầu code — sẽ giảm đáng kể số lần "hỏi lại" sau này.
