# Kubernetes / Helm Release Step Patterns

Chi tiết các pattern viết thao tác cho Kubernetes và Helm deployments.
Áp dụng cho EKS (AWS), GKE (GCP), AKS (Azure), hoặc self-managed clusters.

## Table of Contents
- [Helm Release](#helm-release)
- [Deployment / StatefulSet](#deployment--statefulset)
- [Service / Ingress](#service--ingress)
- [ConfigMap / Secret](#configmap--secret)
- [HPA (Horizontal Pod Autoscaler)](#hpa)
- [PVC (Persistent Volume Claim)](#pvc)
- [CronJob / Job](#cronjob--job)
- [Namespace / RBAC](#namespace--rbac)
- [Backup Pattern](#backup-pattern)
- [Deploy Pattern](#deploy-pattern)
- [Verify Pattern](#verify-pattern)
- [Rollback Pattern](#rollback-pattern)

---

## Helm Release

### Deploy Helm chart
```
Step: Deploy Helm chart [TÊN_CHART]
Overview: Deploy/upgrade Helm release

Thao tác:
1. Kiểm tra context đúng cluster:
   kubectl config current-context
   Expected: [TÊN_CONTEXT]

2. Kiểm tra namespace:
   kubectl get namespace [NAMESPACE]

3. Dry-run trước khi deploy:
   helm upgrade --install [RELEASE_NAME] [CHART_PATH] \
     -n [NAMESPACE] \
     -f values-[ENV].yaml \
     --dry-run --debug

4. So sánh output dry-run với bản đã review trước đó

5. Deploy:
   helm upgrade --install [RELEASE_NAME] [CHART_PATH] \
     -n [NAMESPACE] \
     -f values-[ENV].yaml \
     --wait --timeout [TIMEOUT]

6. Kiểm tra status:
   helm status [RELEASE_NAME] -n [NAMESPACE]
   Expected: STATUS = deployed
```

### Helm values thay đổi
```
Step: Update Helm values [TÊN_RELEASE]
Overview: Thay đổi [MÔ_TẢ]

Thao tác:
Kiểm tra file values-[ENV].yaml đã cập nhật:

Hiện tại:
  [KEY_PATH]: [GIÁ_TRỊ_CŨ]

Update:
  [KEY_PATH]: [GIÁ_TRỊ_MỚI]

(Không ghi giá trị secret. Tham chiếu file ENV riêng nếu là secret)
```

---

## Deployment / StatefulSet

### Scale Deployment
```
Step: Scale Deployment [TÊN_DEPLOYMENT]
Overview: Điều chỉnh replicas

Thao tác:
1. Kiểm tra trạng thái hiện tại:
   kubectl get deployment [TÊN_DEPLOYMENT] -n [NAMESPACE]

Hiện tại:
- Replicas: [SỐ_CŨ]

Update:
- Replicas: [SỐ_MỚI]

2. Scale:
   kubectl scale deployment [TÊN_DEPLOYMENT] -n [NAMESPACE] --replicas=[SỐ_MỚI]

3. Verify:
   kubectl rollout status deployment [TÊN_DEPLOYMENT] -n [NAMESPACE]
   kubectl get pods -n [NAMESPACE] -l app=[LABEL]
```

### Update Deployment resource limits
```
Step: Update resource [TÊN_DEPLOYMENT]
Overview: Điều chỉnh resource limits

Thao tác:
Kiểm tra deployment [TÊN_DEPLOYMENT] đã cập nhật:

Hiện tại:
- requests:
  cpu: [GIÁ_TRỊ_CŨ]
  memory: [GIÁ_TRỊ_CŨ]
- limits:
  cpu: [GIÁ_TRỊ_CŨ]
  memory: [GIÁ_TRỊ_CŨ]

Update:
- requests:
  cpu: [GIÁ_TRỊ_MỚI]
  memory: [GIÁ_TRỊ_MỚI]
- limits:
  cpu: [GIÁ_TRỊ_MỚI]
  memory: [GIÁ_TRỊ_MỚI]
```

### Verify Deployment
```
Step: Verify Deployment [TÊN_DEPLOYMENT]
Overview: Kiểm tra deployment

Thao tác:
1. Kiểm tra rollout status:
   kubectl rollout status deployment [TÊN_DEPLOYMENT] -n [NAMESPACE]
   Expected: "successfully rolled out"

2. Kiểm tra pods:
   kubectl get pods -n [NAMESPACE] -l app=[LABEL]
   Expected: Tất cả pods Running, READY [X/X]

3. Kiểm tra logs:
   kubectl logs -n [NAMESPACE] -l app=[LABEL] --tail=50
   Expected: Không có error

4. Kiểm tra describe (events):
   kubectl describe deployment [TÊN_DEPLOYMENT] -n [NAMESPACE]
   Expected: Không có warning events
```

---

## Service / Ingress

### Tạo/Update Service
```
Step: Tạo Service [TÊN_SERVICE]
Overview: Tạo Kubernetes service

Thao tác:
Kiểm tra service [TÊN_SERVICE] trong namespace [NAMESPACE]:
kubectl get svc [TÊN_SERVICE] -n [NAMESPACE] -o yaml

Expected config:
- Type: [ClusterIP/NodePort/LoadBalancer]
- Port: [PORT]
- TargetPort: [TARGET_PORT]
- Selector: [LABEL_SELECTOR]
```

### Tạo/Update Ingress
```
Step: Tạo Ingress [TÊN_INGRESS]
Overview: Tạo ingress rule

Thao tác:
Kiểm tra ingress [TÊN_INGRESS] trong namespace [NAMESPACE]:
kubectl get ingress [TÊN_INGRESS] -n [NAMESPACE] -o yaml

Expected config:
- Host: [DOMAIN]
- Path: [PATH]
- Backend service: [TÊN_SERVICE]:[PORT]
- TLS: [TÊN_SECRET_TLS] (nếu có)
- Annotations:
  [KEY]: [VALUE]
```

---

## ConfigMap / Secret

### Update ConfigMap
```
Step: Update ConfigMap [TÊN_CM]
Overview: Cập nhật config

Thao tác:
1. Kiểm tra ConfigMap hiện tại:
   kubectl get configmap [TÊN_CM] -n [NAMESPACE] -o yaml

2. Xác nhận đã cập nhật:
   [KEY_1]: [GIÁ_TRỊ_MỚI]
   [KEY_2]: [GIÁ_TRỊ_MỚI]
   (Không ghi giá trị secret)

3. Restart pods để apply:
   kubectl rollout restart deployment [TÊN_DEPLOYMENT] -n [NAMESPACE]
```

### Update Secret
```
Step: Update Secret [TÊN_SECRET]
Overview: Cập nhật secret

Thao tác:
1. Update secret theo file ENV riêng
2. Restart pods:
   kubectl rollout restart deployment [TÊN_DEPLOYMENT] -n [NAMESPACE]
3. Verify pods running:
   kubectl get pods -n [NAMESPACE] -l app=[LABEL]
```

(Không ghi giá trị secret trực tiếp)

---

## HPA

### Tạo/Update HPA
```
Step: Update HPA [TÊN_HPA]
Overview: Điều chỉnh autoscaling

Thao tác:
Kiểm tra HPA [TÊN_HPA] trong namespace [NAMESPACE]:
kubectl get hpa [TÊN_HPA] -n [NAMESPACE]

Hiện tại:
- minReplicas: [SỐ_CŨ]
- maxReplicas: [SỐ_CŨ]
- metrics:
  - type: Resource
    resource: cpu
    target: averageUtilization: [SỐ_CŨ]

Update:
- minReplicas: [SỐ_MỚI]
- maxReplicas: [SỐ_MỚI]
- metrics:
  - type: Resource
    resource: cpu
    target: averageUtilization: [SỐ_MỚI]
```

---

## PVC

### Tạo PVC
```
Step: Tạo PVC [TÊN_PVC]
Overview: Tạo persistent volume claim

Thao tác:
Kiểm tra PVC [TÊN_PVC] trong namespace [NAMESPACE]:
kubectl get pvc [TÊN_PVC] -n [NAMESPACE]

Expected:
- Status: Bound
- Storage class: [TÊN_SC]
- Capacity: [SIZE]
- Access modes: [ReadWriteOnce/ReadWriteMany]
```

---

## CronJob / Job

### Tạo CronJob
```
Step: Tạo CronJob [TÊN_CRONJOB]
Overview: Tạo scheduled job

Thao tác:
Kiểm tra CronJob [TÊN_CRONJOB] trong namespace [NAMESPACE]:
kubectl get cronjob [TÊN_CRONJOB] -n [NAMESPACE]

Expected:
- Schedule: [CRON_EXPRESSION]
- Image: [IMAGE]
- Concurrency policy: [Allow/Forbid/Replace]
- Successful jobs history: [SỐ]
- Failed jobs history: [SỐ]
```

---

## Namespace / RBAC

### Tạo Namespace
```
Step: Tạo Namespace [TÊN_NS]
Overview: Tạo namespace mới

Thao tác:
1. kubectl create namespace [TÊN_NS]
2. Verify: kubectl get namespace [TÊN_NS]
3. Apply resource quotas (nếu có):
   kubectl get resourcequota -n [TÊN_NS]
```

### Update RBAC
```
Step: Update RBAC [TÊN_ROLE]
Overview: Cấp quyền [MÔ_TẢ]

Thao tác:
Kiểm tra RoleBinding/ClusterRoleBinding:
kubectl get rolebinding [TÊN_BINDING] -n [NAMESPACE] -o yaml

Expected:
- Role: [TÊN_ROLE]
- Subjects: [SERVICE_ACCOUNT/USER/GROUP]
```

---

## Backup Pattern

Backup trước khi thay đổi Kubernetes resources:

```
Step: Backup Kubernetes resources
Overview: Backup [MÔ_TẢ]

Thao tác:
1. Backup Helm release:
   helm get values [RELEASE_NAME] -n [NAMESPACE] -o yaml > [RELEASE]_values_[DDMMYYYY]_old.yaml
   helm get manifest [RELEASE_NAME] -n [NAMESPACE] > [RELEASE]_manifest_[DDMMYYYY]_old.yaml

2. Backup specific resources:
   kubectl get deployment [NAME] -n [NS] -o yaml > [NAME]_deployment_[DDMMYYYY]_old.yaml
   kubectl get configmap [NAME] -n [NS] -o yaml > [NAME]_cm_[DDMMYYYY]_old.yaml
   kubectl get secret [NAME] -n [NS] -o yaml > [NAME]_secret_[DDMMYYYY]_old.yaml

3. Backup Helm chart repo (git):
   git branch backup-release-[YYYYMMDD]
```

---

## Deploy Pattern

```
Step: Deploy [TÊN_SERVICE]
Overview: Deploy qua Helm/kubectl

Thao tác (Helm):
1. Pull latest chart:
   git pull origin [BRANCH]

2. Dry-run:
   helm upgrade --install [RELEASE] [CHART] -n [NS] -f values-[ENV].yaml --dry-run

3. So sánh với bản review trước đó

4. Apply:
   helm upgrade --install [RELEASE] [CHART] -n [NS] -f values-[ENV].yaml --wait --timeout 5m

5. Verify:
   helm status [RELEASE] -n [NS]
   kubectl get pods -n [NS] -l app=[LABEL]

Thao tác (kubectl apply):
1. Dry-run:
   kubectl apply -f [FILE] -n [NS] --dry-run=client

2. Apply:
   kubectl apply -f [FILE] -n [NS]

3. Verify:
   kubectl rollout status deployment [NAME] -n [NS]
```

---

## Verify Pattern

```
Step: Verify deployment [TÊN_SERVICE]
Overview: Kiểm tra toàn diện

Thao tác:
1. Pods running:
   kubectl get pods -n [NS] -l app=[LABEL]
   Expected: tất cả Running, READY

2. Service accessible:
   kubectl port-forward svc/[SVC] [LOCAL_PORT]:[SVC_PORT] -n [NS]
   curl localhost:[LOCAL_PORT]/health

3. Logs clean:
   kubectl logs -n [NS] -l app=[LABEL] --tail=100 --since=5m
   Expected: không có error/panic

4. Events clean:
   kubectl get events -n [NS] --sort-by='.lastTimestamp' | tail -20
   Expected: không có Warning events mới

5. Resource usage:
   kubectl top pods -n [NS] -l app=[LABEL]
   Expected: CPU/Memory trong giới hạn
```

---

## Rollback Pattern

```
Step: Rollback [TÊN_SERVICE]
Overview: Rollback về version trước

Thao tác (Helm):
1. Kiểm tra history:
   helm history [RELEASE] -n [NS]

2. Rollback:
   helm rollback [RELEASE] [REVISION] -n [NS] --wait --timeout 5m

3. Verify:
   helm status [RELEASE] -n [NS]
   kubectl get pods -n [NS] -l app=[LABEL]

Thao tác (kubectl):
1. Rollback deployment:
   kubectl rollout undo deployment [NAME] -n [NS]

2. Verify:
   kubectl rollout status deployment [NAME] -n [NS]
   kubectl get pods -n [NS] -l app=[LABEL]

Thao tác (từ backup branch):
1. Checkout backup branch:
   git checkout backup-release-[YYYYMMDD]

2. Deploy lại từ backup:
   helm upgrade --install [RELEASE] [CHART] -n [NS] -f values-[ENV].yaml --wait
```
