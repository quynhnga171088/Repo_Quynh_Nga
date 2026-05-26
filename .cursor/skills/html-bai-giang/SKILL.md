---
name: html-bai-giang
description: Tạo tài liệu bài giảng dạng HTML (SaaS lesson layout) cho khóa học BrSE Career Builder. Dùng khi user yêu cầu tạo bài giảng HTML, viết tài liệu đào tạo HTML, tạo lesson HTML, hoặc khi user đề cập "html bài giảng", "bài giảng html", "tạo tài liệu đào tạo", "lesson html", "bài học html". Input linh hoạt: chỉ chủ đề, outline, file .md, hoặc ghi chú thô. Quiz luôn có 2 level: cơ bản + nâng cao.
disable-model-invocation: true
---

# HTML Bài Giảng — BrSE Career Builder

## Template

Đọc file template trước khi tạo. Đường dẫn ưu tiên (theo thứ tự):
1. Cùng thư mục skill này: [template.html](template.html)
2. Project BrSE: `c:\Dự án\GITHUB\All_document-BrSE\BrSE Basics\template-bai-giang.html`

---

## Tông giọng viết

**Chuyên gia · Thân thiện · Có chiều sâu**

- Viết như đang nói chuyện trực tiếp với học viên, không khô khan
- Dùng "bạn" (không dùng "các bạn" hay "học viên")
- Giải thích bằng ví dụ thực tế từ dự án outsource Nhật–Việt
- Thông tin chính xác, có lập luận rõ ràng — không viết chung chung
- Case study: nhúng trực tiếp vào lesson liên quan, dưới dạng `callout-amber` hoặc `lesson-block` riêng với nhãn **"Case study thực tế"**

---

## Quy trình (4 bước)

### Bước 1 — Xử lý input

| Input | Cách xử lý |
|-------|-----------|
| Chỉ có chủ đề | Tự suy luận 3–5 module, mỗi module 2–4 lesson, phù hợp đối tượng BrSE |
| Có outline | Mapping outline vào cấu trúc module → lesson |
| Có file `.md` | Đọc file → phân nhóm nội dung theo module → lesson tương ứng |
| Ghi chú thô | Tổ chức lại thành module → lesson trước khi viết HTML |

### Bước 2 — Xây dựng HTML theo cấu trúc bắt buộc

```
#cover           → Cover page
#muc-tieu        → Mục tiêu & lộ trình toàn bài
#module-1        → Module 1 (card lớn)
  #lesson-1-1    →   Lesson 1.1 (lesson-block bên trong)
  #lesson-1-2    →   Lesson 1.2
  ...
#module-2        → Module 2
  #lesson-2-1    →   Lesson 2.1
  ...
[#module-N]      → (tối đa 5 module)
#quiz-shell      → Quiz (luôn có, 2 level)
#closing         → Tổng kết & bước tiếp theo
```

### Bước 3 — Cập nhật sidebar + scroll spy

- Mỗi module = 1 `nav-group` trong sidebar
- Mỗi lesson = 1 `nav-item` bên trong nav-group đó
- Cập nhật mảng `sectionIds` trong JS để gồm tất cả id module và lesson

### Bước 4 — Lưu file

- Lưu cùng thư mục với file input (nếu có), hoặc hỏi user
- Đặt tên: `[slug-tieu-de-khong-dau].html`

---

## Cấu trúc HTML

### Cover page
```html
<div class="header" id="cover">
  <div class="header-badge">[DANH MỤC · CHỦ ĐỀ KHÓA HỌC]</div>
  <h1>[TIÊU ĐỀ BÀI GIẢNG]</h1>
  <p class="header-sub">[Mô tả 1–2 câu: bài này dạy điều gì?]</p>
  <p class="header-trainer">BrSE Career Builder - Đồng Hành Cùng Bạn</p>
  <p class="header-meta">[Đối tượng] · ~[X] phút · [N] module · [M] lesson</p>
</div>
```

### Mục tiêu & lộ trình
```html
<div class="card" id="muc-tieu">
  <div class="section-label">Mục tiêu</div>
  <div class="section-title">Sau bài này, bạn sẽ làm được gì?</div>
  <p class="section-desc">[Mô tả tổng quan 2–3 câu.]</p>

  <!-- Dùng outcomes-hub hoặc bullets tùy số lượng mục tiêu -->
  <div class="outcomes-hub">
    <div class="out-pill">
      <span class="out-emoji">📌</span>
      <div class="out-name">[Mục tiêu 1]</div>
      <div class="out-hint">[Gợi ý ngắn]</div>
    </div>
  </div>

  <div class="lesson-block">
    <div class="block-title">Lộ trình bài học</div>
    <div class="flow-visual">
      <span class="flow-step">① Module 1</span>
      <span class="flow-arrow">→</span>
      <span class="flow-step">② Module 2</span>
      <span class="flow-arrow">→</span>
      <span class="flow-step">③ Module 3</span>
    </div>
  </div>
</div>
```

### Module (card lớn) + Lesson (lesson-block bên trong)
```html
<div class="card [card-accent-COLOR]" id="module-X">
  <div class="section-label">MODULE X</div>
  <div class="section-title">Tên Module</div>
  <p class="section-desc">Mô tả tổng quan module này — học viên sẽ hiểu được gì.</p>

  <!-- Lesson X.1 -->
  <div class="lesson-block" id="lesson-X-1">
    <div class="subsection-bar">X.1 · Tên Lesson nhỏ</div>
    <div class="block-title">Tiêu đề nội dung chính</div>
    <p class="section-desc">Giải thích nội dung...</p>
    <!-- bullets, callout, flow-visual, table, role-cards... -->

    <!-- Case study (nếu có): nhúng trực tiếp vào lesson liên quan -->
    <div class="callout callout-amber" style="margin-top:14px;">
      <strong>📋 Case study thực tế:</strong> [Mô tả tình huống thực từ dự án outsource]<br>
      [Phân tích + bài học rút ra]
    </div>
  </div>

  <!-- Lesson X.2 -->
  <div class="lesson-block" id="lesson-X-2">
    <div class="subsection-bar">X.2 · Tên Lesson nhỏ</div>
    <!-- nội dung tiếp -->
  </div>
</div>
```

**Màu accent module** — nên dùng xen kẽ để phân biệt trực quan:
- Module 1: mặc định (blue)
- Module 2: `card-accent-green`
- Module 3: `card-accent-amber`
- Module 4: `card-accent-purple`
- Module 5: `card-accent-red`

### Closing
```html
<section id="closing">
  <div class="closing">
    <div class="section-label">Kết bài</div>
    <div class="closing-title">[Bạn đã nắm được...]</div>
    <p class="closing-text">[Tổng kết 2–3 câu, khuyến khích áp dụng ngay.]</p>
    <div class="lesson-block">
      <div class="block-title">Điểm cần nhớ</div>
      <!-- memory-grid (tối đa 5 card) hoặc bullets -->
      <div class="callout callout-green" style="margin-top:16px;">
        <strong>Bước tiếp theo:</strong> [Gợi ý hành động cụ thể có thể làm ngay hôm nay]
      </div>
    </div>
    <div class="closing-actions">
      <a class="btn btn-primary" href="#cover">↑ Về đầu trang</a>
    </div>
  </div>
</section>
```

---

## Sidebar — cấu trúc module/lesson

```html
<aside class="lesson-sidebar" id="lesson-sidebar">
  <div class="sidebar-header">
    <span class="sidebar-title">Mục lục</span>
    <button type="button" class="sidebar-collapse-btn" id="btn-sidebar-collapse"
      aria-expanded="true" aria-controls="lesson-sidebar-nav" title="Thu gọn / mở rộng">‹</button>
  </div>
  <nav class="sidebar-nav" id="lesson-sidebar-nav">
    <div class="nav-group">
      <div class="nav-group-label">Tổng quan</div>
      <a class="nav-item" href="#cover">00 · Bìa &amp; giới thiệu</a>
      <a class="nav-item" href="#muc-tieu">01 · Mục tiêu &amp; lộ trình</a>
    </div>

    <!-- Lặp lại cho mỗi module -->
    <div class="nav-group">
      <div class="nav-group-label">Module 1 — [Tên module]</div>
      <a class="nav-item" href="#module-1">M1 · [Tên module tổng quan]</a>
      <a class="nav-item" href="#lesson-1-1">1.1 · [Tên lesson]</a>
      <a class="nav-item" href="#lesson-1-2">1.2 · [Tên lesson]</a>
    </div>

    <div class="nav-group">
      <div class="nav-group-label">Module 2 — [Tên module]</div>
      <a class="nav-item" href="#module-2">M2 · [Tên module tổng quan]</a>
      <a class="nav-item" href="#lesson-2-1">2.1 · [Tên lesson]</a>
    </div>

    <div class="nav-group">
      <div class="nav-group-label">Kết bài</div>
      <a class="nav-item" href="#closing">XX · Tổng kết</a>
      <!-- Link đến quiz — JS phải xử lý focus đặc biệt (xem mục JavaScript bên dưới) -->
      <a class="nav-item" href="#btn-quiz-open">Kiểm tra kiến thức</a>
    </div>
  </nav>
</aside>
```

**Mảng sectionIds** — liệt kê đầy đủ tất cả id theo thứ tự xuất hiện:
```javascript
var sectionIds = [
  'cover', 'muc-tieu',
  'module-1', 'lesson-1-1', 'lesson-1-2',
  'module-2', 'lesson-2-1', 'lesson-2-2',
  'module-3', 'lesson-3-1',
  'closing'
];
// Lưu ý: 'btn-quiz-open' không có trong sectionIds (scroll spy bỏ qua),
// nhưng nav-item href="#btn-quiz-open" vẫn cần xử lý focus trong JS click handler.
```

---

## Components — xem chi tiết tại [components.md](components.md)

| Component | Class / Pattern | Dùng khi |
|-----------|----------------|----------|
| Bullet list | `<ul class="bullets">` | Liệt kê điểm chính |
| Callout box | `callout` / `callout-green` / `callout-amber` / `callout-purple` | Lưu ý, tip, case study, cảnh báo |
| Flow steps | `flow-visual` + `flow-step` + `flow-arrow` | Quy trình, các bước |
| Table | `mapping-table` / `integration-table` / `glossary-table` | So sánh, từ điển JP–VN |
| Role cards | `role-cards` + `role-card` | Giới thiệu vai trò |
| Diagram grid | `diagram-grid` + `diagram-card admin/user` | So sánh 2 đối tượng |
| Golden question | `golden-question` | Câu hỏi trọng tâm nổi bật |
| Outcomes hub | `outcomes-hub` + `out-pill` | Mục tiêu bài học dạng pill |
| Memory grid | `memory-grid` + `memory-card-1..5` | Tổng kết closing |
| System tree | `system-tree` | Cây kiến trúc / thư mục |
| Phase badge | `phase-badge` | Nhãn giai đoạn |
| Subsection bar | `subsection-bar` | Header lesson bên trong module |

---

## Quiz — 2 level: Cơ bản + Nâng cao

> CSS quiz đầy đủ (`.quiz-shell`, `.quiz-section`, `.question-block`, `#quiz-incomplete-toast`, v.v.) đã có sẵn trong `template.html`. Không cần nhúng lại CSS khi tạo bài mới — chỉ copy HTML + JS bên dưới.

### Nút mở quiz (đặt trong `closing-actions`, cùng hàng nút "↑ Về đầu trang")
```html
<div class="closing-actions" id="ket-bai">
  <a class="btn btn-primary" href="#cover">↑ Về đầu trang</a>
  <button class="btn btn-quiz-open" id="btn-quiz-open" onclick="openQuiz()">
    🧪 Kiểm tra kiến thức
  </button>
</div>
```

### Quiz shell đầy đủ (đặt sau `</div><!-- /.page-wrapper -->`, trước `</body>`)
```html
<!-- QUIZ SHELL — hiện fullscreen khi user click "Kiểm tra kiến thức" -->
<div class="quiz-shell" id="quiz-shell">
  <div class="quiz-shell-top">
    <button class="btn" onclick="closeQuiz()" style="font-size:13px;background:var(--accent-blue);color:#fff;border-color:var(--accent-blue-dark);">← Quay lại bài giảng</button>
    <span>[Tên bài] — Kiểm tra kiến thức</span>
    <button class="btn" onclick="closeQuiz()" style="background:var(--accent-blue);color:#fff;border-color:var(--accent-blue-dark);">✕ Đóng</button>
  </div>
  <div id="quiz-incomplete-toast">⚠️ Bạn chưa trả lời hết tất cả câu hỏi.<br>Hãy hoàn thành các câu còn bỏ sót trước khi nộp bài.</div>
  <div class="quiz-shell-scroll">
    <div id="quiz-inline">
      <div class="header">
        <div class="header-badge">QUIZ · [LEVEL/TÊN BÀI]</div>
        <h1>Kiểm Tra Kiến Thức</h1>
        <p class="header-sub">2 phần · Cơ bản &amp; Nâng cao · Tổng [N] câu</p>
        <p class="header-trainer">BrSE Career Builder - Đồng Hành Cùng Bạn</p>
      </div>

      <!-- ===== PHẦN 1: CƠ BẢN ===== -->
      <div class="quiz-section" id="quiz-basic">
        <div class="quiz-header">
          <div class="quiz-icon basic">📘</div>
          <div>
            <div class="quiz-title">Phần 1 - Cơ bản</div>
            <div class="quiz-subtitle">[N] câu · Kiến thức nền của bài</div>
          </div>
        </div>

        <!-- Câu hỏi cơ bản — lặp lại pattern này cho mỗi câu -->
        <div class="question-block" data-level="basic" data-answer="B">
          <span class="question-num">Câu 1</span>
          <div class="question-text">Nội dung câu hỏi cơ bản?</div>
          <ul class="options">
            <li class="option" onclick="selectOption(this)"><span class="option-letter">A</span> Đáp án A</li>
            <li class="option" onclick="selectOption(this)"><span class="option-letter">B</span> Đáp án B (đúng)</li>
            <li class="option" onclick="selectOption(this)"><span class="option-letter">C</span> Đáp án C</li>
            <li class="option" onclick="selectOption(this)"><span class="option-letter">D</span> Đáp án D</li>
          </ul>
          <div class="answer-feedback correct">✅ [Giải thích tại sao đáp án đúng]</div>
          <div class="answer-feedback wrong">❌ [Giải thích + gợi ý đáp án đúng]</div>
        </div>
        <!-- Thêm câu hỏi cơ bản tiếp theo... -->
      </div>

      <!-- ===== PHẦN 2: NÂNG CAO ===== -->
      <div class="quiz-section" id="quiz-advanced" style="border-top-color:#7c3aed;">
        <div class="quiz-header">
          <div class="quiz-icon advanced">🧠</div>
          <div>
            <div class="quiz-title">Phần 2 - Nâng cao</div>
            <div class="quiz-subtitle">[N] câu · Tình huống thực tế &amp; phân tích</div>
          </div>
        </div>

        <!-- Câu hỏi nâng cao — lặp lại pattern này cho mỗi câu -->
        <div class="question-block" data-level="advanced" data-answer="C">
          <span class="question-num">Câu 1</span>
          <div class="question-text">Tình huống / câu hỏi phân tích nâng cao?</div>
          <ul class="options">
            <li class="option" onclick="selectOption(this)"><span class="option-letter">A</span> Đáp án A</li>
            <li class="option" onclick="selectOption(this)"><span class="option-letter">B</span> Đáp án B</li>
            <li class="option" onclick="selectOption(this)"><span class="option-letter">C</span> Đáp án C (đúng)</li>
            <li class="option" onclick="selectOption(this)"><span class="option-letter">D</span> Đáp án D</li>
          </ul>
          <div class="answer-feedback correct">✅ [Giải thích chuyên sâu]</div>
          <div class="answer-feedback wrong">❌ [Giải thích + hướng dẫn tư duy đúng]</div>
        </div>
        <!-- Thêm câu hỏi nâng cao tiếp theo... -->

        <!-- NÚT NỘP BÀI — đặt cuối phần nâng cao, chấm điểm cả 2 phần -->
        <div class="quiz-final-actions">
          <button class="check-btn" onclick="submitAll()">Nộp bài</button>
        </div>
        <div class="quiz-result-box total" id="result-total">
          <div class="result-score" id="score-total">0/[N]</div>
          <div class="result-comment" id="comment-total"></div>
          <div style="display:flex;gap:10px;justify-content:center;flex-wrap:wrap;margin-top:18px;">
            <button class="retake-btn" onclick="retakeAll()">Làm lại</button>
            <button class="retake-btn" style="background:rgba(255,255,255,0.25);border-color:rgba(255,255,255,0.5);" onclick="showAnswers()">Xem đáp án</button>
          </div>
        </div>
      </div>

      <div class="footer">
        <p class="header-trainer">BrSE Career Builder - Đồng Hành Cùng Bạn</p>
        <p style="margin-top:6px;">Training IT cho người mới · Thực tế · Dễ hiểu · Có chiều sâu</p>
      </div>
    </div>
  </div>
</div>
```

### JavaScript (thêm sau khối IIFE sidebar, trong cùng `<script>`)

**Cập nhật navLinks click handler** — thêm xử lý đặc biệt cho `btn-quiz-open`:
```javascript
// Trong navLinks.forEach click handler, thêm:
if (targetId === 'btn-quiz-open') {
  var quizBtn = document.getElementById('btn-quiz-open');
  if (quizBtn) {
    setTimeout(function () { quizBtn.focus({ preventScroll: true }); }, 400);
  }
}
```

**Các hàm quiz** — thêm sau IIFE:
```javascript
function openQuiz() {
  document.getElementById('quiz-shell').classList.add('is-open');
  restoreQuizState();
}

function closeQuiz() {
  saveQuizState();
  document.getElementById('quiz-shell').classList.remove('is-open');
}

function saveQuizState() {
  var state = {};
  ['quiz-basic', 'quiz-advanced'].forEach(function (sectionId) {
    var section = document.getElementById(sectionId);
    if (!section) return;
    var selections = [];
    section.querySelectorAll('.question-block').forEach(function (block) {
      var idx = -1;
      block.querySelectorAll('.option').forEach(function (o, j) {
        if (o.classList.contains('selected')) idx = j;
      });
      selections.push(idx);
    });
    state[sectionId] = selections;
  });
  // Thay 'quizState_[slug]' bằng slug bài học thực tế
  sessionStorage.setItem('quizState_[slug]', JSON.stringify(state));
}

function restoreQuizState() {
  var saved = sessionStorage.getItem('quizState_[slug]');
  if (!saved) return;
  var state;
  try { state = JSON.parse(saved); } catch (e) { return; }
  ['quiz-basic', 'quiz-advanced'].forEach(function (sectionId) {
    if (!state[sectionId]) return;
    var section = document.getElementById(sectionId);
    if (!section) return;
    section.querySelectorAll('.question-block').forEach(function (block, i) {
      var idx = state[sectionId][i];
      if (idx < 0) return;
      var options = block.querySelectorAll('.option');
      if (options[idx]) {
        options.forEach(function (o) { o.classList.remove('selected'); });
        options[idx].classList.add('selected');
      }
    });
  });
}

function selectOption(el) {
  var block = el.closest('.question-block');
  block.querySelectorAll('.option').forEach(function (o) { o.classList.remove('selected'); });
  el.classList.add('selected');
  block.classList.remove('question-unanswered');
}

function gradeSection(sectionId) {
  var section = document.getElementById(sectionId);
  var blocks = section.querySelectorAll('.question-block');
  var correct = 0;
  blocks.forEach(function (block) {
    var answer = block.getAttribute('data-answer');
    var selected = block.querySelector('.option.selected');
    block.querySelectorAll('.answer-feedback').forEach(function (f) { f.classList.remove('show'); });
    if (!selected) { block.classList.add('question-unanswered'); return; }
    block.classList.remove('question-unanswered');
    var letter = selected.querySelector('.option-letter').textContent.trim();
    block.querySelectorAll('.option').forEach(function (o) {
      if (o.querySelector('.option-letter').textContent.trim() === answer) {
        o.classList.add('option-answer-key');
      }
    });
    if (letter === answer) {
      selected.classList.add('correct');
      correct++;
      block.querySelectorAll('.answer-feedback')[0].classList.add('show');
    } else {
      selected.classList.add('wrong');
      block.querySelectorAll('.answer-feedback')[1].classList.add('show');
    }
  });
  return { correct: correct, total: blocks.length };
}

function submitAll() {
  var allBlocks = document.querySelectorAll('#quiz-basic .question-block, #quiz-advanced .question-block');
  var unanswered = [];
  allBlocks.forEach(function (block) {
    if (!block.querySelector('.option.selected')) {
      block.classList.add('question-unanswered');
      unanswered.push(block);
    }
  });
  if (unanswered.length > 0) {
    var toast = document.getElementById('quiz-incomplete-toast');
    toast.classList.add('show');
    clearTimeout(toast._timer);
    toast._timer = setTimeout(function () { toast.classList.remove('show'); }, 4000);
    var scrollEl = document.querySelector('.quiz-shell-scroll');
    if (scrollEl) scrollEl.scrollTo({ top: unanswered[0].offsetTop - 80, behavior: 'smooth' });
    return;
  }
  var r1 = gradeSection('quiz-basic');
  var r2 = gradeSection('quiz-advanced');
  var totalCorrect = r1.correct + r2.correct;
  var totalQ = r1.total + r2.total;
  document.getElementById('score-total').textContent = totalCorrect + '/' + totalQ;
  var pct = totalCorrect / totalQ;
  document.getElementById('comment-total').textContent =
    pct === 1  ? 'Xuất sắc! Bạn nắm vững toàn bộ kiến thức bài này.' :
    pct >= 0.8 ? 'Rất tốt! Bạn đã hiểu phần lớn nội dung. Xem lại các câu sai để hoàn thiện.' :
    pct >= 0.6 ? 'Tốt! Xem lại các câu sai và ôn thêm phần còn yếu nhé.' :
                 'Hãy xem lại nội dung bài học và thử lại nhé.';
  document.getElementById('result-total').classList.add('show');
  var scrollEl = document.querySelector('.quiz-shell-scroll');
  if (scrollEl) {
    var target = document.getElementById('result-total');
    if (target) scrollEl.scrollTo({ top: target.offsetTop - 20, behavior: 'smooth' });
  }
}

function showAnswers() {
  ['quiz-basic', 'quiz-advanced'].forEach(function (sectionId) {
    var section = document.getElementById(sectionId);
    if (!section) return;
    section.querySelectorAll('.question-block').forEach(function (block) {
      var answer = block.getAttribute('data-answer');
      block.querySelectorAll('.option').forEach(function (o) {
        if (o.querySelector('.option-letter').textContent.trim() === answer) {
          o.classList.add('option-answer-key');
        }
      });
      var feedbacks = block.querySelectorAll('.answer-feedback');
      feedbacks.forEach(function (f) { f.classList.remove('show'); });
      feedbacks[0].classList.add('show');
    });
  });
  var scrollEl = document.querySelector('.quiz-shell-scroll');
  if (scrollEl) setTimeout(function () { scrollEl.scrollTo({ top: 0, behavior: 'smooth' }); }, 50);
}

function retakeAll() {
  ['quiz-basic', 'quiz-advanced'].forEach(function (sectionId) {
    var section = document.getElementById(sectionId);
    section.querySelectorAll('.option').forEach(function (o) {
      o.className = 'option';
      o.onclick = function () { selectOption(this); };
    });
    section.querySelectorAll('.question-block').forEach(function (b) {
      b.classList.remove('question-unanswered');
    });
    section.querySelectorAll('.answer-feedback').forEach(function (f) { f.classList.remove('show'); });
  });
  document.getElementById('result-total').classList.remove('show');
  var scrollEl = document.querySelector('.quiz-shell-scroll');
  if (scrollEl) scrollEl.scrollTo({ top: 0, behavior: 'smooth' });
}
```
