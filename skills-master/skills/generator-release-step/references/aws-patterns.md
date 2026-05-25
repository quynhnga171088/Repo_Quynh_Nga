# AWS Release Step Patterns

Chi tiết các pattern viết thao tác cho từng loại AWS resource.

## Table of Contents
- [ECS Service](#ecs-service)
- [RDS / Aurora](#rds--aurora)
- [SQS](#sqs)
- [IAM Role / Policy](#iam-role--policy)
- [S3 Bucket](#s3-bucket)
- [CloudWatch Alarm](#cloudwatch-alarm)
- [SNS Topic](#sns-topic)
- [Secrets Manager](#secrets-manager)
- [CodePipeline / CodeBuild](#codepipeline--codebuild)
- [Route53](#route53)
- [ALB / Target Group](#alb--target-group)
- [ECR](#ecr)
- [AWS Chatbot](#aws-chatbot)
- [Backup ENV Pattern](#backup-env-pattern)
- [Deploy Code Pattern](#deploy-code-pattern)

---

## ECS Service

### Tạo mới ECS Service
```
Step: Tạo ECS service [TÊN_SERVICE]
Overview: Tạo và cấu hình ECS service

Thao tác:
Kiểm tra đã tạo đúng và đủ các resource liên quan tới ECS service gồm:
- Log group:
  +) Name: [TÊN_LOG_GROUP]
  +) Retention: [SỐ] days
- Security Group: [TÊN_SG]
- Task definition:
  +) requires_compatibilities: FARGATE
  +) Image: [TÊN_IMAGE]
  +) CPU: [GIÁ_TRỊ]
  +) Memory: [GIÁ_TRỊ]
- ECS service:
  +) Cluster: [TÊN_CLUSTER]
  +) Name: [TÊN_SERVICE]
  +) Desired task: [SỐ]
- Scale:
  +) Min=[SỐ]
  +) Max=[SỐ]
```

### Sửa ECS Service (scale config)
```
Step: Điều chỉnh spec [TÊN_SERVICE]
Overview: Điều chỉnh spec [TÊN_SERVICE]

Thao tác:
1. Truy cập ECS Console > Clusters > [TÊN_CLUSTER]
2. Chọn tab Services, tìm [TÊN_SERVICE]
3. Chọn Update và điều chỉnh như sau:

Hiện tại:
- Min task = [GIÁ_TRỊ_CŨ]
- Max task = [GIÁ_TRỊ_CŨ]

Update:
- Min task = [GIÁ_TRỊ_MỚI]
- Max task = [GIÁ_TRỊ_MỚI]
```

### Verify ECS Service
```
Step: Verify [TÊN_SERVICE]
Overview: Kiểm tra ECS service đã hoạt động đúng

Thao tác:
1. Truy cập ECS Console > Clusters > [TÊN_CLUSTER] > Services > [TÊN_SERVICE]
2. Kiểm tra tab Tasks: đảm bảo desired count = running count
3. Kiểm tra tab Events: không có error
4. Kiểm tra tab Logs: service khởi động bình thường
```

### ECS Scale Policy
```
Step: Setting scale policy [TÊN_SERVICE]
Overview: Setting scale policy

Thao tác:
Kiểm tra đã setting các scale policy như sau:
- Metric sử dụng:
  +) [TÊN_METRIC] = [MÔ_TẢ]
  ...

- Policy 1. [TÊN_POLICY]
  +) Metric: [TÊN_METRIC]
  +) cooldown = [GIÁ_TRỊ]
  +) adjustment_type: [LOẠI]
  +) scaling_adjustment = [GIÁ_TRỊ]
  +) comparison_operator = "[TOÁN_TỬ]"
  +) evaluation_periods = [SỐ]
  +) threshold = [GIÁ_TRỊ]
  +) datapoints_to_alarm = [SỐ]
```

### Verify Scale Policy
```
Step: Verify scale policy [TÊN_SERVICE]

Thao tác (scale-out):
1. Truy cập AWS SQS > [TÊN_QUEUE]
2. Send and receive messages > Message body: test > Send message
3. Truy cập AWS ECS > [TÊN_CLUSTER] > [TÊN_SERVICE]
4. Kiểm tra ECS service đã được scale lên [SỐ] task

Thao tác (scale-in):
1. Đợi mỗi [SỐ] phút, kiểm tra số task của [TÊN_SERVICE]
2. Kiểm tra đã giảm về [SỐ] task
```

---

## RDS / Aurora

### Backup trước khi thay đổi
```
Step: Backup DB [TÊN_CLUSTER]
Overview: Tạo snapshot trước khi [thao_tác]

Thao tác:
1. Truy cập màn hình quản lý RDS trên AWS Console
2. Chọn RDS Cluster: [TÊN_CLUSTER] > chọn Action > chọn Take snapshot
3. Snapshot name: [TÊN_CLUSTER]-pre-[THAO_TÁC]-[YYYYMMDD]
4. Chọn Take snapshot
5. Chờ snapshot hoàn thành (status: Available)
```

### Upgrade Aurora version
```
Step: Upgrade version DB [TÊN_CLUSTER]
Overview: Upgrade [TÊN_DB_ENGINE]

Thao tác:
1. Truy cập màn hình quản lý RDS trên AWS Console
2. Chọn RDS Cluster: [TÊN_CLUSTER] > chọn Modify
3. Phần DB engine version setting:
   - Hiện tại: [ENGINE] (Compatible with [VERSION_CŨ])
   - Update: [ENGINE] (Compatible with [VERSION_MỚI])
4. Trong "Scheduling of modifications" section, chọn "Apply immediately"
5. Click "Continue", review summary, click "Modify DB cluster"
6. Theo dõi quá trình upgrade:
   - Cluster status sẽ chuyển thành "Upgrading"
   - Theo dõi trong "Events" tab
   - Chờ cluster status trở về "Available"
```

### Verify sau upgrade DB
```
Step: Kiểm tra sau khi upgrade DB
Overview: Kiểm tra [TÊN_CLUSTER] sau upgrade

Thao tác:
1. Kiểm tra engine version sau upgrade:
   - Refresh trang RDS Databases > Click vào cluster
   - Trong "Configuration" tab, xác nhận:
     + Engine version: [VERSION_MỚI]
     + Status: Available
2. Kiểm tra tất cả instances trong cluster:
   - Xác nhận tất cả instances (writer và reader) đều có:
     + Status: Available
     + Engine version: [VERSION_MỚI]
3. Kiểm tra connectivity:
   - Test kết nối đến cluster endpoint
   - Xác nhận application có thể connect thành công
4. Kiểm tra logs:
   - Chọn tab "Logs & events"
   - Xem "Recent events" để kiểm tra có error nào không
```

---

## SQS

### Tạo SQS Queue
```
Step: Tạo SQS Queue [TÊN_QUEUE]
Overview: Tạo queue [TÊN_QUEUE]

Thao tác:
Truy cập AWS SQS Console:
- Kiểm tra queue [TÊN_QUEUE] đã được tạo
- Kiểm tra dead letter queue [TÊN_QUEUE]-dead đã được tạo
- Kiểm tra config:
  +) Message retention: [GIÁ_TRỊ]
  +) Visibility timeout: [GIÁ_TRỊ] seconds
  +) Max message size: 262144 bytes (256 KB)
  +) Receive wait time: [GIÁ_TRỊ] seconds
  +) Encryption: [LOẠI_ENCRYPTION]
```

---

## IAM Role / Policy

### Tạo IAM Role
```
Step: Tạo IAM Role [TÊN_ROLE]
Overview: Tạo IAM Role

Thao tác:
1. Truy cập IAM Console
2. Kiểm tra IAM role [TÊN_ROLE]:
   - Managed policy: [TÊN_POLICY]
   - Trust relationship: [SERVICE_PRINCIPAL]
```

### Update IAM Policy
```
Step: Update IAM Policy [TÊN_ROLE]
Overview: Bổ sung permission [MÔ_TẢ]

Thao tác:
Kiểm tra IAM role [TÊN_ROLE] phần inline policy "[TÊN_POLICY]" bổ sung thêm permission:
- Action: [DANH_SÁCH_ACTION]
- Resource: "[ARN_RESOURCE]"
```

Nếu policy phức tạp, ghi đầy đủ JSON structure:
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [...],
            "Effect": "Allow",
            "Resource": [...]
        }
    ]
}
```

---

## S3 Bucket

### Kiểm tra S3 Bucket
```
Step: Kiểm tra S3 bucket [TÊN_BUCKET]

Thao tác:
1. Truy cập AWS S3 Console
2. Kiểm tra bucket [TÊN_BUCKET] đã được tạo
3. Kiểm tra config:
   - Versioning: [Enabled/Disabled]
   - Encryption: [LOẠI]
   - Lifecycle rules: [MÔ_TẢ]
```

---

## CloudWatch Alarm

### Tạo CloudWatch Alarm
```
Step: Tạo CloudWatch Alarm [TÊN_ALARM]
Overview: Tạo alarm [MÔ_TẢ]

Thao tác:
1. Truy cập CloudWatch Console > Alarms
2. Tìm alarm [TÊN_ALARM]
3. Kiểm tra config:
   - Metrics:
     +) [METRIC_1] | [NAMESPACE] | [TÊN] - Statistic: [LOẠI]
   - Math expression: [BIỂU_THỨC] (nếu có)
   - Threshold: [ĐIỀU_KIỆN] for [SỐ] datapoints within [SỐ] minutes
   - SNS action: [TÊN_SNS_TOPIC]
```

---

## SNS Topic

### Tạo SNS Topic
```
Step: Tạo SNS Topic [TÊN_TOPIC]
Overview: Tạo SNS topic [MÔ_TẢ]

Thao tác:
1. Truy cập AWS SNS Console
2. Kiểm tra SNS topic đã được tạo: [TÊN_TOPIC]
3. Mở topic, vào tab Subscriptions để xác nhận đã có subscription tới:
   - [LOẠI_SUBSCRIPTION_1]: [ENDPOINT_1]
   - [LOẠI_SUBSCRIPTION_2]: [ENDPOINT_2]
```

---

## Secrets Manager

### Update Secrets Manager
```
Step: Update ENV
Overview: Update secrets manager [TÊN_SECRET]

Thao tác:
1. Đăng nhập tài khoản AWS [ACCOUNT]
2. Truy cập vào Secrets Manager
3. Tìm secret: [TÊN_SECRET]
4. Update env theo file ENV riêng
```

(Không ghi giá trị secret trực tiếp vào release step)

---

## CodePipeline / CodeBuild

### Thêm Deploy Action
```
Step: Thêm Deploy Action cho Pipeline
Overview: Thêm Deploy Action cho Pipeline [TÊN_PIPELINE]

Thao tác:
1. Truy cập CodePipeline Console
2. Mở pipeline [TÊN_PIPELINE]
3. Kiểm tra config:
   - Có thêm stage/action: Deploy [TÊN_SERVICE]
   - Deploy provider: [ECS/CodeDeploy/S3/...]
   - Cluster name: [TÊN_CLUSTER] (nếu ECS)
   - Service name: [TÊN_SERVICE] (nếu ECS)
```

### Theo dõi Pipeline deploy
```
Step: Theo dõi Codepipeline
Overview: SERVER: [TÊN_SERVER]

Thao tác:
1. Đăng nhập tài khoản AWS [ACCOUNT]
2. Truy cập vào CodePipelines
3. Theo dõi pipeline server [TÊN_SERVER]
4. Nếu build thành công, thực hiện approve deployment
5. Check kết quả deploy server, success all service thì update trạng thái release step
```

---

## Route53

### Thêm Route53 record
```
Step: Thêm Route53 record
Overview: Tạo DNS record [TÊN_RECORD]

Thao tác:
Truy cập AWS Route53 console > [TÊN_HOSTED_ZONE] > create record:
1. Name: [TÊN_RECORD]
2. Type: [A/CNAME/ALIAS]
3. Alias: [enable/disable]
4. Value: [GIÁ_TRỊ]
```

---

## ALB / Target Group

### Tạo Listener Rule
```
Step: Tạo listener rule cho ALB
Overview: Tạo listener rule [MÔ_TẢ]

Thao tác:
Truy cập AWS EC2 Console > Load balancers > [TÊN_ALB] > listeners & rules > [PROTOCOL:PORT]
Kiểm tra rule đã được tạo:
- Condition: Host header = [DOMAIN]
- Action: Forward to [TÊN_TARGET_GROUP]
```

---

## ECR

### Kiểm tra ECR Repository
```
Step: Kiểm tra ECR Repository [TÊN_REPO]
Overview: Kiểm tra ECR Repository

Thao tác:
1. Truy cập AWS ECR Console
2. Kiểm tra có repository "[TÊN_REPO]"
3. Xác nhận repository lifecycle:
   - rule 1: expire | imageCountMoreThan ([SỐ]) | untagged
   - rule 2: expire | imageCountMoreThan ([SỐ]) | any
```

---

## AWS Chatbot

### Tạo Chatbot Channel
```
Step: Tạo AWS Chatbot Slack Channel
Overview: Tạo Chatbot [TÊN_CONFIG]

Thao tác:
1. Truy cập AWS Chatbot Console
2. Chọn Slack workspace [TÊN_WORKSPACE]
3. Chọn channel [TÊN_CONFIG]
4. Kiểm tra config:
   - IAM role ARN: [TÊN_ROLE]
   - SNS topics đã liên kết: [TÊN_TOPIC]
   - Slack channel: [TÊN_CHANNEL]
```

---

## Backup ENV Pattern

Pattern chuẩn cho việc backup environment trước release:

```
Step: Backup env [TÊN_SERVICE]
Overview: Backup env [TÊN_SERVICE]

Thao tác:
1. Lưu lại env của secret manager [TÊN_SECRET_PROD] dạng json vào file [SERVICE]_sm_env_prod_release_[DDMMYYYY]_old.json
2. Lưu lại env của secret manager [TÊN_SECRET_STG] dạng json vào file [SERVICE]_sm_env_stg_release_[DDMMYYYY]_old.json
3. Exec vào ECS task [TÊN_TASK] và gõ lệnh printenv, lưu lại vào file [SERVICE]_prod_release_[DDMMYYYY]_old
```

Quy tắc đặt tên file backup: `{service}_sm_env_{env}_release_{DDMMYYYY}_{old|new}.json`

---

## Deploy Code Pattern

Pattern chuẩn cho deploy code qua git:

```
Step: Deploy code
Overview: SERVER: [TÊN_SERVER]
PULL_REQUEST: [PR_URL]

Thao tác:
1. Truy cập git repository [TÊN_REPO]
2. Tạo branch backup/[YYMMDD] từ branch [BRANCH_HIỆN_TẠI]
3. Thực hiện approve + merge pull request [PR_URL]
```

---

## Checking ENV Pattern

Pattern kiểm tra env sau khi update:

```
Step: Checking env [TÊN_SERVICE]
Overview: So sánh env sau khi update

Thao tác:
Sử dụng script check env để kiểm tra chắc chắn chỉ khác nhau ở các env mới giữa các file:

1. So sánh env PROD mới và env ở STG của SECRET MANAGER:
   [SERVICE]_sm_env_prod_release_[DDMMYYYY]_new.json
   [SERVICE]_sm_env_stg_release_[DDMMYYYY]_old.json

2. So sánh env mới và cũ của SECRET MANAGER PROD:
   [SERVICE]_sm_env_prod_release_[DDMMYYYY]_new.json
   [SERVICE]_sm_env_prod_release_[DDMMYYYY]_old.json

3. So sánh env mới và cũ của container:
   [SERVICE]_prod_release_[DDMMYYYY]_new
   [SERVICE]_prod_release_[DDMMYYYY]_old
```
