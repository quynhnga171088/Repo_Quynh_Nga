# Template BD02 — Tài liệu kiến trúc

## Mục đích
Giải thích các quyết định kiến trúc tổng thể cho hệ thống lớn, microservice, hoặc khi cần giải thích tech stack cho khách hàng. Khác với BD01 (mô tả cái gì), BD02 giải thích lý do (tại sao chọn kiến trúc này).

**Khi nào cần:** Hệ thống lớn, microservice, cần justification cho tech choices, hoặc khách hàng hỏi về architecture.

---

## Template

# [BD02] Tài liệu kiến trúc

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên Tech Lead] |
| Trạng thái | Draft |

---

## 1. Tổng quan kiến trúc

### Pattern kiến trúc

[Ví dụ: Monolithic / Layered MVC / Microservices / Serverless]

**Lý do lựa chọn:** [Giải thích tại sao chọn pattern này cho dự án này]

### Tech Stack

| Layer | Technology | Lý do chọn |
|------- |----------- |----------- |
| Frontend | React 18 + TypeScript | Type safety, component reuse, client demand |
| Backend | Node.js + Express / Java Spring | Team expertise, performance |
| Database | MySQL 8.x | ACID compliance, team familiarity |
| Cache | Redis | Low latency read, session storage |
| Message Queue | RabbitMQ / Kafka | Async processing, decoupling |
| Infrastructure | AWS (EC2, RDS, S3) | Client requirement |
| CI/CD | GitHub Actions | Version control integration |
| Container | Docker + Compose | Dev environment consistency |

---

## 2. Kiến trúc tổng thể

```mermaid
graph TB
    subgraph Client ["Client Layer"]
        Browser["Web Browser<br/>React SPA"]
        Mobile["Mobile App<br/>(Future)"]
    end

    subgraph CDN ["CDN Layer"]
        CF["CloudFront<br/>Static Assets"]
    end

    subgraph Gateway ["API Gateway Layer"]
        GW["API Gateway<br/>Nginx + Rate Limiting"]
    end

    subgraph App ["Application Layer"]
        Auth["Auth Service<br/>Node.js"]
        Core["Core Service<br/>Node.js"]
        Notify["Notification Service<br/>Node.js"]
    end

    subgraph Data ["Data Layer"]
        PrimaryDB[("Primary DB<br/>MySQL")]
        ReadDB[("Read Replica<br/>MySQL")]
        Cache[("Cache<br/>Redis")]
        Queue[("Message Queue<br/>RabbitMQ")]
    end

    subgraph Storage ["Storage"]
        S3["File Storage<br/>AWS S3"]
    end

    Browser --> CF
    Browser --> GW
    GW --> Auth
    GW --> Core
    Core --> Queue
    Queue --> Notify
    Auth --> PrimaryDB
    Core --> PrimaryDB
    Core --> ReadDB
    Core --> Cache
    Core --> S3
    Notify --> S3
```

---

## 3. Các quyết định kiến trúc quan trọng

### ADR-001: Monolith vs Microservices

| Mục | Nội dung |
|----- |--------- |
| Quyết định | Bắt đầu với Monolith, tách ra Microservices khi cần |
| Lý do | Team size nhỏ (5 người), deadline 6 tháng, chưa cần scale độc lập |
| Hệ quả | Dễ develop ban đầu, nhưng có thể cần refactor về sau |
| Người quyết định | Tech Lead + PM |
| Ngày | 2024-01-10 |

### ADR-002: Soft Delete vs Hard Delete

| Mục | Nội dung |
|----- |--------- |
| Quyết định | Dùng soft delete (`deleted_at` column) cho tất cả entity |
| Lý do | Khách hàng yêu cầu audit trail, khả năng khôi phục dữ liệu |
| Hệ quả | Query phải luôn filter `WHERE deleted_at IS NULL` |
| Người quyết định | Tech Lead + Khách hàng |
| Ngày | 2024-01-15 |

---

## 4. Chiến lược bảo mật

```mermaid
graph LR
    Internet --> WAF["WAF<br/>OWASP Rules"]
    WAF --> LB["Load Balancer<br/>HTTPS Only"]
    LB --> App["App Servers<br/>Private Subnet"]
    App --> DB["Database<br/>Private Subnet"]

    subgraph Security["Security Layers"]
        L1["Layer 1: WAF - SQL Injection, XSS, DDoS"]
        L2["Layer 2: JWT Authentication"]
        L3["Layer 3: RBAC Authorization"]
        L4["Layer 4: Input Validation"]
        L5["Layer 5: Audit Logging"]
    end
```

---

## 5. Chiến lược scaling

| Tình huống | Chiến lược | Timeline |
|----------- |----------- |--------- |
| Traffic tăng 2x | Thêm App server (horizontal) | < 30 phút |
| DB load tăng | Thêm Read Replica | < 1 giờ |
| Traffic tăng 10x | Review kiến trúc, có thể cần tách service | Planning |
| Global expansion | Thêm region, CDN | Future |

---

## Hướng dẫn điền template BD02

1. **ADR (Architecture Decision Record)** cho mỗi quyết định quan trọng — giúp người mới hiểu tại sao
2. **Trade-offs phải rõ ràng** — mỗi lựa chọn kiến trúc đều có đánh đổi, ghi rõ
3. **Tech stack + lý do** — khách hàng Nhật sẽ hỏi "tại sao chọn X không phải Y"
4. **Sơ đồ security layers** — phổ biến trong tài liệu Nhật, thể hiện sự nghiêm túc về bảo mật
