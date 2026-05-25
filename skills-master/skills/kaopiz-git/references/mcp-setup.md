# Hướng dẫn cài đặt Bitbucket Server MCP

Để tạo PR trực tiếp từ Cursor/Claude, bạn cần cài MCP cho Bitbucket Server.

> **Tại sao dùng package này?** Package `bitbucket-mcp` mặc định chỉ hỗ trợ Bitbucket Cloud (bitbucket.org). Kaopiz dùng Bitbucket Server tự host (`https://bitbucket.kaopiz.com`), nên cần package riêng hỗ trợ Bitbucket Server API.

---

## Cài đặt thủ công (khuyến nghị)

### Bước 1: Clone và build

```bash
git clone https://github.com/garc33/bitbucket-server-mcp-server.git ~/mcp-servers/bitbucket-server
cd ~/mcp-servers/bitbucket-server
npm install
npm run build
```

### Bước 2: Cấu hình trong Cursor

Mở file `~/.cursor/mcp.json` và thêm:

```json
{
  "mcpServers": {
    "bitbucket": {
      "command": "node",
      "args": ["/home/<your-username>/mcp-servers/bitbucket-server/build/index.js"],
      "env": {
        "BITBUCKET_URL": "https://bitbucket.kaopiz.com",
        "BITBUCKET_USERNAME": "<username-bitbucket>",
        "BITBUCKET_PASSWORD": "<app-password>",
        "BITBUCKET_DEFAULT_PROJECT": "<project-key>"
      }
    }
  }
}
```

Thay `<your-username>` bằng username Linux của bạn (ví dụ: `haind@kaopiz.local`).

### Bước 3: Lấy Personal Access Token

1. Truy cập: **https://bitbucket.kaopiz.com/plugins/servlet/access-tokens/manage**
2. Tạo token mới với quyền: **Repositories (Read/Write)** + **Pull Requests (Read/Write)**
3. Copy token vào `BITBUCKET_PASSWORD`

### Bước 4: Restart Cursor

Sau khi lưu `mcp.json`, restart Cursor để load MCP mới.

---

## Kiểm tra kết nối

Sau khi restart, yêu cầu agent:
> "Dùng Bitbucket MCP liệt kê các project tôi có quyền truy cập"

Nếu thành công sẽ thấy danh sách projects.

---

## Troubleshooting

| Lỗi | Nguyên nhân | Giải pháp |
|-----|-------------|-----------|
| `404 Not Found` | Sai `BITBUCKET_URL` hoặc `BITBUCKET_DEFAULT_PROJECT` | Kiểm tra lại URL và project key |
| `401 Unauthorized` | Sai username/password hoặc token hết hạn | Tạo token mới |
| Tool not found | MCP chưa được load | Restart Cursor |
| `WORKSPACE must be provided` | Đang dùng sai package (bitbucket-mcp cloud) | Đảm bảo dùng `garc33/bitbucket-server-mcp-server` |

---

## Tài liệu tham khảo

- Repository: https://github.com/garc33/bitbucket-server-mcp-server
- Bitbucket Server REST API: `https://bitbucket.kaopiz.com/rest/api/1.0/`
