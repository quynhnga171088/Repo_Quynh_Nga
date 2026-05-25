---
name: generator-release-step
description: >
  Generate detailed release step documents for infra/devops teams. Use this skill whenever the user wants to:
  create release steps, write deployment procedures, generate release checklists, review existing release documents,
  create rollback plans, or document infrastructure changes for production releases.
  This includes any task involving: terraform apply procedures, ECS/EKS deployments, database migrations/upgrades,
  environment variable updates, CI/CD pipeline changes, cloud resource modifications (AWS/GCP/Azure),
  Kubernetes/Helm deployments, or any production infrastructure change that needs step-by-step documentation.
  Also trigger when the user mentions: "release step", "release procedure", "deployment steps", "rollback plan",
  "tài liệu release", "các bước release", "thao tác release", or provides a PR/code diff and asks for release documentation.
  Supports options: --gen (generate new release steps), --review (review existing release steps).
---

# Generator Release Step

Skill tạo tài liệu release step chi tiết cho team infra/devops. Output là file HTML standalone (mở trực tiếp trên browser) với nút Export Excel tích hợp.

## Khi nào dùng skill này

1. **Tạo release step từ context**: Người dùng mô tả các thay đổi cần thực hiện
2. **Tạo release step từ code/PR**: Người dùng cung cấp PR link hoặc code diff
3. **Review release step**: Người dùng cung cấp bản release step đã viết để review

Hỗ trợ đa ngôn ngữ (mặc định tiếng Việt, có thể thêm tiếng Nhật). Xem phần "Đa ngôn ngữ".

## Nguyên tắc làm việc (áp dụng cho mọi use case)

Đây là các nguyên tắc giao tiếp và làm việc mà skill PHẢI tuân thủ ở mọi use case — đừng bỏ qua bất kỳ điểm nào trước khi đi vào workflow cụ thể.

### 1. Luôn hỏi branch hiện tại

Trước khi bắt tay làm, hỏi người dùng branch đang làm việc (ví dụ: `main`, `develop`, `release/20260420`). Lý do: branch này dùng để làm base checkout cho **backup branch** (phần Backup IaC state). Nếu không hỏi, không thể viết chính xác lệnh `git checkout -b backup-YYYYMMDD <base-branch>` trong step backup.

Ví dụ câu hỏi: *"Branch hiện tại bạn đang làm việc là gì? Tôi cần thông tin này để viết bước backup branch chính xác."*

### 2. Đề nghị cung cấp context nguồn (không bắt buộc)

Advise người dùng cung cấp một hoặc nhiều trong các thứ sau để release step chính xác hơn — nhưng **đừng chặn workflow** nếu họ không có:

- Source code / PR link / code diff
- `terraform plan` output
- File helm values / k8s manifest thay đổi
- Screenshots console (nếu thao tác manual)

Ví dụ: *"Nếu bạn có PR link hoặc terraform plan output, gửi kèm sẽ giúp tôi viết step chính xác hơn. Không có cũng không sao, tôi sẽ hỏi thêm khi cần."*

### 3. Phân tích trước, hỏi lại khi chưa rõ — không tự giả định

Đọc và phân tích toàn bộ request của người dùng trước. Với mọi điểm chưa rõ, **hỏi lại** thay vì đoán. Không tự điền tên resource, không tự quyết định thứ tự, không tự chọn phương thức deploy nếu user chưa nói rõ.

Nếu có nhiều điểm cần hỏi, gộp thành 1 danh sách ngắn gọn trong 1 lần hỏi thay vì hỏi rải rác từng câu.

### 4. Tên resource đầy đủ — nếu thiếu, để trống và báo trước

Release step chỉ hữu ích khi tên resource chính xác. Quy tắc:

- **Luôn hỏi tên đầy đủ của resource** (ARN, service name, cluster name, DB identifier, bucket name, topic name, v.v.) trước khi viết
- Nếu người dùng không cung cấp: **để trống** hoặc dùng placeholder rõ ràng như `[TÊN_ECS_SERVICE]`, `[TÊN_RDS_INSTANCE]`
- **Thông báo ngay từ đầu** cho người dùng biết những chỗ đang để trống và yêu cầu họ điền sau
- Không bao giờ bịa tên resource dựa trên suy đoán

### 5. Mỗi resource khác nhau = step khác nhau

Không gộp nhiều thao tác trên nhiều resource khác nhau vào cùng 1 step, kể cả khi cùng loại thao tác. Lý do: người thực hiện cần checkpoint rõ ràng, và nếu một thao tác lỗi thì phải biết chính xác đang ở step nào.

Ví dụ **sai**: *"Step 5: Update ECS service s5-api, s5-worker, s5-scheduler"*
Ví dụ **đúng**: Step 5 = update s5-api, Step 6 = update s5-worker, Step 7 = update s5-scheduler. Có thể cùng `Step` name để nhóm nhưng mỗi thao tác là 1 dòng riêng với STT riêng, `overview` riêng, `action` riêng.

Ngoại lệ duy nhất: các thao tác trên CÙNG 1 resource (ví dụ: update 3 env vars cùng 1 ECS service) có thể gộp trong 1 step.

## Workflow tổng quan

### Bước đầu tiên: Nhận diện use case

Người dùng có thể chỉ định rõ mode qua option:
- **`--gen`**: Tạo release step mới (use case 1 hoặc 2, tùy input kèm theo)
- **`--review`**: Review release step đã có (use case 3)
- **Không có option**: AI tự nhận diện dựa trên bảng bên dưới

Khi không có option, xác định use case dựa trên input:

| Người dùng cung cấp | Use case | Hành động tiếp theo |
|---|---|---|
| PR link, code diff, hoặc yêu cầu "tạo release step từ PR/code" | **Use case 2** (từ code/PR) | Đọc diff, phân tích thay đổi, hỏi bổ sung |
| File release step đã viết (.html, .js, .md, .xlsx) hoặc yêu cầu "review/kiểm tra release step" | **Use case 3** (review) | Đọc file, kiểm tra theo checklist |
| Mô tả bằng lời các thay đổi cần thực hiện, hoặc yêu cầu chung "tạo release step" | **Use case 1** (từ context) | Thu thập thông tin, xây dựng step |

Nếu không rõ ràng (ví dụ: user gửi PR link nhưng nói "review giúp tôi"), hỏi một câu ngắn để xác nhận:
> "Bạn muốn tôi tạo release step mới từ PR này, hay review bản release step đã có?"

Khi dùng `--gen` kèm PR link → use case 2. Khi dùng `--gen` mà chỉ mô tả bằng lời → use case 1. Nếu cung cấp cả mô tả context lẫn PR link, ưu tiên use case 2 và bổ sung context mô tả vào quá trình thu thập thông tin.

### Use case 1: Tạo release step từ context

1. Thu thập thông tin từ người dùng (xem phần "Thu thập thông tin")
2. Xác định cloud provider và phương thức triển khai (manual / IaC / hybrid)
3. Sinh release step theo format chuẩn
4. Sinh rollback steps tương ứng
5. Confirm với người dùng, điều chỉnh nếu cần
6. Sau khi user confirm nội dung VN đã đúng, **hỏi có muốn tạo thêm bản JP không** (xem phần "Đa ngôn ngữ")

### Use case 2: Tạo release step từ code/PR

1. Đọc code diff hoặc PR
2. Phân tích các thay đổi infra (terraform files, helm charts, k8s manifests, cloudformation, etc.)
3. Hỏi người dùng bổ sung thông tin còn thiếu (PIC, ngày release, giờ bắt đầu, thông tin không có trong code)
4. Sinh release step + rollback steps
5. Confirm với người dùng
6. Sau khi user confirm nội dung VN đã đúng, **hỏi có muốn tạo thêm bản JP không** (xem phần "Đa ngôn ngữ")

### Use case 3: Review release step

1. Đọc bản release step hiện tại (nếu là file .html, đọc file .js data đi kèm)
2. Kiểm tra theo checklist review (xem phần "Review release step")
3. Đưa ra nhận xét và đề xuất chỉnh sửa cụ thể

---

## Thu thập thông tin

Trước khi viết, cần xác định rõ các thông tin sau. Hỏi người dùng nếu chưa có:

1. **Branch hiện tại của terraform/helm repo**: Dùng làm base cho backup branch (BẮT BUỘC — xem nguyên tắc #1)
2. **Cloud provider**: AWS / GCP / Azure
3. **Phương thức triển khai**: Manual (console/CLI) / IaC (Terraform/CloudFormation/Pulumi) / Hybrid
4. **Container orchestration**: ECS / EKS (Kubernetes) / GKE / AKS / None
5. **Danh sách thay đổi**: Mỗi thay đổi cần biết:
   - Resource gì (RDS, ECS Service, SQS, IAM, ...) và **tên đầy đủ** (xem nguyên tắc #4)
   - Thay đổi gì (tạo mới / sửa / xóa)
   - Giá trị trước và sau (nếu là sửa)
6. **PIC (Person In Charge)**: Ai thực hiện từng nhóm thao tác
7. **Ngày release dự kiến**: Để điền vào các cột thời gian
8. **Giờ bắt đầu release**: Mặc định 09:00 nếu không cung cấp
9. **Có cần deploy code không**: Nếu có, cần biết repo, branch, PR link
10. **Có migration/script cần chạy không**

Hỏi gộp trong 1 lượt nếu có nhiều điểm thiếu — không hỏi từng câu rời rạc.

### Giờ bắt đầu release và estimate thời gian

Hỏi người dùng: "Giờ bắt đầu release dự kiến là mấy giờ?" Nếu người dùng không cung cấp, dùng mặc định **09:00**.

Từ giờ bắt đầu, estimate thời gian `planned_start` và `planned_end` cho từng step dựa trên hướng dẫn sau:

| Loại thao tác | Thời gian ước tính |
|---|---|
| Backup env (Secret Manager + printenv) | 10-15 phút |
| Backup terraform branch | 5 phút |
| Backup DB snapshot | 10-15 phút (nhỏ), 20-30 phút (lớn) |
| Terraform plan + compare | 10-15 phút |
| Terraform apply (đơn giản, < 20 resources) | 10-15 phút |
| Terraform apply (phức tạp, > 20 resources) | 20-30 phút |
| Terraform state migration | 30-60 phút |
| Thay đổi manual đơn lẻ trên console | 5-10 phút |
| Tạo resource mới (ECS service, SQS, etc.) | 10-15 phút mỗi resource |
| Update ENV / Secrets Manager | 5-10 phút |
| Deploy code (merge + pipeline) | 15-30 phút |
| Theo dõi CodePipeline / CI-CD | 10-20 phút mỗi server |
| Run migration | 5-15 phút |
| Verify đơn giản (kiểm tra 1 resource) | 5 phút |
| Verify phức tạp (so sánh env, test scale) | 15-20 phút |
| Upgrade DB version (Aurora/RDS minor) | 15-20 phút |
| Upgrade DB version (Aurora/RDS major) | 30-60 phút |
| Kiểm tra sau upgrade DB | 10 phút |

Các step cùng nhóm (cùng "Step" name) có thể chạy song song nếu không phụ thuộc nhau — lúc đó `planned_start` giống nhau. Các step khác nhóm thì nối tiếp: `planned_start` step sau = `planned_end` step trước.

Thời gian chỉ là ước tính, đừng quá chính xác. Làm tròn đến 5 phút.

### Quy tắc về thông tin bảo mật
- Không bao giờ điền giá trị secret/password/token vào file release step
- Với các ENV key-value: chỉ ghi "Kiểm tra đã update đủ các env theo file ENV riêng" hoặc tương tự
- Nhắc người dùng tạo file ENV riêng để lưu các giá trị bảo mật

---

## Output format

Output gộp trong 1 folder riêng cho mỗi release. Cấu trúc **phẳng** — HTML và xlsx.full.min.js chỉ 1 bản, data file đặt tên theo ngôn ngữ. File ngôn ngữ phụ (JP…) chỉ tạo khi người dùng yêu cầu.

```
generator-release-step/                           <-- Folder tổng (tạo nếu chưa có)
└── release-[project]-[YYYYMMDD]/                 <-- Folder cho từng release
    ├── release-steps.html                        <-- Viewer (1 file, hỗ trợ switch ngôn ngữ)
    ├── release-steps-data.js                     <-- Data VN (mặc định, luôn có)
    ├── release-steps-data-ja.js                  <-- Data JP (optional, chỉ khi user yêu cầu)
    └── xlsx.full.min.js                          <-- SheetJS lib (copy từ references/)
```

Quy tắc đặt tên folder: `release-[tên-project-viết-thường-nối-gạch]-[YYYYMMDD]`
- Ví dụ: `release-tofas-egypt-20260415`, `release-payment-service-20260301`
- Tên project lấy từ thông tin người dùng cung cấp, viết thường, khoảng trắng thay bằng `-`

Quy tắc đặt tên data file theo ngôn ngữ:
- VN (mặc định): `release-steps-data.js` — không có suffix
- Ngôn ngữ khác: `release-steps-data-[langcode].js` — ví dụ `release-steps-data-ja.js` cho tiếng Nhật

### Nguyên tắc tách data và viewer

- **`release-steps-data.js`** (và các file `*-data-*.js`): Chứa toàn bộ data, metadata (`RELEASE_CONFIG`) và bộ labels i18n. Đây là file AI đọc và sửa khi cần update — cũng là nơi duy nhất chứa nội dung của release (tên project, ngày release, PIC, method, các step).
- **`release-steps.html`**: Template viewer **hoàn toàn generic** — không chứa thông tin riêng của release nào. Load data qua thẻ `<script>` động dựa vào URL param `?lang=xx`, rồi populate header từ `window.RELEASE_CONFIG`. File này **không cần sửa** trừ khi thêm ngôn ngữ mới (lúc đó chỉ sửa mảng `AVAILABLE_LANGUAGES`).
- Khi người dùng yêu cầu review hoặc update release step đã tạo, AI **chỉ đọc file `.js`** — không đọc file `.html` (trừ trường hợp cần thêm ngôn ngữ mới vào `AVAILABLE_LANGUAGES`).
- Người dùng mở `release-steps.html` để xem VN (mặc định). Để xem JP: click nút ngôn ngữ trong header, hoặc truy cập `release-steps.html?lang=ja`.

### Cách tạo output (lần đầu, chỉ VN)

Template HTML là generic — không cần thay placeholder. Chỉ cần copy nguyên si và viết file data.

1. Tạo folder output: `generator-release-step/release-[project]-[YYYYMMDD]/`
2. Copy template HTML sang folder output (dùng `cp` qua Bash, không Read+Write):
   ```bash
   cp references/release-step-template.html <output-folder>/release-steps.html
   ```
3. Xây dựng data + `RELEASE_CONFIG` (metadata) + object `I18N` tiếng Việt (optional cho VN), ghi file `release-steps-data.js` vào folder output (xem format bên dưới)
4. Copy file `references/xlsx.full.min.js` vào folder output (cũng dùng `cp`)

### Data file format (`release-steps-data.js`)

File data phải gán vào `window.*` để HTML viewer đọc được. Gồm 4 phần:

- **`RELEASE_CONFIG`** — metadata (project, release_date, pic_list, method). HTML đọc để populate tiêu đề trang + header row. BẮT BUỘC có.
- **`I18N`** — labels UI theo ngôn ngữ. File VN có thể bỏ trống (viewer dùng default VN); file JP/EN/... BẮT BUỘC có đầy đủ.
- **`releaseData`** — array các step release.
- **`rollbackData`** — array các step rollback.

```javascript
// Release Steps Data - VN
// Project: [Tên dự án]
// Release Date: [YYYY-MM-DD]
// Generated: [timestamp]

window.RELEASE_CONFIG = {
  project: "TOFAS Tokyo",
  release_date: "2025-08-25",
  pic_list: "AnhVQ, ChienTT",
  method: "Hybrid (Terraform + Manual)"
};

// Labels UI — HTML viewer merge object này với default (VN) để hiển thị.
// File VN có thể bỏ trống object này (sẽ dùng default). File JP/EN BẮT BUỘC phải có.
window.I18N = {
  page_title: "Release Steps",
  label_release_date: "Ngày release:",
  label_pic: "PIC:",
  label_method: "Phương thức:",
  btn_export: "Xuất Excel",
  btn_show_rollback: "Hiện Rollback Steps",
  btn_hide_rollback: "Ẩn Rollback Steps",
  section_release: "Release Steps",
  section_rollback: "Rollback Steps",
  badge_steps_suffix: "bước",
  col_stt: "STT",
  col_step: "Step",
  col_overview: "Overview",
  col_action: "Thao tác",
  col_pic: "PIC",
  col_planned_start: "Dự kiến bắt đầu",
  col_actual_start: "Thực tế bắt đầu",
  col_planned_end: "Dự kiến hoàn thành",
  col_actual_end: "Thực tế hoàn thành",
  label_before: "[Hiện tại]",
  label_after: "[Update]",
  excel_release_header: "RELEASE STEPS",
  excel_rollback_header: "ROLLBACK STEPS",
  excel_sheet_name: "Release Steps"
};

window.releaseData = [
  {
    stt: 1,
    step: "Backup env tofas-tokyo",
    overview: "Backup env tofas-s5-api",
    action: "1. Lưu lại env của secret manager tofas-prod-s5-api dạng json vào file\n   `tofas_s5_api_sm_env_prod_release_25082025_old.json`\n2. Exec vào ECS task tofas-prod-s5-api và gõ lệnh `printenv`,\n   lưu lại vào file `tofas_s5_api_prod_release_25082025_old`",
    pic: "AnhVQ",
    planned_start: "2025-08-25 09:00",
    actual_start: "",
    planned_end: "2025-08-25 09:15",
    actual_end: ""
  }
  // ... more steps
];

window.rollbackData = [
  // ... rollback steps
];
```

Lưu ý:
- Dùng `window.xxx` (không dùng `const`) để khi viewer load file khác (ví dụ switch ngôn ngữ), biến bị ghi đè đúng cách
- File VN có thể bỏ `window.I18N` (viewer sẽ dùng default VN)
- File ngôn ngữ khác (JP, EN...) BẮT BUỘC phải có `window.I18N` đầy đủ tất cả key

### Quy tắc format cột "action"

Cột action hỗ trợ các format đặc biệt trong chuỗi text:
- **Xuống dòng**: dùng `\n`
- **Đánh số bước**: viết `1. `, `2. `, `3. ` ... ở đầu dòng
- **Giá trị trước/sau**: dùng `[BEFORE]` và `[AFTER]` (sẽ hiển thị thành "Hiện tại" và "Update" với màu đỏ/xanh)
- **Config block**: các dòng bắt đầu bằng `- ` hoặc `+) ` sẽ tự động wrap trong khung config
- **Inline code**: dùng backtick `` `command` `` (hiển thị monospace)

Ví dụ:
```
"1. Truy cập ECS Console > Clusters > tofas-prod-worker-cluster\n2. Chọn tab Services, tìm tofas-prod-s5-ecs-api\n3. Chọn Update và điều chỉnh:\n\n[BEFORE]\n- Min task = 10\n- Max task = 150\n\n[AFTER]\n- Min task = 6\n- Max task = 150 (không thay đổi)"
```

### Tính năng của file HTML output

- **Xem trực tiếp trên browser**: Mở file HTML, thấy bảng release steps đẹp, dễ đọc
- **Thao tác multi-line**: Mỗi ô có thể chứa nhiều dòng, đánh số rõ ràng
- **Config before/after**: Hiển thị rõ ràng với màu sắc
- **Export Excel**: Nút "Export to Excel" xuất file `.xlsx` giữ nguyên nội dung multi-line
- **Rollback ẩn/hiện**: Nút toggle hiện/ẩn phần rollback
- **In được**: CSS print-friendly

### Quy tắc viết cột "Thao tác"

Cột thao tác là phần quan trọng nhất - phải đủ chi tiết để người không tham gia dự án (nhưng có kiến thức base về infra/devops) có thể thực hiện được. Cụ thể:

- **Navigation path đầy đủ**: Ghi rõ đường dẫn trên console. Ví dụ: "Truy cập ECS Console > Clusters > [cluster-name] > tab Services > tìm [service-name]"
- **Giá trị trước và sau**: Khi thay đổi config, dùng marker `[BEFORE]` và `[AFTER]` trong data.js. Viewer sẽ render thành `[Hiện tại]` / `[Update]` (hoặc `[現在]` / `[変更後]` cho JP), kèm màu đỏ/xanh. Ví dụ nội dung text trong field `action`:
  ```
  [BEFORE]
  - Min task = 10
  - Max task = 150

  [AFTER]
  - Min task = 6
  - Max task = 150 (không thay đổi)
  ```
- **Câu lệnh chính xác**: Nếu dùng CLI/script, ghi nguyên câu lệnh. Ví dụ:
  ```
  aws ecs execute-command --profile [PROFILE] --region [REGION] --cluster [CLUSTER] --task TASK_ID --command "/bin/bash" --interactive
  ```
- **Config chi tiết**: Ghi đầy đủ config cần kiểm tra. Ví dụ cho SQS:
  ```
  - Message retention: 1 day
  - Visibility timeout: 43200 seconds (12 giờ)
  - Max message size: 262144 bytes (256 KB)
  ```

### Quy tắc viết cột "Step" và "Overview"

- **Step**: Tên nhóm thao tác chung. Nhiều dòng có thể cùng Step
- **Overview**: Mô tả cụ thể hơn cho từng thao tác con trong nhóm Step
- Nếu Step và Overview cùng một ý: giữ nội dung giống nhau ở cả 2 cột, không bỏ trống

---

## Trình tự chuẩn của Release Steps

Dưới đây là trình tự logic mà hầu hết release step nên tuân theo. Không phải lần nào cũng dùng hết, chỉ áp dụng các phần liên quan:

### Phase 1: Chuẩn bị & Backup
1. **Backup environment**: Lưu lại env hiện tại (Secret Manager, env vars từ running container, etc.)
2. **Backup IaC state**: Tạo branch backup cho terraform/helm repo
3. **Backup database**: Tạo snapshot trước khi thay đổi DB (nếu có)
4. **Backup resource state**: Lưu lại state hiện tại của resource sẽ thay đổi (IAM policies, S3 settings, etc.)

### Phase 2: Thay đổi Infrastructure
5. **Chạy IaC** (Terraform/CloudFormation/Helm): Xem quy trình Terraform bên dưới
6. **Thay đổi manual** (nếu có): Các resource không quản lý bằng IaC
7. **Verify infrastructure changes**: Kiểm tra từng resource đã thay đổi đúng

### Phase 3: Update Application
8. **Update ENV/Secrets**: Cập nhật Secret Manager, ConfigMap, etc.
9. **Deploy code**: Merge PR, theo dõi pipeline
10. **Run migration/scripts**: Nếu cần

### Phase 4: Kiểm tra
11. **Verify ENV**: So sánh env trước/sau, đảm bảo chỉ khác ở các giá trị mới
12. **Verify application**: Kiểm tra app hoạt động bình thường
13. **Verify monitoring**: Kiểm tra alarm, logging, metrics hoạt động

### Phase 5: Rollback (phần riêng)
- Viết rollback step cho MỌI thay đổi ở Phase 2-3, theo thứ tự ngược lại

---

## Quy trình Terraform chuẩn

Khi release step có liên quan đến Terraform, tuân thủ quy trình sau:

### Trước ngày release (nhắc người dùng)
- Code terraform đã được review và approve
- `terraform plan` output đã được review và approve
- Nếu có skill `terraform-pr-reviewer`, nhắc người dùng sử dụng. Nếu không, nhắc người dùng tự review terraform plan output trước ngày release

### Hôm release - viết thành các step:
1. **Chạy terraform plan**:
   ```
   terraform plan --parallelism 100 -out ./.terraform/terraform.plan -var-file variables.tfvars -no-color > terraform-plan-output
   ```
2. **So sánh plan output**: So sánh terraform-plan-output với bản plan đã được review approve trước đó. Đảm bảo các thay đổi trùng khớp.
3. **Chạy terraform apply**:
   ```
   terraform apply "./.terraform/terraform.plan"
   ```
4. **Verify**: Kiểm tra trên console/CLI rằng các resource đã thay đổi đúng (các step verify cụ thể)

### Trường hợp Terraform upgrade version / state migration
Khi upgrade terraform provider version dẫn đến resource bị recreate thay vì update:
1. Backup state hiện tại (IAM policies, S3 settings, etc. bằng script)
2. Chạy `terraform plan` để xem state nào thay đổi
3. Tạo và chạy file `state-move-commands.sh` chứa các lệnh `terraform state mv`
4. Chạy lại `terraform plan` để xác nhận chỉ còn update, không còn recreate
5. Chạy `terraform apply`
6. Chạy lại script backup để lấy state sau upgrade
7. So sánh state trước/sau để đảm bảo nội dung không thay đổi

---

## Quy tắc viết Rollback Steps

Rollback steps phải chi tiết tương đương release steps. Nguyên tắc:

- **Thứ tự ngược**: Rollback theo thứ tự ngược lại với release
- **Revert migrate**: Nếu có migration, viết rõ lệnh rollback (`migrate_rollback.sh`, `php artisan migrate:rollback`, etc.)
- **Revert ENV**: Restore lại giá trị env từ file backup đã lưu ở phase 1
- **Revert deploy code**: Deploy lại từ backup branch đã tạo
- **Revert infra**: 
  - Terraform: `terraform apply` từ backup branch
  - Manual: Revert lại giá trị cũ (ghi rõ giá trị)
  - DB: Restore từ snapshot (nếu cần)
- **Verify sau rollback**: Mỗi bước revert đều cần step verify tương ứng

---

## Quy tắc viết cho từng loại thao tác

Mỗi thao tác thêm/sửa/xóa resource đều phải có step verify đi kèm. Dưới đây là pattern cho các thao tác phổ biến.

Đọc file reference tương ứng với cloud provider để xem chi tiết pattern cho từng loại resource:
- **AWS**: Đọc `references/aws-patterns.md`
- **GCP**: Đọc `references/gcp-patterns.md`
- **Azure**: Đọc `references/azure-patterns.md`
- **Kubernetes/Helm**: Đọc `references/k8s-patterns.md`

---

## Cập nhật release step đã có

Khi người dùng yêu cầu thêm/sửa/xóa step vào release step đã tạo, AI chỉ đọc và sửa file `.js` (không đọc HTML). Tuy nhiên mỗi thay đổi đều **lan truyền** sang các phần khác — bỏ sót sẽ khiến document không nhất quán.

### Checklist khi update

Mỗi lần update, phải rà soát lại **tất cả** các điểm sau:

1. **STT**: Nếu chèn step vào giữa, **tất cả STT sau đó phải shift lên 1**. Đừng để STT trùng hoặc nhảy cóc.
2. **planned_start / planned_end**: Nếu step mới chiếm N phút, thời gian các step sau phải đẩy lùi N phút tương ứng. Giữ logic nối tiếp (step sau bắt đầu khi step trước kết thúc), trừ khi step thuộc cùng nhóm chạy song song.
3. **Rollback tương ứng**: Step release mới PHẢI có rollback tương ứng ở phần `window.rollbackData`, theo thứ tự ngược. Nếu xóa step release, xóa luôn rollback tương ứng.
4. **Rollback STT và thời gian**: Sau khi thay đổi rollback, cũng phải shift STT rollback và planned times tương tự.
5. **Các ngôn ngữ khác**: Nếu file JP (hoặc ngôn ngữ khác) đã tồn tại, tuân thủ quy tắc ở phần "Đa ngôn ngữ" để đồng bộ.

### Quy trình update

1. Đọc file `release-steps-data.js` (VN) — là source of truth
2. Xác định đúng vị trí chèn/sửa/xóa dựa trên mô tả của user
3. Áp dụng thay đổi và chạy **toàn bộ** checklist phía trên
4. Báo lại cho user: đã thêm step nào, STT các step đã shift từ đâu đến đâu, thời gian đã đẩy lùi bao nhiêu, rollback tương ứng đã bổ sung/xóa, và hỏi có muốn đồng bộ sang ngôn ngữ khác không (nếu có)

### Ví dụ lan truyền

> User: "Thêm 1 step kiểm tra CloudWatch Alarm sau khi apply terraform"

AI cần:
- Chèn step mới vào vị trí phù hợp (sau apply terraform, trước step tiếp theo)
- Shift STT các step sau đó +1
- Đẩy lùi `planned_start`/`planned_end` các step sau đó thêm ~5 phút (hoặc thời lượng estimate của step mới)
- Thêm step rollback tương ứng (nếu có thao tác cần revert) vào `rollbackData`
- Shift STT + thời gian của rollback tương ứng
- Nếu có file JP, hỏi user có muốn cập nhật JP ngay không

---

## Đa ngôn ngữ (VN / JP)

Skill mặc định tạo file tiếng Việt. Sau khi hoàn thành VN, **luôn hỏi người dùng** có muốn tạo phiên bản tiếng Nhật không. Các ngôn ngữ khác (EN, ZH…) theo cùng nguyên tắc.

### Khi nào và cách hỏi

Sau khi đã ghi xong 3 file VN và confirm với user rằng nội dung đúng:

> "Bạn có muốn tôi tạo thêm phiên bản tiếng Nhật (JP) của release step này không? Nếu có, tôi sẽ dịch từ bản VN đã confirm (nhanh và nhất quán hơn tạo mới)."

Không tự động tạo JP. Chỉ tạo khi user xác nhận.

### Cách tạo bản JP (chiến lược dịch từ VN)

**Nguyên tắc cốt lõi**: Dịch trực tiếp từ `release-steps-data.js` (VN) — **KHÔNG generate lại từ đầu**. Điều này tiết kiệm token/context và đảm bảo hai bản đồng nhất về STT, thời gian, PIC, thứ tự.

Các bước:

1. **Đọc** `release-steps-data.js` (VN) — đã có sẵn, không cần đọc lại SKILL.md hay references
2. **Tạo file `release-steps-data-ja.js`** bằng cách copy nội dung VN file, chỉ đổi các phần text (chi tiết bên dưới)
3. **Cập nhật** `release-steps.html` — thêm JP vào mảng `AVAILABLE_LANGUAGES` bằng Edit tool (tìm marker `// AVAILABLE_LANGUAGES_INSERT`). Dùng mã ISO 639-1 (`vi`, `ja`, `en`, `zh`, `ko`...) — không dùng mã quốc gia (`vn`):
   ```
   Old:
       { code: "vi", name: "Tiếng Việt", file: "release-steps-data.js" }
       // AVAILABLE_LANGUAGES_INSERT

   New:
       { code: "vi", name: "Tiếng Việt", file: "release-steps-data.js" },
       { code: "ja", name: "日本語", file: "release-steps-data-ja.js" }
       // AVAILABLE_LANGUAGES_INSERT
   ```
4. Báo cho user: file JP đã tạo, mở `release-steps.html` và click nút `日本語` để xem

### Những gì GIỮ NGUYÊN trong file JP (copy y nguyên từ VN)

Không dịch, không đổi định dạng:

- `stt` (số thứ tự)
- `planned_start`, `planned_end`, `actual_start`, `actual_end` (thời gian)
- `pic` (tên PIC)
- Tên resource, service, cluster, ARN: `tofas-prod-s5-api`, `arn:aws:...`, `my-cluster` v.v.
- Câu lệnh CLI: `aws ecs execute-command ...`, `terraform apply ...`, `kubectl get pods`
- URL và endpoint
- Tên file và đường dẫn: `variables.tfvars`, `/etc/config.yml`
- Config key-value: `min_capacity = 10`, `visibility_timeout = 43200`
- Markers đặc biệt: `[BEFORE]`, `[AFTER]`, backtick inline code
- `RELEASE_CONFIG.project`, `RELEASE_CONFIG.release_date`, `RELEASE_CONFIG.pic_list`

### Những gì CẦN DỊCH sang JP

- Các field text trong mỗi step: `step`, `overview`, `action` — phần mô tả tiếng Việt
- `RELEASE_CONFIG.method` nếu là chuỗi tiếng Việt (ví dụ "Kết hợp Terraform và Manual" → dịch; còn "Hybrid" → giữ nguyên)
- **Toàn bộ `window.I18N`** — phải điền đầy đủ các key với bản dịch JP (xem mẫu bên dưới)

### Quy tắc format tiếng Nhật

Đây là các quy ước khi dịch sang JP, bắt buộc tuân thủ:

1. **Động từ dùng thể ngắn (普通形)**, không dùng ます形:
   - `確認します` → `確認する`
   - `実行します` → `実行する`
   - `バックアップします` → `バックアップする`
   - Lý do: release step là tài liệu thao tác, thể ngắn gọn và trung tính, giống style danh sách bullet/checklist của tiếng Nhật kỹ thuật.

2. **Đảo vị trí danh từ khi gắn tên riêng**: Tiếng Việt thường viết "[loại] [tên]", tiếng Nhật viết "「[tên]」[loại]":
   - VN: `branch release-20042026-nlb-v2` → JP: `「release-20042026-nlb-v2」ブランチ`
   - VN: `service tofas-prod-s5-api` → JP: `「tofas-prod-s5-api」サービス`
   - VN: `cluster tofas-prod-worker-cluster` → JP: `「tofas-prod-worker-cluster」クラスター`
   - VN: `file variables.tfvars` → JP: `「variables.tfvars」ファイル`
   - Dùng cặp ngoặc vuông Nhật `「」` bao tên riêng, **không dùng quote `"`**

3. **Bullet point dùng `・` thay cho `-`**:
   - VN: `- Min task = 10` → JP: `・Min task = 10`
   - Áp dụng cho config block bên trong action. Không thay các dấu `-` trong tên resource hoặc câu lệnh (ví dụ `tofas-prod-s5-api` giữ nguyên).

4. **Đánh số bước**: vẫn dùng `1. `, `2. `, `3. ` như bản VN — không đổi sang `①②③` hay cách khác.

5. **Thuật ngữ kỹ thuật**: giữ nguyên tên tiếng Anh nếu phổ biến trong ngành (ECS, RDS, Terraform, backup, deploy, rollback, verify), hoặc viết katakana nếu tự nhiên hơn (`バックアップ`, `デプロイ`, `ロールバック`, `ベリファイ`).

### Mẫu `window.I18N` tiếng Nhật

```javascript
window.I18N = {
  html_lang: "ja",
  page_title: "リリース手順",
  label_release_date: "リリース日:",
  label_pic: "担当者:",
  label_method: "方式:",
  btn_export: "Excel出力",
  btn_show_rollback: "ロールバック手順を表示",
  btn_hide_rollback: "ロールバック手順を非表示",
  section_release: "リリース手順",
  section_rollback: "ロールバック手順",
  badge_steps_suffix: "ステップ",
  col_stt: "No.",
  col_step: "ステップ",
  col_overview: "概要",
  col_action: "作業内容",
  col_pic: "担当者",
  col_planned_start: "予定開始",
  col_actual_start: "実績開始",
  col_planned_end: "予定完了",
  col_actual_end: "実績完了",
  label_before: "[現在]",
  label_after: "[変更後]",
  excel_release_header: "リリース手順",
  excel_rollback_header: "ロールバック手順",
  excel_sheet_name: "Release Steps"
};
```

### Update flow khi đã có đa ngôn ngữ

Khi user yêu cầu sửa release step và folder đã có cả VN + JP (hoặc các ngôn ngữ khác):

1. Áp dụng thay đổi vào VN trước (source of truth)
2. Chạy toàn bộ checklist ở phần "Cập nhật release step đã có" cho file VN
3. **Hỏi user**: "VN đã cập nhật xong. Bạn có muốn tôi đồng bộ thay đổi này sang JP luôn không?"
4. Nếu YES: dịch các phần đã thay đổi sang JP, apply vào `release-steps-data-ja.js` với cùng STT/thời gian
5. Nếu NO: cảnh báo ngắn "File JP hiện không đồng bộ với VN — nhớ cập nhật sau"

Không tự động đồng bộ — user có thể đang nháp VN và chưa muốn dịch ngay.

---

## Review release step (Use case 3 / `--review`)

### Cách đọc input

Khi người dùng cung cấp release step để review, xác định loại file và đọc đúng:

| Loại file | Cách đọc |
|---|---|
| `.js` (release-steps-data.js) | Đọc trực tiếp — đây là data file, dễ phân tích nhất |
| `.html` (release-steps.html) | Template viewer là generic — không chứa data. Luôn tìm file `release-steps-data*.js` cùng thư mục và đọc file `.js` đó. Nếu thiếu file `.js`, báo user và dừng review |
| `.md` (markdown) | Đọc trực tiếp, phân tích cấu trúc bảng/danh sách |
| `.xlsx` (Excel) | Đọc file, phân tích các cột theo format chuẩn (STT, Step, Overview, Thao tác, PIC, thời gian) |
| Nội dung paste trực tiếp | Phân tích text người dùng paste vào conversation |

### Quy trình review

1. **Đọc và hiểu**: Đọc toàn bộ release step, liệt kê danh sách tất cả resource/service bị thay đổi
2. **Kiểm tra từng tiêu chí** trong checklist bên dưới
3. **Phân loại vấn đề** theo severity
4. **Đề xuất sửa cụ thể**: Không chỉ nói "thiếu verify" mà viết luôn step verify cần bổ sung

### Checklist review

Kiểm tra lần lượt 10 tiêu chí, mỗi tiêu chí đánh giá PASS / FAIL:

| # | Tiêu chí | Kiểm tra gì | Severity nếu FAIL |
|---|---|---|---|
| 1 | **Đủ backup** | Mọi resource/env/DB sẽ thay đổi đều có step backup trước | CRITICAL |
| 2 | **Đủ chi tiết thao tác** | Navigation path đầy đủ, giá trị trước/sau rõ ràng, câu lệnh chính xác | HIGH |
| 3 | **Đủ verify** | Mọi thay đổi (tạo/sửa/xóa resource) đều có step kiểm tra sau | CRITICAL |
| 4 | **Đủ rollback** | Mọi thay đổi ở release đều có rollback step tương ứng, chi tiết tương đương | CRITICAL |
| 5 | **Terraform flow đúng** | Nếu có terraform: plan đã review trước → plan lại hôm release → compare với bản đã review → apply → verify | HIGH |
| 6 | **Không chứa secret** | Không có password, token, secret key trong file. Chỉ tham chiếu "theo file ENV riêng" | CRITICAL |
| 7 | **Tên resource rõ ràng** | Đã điền tên cụ thể hoặc có placeholder dạng `[TÊN_RESOURCE]` — không bỏ trống | MEDIUM |
| 8 | **Thứ tự hợp lý** | Tuân theo: Backup → Infra changes → App deploy → Verify. Không thay đổi trước khi backup | HIGH |
| 9 | **PIC đã gán** | Mỗi step đều có PIC, không bỏ trống | MEDIUM |
| 10 | **Thời gian hợp lý** | Thời gian dự kiến phù hợp với độ phức tạp, không có gap hoặc overlap bất thường | LOW |

### Severity levels

- **CRITICAL**: Thiếu sót có thể gây mất dữ liệu hoặc không rollback được. Bắt buộc sửa trước khi release.
- **HIGH**: Thiếu sót khiến người thực hiện có thể làm sai hoặc thiếu bước quan trọng. Nên sửa.
- **MEDIUM**: Thiếu thông tin nhưng người thực hiện có thể tự bổ sung. Khuyến khích sửa.
- **LOW**: Vấn đề nhỏ về format, thời gian. Tùy chọn sửa.

### Output format khi review

```
## Kết quả review

### Tổng quan
- Tổng số steps: X release + Y rollback
- Vấn đề tìm thấy: Z (A critical, B high, C medium, D low)
- Đánh giá chung: [Sẵn sàng release / Cần chỉnh sửa trước khi release / Cần viết lại đáng kể]

### Danh sách resource thay đổi
- [RESOURCE_1]: [tạo/sửa/xóa] — backup: [có/THIẾU], verify: [có/THIẾU], rollback: [có/THIẾU]
- [RESOURCE_2]: ...

### Chi tiết vấn đề

#### CRITICAL
1. [THIẾU BACKUP] Step N "[tên step]": Thay đổi [resource] nhưng không có backup trước đó
   → Bổ sung: [viết cụ thể step backup cần thêm]

2. [THIẾU ROLLBACK] Step N "[tên step]": Không có rollback tương ứng
   → Bổ sung: [viết cụ thể step rollback cần thêm]

#### HIGH
3. [THIẾU CHI TIẾT] Step N "[tên step]": Chỉ ghi "thay đổi config" mà không ghi giá trị trước/sau
   → Sửa thành: [viết lại nội dung thao tác chi tiết hơn]

#### MEDIUM
4. [THIẾU PIC] Step N-M: Không có PIC

### Các step cần bổ sung
[Viết đầy đủ các step mới cần thêm vào, theo đúng format data — sẵn sàng để người dùng copy vào file .js]
```

Điểm quan trọng: phần "Các step cần bổ sung" phải viết sẵn nội dung step hoàn chỉnh (stt, step, overview, action, pic) để người dùng có thể copy-paste trực tiếp vào file `.js`, không chỉ nhận xét chung chung.

---

## Lưu ý quan trọng

- Ngôn ngữ mặc định: Tiếng Việt (có thể mix thuật ngữ tiếng Anh cho các tên kỹ thuật). Tiếng Nhật chỉ tạo khi user yêu cầu — xem "Đa ngôn ngữ"
- Khi người dùng cung cấp tên resource cụ thể, confirm trước khi điền vào document
- Luôn nhắc người dùng hoàn thành terraform review trước ngày release nếu có terraform steps
- File ENV chứa giá trị bảo mật phải được tạo riêng, không điền trong release step
- Khi update release step đã có: LUÔN rà soát STT / thời gian / rollback / ngôn ngữ khác — xem "Cập nhật release step đã có"
