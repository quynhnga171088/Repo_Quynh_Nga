# Output Examples

Below are sanitized excerpts showing what good output looks like for each deliverable.

## Example: Review report excerpt (cross-check section)

```markdown
## 1. Cross-check: Git Diff vs Terraform Plan

**Kết luận: Plan phản ánh đúng và đủ các thay đổi trong PR.**

- 4 file `.tf` thay đổi alarm → plan cho thấy destroy alarm `for_each` cũ + create alarm riêng lẻ mới → khớp
- `s4_worker_queue_test_grading` alarm đã tồn tại dạng riêng lẻ → plan chỉ update in-place → khớp
  - Diff thay đổi `expression` trong `metric_query.e1`: `"FILL(m1, 0)"` → `"IF(m1 > 0, m1, 0)"` → plan show `~ expression: "FILL(m1, 0)" -> "IF(m1 > 0, m1, 0)"` → khớp
  - Diff thay đổi `datapoints_to_alarm`: `2` → `1` cho alarm `scale_out` → plan show `~ datapoints_to_alarm: 2 -> 1` → khớp
- `aws_appautoscaling_policy` key rename `scale-in`→`scale_in` → plan destroy `["scale-in"]` + create `["scale_in"]` → khớp
  - Diff thêm key `set_1_task` mới → plan create `["set_1_task"]` → khớp
  - Cấu hình `scaling_adjustment` trong diff: scale_in = `-1`, scale_out = `1`, set_1_task = `1` → plan giá trị tương ứng → khớp

**Thay đổi thừa (không nằm trong diff PR nhưng có trong plan):**
- `aws_iam_user.s5_iam_user` - `tags_all`: thêm `Env = "stg"`, `Project = "tofas"` → drift từ state, không liên quan PR
- `module.aurora_s1_postgres.aws_appautoscaling_target.read_replica_count[0]` - `tags`: thêm `CreateBy = "terraform"` → drift, không liên quan PR
```

## Example: Review report excerpt (code quality section)

```markdown
### 2.1 Code Quality

**a) Code comment out chưa xóa – 4 files**

| File | Nội dung | Số dòng |
|---|---|---|
| `ecs_s1_result_statistic_worker_fg_service.tf` | Block `for_each` alarm cũ | ~50 dòng |
| `ecs_s1_send_result_publication_mail_to_manager_worker_fg_service.tf` | Block `for_each` alarm cũ | ~50 dòng |

Nên xóa hẳn vì đã có git history.

**b) Indentation sai – `ecs_s4_grading_not_submit_worker_service.tf`**

Block `metric_query` cho `m3` bị thụt lề thừa:
\```hcl
# SAI
    metric_query {
    id = "m3"

# ĐÚNG
  metric_query {
    id = "m3"
\```
Xuất hiện 3 lần (1 lần trong mỗi alarm resource).
```

## Example: Review report excerpt (impact assessment)

```markdown
### 3.6 Summary Table

| Tiêu chí | Mức độ | Ghi chú |
|---|---|---|
| Downtime ứng dụng | ❌ Không | App vẫn chạy bình thường |
| Gián đoạn autoscaling | ⚠️ Có (3-10 phút) | 15 service bị ảnh hưởng |
| Mất dữ liệu | ❌ Không | Chỉ mất alarm history (không critical) |
| Chi phí phát sinh | ⚠️ Nhẹ | +$1.60/tháng CloudWatch |
| Độ khó rollback | ✅ Dễ | Revert PR và chạy lại terraform apply |

### 3.5 Khuyến nghị thời điểm apply
Nên apply ngoài giờ cao điểm (tránh 9:00-18:00 JST) do 15 service sẽ mất autoscaling tạm thời 3-10 phút.
```

## Example: Review report excerpt (best practices section)

```markdown
### 2.3 Terraform Best Practices

**a) Nên dùng `one()` thay vì index trực tiếp** – `ecs_s1_worker_service.tf`

```hcl
# Hiện tại
subnet_ids = data.aws_subnets.private.ids[0]

# Khuyến nghị
subnet_ids = one(data.aws_subnets.private.ids)
```
Lý do: `one()` được giới thiệu từ Terraform 1.0, an toàn hơn khi list rỗng (trả về null thay vì error).

**b) `aws_s3_bucket_object` đã deprecated** – `s3_upload.tf`

Resource `aws_s3_bucket_object` đã deprecated từ AWS Provider v4.0, thay thế bằng `aws_s3_object`.
```hcl
# Deprecated
resource "aws_s3_bucket_object" "config" { ... }

# Khuyến nghị
resource "aws_s3_object" "config" { ... }
```
Cần migrate trước khi upgrade provider.

**c) Không có vấn đề best practices khác.** Code sử dụng `for_each` thay vì `count` cho dynamic resources, naming convention nhất quán, module versioning đúng chuẩn.
```

## Example: Summary report excerpt

```markdown
## Tổng quan thay đổi Terraform plan

> ⚠️ **Dưới đây là tổng hợp thay đổi terraform...**

## MyProject STG – Tokyo (ap-northeast-1)
- **Thêm mới (Add):** 96 resources
- **Thay đổi (Change):** 6 resources
- **Xóa (Destroy):** 64 resources

> Lưu ý: 64 resources bị destroy là do refactor CloudWatch Metric Alarm
> từ `for_each` sang resource riêng lẻ. Thực tế không mất service.

---

### 1. Refactor CloudWatch Metric Alarm – 78 resources (destroy + create)

| # | Resource gốc (destroy) | Resource mới (create) |
|---|---|---|
| 1 | `aws_cloudwatch_metric_alarm.worker_fg["scale-in"]` | `aws_cloudwatch_metric_alarm.worker_fg_scale_in` |
| 2 | `aws_cloudwatch_metric_alarm.worker_fg["scale-out"]` | `aws_cloudwatch_metric_alarm.worker_fg_scale_out` |
| 3 | _(không có)_ | `aws_cloudwatch_metric_alarm.worker_fg_set_1_task` |

**Chi tiết thay đổi (ví dụ từ worker_fg):**

**Alarm cũ** (for_each – `scale-in` và `scale-out` dùng chung config):
- `metric_query.e1.expression`: `"FILL(m1, 0)"`
- `threshold`: `2` (scale-out), `1` (scale-in)
- `evaluation_periods`: `2`
- `period`: `60`

**Alarm mới** (3 alarm riêng biệt với logic khác nhau):
- `_scale_out`: expression = `"IF(m1 > 0, m1, 0)"`, threshold = `1`, period = `60`, evaluation_periods = `1`, datapoints_to_alarm = `1`
- `_scale_in`: expression = `"IF(m1 <= 0, 1, 0)"`, threshold = `1`, period = `300`, evaluation_periods = `1`, datapoints_to_alarm = `1`
- `_set_1_task` _(alarm mới)_: expression = `"IF(m1 == 1, 1, 0)"`, threshold = `1`, period = `60` — detect khi chỉ còn 1 task running, dùng để giữ min 1 task

**Khác biệt chính:**
- Expression cũ dùng `FILL(m1, 0)` → mới dùng `IF()` logic riêng cho từng mục đích scale
- Thêm alarm `set_1_task` hoàn toàn mới để prevent scale-in về 0 task
- `datapoints_to_alarm` giảm từ 2 → 1 cho scale_out (phản ứng nhanh hơn)

Tương tự cho 15 service còn lại (cùng pattern thay đổi).

➡️ [Thuộc phạm vi release] Refactor alarm để có logic scale riêng biệt.

---

### 2. Cập nhật Tags – 3 resources (update in-place)

| Resource | Thay đổi |
|---|---|
| `aws_iam_user.s5_iam_user` | `tags_all`: thêm `Env = "stg"`, `Project = "tofas"` |
| `module.aurora_s1_postgres.aws_appautoscaling_target.read_replica_count[0]` | `tags`: thêm `CreateBy = "terraform"` |
| `module.aurora_s6.aws_appautoscaling_target.read_replica_count[0]` | `tags`: thêm `CreateBy = "terraform"` |

➡️ [Không thuộc phạm vi release nhưng không ảnh hưởng] State drift – Terraform tự động bổ sung tag.
```
