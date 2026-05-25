# SBU1 Skills

Tập hợp Skills và Agent Skills cho Claude Code, phục vụ team SBU1 Kaopiz.

---

## Cài đặt Agent Skills

### macOS / Linux / WSL

```bash
bash <(git archive --remote=ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git master scripts/install-agents.sh | tar -xO)
```

Hoặc nếu đã clone repo:

```bash
./scripts/install-agents.sh
```

### Windows PowerShell

```powershell
$tmp = "$env:TEMP\sbu1-install"; git clone --depth=1 ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git $tmp; & "$tmp\scripts\install-agents.ps1"; Remove-Item $tmp -Recurse -Force
```

Hoặc nếu đã clone repo:

```powershell
.\scripts\install-agents.ps1
```

> **Lưu ý Windows:** Nếu gặp lỗi "running scripts is disabled":
> `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

Script sẽ hỏi:
1. **Scope** — `user` (`~/.agents/skills/`) hoặc `project` (`.agents/skills/` trong repo hiện tại)
2. **Skills** — chọn từng skill hoặc cài tất cả

Nếu chọn project scope, commit thư mục vào repo để chia sẻ với team:

```bash
git add .agents/skills/
git commit -m "add agent skills"
```

---

## Cài đặt Claude Code (user scope)

### macOS / Linux / WSL

```bash
bash <(git archive --remote=ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git master scripts/install-claude.sh | tar -xO)
```

### Windows PowerShell

```powershell
$tmp = "$env:TEMP\sbu1-install"; git clone --depth=1 ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git $tmp; & "$tmp\scripts\install-claude.ps1"; Remove-Item $tmp -Recurse -Force
```

---

## Skills có sẵn

| Skill | Mô tả |
|-------|-------|
| `kaopiz-git` | Git workflow chuẩn Kaopiz: tạo branch, commit, tạo PR qua Bitbucket MCP |
| `bitbucket-review` | Review PR: phân tích diff, impact analysis, inline comment |
| `basic-design-docs` | Tạo tài liệu Basic Design BD01–BD17 theo chuẩn Nhật |
| `presale-proposal` | Phân tích requirement, tạo proposal và estimate cho khách hàng Nhật |
| `qa-testcase` | Viết và quản lý test case, xuất file Excel theo format chuẩn Kaopiz |
| `release-checklist-reviewer` | Review file Excel リリース手順書, phân tích commit và Jira tasks |
