#!/usr/bin/env bash
# install-agents.sh — Cài đặt SBU1 Skills vào thư mục .agents/skills/
# Cách dùng: ./scripts/install-agents.sh
#            bash <(git archive --remote=... master scripts/install-agents.sh | tar -xO)

set -e

REPO_URL="ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git"

# ── Màu sắc terminal ──────────────────────────────────────────────────────────
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; CYAN='\033[0;36m'
BOLD='\033[1m'; NC='\033[0m'
info()    { echo -e "${CYAN}→${NC} $*"; }
success() { echo -e "${GREEN}✓${NC} $*"; }
warn()    { echo -e "${YELLOW}⚠${NC} $*"; }
error()   { echo -e "${RED}✗${NC} $*"; exit 1; }
prompt()  { echo -e "${BOLD}$*${NC}"; }

echo ""
echo -e "${CYAN}╔══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║   SBU1 Agent Skills — Installer          ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════╝${NC}"
echo ""

# ── Kiểm tra python3 ──────────────────────────────────────────────────────────
command -v python3 &>/dev/null || error "python3 không tìm thấy. Vui lòng cài Python 3."

# ── Xác định thư mục repo ─────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" 2>/dev/null && pwd)" || SCRIPT_DIR=""
REPO_DIR="$(dirname "$SCRIPT_DIR" 2>/dev/null)" || REPO_DIR=""

MARKETPLACE="$REPO_DIR/.claude-plugin/marketplace.json"

# Nếu không có marketplace.json cục bộ (chạy qua pipe), clone tạm
if [[ ! -f "$MARKETPLACE" ]]; then
  info "Cloning repo tạm thời..."
  TMP_REPO=$(mktemp -d)
  trap 'rm -rf "$TMP_REPO"' EXIT
  git clone --depth=1 "$REPO_URL" "$TMP_REPO/sbu1-skills" 2>&1 | tail -1 \
    || error "Không thể clone repo từ $REPO_URL"
  REPO_DIR="$TMP_REPO/sbu1-skills"
  MARKETPLACE="$REPO_DIR/.claude-plugin/marketplace.json"
fi

[[ -f "$MARKETPLACE" ]] || error "Không tìm thấy .claude-plugin/marketplace.json"

# ── Đọc danh sách skills từ marketplace.json ─────────────────────────────────
SKILL_PATHS=()
while IFS= read -r line; do
  [[ -n "$line" ]] && SKILL_PATHS+=("$line")
done < <(python3 - <<PYEOF
import json
with open("$MARKETPLACE") as f:
    data = json.load(f)
for plugin in data.get("plugins", []):
    for skill in plugin.get("skills", []):
        print(skill)
PYEOF
)

[[ ${#SKILL_PATHS[@]} -gt 0 ]] || error "Không tìm thấy skill nào trong marketplace.json"

# Tách tên skill từ path (ví dụ: ./skills/kaopiz-git → kaopiz-git)
SKILL_NAMES=()
SKILL_DIRS=()
for path in "${SKILL_PATHS[@]}"; do
  name="$(basename "$path")"
  SKILL_NAMES+=("$name")
  # Resolve đường dẫn tuyệt đối
  if [[ "$path" == ./* ]]; then
    SKILL_DIRS+=("$REPO_DIR/${path#./}")
  else
    SKILL_DIRS+=("$REPO_DIR/$path")
  fi
done

# ── Chọn scope ────────────────────────────────────────────────────────────────
echo ""
prompt "Chọn scope cài đặt:"
echo "  1) User scope    — ~/.agents/skills/  (áp dụng cho tất cả dự án)"
echo "  2) Project scope — .agents/skills/    (chỉ trong repo hiện tại)"
echo ""
while true; do
  read -rp "  Nhập lựa chọn [1/2]: " SCOPE_CHOICE
  case "$SCOPE_CHOICE" in
    1)
      INSTALL_DIR="$HOME/.agents/skills"
      SCOPE_LABEL="user scope (~/.agents/skills/)"
      break ;;
    2)
      GIT_ROOT=$(git rev-parse --show-toplevel 2>/dev/null) \
        || error "Không tìm thấy git repo trong thư mục hiện tại."
      INSTALL_DIR="$GIT_ROOT/.agents/skills"
      SCOPE_LABEL="project scope ($GIT_ROOT/.agents/skills/)"
      break ;;
    *)
      echo "  Vui lòng nhập 1 hoặc 2." ;;
  esac
done

# ── Chọn skills cần cài ───────────────────────────────────────────────────────
echo ""
prompt "Chọn skill cần cài đặt:"
echo ""
echo "  0) Tất cả"
for i in "${!SKILL_NAMES[@]}"; do
  printf "  %d) %s\n" "$((i+1))" "${SKILL_NAMES[$i]}"
done
echo ""

SELECTED_NAMES=()
SELECTED_DIRS=()

while true; do
  read -rp "  Nhập số (cách nhau bằng dấu cách, ví dụ: 1 3) hoặc 0 để chọn tất cả: " CHOICES
  if [[ "$CHOICES" == "0" ]]; then
    SELECTED_NAMES=("${SKILL_NAMES[@]}")
    SELECTED_DIRS=("${SKILL_DIRS[@]}")
    break
  fi

  VALID=true
  TMP_NAMES=()
  TMP_DIRS=()
  for choice in $CHOICES; do
    if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#SKILL_NAMES[@]} )); then
      TMP_NAMES+=("${SKILL_NAMES[$((choice-1))]}")
      TMP_DIRS+=("${SKILL_DIRS[$((choice-1))]}")
    else
      warn "Lựa chọn không hợp lệ: $choice (phải từ 1 đến ${#SKILL_NAMES[@]})"
      VALID=false
      break
    fi
  done

  if $VALID && [[ ${#TMP_NAMES[@]} -gt 0 ]]; then
    SELECTED_NAMES=("${TMP_NAMES[@]}")
    SELECTED_DIRS=("${TMP_DIRS[@]}")
    break
  elif $VALID; then
    echo "  Vui lòng chọn ít nhất một skill."
  fi
done

# ── Xác nhận ─────────────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}Sẽ cài đặt:${NC}"
for name in "${SELECTED_NAMES[@]}"; do
  echo "  - $name"
done
echo ""
echo -e "${BOLD}Vào:${NC} $SCOPE_LABEL"
echo ""
read -rp "Xác nhận? [Y/n]: " CONFIRM
case "$(echo "$CONFIRM" | tr '[:upper:]' '[:lower:]')" in
  n|no) echo "Đã hủy."; exit 0 ;;
esac

mkdir -p "$INSTALL_DIR"

echo ""
info "Đang cài vào $INSTALL_DIR ..."
echo ""

# ── Copy từng skill directory ─────────────────────────────────────────────────
for i in "${!SELECTED_NAMES[@]}"; do
  name="${SELECTED_NAMES[$i]}"
  src="${SELECTED_DIRS[$i]}"
  dest="$INSTALL_DIR/$name"

  if [[ ! -d "$src" ]]; then
    warn "$name — không tìm thấy thư mục nguồn ($src), bỏ qua."
    continue
  fi

  rm -rf "$dest"
  cp -r "$src" "$dest"
  success "$name  →  $dest"
done

echo ""
success "Cài đặt hoàn tất!"
echo ""
if [[ "$SCOPE_CHOICE" == "2" ]]; then
  echo -e "${YELLOW}Lưu ý:${NC} Commit thư mục .agents/skills/ vào repo nếu muốn chia sẻ với team:"
  echo ""
  echo "    git add .agents/skills/"
  echo "    git commit -m 'add agent skills'"
  echo ""
fi
