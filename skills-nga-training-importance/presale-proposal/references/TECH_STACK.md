# Tech Stack Reference | 技術スタック参照

> **Lưu ý:** Công ty có thể làm việc với hầu hết các ngôn ngữ/framework. Bảng dưới đây là các công nghệ **ưu tiên** và **thành thạo nhất**.

---

## 1. Công nghệ Thành thạo | 得意技術

### Web Frontend
| Tech | Level | Best For |
|------|-------|----------|
| **Vue 3 / Nuxt** | ⭐⭐⭐⭐⭐ | Admin, Internal tools, SEO (Nuxt) |
| **React / Next.js** | ⭐⭐⭐⭐⭐ | Public sites, E-commerce, SEO |
| TypeScript | ⭐⭐⭐⭐⭐ | Bắt buộc cho mọi dự án |
| TailwindCSS | ⭐⭐⭐⭐⭐ | Styling |

### Mobile
| Tech | Level | Best For |
|------|-------|----------|
| **Flutter** | ⭐⭐⭐⭐⭐ | Cross-platform (iOS + Android) |
| React Native | ⭐⭐⭐⭐ | Khi khách yêu cầu |
| Native (Swift/Kotlin) | ⭐⭐⭐ | High performance |

### Backend
| Tech | Level | Best For |
|------|-------|----------|
| **NestJS** | ⭐⭐⭐⭐⭐ | Realtime, Microservices, GraphQL |
| **Laravel** | ⭐⭐⭐⭐⭐ | CRUD-heavy, Rapid development |
| **Spring Boot** | ⭐⭐⭐⭐ | Enterprise, High-load |
| FastAPI (Python) | ⭐⭐⭐⭐ | AI/ML backends |
| Go | ⭐⭐⭐ | High-performance APIs |

### CMS
| Tech | Level | Best For |
|------|-------|----------|
| **Payload CMS** | ⭐⭐⭐⭐ | Headless, Next.js native |
| Strapi | ⭐⭐⭐ | Quick setup |

### Database & Cache
| Tech | Level | Best For |
|------|-------|----------|
| **PostgreSQL** | ⭐⭐⭐⭐⭐ | Primary (ưu tiên) |
| MySQL | ⭐⭐⭐⭐⭐ | Legacy |
| MongoDB | ⭐⭐⭐⭐ | Document store |
| Redis | ⭐⭐⭐⭐⭐ | Cache, Queue, Realtime |
| Elasticsearch | ⭐⭐⭐⭐ | Full-text search |

### Cloud & DevOps
| Tech | Level | Best For |
|------|-------|----------|
| **AWS** | ⭐⭐⭐⭐⭐ | Primary cloud |
| GCP | ⭐⭐⭐⭐ | AI/ML projects |
| Azure | ⭐⭐⭐ | Khi khách yêu cầu |
| Docker / K8s | ⭐⭐⭐⭐⭐ | Container |
| GitHub Actions | ⭐⭐⭐⭐⭐ | CI/CD |

### Blockchain
| Tech | Level | Best For |
|------|-------|----------|
| **Solidity** | ⭐⭐⭐⭐ | Ethereum, EVM chains |
| Hardhat / Foundry | ⭐⭐⭐⭐ | Smart contract dev |
| ethers.js / viem | ⭐⭐⭐⭐ | Web3 frontend |
| The Graph | ⭐⭐⭐ | Indexing |
| IPFS / Arweave | ⭐⭐⭐ | Decentralized storage |

### AI / ML
| Tech | Level | Best For |
|------|-------|----------|
| **Python** | ⭐⭐⭐⭐⭐ | ML/AI development |
| LangChain / LlamaIndex | ⭐⭐⭐⭐ | AI Agent, RAG |
| OpenAI / Claude API | ⭐⭐⭐⭐⭐ | LLM integration |
| HuggingFace | ⭐⭐⭐⭐ | Model hosting |
| PyTorch / TensorFlow | ⭐⭐⭐ | Custom models |
| Vector DB (Pinecone, Weaviate) | ⭐⭐⭐⭐ | Embedding search |

---

## 2. Stack Recommendations | 推奨スタック

| Project Type | Recommended Stack |
|--------------|-------------------|
| **Admin + API** | Vue 3 + NestJS + PostgreSQL |
| **Public Web (SEO)** | Next.js + NestJS + PostgreSQL |
| **Mobile App** | Flutter + NestJS + PostgreSQL |
| **E-commerce** | Next.js + NestJS + Redis + Elasticsearch |
| **CMS / Blog** | Payload CMS + Next.js |
| **Realtime (Chat)** | React + NestJS + Socket.io + Redis |
| **Enterprise** | React + Spring Boot + PostgreSQL |
| **AI Agent / Chatbot** | Next.js + FastAPI + LangChain + Vector DB |
| **Blockchain DApp** | Next.js + Solidity + Hardhat + IPFS |

---

## 3. Tiêu chí Chọn Tech | 技術選定基準

| Điều kiện | Chọn |
|-----------|------|
| SEO quan trọng | Next.js / Nuxt.js (SSR/SSG) |
| Admin nhiều form | Vue 3 + Laravel/NestJS |
| Realtime | NestJS + WebSocket |
| High-load / Enterprise | Spring Boot |
| Cross-platform mobile | Flutter |
| AI/Chatbot | FastAPI + LangChain |
| Blockchain | Solidity + Hardhat |
| Rapid development | Laravel |
| Content management | Payload CMS |

---

## 4. Third-party Services | サードパーティ

| Category | Services |
|----------|----------|
| **Payment** | Stripe, PayPay, GMO Payment |
| **Auth** | Auth0, Firebase Auth, AWS Cognito |
| **Storage** | AWS S3, Cloudinary |
| **Email** | SendGrid, Amazon SES |
| **Push** | Firebase (FCM), OneSignal |
| **Monitoring** | Sentry, CloudWatch, Datadog |
| **AI** | OpenAI, Claude, HuggingFace |
| **Blockchain** | Alchemy, Infura, The Graph |
