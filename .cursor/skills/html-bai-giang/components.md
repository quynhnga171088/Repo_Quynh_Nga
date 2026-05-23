# Component Reference — HTML Bài Giảng

## Bullet list
```html
<ul class="bullets">
  <li>Điểm 1</li>
  <li>Điểm 2</li>
</ul>
```

## Callout box
```html
<!-- Blue (thông tin) -->
<div class="callout">Nội dung lưu ý.</div>

<!-- Green (tốt / kết quả đúng) -->
<div class="callout callout-green">✅ Nội dung</div>

<!-- Amber (cảnh báo / chú ý) -->
<div class="callout callout-amber">⚠️ Nội dung</div>

<!-- Purple (nâng cao / ghi nhớ) -->
<div class="callout callout-purple">💡 Nội dung</div>
```

## Flow steps — quy trình / các bước
```html
<div class="flow-visual">
  <span class="flow-step">① Bước 1</span>
  <span class="flow-arrow">→</span>
  <span class="flow-step">② Bước 2</span>
  <span class="flow-arrow">→</span>
  <span class="flow-step">③ Bước 3</span>
</div>
```

## Bảng dữ liệu

### Mapping table (bảng so sánh / vai trò)
```html
<table class="mapping-table">
  <thead>
    <tr><th>Vai trò</th><th>Trách nhiệm</th><th>Ghi chú</th></tr>
  </thead>
  <tbody>
    <tr>
      <td class="role-cell">BrSE</td>
      <td>Cầu nối Nhật – Việt</td>
      <td><span class="tag tag-blue">Core</span></td>
    </tr>
  </tbody>
</table>
```

### Integration table (header tối)
```html
<table class="mapping-table integration-table">
  <thead><tr><th>Hệ thống</th><th>Loại</th><th>Mô tả</th></tr></thead>
  <tbody>
    <tr>
      <td class="role-cell">API</td>
      <td><span class="tag tag-internal">Internal</span></td>
      <td>Mô tả</td>
    </tr>
  </tbody>
</table>
```

### Glossary table (từ điển JP–VN)
```html
<table class="mapping-table glossary-table">
  <thead><tr><th>日本語</th><th>Tiếng Việt</th><th>Ghi chú</th></tr></thead>
  <tbody>
    <tr>
      <td class="jp-term">要件定義</td>
      <td>Định nghĩa yêu cầu</td>
      <td>Giai đoạn đầu dự án</td>
    </tr>
  </tbody>
</table>
```

## Role cards — grid vai trò
```html
<div class="role-cards">
  <div class="role-card">
    <div class="role-icon">🧑‍💼</div>
    <div class="role-name">BrSE</div>
    <div class="role-desc">Cầu nối giữa team Việt và khách Nhật.</div>
  </div>
  <div class="role-card">
    <div class="role-icon">👨‍💻</div>
    <div class="role-name">Developer</div>
    <div class="role-desc">Lập trình viên phát triển tính năng.</div>
  </div>
</div>
```

## Diagram grid — so sánh 2 phía
```html
<div class="diagram-grid">
  <div class="diagram-card admin">
    <h4>Admin / Quản trị</h4>
    <p>Mô tả góc nhìn / tính năng phía admin.</p>
  </div>
  <div class="diagram-card user">
    <h4>User / Người dùng</h4>
    <p>Mô tả góc nhìn / tính năng phía user.</p>
  </div>
</div>
```

## Golden question — câu hỏi trọng tâm
```html
<div class="golden-question">
  <p>CÂU HỎI TRỌNG TÂM</p>
  <strong>Tại sao BrSE cần hiểu cả kỹ thuật lẫn nghiệp vụ?</strong>
</div>
```

## Outcomes hub — mục tiêu dạng pill
```html
<div class="outcomes-hub">
  <div class="out-pill">
    <span class="out-emoji">📌</span>
    <div class="out-name">Hiểu quy trình</div>
    <div class="out-hint">Từ requirement đến deploy</div>
  </div>
  <div class="out-pill">
    <span class="out-emoji">🗣️</span>
    <div class="out-name">Giao tiếp hiệu quả</div>
    <div class="out-hint">Với team và khách hàng</div>
  </div>
</div>
<p class="outcomes-hub-note">Hoàn thành bài này = nắm vững 3 kỹ năng trên</p>
```

## Memory grid — tổng kết closing (tối đa 5 card)
```html
<div class="memory-grid">
  <div class="memory-card memory-card-1">
    <div class="memory-card-icon">💡</div>
    <div class="memory-card-num">ĐIỂM 1</div>
    <div class="memory-card-title">Tiêu đề</div>
    <div class="memory-card-hint">Gợi ý ghi nhớ ngắn</div>
  </div>
  <div class="memory-card memory-card-2">
    <div class="memory-card-icon">🔗</div>
    <div class="memory-card-num">ĐIỂM 2</div>
    <div class="memory-card-title">Tiêu đề</div>
    <div class="memory-card-hint">Gợi ý</div>
  </div>
  <!-- memory-card-3, memory-card-4, memory-card-5 tương tự -->
</div>
```
Màu mỗi card được định nghĩa sẵn: 1=vàng, 2=xanh, 3=xanh lá, 4=tím, 5=hồng.

## System tree — cây kiến trúc / thư mục
```html
<div class="system-tree">
  <strong>Hệ thống</strong><br>
  ├── <strong>Frontend</strong> — React / Vue<br>
  ├── <strong>Backend</strong> — API Server<br>
  │   ├── REST API<br>
  │   └── Database<br>
  └── <strong>Infrastructure</strong> — AWS / GCP
</div>
```

## Phase badge — nhãn giai đoạn
```html
<div class="phase-badge">PHASE 1 — XÁC ĐỊNH YÊU CẦU</div>
```

## Subsection bar — header phụ trong lesson-block
```html
<div class="subsection-bar">2.1 · Phân tích nghiệp vụ</div>
```

## Platform chips — danh sách công cụ / nền tảng
```html
<div class="platform-row">
  <div class="platform-chip">
    <span class="icon">🛠️</span>
    <span>Cursor IDE</span>
  </div>
  <div class="platform-chip">
    <span class="icon">🤖</span>
    <span>Claude AI</span>
  </div>
</div>
```

## Confirm list — danh sách checklist amber
```html
<ul class="confirm-list">
  <li><strong>Điểm cần xác nhận:</strong> Mô tả chi tiết cần kiểm tra.</li>
  <li><strong>Điểm khác:</strong> Nội dung.</li>
</ul>
```

## Integration question cards — câu hỏi phân tích
```html
<div class="integration-questions">
  <div class="integration-q-card">
    <strong>❓ Câu hỏi phân tích</strong>
    <span>Gợi ý trả lời hoặc hướng dẫn.</span>
  </div>
  <div class="integration-q-card">
    <strong>❓ Câu hỏi khác</strong>
    <span>Gợi ý.</span>
  </div>
</div>
```

## Tags
```html
<span class="tag tag-blue">Kỹ thuật</span>
<span class="tag tag-green">Nghiệp vụ</span>
<span class="tag tag-internal">Internal</span>
<span class="tag tag-external">External</span>
```

## LMS banner — thông báo tài nguyên
```html
<div class="lms-banner">
  <div class="lms-icon">📚</div>
  <div>
    <strong>Tài liệu tham khảo</strong>
    <span>Xem thêm tại Google Drive hoặc LMS của khóa học.</span>
  </div>
</div>
```
