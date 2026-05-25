---
name: terraform-pr-reviewer
description: >
  Review Terraform PR code changes and terraform plan output. Supports three modes: full review
  (cross-check git diff against plan + code review + summary), review-only (just code review from
  git diff), and summary-only (just terraform plan summary). Use this skill whenever the user
  mentions reviewing a terraform PR, checking terraform plan output, cross-checking terraform
  changes, comparing code diff with plan, summarizing terraform plan, or wants to generate a
  terraform change summary report. Also trigger when the user provides branch names and terraform
  plan files for review, asks about the impact/risk of terraform changes before applying, says
  things like "check xem plan này có đúng không", "review PR terraform", "so sánh code với plan",
  "tóm tắt plan terraform", "summary plan", or wants to know if a terraform apply is safe.
---

# Terraform PR Reviewer

Review Terraform pull requests with three flexible modes:

| Mode | What it does | Output |
|---|---|---|
| **full** | Cross-check git diff vs terraform plan + code review + summary | `review-{TICKET}.md` + `summary-{TICKET}.md` |
| **review-only** | Code quality, security, best practices, impact assessment from git diff | `review-{TICKET}.md` |
| **summary-only** | Structured summary of terraform plan changes | `summary-{TICKET}.md` |

This skill exists because reviewing terraform changes manually is error-prone — it's easy to miss discrepancies between what the code says and what terraform actually plans to do. Automating the cross-check catches issues like wrong diff direction, state drift, and unintended destroys before they hit production.

### Core principle: Attribute-level detail

The output files are the ONLY documents that reviewers and the Japanese team will read. They will NOT have access to the raw diff or plan output. So every change must be documented at the **attribute level** — showing the specific values that changed (old → new), the actual configuration of new resources, and concrete code snippets from the diff.

A summary that just says "cập nhật expression mới" or "thay đổi configuration" is nearly useless. The reader needs to see the actual expression, the actual threshold value, the actual scaling adjustment — the specific values that terraform will apply. If the reader cannot verify correctness just by reading your output, the output is not detailed enough.

---

## Step 1: Collect inputs from the user

### 1a. Determine the mode

The user can pre-select a mode by adding a flag to their prompt:
- `--full` → full mode
- `--review-only` → review-only mode
- `--summary-only` → summary-only mode

Example: `/terraform-pr-reviewer --full review terraform plan TOFAS-123`

If a valid flag is present, use that mode and skip the mode selection question.

If no flag is present, always ask the user to choose — never auto-select based on context or input:

> Bạn muốn chạy mode nào?
> 1. **full** — Review code + cross-check plan + tạo summary (cần cả git diff và plan file)
> 2. **review-only** — Chỉ review code quality, security, best practices từ git diff (không cần plan file)
> 3. **summary-only** — Chỉ tóm tắt terraform plan thành báo cáo (không cần branch/diff)

Do not proceed until the user has explicitly selected a mode.

### 1b. Auto-detect PR branch (for full and review-only modes)

If the user doesn't specify the PR branch, auto-detect it by running:
```bash
git branch --show-current
```
Use the result as the default PR branch. Tell the user: "Tôi detect branch hiện tại là `{branch}`, sẽ dùng làm PR branch nhé."

### 1c. Gather remaining inputs

Check what info the user has already provided. For any missing required fields, reply with a ready-to-copy prompt template that the user can fill in and send back directly. The template varies by mode.

**Required inputs by mode:**

| Input | full | review-only | summary-only | Auto-detect |
|---|---|---|---|---|
| PR branch (source) | Yes | Yes | — | Current git branch |
| Target branch (base) | Yes | Yes | — | No — always leave blank |
| Terraform folder to diff | Yes | Yes | — | No |
| Terraform plan output file path | Yes | — | Yes | No |
| Ticket ID (for output filenames) | Yes | Yes | Yes | Extract from branch name |
| Project name | Yes | — | Yes | No — always leave blank |
| Region | Yes | — | Yes | No |
| PR URL (optional) | Optional | Optional | Optional | No |

**Example reply for full mode when info is missing:**

> Tôi cần thêm một số thông tin. Bạn copy đoạn dưới, điền vào rồi gửi lại nhé:
>
> ```
> Target branch:                          ← bắt buộc điền, không có giá trị mặc định
> Terraform folder: terraform/envs/stg
> Plan file path: terraform/envs/stg/terraform-plan-TICKET-123
> Ticket ID: TICKET-123
> Project name:                           ← bắt buộc điền, không có giá trị mặc định
> Region: ap-northeast-1
> PR URL (optional):
> ```

**Example reply for summary-only mode:**

> Tôi cần thêm một số thông tin:
>
> ```
> Plan file path:
> Ticket ID:
> Project name:                           ← bắt buộc điền
> Region:
> PR URL (optional):
> ```

**Example reply for review-only mode:**

> Tôi cần thêm một số thông tin:
>
> ```
> Target branch:                          ← bắt buộc điền
> Terraform folder:
> Ticket ID:
> PR URL (optional):
> ```

**Pre-fill rules — follow these strictly:**
- `Target branch`: ALWAYS leave blank. Never pre-fill with `develop`, `main`, or any guess. The user must explicitly provide this.
- `Project name`: ALWAYS leave blank. Never guess from folder names or branch names.
- `Terraform folder`: pre-fill if inferable from context (e.g., open files in editor)
- `Plan file path`: pre-fill if a plan file is open in the editor
- `Ticket ID`: extract from branch name if pattern matches (e.g., `feature/TOFAS-14187-xxx` → `TOFAS-14187`)
- `Region`: pre-fill only if explicitly visible in open files or prior conversation — otherwise leave blank

If the user provides all info in one message, skip the interview and proceed to Step 1d.

### 1d. Confirm and remind to pull latest code

Once all required inputs are collected, show a confirmation summary.

**For full and review-only modes** — remind the user to pull latest code. Do NOT run git fetch/pull yourself:

> **Thông tin review (mode: full):**
> - PR branch: `feature/TICKET-123-update-scaling`
> - Target branch: `develop`
> - Folder: `terraform/envs/stg`
> - Plan file: `terraform/envs/stg/terraform-plan-TICKET-123`
>
> ⚠️ **Trước khi bắt đầu**, hãy đảm bảo code ở cả 2 branch đã được pull mới nhất:
> ```bash
> git fetch origin
> git checkout develop && git pull origin develop
> git checkout feature/TICKET-123-update-scaling && git pull origin feature/TICKET-123-update-scaling
> ```
> Confirm OK để tôi bắt đầu review nhé.

**For summary-only mode** — no need to pull code, just confirm inputs:

> **Thông tin review (mode: summary-only):**
> - Plan file: `terraform/envs/stg/terraform-plan-TICKET-123`
> - Project: MyProject STG
> - Region: ap-northeast-1
>
> Confirm OK để tôi bắt đầu nhé.

Wait for the user to confirm before proceeding.

---

## Step 2: Gather data

What to gather depends on the mode:

| Mode | Git diff | Plan file |
|---|---|---|
| full | Yes | Yes |
| review-only | Yes | No |
| summary-only | No | Yes |

**For full mode:** Run 2a and 2b in parallel if the environment supports parallel execution (e.g., subagents, parallel tool calls). Otherwise, run them sequentially — 2a first, then 2b.

### 2a. Git diff (full and review-only modes)

Run the diff from target → source (this shows what the PR adds):

```bash
git diff {TARGET_BRANCH} {PR_BRANCH} -- {TERRAFORM_FOLDER}
```

The direction matters: `git diff develop feature/xxx` shows what the feature branch introduces compared to develop. Getting this backwards will invert the entire analysis — you'd see additions as deletions and vice versa.

**If shell/git access is not available** (e.g., web-based agent, IDE without terminal): Ask the user to provide the git diff output directly — either paste it into the conversation or provide it as a file.

**If the diff command fails** (branch not found, etc.): Do NOT run `git fetch` or `git pull` yourself. Instead, tell the user:
> Branch `{BRANCH_NAME}` không tìm thấy. Bạn có thể chạy lệnh sau để update rồi thử lại:
> ```bash
> git fetch origin
> git checkout {BRANCH_NAME}
> ```

**If the diff output is very large** (>500 lines): First run `git diff --stat` to get an overview of which files changed and how many lines. Then diff individual files one at a time to avoid truncation:
```bash
git diff {TARGET} {SOURCE} -- {FOLDER}/specific_file.tf
```

### 2b. Read terraform plan (full and summary-only modes)

Read the terraform plan output file the user provided. Parse the summary line at the bottom:
```
Plan: X to add, Y to change, Z to destroy.
```

Identify every resource action:
- `+` create
- `~` update in-place
- `-` destroy
- `-/+` destroy and recreate

---

## Step 3 & Step 4: Analysis (depends on mode)

### For full mode: Cross-check and Code review (run in parallel)

Step 3 (cross-check diff vs plan) and Step 4 (code review) are independent — run them in parallel if the environment supports it, otherwise sequentially.

### For review-only mode: Skip Step 3, only do Step 4

### For summary-only mode: Skip both Step 3 and Step 4, go directly to Step 5

---

### Step 3: Cross-check diff vs plan (full mode only)

Compare every change in the git diff against the terraform plan to verify they match. This is the core value of the full review — catching discrepancies before they reach production.

When documenting findings, list every single resource individually. Do not group or summarize with phrases like "16 services tương tự" — each resource must appear as its own row or bullet point.

### How to map .tf code to plan resources

Terraform resource addresses in the plan follow the pattern `{resource_type}.{resource_name}` (or `module.{module_name}.{resource_type}.{resource_name}` for modules). To map from diff to plan:

1. Look at the `resource` blocks in the diff — the type and name form the address
   - `resource "aws_cloudwatch_metric_alarm" "my_alarm"` → `aws_cloudwatch_metric_alarm.my_alarm`
2. For `for_each` resources, the plan shows keys in brackets: `aws_cloudwatch_metric_alarm.my_alarm["key"]`
3. For `count` resources, the plan shows index: `aws_cloudwatch_metric_alarm.my_alarm[0]`
4. Module resources get prefixed: `module.my_module.aws_sqs_queue.queue`

### What to check

- Every resource changed in the diff should appear in the plan with the expected action
- Every resource in the plan should be traceable back to a code change (or identified as drift/external change)
- Resource names, keys, and attributes should match between diff and plan
- `for_each` key changes (e.g., `["scale-in"]` → `["scale_in"]`) cause destroy+create — verify this is reflected
- Comment-out of resources should result in destroy in plan
- New resources in diff should appear as create in plan

### Attribute-level detail requirement

For every resource change, document the **specific attributes** that changed with their old and new values. The reader needs to understand exactly what terraform will do at the attribute level, not just "this resource will be updated".

For **update in-place** resources, show each changed attribute as `attribute: old_value → new_value`. Extract these from the terraform plan output where it shows `~` changes with `->` arrows.

For **create** resources, list the key configuration attributes and their values (thresholds, periods, expressions, etc.). The reader should be able to verify the configuration is correct without looking at the plan file.

For **destroy+create** resources, show both what's being removed and what's being added, with the key differences highlighted.

**Example of BAD attribute documentation:**
> `aws_cloudwatch_metric_alarm.worker_scale_out` — Cập nhật metric_query expression mới

**Example of GOOD attribute documentation:**
> `aws_cloudwatch_metric_alarm.worker_scale_out` — update in-place:
> - `metric_query.e1.expression`: `"FILL(m1, 0)"` → `"IF(m1 > 0, m1, 0)"`
> - `datapoints_to_alarm`: `2` → `1`
> - `evaluation_periods`: `2` → `1`

### Flag discrepancies

- **Resources in plan but not in diff** → likely state drift or changes from other `.tf` files not in the diff scope. Label these clearly so the user knows they'll be applied alongside the PR changes.
- **Resources in diff but not in plan** → the plan may have been generated from a different branch or before the latest commit. Recommend the user regenerate the plan.
- **Action mismatch** → diff suggests an update but plan shows destroy+create (common with `for_each` key changes, `name` changes on resources that don't support in-place rename).

---

### Step 4: Review PR code changes (full and review-only modes)

For every finding below, be exhaustive — list every file, every occurrence, every affected resource. The review report is the only document the reviewer will read, so nothing can be left out or summarized.

### 4.1 Code quality

Be specific — include file names, block references, and show the problematic code snippet. The reader should be able to go directly to the issue and fix it without searching.

Check for:
- **Dead code**: commented-out blocks that should be deleted (git history preserves old code, no need to keep it in comments)
- **Indentation errors**: misaligned blocks, inconsistent spacing — show the exact block
- **Naming conventions**: inconsistent metric IDs, resource names across similar services
- **Missing newline at end of file**: `\ No newline at end of file` in diff
- **Copy-paste errors**: duplicated blocks with wrong references
- **Hardcoded values** that should be variables

### 4.2 Security

Check for:
- IAM policy changes (overly permissive, wildcard resources)
- Security group changes (open ports, 0.0.0.0/0)
- Secret/credential exposure in plain text
- S3 bucket policy changes (public access)
- KMS key policy changes
- VPC/subnet changes

If no security-relevant changes exist, state that clearly: "Không có vấn đề bảo mật. PR chỉ thay đổi [resource types], không touch IAM, security group, hay secret nào."

### 4.3 Dependency & Maintainability Impact

Analyze whether the changes in this PR could cause problems when someone later adds, modifies, or deletes related resources. The goal is to catch tight coupling and hidden dependencies that make future changes risky or error-prone.

**Scope of analysis:**
- Resources that **reference** a resource being added/modified/deleted in this PR (e.g., via `resource_type.name.attribute`)
- Resources that **use the same variable, local, or data source** that is being added/modified/deleted in this PR
- Modules that **consume outputs** from resources being changed

**What to look for:**
- **Hardcoded references** that will break if the target resource is renamed or removed (e.g., `aws_sqs_queue.worker.arn` used in 5 places — renaming `worker` breaks all 5)
- **Shared variables/locals** used by many resources — changing the value affects all consumers, some of which may not be obvious from the diff
- **Implicit ordering dependencies** — resources that depend on each other through attribute references but would behave unexpectedly if one is removed
- **Tight coupling via `for_each` keys** — if a map variable drives multiple `for_each` resources, adding/removing a key affects all of them simultaneously
- **Output references** — if a resource's output is consumed by other modules or remote state, changing it has ripple effects beyond this folder

For each finding, explain:
1. What the dependency chain looks like (resource A → variable X → resources B, C, D)
2. What specific future change would cause a problem (e.g., "nếu sau này xóa variable `worker_config`, 3 resource khác sẽ bị lỗi")
3. How to reduce the risk (e.g., tách variable, dùng `try()`, thêm validation block)

If no dependency concerns exist, state clearly: "Không phát hiện vấn đề dependency. Các thay đổi được isolate tốt, không ảnh hưởng resource khác khi sửa đổi sau này."

### 4.4 Terraform Best Practices

Review the code changes against Terraform and AWS provider best practices. This catches issues that aren't bugs today but will cause problems later — deprecated resources that will break on provider upgrade, anti-patterns that make the code harder to maintain, and missed opportunities to use better Terraform idioms.

Check for:
- **Deprecated resources/attributes**: Resources or attributes that have been deprecated in newer AWS provider versions. Common examples:
  - `aws_s3_bucket_object` → use `aws_s3_object` (deprecated since AWS Provider v4.0)
  - Inline `ingress`/`egress` in `aws_security_group` → use separate `aws_vpc_security_group_ingress_rule`/`aws_vpc_security_group_egress_rule` resources
  - `aws_elasticsearch_domain` → use `aws_opensearch_domain`
  - Standalone `aws_s3_bucket` sub-resource attributes (acl, cors, lifecycle, logging, versioning) → use dedicated resources
- **Anti-patterns**:
  - `count` for resources that should use `for_each` (especially when iterating over a list of distinct items — count causes index shift problems on deletion)
  - Hardcoded ARNs or account IDs instead of using `data` sources
  - `depends_on` when implicit dependency through reference would suffice
  - Inline policies in `aws_iam_role` instead of separate `aws_iam_role_policy` or `aws_iam_policy`
- **Recommended idioms**:
  - `one()` function instead of `[0]` index access (safer when list may be empty)
  - `try()` for optional nested attributes
  - `moved` blocks for resource renames instead of destroy+create
  - `import` blocks (Terraform 1.5+) for bringing existing resources under management
- **Module versioning**: Modules should pin versions, not use `ref=main` or unversioned sources

For each finding, show the current code, the recommended alternative, and explain why — so the reader understands the risk of keeping the current approach.

If no best practice issues exist, state clearly: "Code tuân thủ Terraform best practices. Không phát hiện deprecated resources hay anti-patterns."

### 4.5 Impact assessment

Evaluate each category and provide a clear verdict.

**Note for review-only mode:** Without a terraform plan, the impact assessment is based on code analysis only. Flag this limitation clearly at the top: "⚠️ Đánh giá impact dựa trên phân tích code, chưa có terraform plan để xác nhận chính xác. Nên chạy mode full để có đánh giá đầy đủ hơn."

**Downtime:**
- Will any running service be interrupted?
- Will any ECS task be restarted?
- Will any database be modified?
- Distinguish between "application downtime" (users affected) and "monitoring/autoscaling gap" (app runs but scaling doesn't work temporarily)

**Data loss:**
- Are any stateful resources (RDS, S3, SQS, DynamoDB) being destroyed?
- Are any queues being deleted (messages would be lost)?
- Is alarm history being lost (destroy+recreate alarms)?
- Distinguish between "critical data loss" (user data, business data) and "non-critical metadata loss" (alarm history, tags)

**Cost impact:**
- New resources being created → estimate monthly cost with specific numbers
- Resources being destroyed → estimate monthly savings
- Configuration changes that affect cost (e.g., more alarms, larger instances)
- Example: "$0.10/alarm/month × 16 new alarms = +$1.60/month"

**Blast radius:**
- List every service/component affected
- For each, state whether it's direct (code change targets it) or indirect (dependency)
- Rate severity: High (service disruption), Medium (monitoring gap), Low (cosmetic/tag only)

**Apply timing recommendation:**
Based on the impact assessment, recommend when to apply:
- If monitoring/autoscaling gap exists → "Nên apply ngoài giờ cao điểm để giảm rủi ro. Tránh khung giờ {peak hours based on region}."
- If no impact → "Có thể apply bất kỳ lúc nào."
- If high risk → "Cần plan deployment window cụ thể với team."

**Summary table (include in every review):**

| Tiêu chí | Mức độ | Ghi chú |
|---|---|---|
| Downtime ứng dụng | ❌ Không / ⚠️ Có thể / 🔴 Có | Chi tiết |
| Gián đoạn monitoring/autoscaling | ❌ Không / ⚠️ Có thể / 🔴 Có | Ước tính thời gian |
| Mất dữ liệu | ❌ Không / ⚠️ Không nghiêm trọng / 🔴 Nghiêm trọng | Mất gì |
| Chi phí phát sinh | ❌ Không / ⚠️ Nhẹ / 🔴 Đáng kể | Ước tính/tháng |
| Độ khó rollback | ✅ Dễ / ⚠️ Trung bình / 🔴 Khó | Cách rollback |

---

## Step 5: Generate output files

### Output directory

All output files go into a structured folder at the current working directory:

```
terraform-pr-review-output/
└── {ENVIRONMENT}/
    └── {TICKET_ID}/
        ├── review-{TICKET_ID}-YYYYMMDD-HHmm.md
        ├── summary-{TICKET_ID}-YYYYMMDD-HHmm.md
        └── summary-{TICKET_ID}-ja-YYYYMMDD-HHmm.md  ← (optional, only when user requests)
```

**Detect environment:** Extract from the terraform folder path or plan file path. For example:
- `terraform/envs/stg/...` → `stg`
- `terraform/envs/prod/...` → `prod`
- `terraform/environments/staging/...` → `staging`

If the environment cannot be determined from the paths, ask the user: "Đây là environment nào? (vd: stg, prod, dev)"

Generate the timestamp (format: `YYYYMMDD-HHmm`, e.g., `20260410-1430`):
- **Shell (Linux/macOS/Git Bash):** `date +%Y%m%d-%H%M`
- **PowerShell:** `Get-Date -Format "yyyyMMdd-HHmm"`
- **No shell access:** Use the current date/time from the system or conversation context.

Running the skill multiple times for the same ticket creates separate files without overwriting previous results.

Create the directory `terraform-pr-review-output/{ENVIRONMENT}/{TICKET_ID}/` if it doesn't exist.

### Which files to generate (depends on mode)

| Mode | review file | summary VN file | summary JP file |
|---|---|---|---|
| full | Yes | Yes | No — offer after user reviews VN |
| review-only | Yes | No | No |
| summary-only | No | Yes | No — offer after user reviews VN |

**Output completeness:** Write every resource, every file, every section in full detail. Do not abbreviate, summarize, or skip repetitive items. Specifically banned phrases: "(N file còn lại tương tự)", "(các service khác tương tự)", "(xem thêm...)", "etc.", "and so on", "similarly for...", or any variation. The output files are the final deliverable — readers will not have access to the raw diff or plan, so every detail must be present. If a section has 20 rows in a table, write all 20 rows. If 16 services are affected, list all 16 with their full resource addresses.

### Output 1: Review report (full and review-only modes)

Save to `terraform-pr-review-output/{ENVIRONMENT}/{TICKET_ID}/review-{TICKET_ID}-YYYYMMDD-HHmm.md`

**Structure for full mode:**
```markdown
# Terraform PR Review – {TICKET_ID}

## 1. Cross-check: Git Diff vs Terraform Plan
### Kết luận
(Khớp/Không khớp + tóm tắt)
### Chi tiết
(Bảng so sánh từng nhóm resource)
### Thay đổi thừa trong plan (nếu có)
(Resources không thuộc PR - drift)

## 2. Code Review
### 2.1 Code Quality
(Từng issue cụ thể với file/block reference và code snippet)
### 2.2 Security
(Findings hoặc "không có vấn đề")
### 2.3 Dependency & Maintainability Impact
(Dependency chains, tight coupling, shared variables/locals risks)
### 2.4 Terraform Best Practices
(Deprecated resources, anti-patterns, recommended idioms)

## 3. Impact Assessment
### 3.1 Downtime
### 3.2 Data Loss
### 3.3 Cost Impact
### 3.4 Blast Radius
### 3.5 Apply Timing Recommendation
### 3.6 Summary Table
```

**Structure for review-only mode** (no cross-check section):
```markdown
# Terraform PR Review – {TICKET_ID}

## 1. Code Review
### 1.1 Code Quality
### 1.2 Security
### 1.3 Dependency & Maintainability Impact
### 1.4 Terraform Best Practices

## 2. Impact Assessment
⚠️ Đánh giá impact dựa trên phân tích code, chưa có terraform plan để xác nhận.
### 2.1 Downtime
### 2.2 Data Loss
### 2.3 Cost Impact
### 2.4 Blast Radius
### 2.5 Apply Timing Recommendation
### 2.6 Summary Table
```

### Output 2: Terraform plan summary (full and summary-only modes)

Save to `terraform-pr-review-output/{ENVIRONMENT}/{TICKET_ID}/summary-{TICKET_ID}-YYYYMMDD-HHmm.md`

Before writing, find and read the file named `tf-pr-reviewer-summary-template.md` in the workspace to get the exact output format. This filename is unique — search for it by name if the exact path is unknown.

The template contains section patterns for common terraform change types: AMI updates, tag changes, ECS task definitions, ECS services, SQS queues, SQS visibility timeout, IAM policies, S3 bucket ACL, CloudWatch dashboards, and AWS provider changes. The output summary must follow this template's format exactly — use the same heading structure, table format, scope labels, and note conventions.

Key rules:
- Select only template patterns that match the actual plan output — do not include empty sections
- If the plan contains a change type not covered by any template pattern, create a new section following the same style (numbered heading, resource table, scope label, explanation)
- Group related changes together (e.g., all alarm destroy+create for the same refactor go in one section)
- Label each section: `[Thuộc phạm vi release]` or `[Không thuộc phạm vi release nhưng không ảnh hưởng]`
- For destroy+create pairs, explain why (key rename, refactor, etc.) so readers don't panic seeing large destroy counts
- Resource counts in the summary must match the plan summary line exactly

**Attribute-level detail in summary (critical):**

The summary is the primary document that reviewers and the Japanese team read. They will NOT look at the raw plan output. So every section must include enough detail for the reader to understand exactly what terraform will change at the attribute level.

For each section, after the resource table, add a "Chi tiết thay đổi" subsection that shows:
- **Update in-place**: Each changed attribute with `old_value → new_value`
- **Create**: Key configuration values (threshold, period, expression, scaling_adjustment, cooldown, etc.)
- **Destroy+Create**: What the old config looked like vs the new config, highlighting key differences

When multiple resources share the same pattern of changes (e.g., 16 alarms all get the same expression refactor), you can describe the pattern once with a concrete example from one resource, then state "Tương tự cho N resource còn lại" — but the example must show actual values, not placeholders.

### Output 3: Japanese summary (optional — only when user requests)

After generating the Vietnamese summary, ask the user:
> Bạn muốn tạo bản Japanese không?

If yes, save to `terraform-pr-review-output/{ENVIRONMENT}/{TICKET_ID}/summary-{TICKET_ID}-ja-YYYYMMDD-HHmm.md`

Use the same timestamp as the Vietnamese summary file for consistency.

**Japanese version conventions:**
- `[Thuộc phạm vi release]` → `[リリース範囲内]`
- `[Không thuộc phạm vi release nhưng không ảnh hưởng]` → `[リリース範囲外・影響なし]`
- `Thêm mới (Add)` → `新規追加 (Add)`
- `Thay đổi (Change)` → `変更 (Change)`
- `Xóa (Destroy)` → `削除 (Destroy)`
- Keep all resource names, terraform identifiers, technical terms, and code snippets in English
- Translate explanatory text, section headers, and descriptions to Japanese

---

## Step 6: Present results

After generating files, provide a brief summary in chat:
- Confirmation that files were created with their paths
- Top 2-3 findings from the review (most important issues)
- Whether the plan is safe to apply or has concerns that need addressing

For modes that produce a Vietnamese summary (full and summary-only), ask:
> Bạn review bản summary VN nhé. Nếu OK và muốn tạo bản Japanese thì cho tôi biết.

If the user asks for changes to the output language or format, regenerate the affected file (with a new timestamp).

---

## Edge cases

- **Plan file not found**: Ask the user to verify the path.
- **No diff output**: Branches might be identical for that folder, or branch names might be wrong. Ask the user to verify. Do NOT run git fetch/pull yourself.
- **Plan shows changes not in diff**: Flag as state drift. These are real changes that will be applied but aren't part of the PR.
- **Diff shows changes not in plan**: The plan might have been generated from a different branch or before the latest commit. Recommend regenerating the plan.
- **Very large plans (100+ resources)**: Group by resource type and list every resource. For attribute-level detail, when many resources share the same change pattern, show full detail for one representative resource and state "Tương tự cho N resource còn lại" — but always list every resource address individually in the table.
- **Very large diffs**: Use `git diff --stat` first, then diff individual files to avoid truncation.

---

## Examples

For output examples showing what good review reports and summaries look like, find and read the file named `examples.md` in the workspace. This filename is unique — search for it by name if the exact path is unknown.
