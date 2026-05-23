# Template BD01 — Sơ đồ cấu trúc hệ thống

## Mục đích
Cung cấp cái nhìn tổng quan về toàn bộ hệ thống: các thành phần, server, mạng, và cách chúng kết nối với nhau. Đây là tài liệu nền tảng để tất cả thành viên team — từ BA, dev đến QA và khách hàng Nhật — đều có chung hiểu biết về hệ thống.

---

## Template


# [BD01] Sơ đồ cấu trúc hệ thống

| Mục | Nội dung |
|----- |--------- |
| Dự án | [Tên dự án] |
| Phiên bản | 1.0 |
| Ngày tạo | YYYY-MM-DD |
| Người tạo | [Tên] |
| Ngày cập nhật | YYYY-MM-DD |
| Trạng thái | Draft |

## Lịch sử thay đổi

| Phiên bản | Ngày | Người thực hiện | Nội dung thay đổi |
|----------- |------ |----------------- |------------------- |
| 1.0 | YYYY-MM-DD | [Tên] | Tạo mới |

---

## 1. Tổng quan hệ thống

[Mô tả ngắn gọn về hệ thống, mục đích, và phạm vi triển khai]

## 2. Sơ đồ cấu trúc hệ thống

```mermaid
graph TB
    subgraph Internet ["Internet"]
        User["👤 Người dùng"]
        Admin["👨‍💼 Quản trị viên"]
    end

    subgraph DMZ ["DMZ"]
        LB["Load Balancer"]
        WAF["WAF"]
    end

    subgraph AppLayer ["Application Layer"]
        WebServer["Web Server<br/>Nginx 1.x"]
        AppServer1["App Server 1<br/>Node.js / Java / etc."]
        AppServer2["App Server 2"]
    end

    subgraph DataLayer ["Data Layer"]
        DB_Primary["DB Primary<br/>MySQL 8.x / PostgreSQL"]
        DB_Replica["DB Replica"]
        Cache["Cache<br/>Redis"]
        FileStorage["File Storage<br/>S3 / MinIO"]
    end

    subgraph External ["External Systems"]
        ExtAPI["External API"]
        Email["Email Service<br/>SES / SendGrid"]
    end

    User --> WAF
    Admin --> WAF
    WAF --> LB
    LB --> WebServer
    WebServer --> AppServer1
    WebServer --> AppServer2
    AppServer1 --> DB_Primary
    AppServer2 --> DB_Primary
    DB_Primary --> DB_Replica
    AppServer1 --> Cache
    AppServer2 --> Cache
    AppServer1 --> FileStorage
    AppServer1 --> ExtAPI
    AppServer1 --> Email
```

> **Chú thích sơ đồ:** [Giải thích các thành phần chính và mối quan hệ giữa chúng]

## 3. Danh sách thành phần

| Thành phần | Vai trò | Công nghệ | Số lượng | Môi trường |
|----------- |--------- |----------- |---------- |----------- |
| Load Balancer | Phân tải | [Tên LB] | 1 | Production |
| Web Server | Xử lý HTTP | Nginx | 2 | Production |
| App Server | Xử lý business logic | [Tech stack] | 2 | Production |
| DB Primary | Lưu trữ chính | MySQL 8.x | 1 | Production |
| DB Replica | Đọc dữ liệu | MySQL 8.x | 1 | Production |
| Cache | Lưu cache | Redis | 1 | Production |
| File Storage | Lưu file | S3 | 1 | Production |

## 4. Thông tin môi trường

| Môi trường | Mục đích | URL | Ghi chú |
|----------- |--------- |----- |--------- |
| Development (DEV) | Phát triển nội bộ | https://dev.example.com | |
| Staging (STG) | Test & demo khách hàng | https://stg.example.com | |
| Production (PRD) | Môi trường thực tế | https://example.com | |

## 5. Giao tiếp giữa các thành phần

| Từ | Đến | Protocol | Port | Ghi chú |
|---- |----- |---------- |------ |--------- |
| LB | Web Server | HTTP | 80 | Internal |
| Web Server | App Server | HTTP | 8080 | Internal |
| App Server | DB | TCP | 3306 | |
| App Server | Cache | TCP | 6379 | |

## 6. Ghi chú bổ sung

[Các điểm đặc biệt cần lưu ý về hạ tầng, bảo mật, scaling, etc.]

---

## Hướng dẫn điền template

1. **Thay thế `[Tên dự án]`** bằng tên dự án thực tế
2. **Cập nhật Mermaid diagram** theo kiến trúc thực tế của dự án — thêm/bớt node, thay đổi tên công nghệ
3. **Điền bảng thành phần** đầy đủ với công nghệ cụ thể (version, số lượng instance)
4. **Điền URL môi trường** thực tế (hoặc để placeholder nếu chưa có)
5. **Diagram có thể thay đổi layout:** dùng `graph LR` thay `graph TB` nếu hệ thống nhiều layers theo chiều ngang

## Mermaid nâng cao cho BD01

Với hệ thống microservice, dùng style này:

```mermaid
graph TB
    subgraph Frontend
        FE["Frontend SPA<br/>React/Vue/Angular"]
    end

    subgraph API_Gateway
        GW["API Gateway<br/>Nginx / Kong"]
    end

    subgraph Services
        SvcAuth["Auth Service"]
        SvcUser["User Service"]
        SvcOrder["Order Service"]
    end

    subgraph Message_Queue
        MQ["Message Queue<br/>RabbitMQ / Kafka"]
    end

    subgraph Databases
        DB1[(Auth DB)]
        DB2[(User DB)]
        DB3[(Order DB)]
    end

    FE --> GW
    GW --> SvcAuth
    GW --> SvcUser
    GW --> SvcOrder
    SvcAuth --> DB1
    SvcUser --> DB2
    SvcOrder --> DB3
    SvcOrder --> MQ
    MQ --> SvcUser
```
