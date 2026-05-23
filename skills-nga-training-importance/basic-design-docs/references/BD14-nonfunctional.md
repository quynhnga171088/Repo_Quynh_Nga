# Template BD14 — Yêu cầu phi chức năng

## Mục đích
Định nghĩa các yêu cầu về hiệu năng, khả dụng, bảo mật, và khả năng mở rộng — những thứ không phải "chức năng" nhưng quyết định chất lượng hệ thống. Dễ bị bỏ sót trong giai đoạn đầu nhưng rất tốn kém nếu phải sửa sau khi đã deploy.

---

## Template

# [BD14] Yêu cầu phi chức năng

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Trạng thái | Draft |

## Lịch sử thay đổi

| Phiên bản | Ngày | Người thực hiện | Nội dung thay đổi |
|----------- |------ |----------------- |------------------- |
| 1.0 | YYYY-MM-DD | [Tên] | Tạo mới |

---

## 1. Yêu cầu hiệu năng

### 1.1. Response time

| Loại request | Mục tiêu | Điều kiện | Ghi chú |
|------------- |--------- |---------- |--------- |
| API thông thường (GET list) | < 500ms | 95th percentile, tải bình thường | |
| API tìm kiếm phức tạp | < 2s | 95th percentile, tải bình thường | Có full-text search |
| Upload file | < 5s/10MB | Mạng ổn định | |
| Export/Download | < 10s | File < 50MB | |
| Batch job | < 30 phút | 10,000 records | |

### 1.2. Throughput

| Chỉ số | Giá trị mục tiêu | Ghi chú |
|-------- |----------------- |--------- |
| Concurrent users | 100 users | Tải đồng thời thông thường |
| Peak concurrent users | 500 users | Tải đỉnh (giờ cao điểm) |
| API requests/giây | 50 RPS | Thông thường |
| API requests/giây (peak) | 200 RPS | Tải đỉnh |

### 1.3. Dung lượng dữ liệu

| Bảng | Dự kiến ban đầu | Sau 1 năm | Sau 3 năm |
|------ |---------------- |---------- |---------- |
| users | 100 | 500 | 2,000 |
| items | 1,000 | 10,000 | 50,000 |
| user_logs | 10,000 | 500,000 | 5,000,000 |

---

## 2. Yêu cầu khả dụng

| Chỉ số | Mục tiêu | Ghi chú |
|-------- |--------- |--------- |
| Uptime | 99.5% / tháng | Tương đương ~3.6 giờ downtime/tháng |
| Thời gian bảo trì (ngoài giờ) | Max 2 giờ/lần | Thông báo trước 24h |
| RTO (Recovery Time Objective) | < 2 giờ | Thời gian phục hồi sau sự cố |
| RPO (Recovery Point Objective) | < 24 giờ | Dữ liệu mất tối đa 24h |

### Chiến lược backup

| Loại | Tần suất | Lưu trữ | Thời gian giữ |
|------ |--------- |--------- |-------------- |
| Full backup DB | Hàng ngày (02:00 AM) | S3 | 30 ngày |
| Incremental backup | Mỗi 6 giờ | S3 | 7 ngày |
| Transaction log | Real-time | S3 | 3 ngày |
| File storage backup | Hàng ngày | S3 (cross-region) | 90 ngày |

---

## 3. Yêu cầu bảo mật

### 3.1. Xác thực & phân quyền

| Yêu cầu | Mô tả | Tiêu chuẩn |
|--------- |------- |----------- |
| Mật khẩu | Hash bằng bcrypt, cost factor ≥ 10 | OWASP |
| JWT Token | HS256 hoặc RS256, hết hạn sau 1 giờ | RFC 7519 |
| Refresh Token | Rotate on use, hết hạn sau 30 ngày | |
| Session | Invalidate on logout | |
| Brute force protection | Khóa tài khoản sau 5 lần sai | |
| MFA | Optional cho admin role | |

### 3.2. Truyền dữ liệu

| Yêu cầu | Mô tả |
|--------- |------- |
| HTTPS | Bắt buộc, TLS 1.2 trở lên |
| HTTP Strict Transport Security | HSTS header: max-age=31536000 |
| Certificate | Wildcard SSL từ Let's Encrypt hoặc CA tin cậy |
| API timeout | Connection: 30s, Read: 60s |

### 3.3. Mã hóa dữ liệu

| Dữ liệu | Phương pháp mã hóa | Ghi chú |
|--------- |------------------- |--------- |
| Mật khẩu | bcrypt hash | Không lưu plaintext |
| Dữ liệu cá nhân nhạy cảm | AES-256 | Nếu có |
| DB at rest | Transparent encryption (nếu cloud) | |
| Backup files | Encrypted S3 | |

### 3.4. Security headers

```
Content-Security-Policy: default-src 'self'
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-XSS-Protection: 1; mode=block
Referrer-Policy: strict-origin-when-cross-origin
```

---

## 4. Yêu cầu khả năng mở rộng

| Chiều mở rộng | Phương pháp | Mục tiêu |
|-------------- |------------ |--------- |
| Horizontal scaling (App) | Thêm app server (stateless) | Tăng 2x capacity trong 30 phút |
| Vertical scaling (DB) | Nâng cấp instance | Khi CPU/Memory đạt 70% |
| DB Read replicas | Tách read/write | Khi read load tăng 3x |
| CDN | Static assets | Thêm CDN khi có user nước ngoài |

---

## 5. Yêu cầu vận hành

### 5.1. Monitoring

| Chỉ số | Ngưỡng cảnh báo | Ngưỡng nghiêm trọng | Hành động |
|-------- |---------------- |-------------------- |---- |
| CPU usage | > 70% trong 5 phút | > 90% | Alert → Scale |
| Memory usage | > 75% | > 90% | Alert → Investigate |
| API error rate | > 1% | > 5% | Alert → Investigate |
| Response time p95 | > 2s | > 5s | Alert → Investigate |
| Disk usage | > 70% | > 85% | Alert → Expand |
| DB connections | > 80% max | > 95% | Alert → Scale |

### 5.2. Logging

| Loại log | Nội dung | Thời gian lưu |
|--------- |--------- |-------------- |
| Access log | IP, Method, URL, Status, Response time | 90 ngày |
| Error log | Stack trace, context | 1 năm |
| Audit log | User action, Before/After data | 2 năm |
| Security log | Auth attempts, Permission denials | 2 năm |

### 5.3. Môi trường

| Môi trường | Mục đích | Infrastructure |
|----------- |--------- |--------------- |
| Development | Phát triển nội bộ | Docker compose local |
| Staging | Test & UAT | AWS t3.medium |
| Production | Sản xuất thực tế | AWS c5.xlarge x2 + RDS |

---

## 6. Yêu cầu tương thích

### 6.1. Browser support

| Browser | Version tối thiểu | Ghi chú |
|--------- |----------------- |--------- |
| Google Chrome | Latest -1 | |
| Mozilla Firefox | Latest -1 | |
| Microsoft Edge | Latest -1 | |
| Safari | Latest -1 | macOS/iOS |
| Safari iOS | iOS 14+ | |
| Android Chrome | Android 8+ | |
| Internet Explorer | Không hỗ trợ | |

### 6.2. Device & Screen size

| Loại thiết bị | Độ phân giải | Ghi chú |
|------------- |------------- |--------- |
| Desktop | 1280px+ | Primary |
| Tablet | 768px - 1279px | Responsive |
| Mobile | 320px - 767px | Responsive (nếu yêu cầu) |

---

## Hướng dẫn điền template BD14

1. **Số cụ thể, không chung chung:** Thay vì "hệ thống phải nhanh", hãy ghi "< 500ms tại 95th percentile"
2. **Confirm với khách hàng:** Những con số này cần được phía khách hàng xác nhận và ký — đó là SLA
3. **Backup strategy** hay bị bỏ sót — hỏi khách hàng ngay từ đầu
4. **Browser support** cần hỏi khách hàng — tùy tổ chức vẫn có thể bắt hỗ trợ IE/Edge cũ
5. **RTO/RPO** — nếu khách hàng chưa hiểu, giải thích: RTO = hệ thống restore trong bao lâu, RPO = chấp nhận mất dữ liệu bao nhiêu
