# GCP Release Step Patterns

Chi tiết các pattern viết thao tác cho từng loại GCP resource.

## Table of Contents
- [Cloud Run](#cloud-run)
- [GKE (Google Kubernetes Engine)](#gke)
- [Cloud SQL](#cloud-sql)
- [Cloud Pub/Sub](#cloud-pubsub)
- [IAM](#iam)
- [Cloud Storage (GCS)](#cloud-storage)
- [Cloud Monitoring](#cloud-monitoring)
- [Secret Manager](#secret-manager)
- [Cloud Build](#cloud-build)
- [Cloud DNS](#cloud-dns)
- [Cloud Load Balancing](#cloud-load-balancing)
- [Artifact Registry](#artifact-registry)
- [Backup ENV Pattern](#backup-env-pattern)
- [Deploy Code Pattern](#deploy-code-pattern)

---

## Cloud Run

### Tạo/Update Cloud Run Service
```
Step: Update Cloud Run service [TÊN_SERVICE]
Overview: Điều chỉnh [MÔ_TẢ_THAY_ĐỔI]

Thao tác:
1. Truy cập GCP Console > Cloud Run > [TÊN_SERVICE]
2. Chọn "Edit & Deploy New Revision"
3. Kiểm tra/điều chỉnh config:

Hiện tại:
- Min instances: [GIÁ_TRỊ_CŨ]
- Max instances: [GIÁ_TRỊ_CŨ]
- CPU: [GIÁ_TRỊ_CŨ]
- Memory: [GIÁ_TRỊ_CŨ]

Update:
- Min instances: [GIÁ_TRỊ_MỚI]
- Max instances: [GIÁ_TRỊ_MỚI]
- CPU: [GIÁ_TRỊ_MỚI]
- Memory: [GIÁ_TRỊ_MỚI]

4. Click "Deploy"
5. Đợi revision mới status = "Serving"
```

Hoặc qua CLI:
```
gcloud run services update [TÊN_SERVICE] \
  --region=[REGION] \
  --min-instances=[SỐ] \
  --max-instances=[SỐ] \
  --memory=[GIÁ_TRỊ] \
  --cpu=[GIÁ_TRỊ]
```

### Verify Cloud Run Service
```
Step: Verify Cloud Run [TÊN_SERVICE]
Overview: Kiểm tra service hoạt động

Thao tác:
1. Truy cập GCP Console > Cloud Run > [TÊN_SERVICE]
2. Kiểm tra tab "Revisions": revision mới đang serving 100% traffic
3. Kiểm tra tab "Logs": không có error
4. Test endpoint: curl [SERVICE_URL]/health
```

---

## GKE

Xem thêm `references/k8s-patterns.md` cho các pattern Kubernetes chung.

### GKE-specific: Node Pool
```
Step: Update GKE Node Pool [TÊN_POOL]
Overview: Điều chỉnh node pool

Thao tác:
1. Truy cập GCP Console > Kubernetes Engine > Clusters > [TÊN_CLUSTER]
2. Chọn tab "Nodes" > [TÊN_POOL]
3. Click "Edit"

Hiện tại:
- Machine type: [LOẠI_CŨ]
- Min nodes: [SỐ_CŨ]
- Max nodes: [SỐ_CŨ]

Update:
- Machine type: [LOẠI_MỚI]
- Min nodes: [SỐ_MỚI]
- Max nodes: [SỐ_MỚI]
```

---

## Cloud SQL

### Backup trước thay đổi
```
Step: Backup Cloud SQL [TÊN_INSTANCE]
Overview: Tạo backup trước [THAO_TÁC]

Thao tác:
1. Truy cập GCP Console > Cloud SQL > [TÊN_INSTANCE]
2. Chọn tab "Backups" > "Create backup"
3. Description: pre-[THAO_TÁC]-[YYYYMMDD]
4. Click "Create"
5. Đợi backup status = "Successful"
```

Hoặc CLI:
```
gcloud sql backups create --instance=[TÊN_INSTANCE] \
  --description="pre-[THAO_TÁC]-[YYYYMMDD]"
```

### Upgrade Cloud SQL version
```
Step: Upgrade Cloud SQL [TÊN_INSTANCE]
Overview: Upgrade database version

Thao tác:
1. Truy cập GCP Console > Cloud SQL > [TÊN_INSTANCE]
2. Click "Edit"
3. Database version:
   - Hiện tại: [VERSION_CŨ]
   - Update: [VERSION_MỚI]
4. Click "Save"
5. Theo dõi status cho đến khi trở về "Running"
```

### Verify sau upgrade
```
Step: Verify Cloud SQL sau upgrade
Overview: Kiểm tra [TÊN_INSTANCE]

Thao tác:
1. Kiểm tra database version: [VERSION_MỚI]
2. Kiểm tra status: Running
3. Test connectivity từ application
4. Kiểm tra tab "Operations": không có error
```

---

## Cloud Pub/Sub

### Tạo Topic và Subscription
```
Step: Tạo Pub/Sub Topic [TÊN_TOPIC]
Overview: Tạo topic và subscription

Thao tác:
1. Truy cập GCP Console > Pub/Sub > Topics
2. Kiểm tra topic [TÊN_TOPIC] đã được tạo
3. Kiểm tra subscription [TÊN_SUBSCRIPTION]:
   - Delivery type: [Pull/Push]
   - Ack deadline: [SỐ] seconds
   - Message retention: [THỜI_GIAN]
   - Dead letter topic: [TÊN_DLT] (nếu có)
```

---

## IAM

### Update IAM binding
```
Step: Update IAM [TÊN_SA]
Overview: Cấp quyền [MÔ_TẢ]

Thao tác:
1. Truy cập GCP Console > IAM & Admin > IAM
2. Tìm service account: [TÊN_SA]@[PROJECT].iam.gserviceaccount.com
3. Kiểm tra roles:
   - [ROLE_1]: roles/[TÊN_ROLE]
   - [ROLE_2]: roles/[TÊN_ROLE]
```

Hoặc CLI:
```
gcloud projects add-iam-policy-binding [PROJECT_ID] \
  --member="serviceAccount:[TÊN_SA]@[PROJECT].iam.gserviceaccount.com" \
  --role="roles/[TÊN_ROLE]"
```

---

## Cloud Storage

### Kiểm tra GCS Bucket
```
Step: Kiểm tra GCS bucket [TÊN_BUCKET]
Overview: Kiểm tra bucket config

Thao tác:
1. Truy cập GCP Console > Cloud Storage > [TÊN_BUCKET]
2. Kiểm tra config:
   - Location: [REGION/MULTI-REGION]
   - Storage class: [STANDARD/NEARLINE/...]
   - Versioning: [Enabled/Disabled]
   - Lifecycle rules: [MÔ_TẢ]
   - Encryption: [Google-managed/CMEK]
```

---

## Cloud Monitoring

### Tạo Alert Policy
```
Step: Tạo Alert Policy [TÊN_ALERT]
Overview: Tạo monitoring alert

Thao tác:
1. Truy cập GCP Console > Monitoring > Alerting
2. Kiểm tra alert policy [TÊN_ALERT]:
   - Metric: [TÊN_METRIC]
   - Condition: [ĐIỀU_KIỆN]
   - Duration: [THỜI_GIAN]
   - Notification channel: [KÊNH]
```

---

## Secret Manager

### Update Secret
```
Step: Update Secret Manager
Overview: Update secret [TÊN_SECRET]

Thao tác:
1. Truy cập GCP Console > Secret Manager
2. Tìm secret: [TÊN_SECRET]
3. Add new version với giá trị theo file ENV riêng
4. Disable version cũ (nếu cần)
```

(Không ghi giá trị secret trực tiếp vào release step)

---

## Cloud Build

### Kiểm tra Cloud Build trigger
```
Step: Kiểm tra Cloud Build trigger
Overview: Kiểm tra trigger [TÊN_TRIGGER]

Thao tác:
1. Truy cập GCP Console > Cloud Build > Triggers
2. Tìm trigger [TÊN_TRIGGER]
3. Kiểm tra config:
   - Source: [REPO/BRANCH]
   - Build config: [FILE_PATH]
   - Substitution variables: theo file ENV riêng
```

---

## Cloud DNS

### Tạo DNS Record
```
Step: Tạo DNS record [TÊN_RECORD]
Overview: Tạo DNS record

Thao tác:
1. Truy cập GCP Console > Cloud DNS > [TÊN_ZONE]
2. Click "Add standard"
3. DNS name: [TÊN_RECORD]
4. Resource record type: [A/CNAME/...]
5. TTL: [GIÁ_TRỊ]
6. Value: [GIÁ_TRỊ]
```

---

## Cloud Load Balancing

### Update URL Map / Backend Service
```
Step: Update Load Balancer [TÊN_LB]
Overview: [MÔ_TẢ_THAY_ĐỔI]

Thao tác:
1. Truy cập GCP Console > Network services > Load balancing
2. Chọn [TÊN_LB]
3. Click "Edit"
4. [CHI_TIẾT_THAY_ĐỔI]
```

---

## Artifact Registry

### Kiểm tra Repository
```
Step: Kiểm tra Artifact Registry [TÊN_REPO]
Overview: Kiểm tra container registry

Thao tác:
1. Truy cập GCP Console > Artifact Registry
2. Kiểm tra repository [TÊN_REPO]:
   - Format: Docker
   - Location: [REGION]
   - Cleanup policies: [MÔ_TẢ]
```

---

## Backup ENV Pattern

```
Step: Backup env [TÊN_SERVICE]
Overview: Backup env [TÊN_SERVICE]

Thao tác:
1. Lưu lại secret từ Secret Manager [TÊN_SECRET] dạng json vào file [SERVICE]_sm_env_prod_release_[DDMMYYYY]_old.json

2. Lấy env từ running container:
   - Cloud Run: gcloud run services describe [SERVICE] --region=[REGION] --format=json > [SERVICE]_env_prod_release_[DDMMYYYY]_old.json
   - GKE: kubectl exec -it [POD_NAME] -n [NAMESPACE] -- printenv > [SERVICE]_env_prod_release_[DDMMYYYY]_old
```

---

## Deploy Code Pattern

```
Step: Deploy code
Overview: SERVER: [TÊN_SERVICE]

Thao tác:
1. Truy cập git repository [TÊN_REPO]
2. Tạo branch backup/[YYMMDD] từ branch [BRANCH_HIỆN_TẠI]
3. Merge PR / Push to trigger branch
4. Theo dõi Cloud Build: GCP Console > Cloud Build > History
5. Kiểm tra build thành công, revision mới đang serving
```
