# Azure Release Step Patterns

Chi tiết các pattern viết thao tác cho từng loại Azure resource.

## Table of Contents
- [App Service / Web App](#app-service--web-app)
- [AKS (Azure Kubernetes Service)](#aks)
- [Azure SQL / Cosmos DB](#azure-sql--cosmos-db)
- [Azure Service Bus](#azure-service-bus)
- [Azure RBAC / Managed Identity](#azure-rbac--managed-identity)
- [Azure Blob Storage](#azure-blob-storage)
- [Azure Monitor / Alerts](#azure-monitor--alerts)
- [Azure Key Vault](#azure-key-vault)
- [Azure DevOps Pipeline](#azure-devops-pipeline)
- [Azure DNS](#azure-dns)
- [Azure Application Gateway / Front Door](#azure-application-gateway--front-door)
- [Azure Container Registry (ACR)](#azure-container-registry)
- [Backup ENV Pattern](#backup-env-pattern)
- [Deploy Code Pattern](#deploy-code-pattern)

---

## App Service / Web App

### Scale App Service
```
Step: Điều chỉnh App Service [TÊN_APP]
Overview: Điều chỉnh scale config

Thao tác:
1. Truy cập Azure Portal > App Services > [TÊN_APP]
2. Chọn "Scale up (App Service plan)" hoặc "Scale out (App Service plan)"

Hiện tại:
- SKU: [GIÁ_TRỊ_CŨ]
- Instance count: [SỐ_CŨ]

Update:
- SKU: [GIÁ_TRỊ_MỚI]
- Instance count: [SỐ_MỚI]

3. Click "Apply"
```

### Verify App Service
```
Step: Verify App Service [TÊN_APP]
Overview: Kiểm tra App Service

Thao tác:
1. Truy cập Azure Portal > App Services > [TÊN_APP]
2. Kiểm tra "Overview": Status = Running
3. Kiểm tra "Log stream": không có error
4. Test endpoint: curl [APP_URL]/health
```

---

## AKS

Xem thêm `references/k8s-patterns.md` cho các pattern Kubernetes chung.

### AKS-specific: Node Pool
```
Step: Update AKS Node Pool [TÊN_POOL]
Overview: Điều chỉnh node pool

Thao tác:
1. Truy cập Azure Portal > Kubernetes services > [TÊN_CLUSTER]
2. Chọn "Node pools" > [TÊN_POOL]
3. Click "Scale node pool"

Hiện tại:
- VM size: [SIZE_CŨ]
- Node count: [MIN_CŨ]-[MAX_CŨ]

Update:
- VM size: [SIZE_MỚI]
- Node count: [MIN_MỚI]-[MAX_MỚI]
```

---

## Azure SQL / Cosmos DB

### Backup trước thay đổi
```
Step: Backup Azure SQL [TÊN_DB]
Overview: Tạo backup trước [THAO_TÁC]

Thao tác:
1. Truy cập Azure Portal > SQL databases > [TÊN_DB]
2. Chọn "Export" để tạo BACPAC file
3. Storage account: [TÊN_STORAGE]
4. Container: [TÊN_CONTAINER]
5. File name: [TÊN_DB]-pre-[THAO_TÁC]-[YYYYMMDD].bacpac
6. Click "OK" và đợi export hoàn thành
```

Hoặc CLI:
```
az sql db export --admin-password [REFER_TO_ENV_FILE] \
  --admin-user [USER] \
  --storage-key-type StorageAccessKey \
  --storage-key [REFER_TO_ENV_FILE] \
  --storage-uri "https://[STORAGE].blob.core.windows.net/[CONTAINER]/[FILE].bacpac" \
  --name [DB_NAME] --resource-group [RG] --server [SERVER]
```

### Verify sau thay đổi DB
```
Step: Verify Azure SQL sau thay đổi
Overview: Kiểm tra [TÊN_DB]

Thao tác:
1. Truy cập Azure Portal > SQL databases > [TÊN_DB]
2. Kiểm tra Status: Online
3. Kiểm tra pricing tier/SKU đúng
4. Test connectivity từ application
5. Kiểm tra "Query performance insight": không có anomaly
```

---

## Azure Service Bus

### Tạo Queue / Topic
```
Step: Tạo Service Bus Queue [TÊN_QUEUE]
Overview: Tạo queue

Thao tác:
1. Truy cập Azure Portal > Service Bus > [TÊN_NAMESPACE]
2. Chọn "Queues" > kiểm tra queue [TÊN_QUEUE] đã tạo
3. Kiểm tra config:
   - Max delivery count: [SỐ]
   - Message TTL: [THỜI_GIAN]
   - Lock duration: [THỜI_GIAN]
   - Dead lettering: [Enabled/Disabled]
   - Max size: [GIÁ_TRỊ]
```

---

## Azure RBAC / Managed Identity

### Gán Role Assignment
```
Step: Update RBAC [TÊN_IDENTITY]
Overview: Cấp quyền [MÔ_TẢ]

Thao tác:
1. Truy cập Azure Portal > [RESOURCE] > Access control (IAM)
2. Click "Add role assignment"
3. Role: [TÊN_ROLE]
4. Members: [TÊN_IDENTITY]
5. Verify: Kiểm tra trong tab "Role assignments"
```

---

## Azure Blob Storage

### Kiểm tra Storage Account
```
Step: Kiểm tra Storage [TÊN_STORAGE]
Overview: Kiểm tra storage config

Thao tác:
1. Truy cập Azure Portal > Storage accounts > [TÊN_STORAGE]
2. Kiểm tra config:
   - Replication: [LRS/GRS/...]
   - Access tier: [Hot/Cool/Archive]
   - Encryption: [Microsoft-managed/Customer-managed]
   - Lifecycle management: [MÔ_TẢ_RULES]
```

---

## Azure Monitor / Alerts

### Tạo Alert Rule
```
Step: Tạo Alert Rule [TÊN_ALERT]
Overview: Tạo monitoring alert

Thao tác:
1. Truy cập Azure Portal > Monitor > Alerts > Alert rules
2. Kiểm tra alert [TÊN_ALERT]:
   - Resource: [TÊN_RESOURCE]
   - Condition: [METRIC] [OPERATOR] [THRESHOLD]
   - Evaluation period: [THỜI_GIAN]
   - Action group: [TÊN_ACTION_GROUP]
```

---

## Azure Key Vault

### Update Secret
```
Step: Update Key Vault
Overview: Update secret [TÊN_SECRET]

Thao tác:
1. Truy cập Azure Portal > Key vaults > [TÊN_VAULT]
2. Chọn "Secrets" > [TÊN_SECRET]
3. Click "New Version"
4. Set giá trị theo file ENV riêng
5. Click "Create"
```

(Không ghi giá trị secret trực tiếp vào release step)

---

## Azure DevOps Pipeline

### Theo dõi Pipeline
```
Step: Theo dõi Azure Pipeline
Overview: SERVER: [TÊN_SERVICE]

Thao tác:
1. Truy cập Azure DevOps > Pipelines > [TÊN_PIPELINE]
2. Theo dõi run mới nhất
3. Nếu build thành công, approve deployment (nếu có approval gate)
4. Kiểm tra các stages đều pass
5. Verify deployment target
```

---

## Azure DNS

### Tạo DNS Record
```
Step: Tạo DNS record [TÊN_RECORD]
Overview: Tạo DNS record

Thao tác:
1. Truy cập Azure Portal > DNS zones > [TÊN_ZONE]
2. Click "+ Record set"
3. Name: [TÊN_RECORD]
4. Type: [A/CNAME/...]
5. TTL: [GIÁ_TRỊ]
6. Value: [GIÁ_TRỊ]
```

---

## Azure Application Gateway / Front Door

### Update Rule
```
Step: Update Application Gateway [TÊN_AG]
Overview: [MÔ_TẢ_THAY_ĐỔI]

Thao tác:
1. Truy cập Azure Portal > Application gateways > [TÊN_AG]
2. [CHI_TIẾT_THAY_ĐỔI theo routing rules / backend pools / health probes]
```

---

## Azure Container Registry

### Kiểm tra ACR
```
Step: Kiểm tra ACR [TÊN_ACR]
Overview: Kiểm tra container registry

Thao tác:
1. Truy cập Azure Portal > Container registries > [TÊN_ACR]
2. Kiểm tra:
   - SKU: [Basic/Standard/Premium]
   - Repositories: [TÊN_REPO] tồn tại
   - Retention policy: [MÔ_TẢ]
```

---

## Backup ENV Pattern

```
Step: Backup env [TÊN_SERVICE]
Overview: Backup env

Thao tác:
1. App Service:
   - Truy cập Azure Portal > App Services > [TÊN_APP] > Configuration
   - Export Application settings dạng JSON vào file [SERVICE]_env_prod_release_[DDMMYYYY]_old.json

2. Key Vault:
   - List secrets: az keyvault secret list --vault-name [VAULT] -o json > [SERVICE]_kv_prod_release_[DDMMYYYY]_old.json

3. AKS (ConfigMap/Secret):
   - kubectl get configmap [NAME] -n [NS] -o yaml > [SERVICE]_cm_prod_release_[DDMMYYYY]_old.yaml
   - kubectl get secret [NAME] -n [NS] -o yaml > [SERVICE]_secret_prod_release_[DDMMYYYY]_old.yaml
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
4. Theo dõi Azure DevOps Pipeline
5. Approve deployment (nếu có approval gate)
6. Verify service đã deploy thành công
```
