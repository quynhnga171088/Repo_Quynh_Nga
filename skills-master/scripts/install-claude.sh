#!/usr/bin/env bash
# install.sh — Cài đặt SBU1 Skills vào Claude Code
# Cách dùng: bash <(curl -s ...) hoặc ./scripts/install.sh [--plugins all|plugin1,plugin2]

set -e

REPO_URL="ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git"
MARKETPLACE_ID="sbu1-skills"
SETTINGS_FILE="$HOME/.claude/settings.json"

# Tên plugin duy nhất (chứa tất cả skills)
ALL_PLUGINS="sbu1-skills"

# ── Màu sắc terminal ──────────────────────────────────────────────────────────
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; CYAN='\033[0;36m'; NC='\033[0m'
info()    { echo -e "${CYAN}→${NC} $*"; }
success() { echo -e "${GREEN}✓${NC} $*"; }
warn()    { echo -e "${YELLOW}⚠${NC} $*"; }
error()   { echo -e "${RED}✗${NC} $*"; exit 1; }

# ── Parse arguments ───────────────────────────────────────────────────────────
SELECTED_PLUGINS="$ALL_PLUGINS"  # default: cài tất cả
while [[ $# -gt 0 ]]; do
  case $1 in
    --plugins)
      if [[ "$2" == "all" ]]; then
        SELECTED_PLUGINS="$ALL_PLUGINS"
      else
        SELECTED_PLUGINS="${2//,/ }"
      fi
      shift 2 ;;
    --help|-h)
      echo "Cài đặt SBU1 Skills vào Claude Code"
      echo ""
      echo "Cách dùng: $0"
      echo ""
      echo "Skills có sẵn sau khi cài:"
      echo "  - kaopiz-git"
      echo "  - bitbucket-review"
      echo "  - basic-design-docs"
      echo "  - presale-proposal"
      exit 0 ;;
    *) error "Unknown argument: $1. Dùng --help để xem hướng dẫn." ;;
  esac
done

echo ""
echo -e "${CYAN}╔══════════════════════════════════════╗${NC}"
echo -e "${CYAN}║   SBU1 Skills — Claude Code Setup    ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════╝${NC}"
echo ""

# ── Kiểm tra prerequisites ────────────────────────────────────────────────────
command -v python3 &>/dev/null || error "python3 không tìm thấy. Vui lòng cài Python 3."
if ! command -v claude &>/dev/null; then
  echo ""
  echo -e "${RED}✗ Claude Code chưa được cài.${NC}"
  echo ""
  echo "  Cài Claude Code trước: https://code.claude.com/docs/en/overview#native-install-recommended"
  echo ""
  echo "  macOS / Linux / WSL:"
  echo "    curl -fsSL https://claude.ai/install.sh | bash"
  echo ""
  echo "  Windows PowerShell:"
  echo "    irm https://claude.ai/install.ps1 | iex"
  echo ""
  echo "  Sau đó chạy lại lệnh cài SBU1 Skills."
  echo ""
  exit 1
fi

# ── Đảm bảo ~/.claude/settings.json tồn tại ──────────────────────────────────
mkdir -p "$HOME/.claude"
if [[ ! -f "$SETTINGS_FILE" ]]; then
  echo '{}' > "$SETTINGS_FILE"
  info "Đã tạo $SETTINGS_FILE"
fi

# ── Thêm marketplace vào settings.json ───────────────────────────────────────
info "Đăng ký marketplace '$MARKETPLACE_ID' vào Claude Code..."

python3 - <<PYEOF
import json, sys

settings_path = "$SETTINGS_FILE"
with open(settings_path) as f:
    settings = json.load(f)

# Thêm extraKnownMarketplaces
marketplaces = settings.setdefault("extraKnownMarketplaces", {})
if "$MARKETPLACE_ID" in marketplaces:
    print("  Marketplace đã được đăng ký, bỏ qua.")
else:
    marketplaces["$MARKETPLACE_ID"] = {
        "source": {
            "source": "git",
            "url": "$REPO_URL",
            "ref": "master",
            "path": ".claude-plugin/marketplace.json"
        }
    }
    print("  Đã thêm marketplace.")

# Thêm enabledPlugins
plugins_to_enable = "$SELECTED_PLUGINS".split()
enabled = settings.setdefault("enabledPlugins", {})
added = []
for plugin in plugins_to_enable:
    key = f"{plugin}@$MARKETPLACE_ID"
    if key not in enabled:
        enabled[key] = True
        added.append(plugin)

if added:
    print(f"  Đã enable plugins: {', '.join(added)}")
else:
    print("  Tất cả plugins đã được enable trước đó.")

with open(settings_path, "w") as f:
    json.dump(settings, f, indent=2, ensure_ascii=False)
    f.write("\n")
PYEOF

# ── Đăng ký marketplace qua CLI ───────────────────────────────────────────────
info "Đăng ký marketplace vào Claude Code CLI..."

if claude plugin marketplace list 2>&1 | grep -q "${MARKETPLACE_ID}"; then
  echo "  Marketplace đã được đăng ký qua CLI, bỏ qua."
else
  # Thử dùng local path nếu script chạy từ repo clone
  SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd 2>/dev/null)" || SCRIPT_DIR=""
  REPO_DIR="$(dirname "$SCRIPT_DIR" 2>/dev/null)" || REPO_DIR=""

  if [[ -f "$REPO_DIR/.claude-plugin/marketplace.json" ]]; then
    claude plugin marketplace add "$REPO_DIR" 2>&1 | sed 's/^/  /' || true
  else
    # Chạy qua pipe — clone tạm vào temp dir
    info "Cloning repo tạm thời để đăng ký marketplace..."
    TMP_REPO=$(mktemp -d)
    if git clone --depth=1 "$REPO_URL" "$TMP_REPO/sbu1-skills" 2>&1 | tail -1; then
      claude plugin marketplace add "$TMP_REPO/sbu1-skills" 2>&1 | sed 's/^/  /' || true
    else
      warn "Không thể clone repo. Bỏ qua bước này — plugins vẫn sẽ được cài."
    fi
  fi
fi

# ── Cài từng plugin qua CLI ───────────────────────────────────────────────────
info "Cài plugins..."
for plugin in $SELECTED_PLUGINS; do
  result=$(claude plugin install "${plugin}@${MARKETPLACE_ID}" 2>&1)
  if echo "$result" | grep -qi "successfully installed"; then
    success "$plugin"
  elif echo "$result" | grep -qi "already installed\|already enabled"; then
    success "$plugin (đã cài trước đó)"
  else
    warn "$plugin"
    echo "    $result"
  fi
done

echo ""
success "Cài đặt hoàn tất!"
echo ""
echo -e "${YELLOW}Bước tiếp theo:${NC} Restart Claude Code để load plugins."
echo ""
echo "  Sau khi restart, kiểm tra bằng lệnh trong Claude Code:"
echo "    /kaopiz-git:help        hoặc"
echo "    /bitbucket-review:help"
echo ""
