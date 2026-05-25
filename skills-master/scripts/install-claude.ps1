# install.ps1 — Cài đặt SBU1 Skills vào Claude Code (Windows PowerShell)
# Cách dùng: irm https://... | iex   hoặc   .\scripts\install.ps1

$ErrorActionPreference = "Stop"

$REPO_URL      = "ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git"
$MARKETPLACE_ID = "sbu1-skills"
$PLUGIN_NAME   = "sbu1-skills"
$SETTINGS_FILE = "$env:USERPROFILE\.claude\settings.json"

function Write-Info    { param($msg) Write-Host "-> $msg" -ForegroundColor Cyan }
function Write-Success { param($msg) Write-Host "v  $msg" -ForegroundColor Green }
function Write-Warn    { param($msg) Write-Host "!  $msg" -ForegroundColor Yellow }
function Write-Err     { param($msg) Write-Host "x  $msg" -ForegroundColor Red; exit 1 }

Write-Host ""
Write-Host "======================================" -ForegroundColor Cyan
Write-Host "   SBU1 Skills - Claude Code Setup    " -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan
Write-Host ""

# ── Kiểm tra prerequisites ────────────────────────────────────────────────────
if (-not (Get-Command python3 -ErrorAction SilentlyContinue) -and
    -not (Get-Command python  -ErrorAction SilentlyContinue)) {
  Write-Err "python3 khong tim thay. Vui long cai Python 3: https://www.python.org/downloads/"
}

if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
  Write-Host ""
  Write-Host "x  Claude Code chua duoc cai." -ForegroundColor Red
  Write-Host ""
  Write-Host "   Cai Claude Code truoc: https://code.claude.com/docs/en/overview#native-install-recommended"
  Write-Host ""
  Write-Host "   Windows PowerShell:"
  Write-Host "     irm https://claude.ai/install.ps1 | iex"
  Write-Host ""
  Write-Host "   Sau do chay lai lenh cai SBU1 Skills."
  Write-Host ""
  exit 1
}

# ── Đảm bảo thư mục .claude tồn tại ──────────────────────────────────────────
$claudeDir = "$env:USERPROFILE\.claude"
if (-not (Test-Path $claudeDir)) { New-Item -ItemType Directory -Path $claudeDir | Out-Null }
if (-not (Test-Path $SETTINGS_FILE)) {
  '{}' | Set-Content $SETTINGS_FILE -Encoding UTF8
  Write-Info "Da tao $SETTINGS_FILE"
}

# ── Thêm marketplace vào settings.json ───────────────────────────────────────
Write-Info "Dang ky marketplace '$MARKETPLACE_ID' vao Claude Code..."

$pyScript = @"
import json, sys

settings_path = r'$($SETTINGS_FILE -replace "\\", "\\")'
with open(settings_path, encoding='utf-8') as f:
    settings = json.load(f)

marketplaces = settings.setdefault('extraKnownMarketplaces', {})
if '$MARKETPLACE_ID' in marketplaces:
    print('  Marketplace da duoc dang ky, bo qua.')
else:
    marketplaces['$MARKETPLACE_ID'] = {
        'source': {
            'source': 'git',
            'url': '$REPO_URL',
            'ref': 'master',
            'path': '.claude-plugin/marketplace.json'
        }
    }
    print('  Da them marketplace.')

enabled = settings.setdefault('enabledPlugins', {})
key = '${PLUGIN_NAME}@${MARKETPLACE_ID}'
if key not in enabled:
    enabled[key] = True
    print(f'  Da enable plugin: $PLUGIN_NAME')
else:
    print('  Plugin da duoc enable truoc do.')

with open(settings_path, 'w', encoding='utf-8') as f:
    json.dump(settings, f, indent=2, ensure_ascii=False)
    f.write('\n')
"@

$pyCmd = if (Get-Command python3 -ErrorAction SilentlyContinue) { "python3" } else { "python" }
$pyScript | & $pyCmd

# ── Đăng ký marketplace qua CLI ───────────────────────────────────────────────
Write-Info "Dang ky marketplace vao Claude Code CLI..."

$mktList = & claude plugin marketplace list 2>&1
if ($mktList -match $MARKETPLACE_ID) {
  Write-Host "  Marketplace da duoc dang ky qua CLI, bo qua."
} else {
  # Thử local path trước, fallback clone tạm
  $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
  $repoDir   = if ($scriptDir) { Split-Path -Parent $scriptDir } else { "" }

  if ($repoDir -and (Test-Path "$repoDir\.claude-plugin\marketplace.json")) {
    & claude plugin marketplace add $repoDir 2>&1 | ForEach-Object { "  $_" }
  } else {
    Write-Info "Cloning repo tam thoi..."
    $tmpDir = [System.IO.Path]::GetTempPath() + "sbu1-skills-" + [System.Guid]::NewGuid().ToString("N").Substring(0,8)
    try {
      git clone --depth=1 $REPO_URL $tmpDir 2>&1 | Select-Object -Last 1
      & claude plugin marketplace add $tmpDir 2>&1 | ForEach-Object { "  $_" }
    } catch {
      Write-Warn "Khong the clone repo. Bo qua buoc nay - plugin van se duoc cai."
    }
  }
}

# ── Cài plugin ────────────────────────────────────────────────────────────────
Write-Info "Cai plugin..."
$result = & claude plugin install "${PLUGIN_NAME}@${MARKETPLACE_ID}" 2>&1 | Out-String
if ($result -match "Successfully installed") {
  Write-Success $PLUGIN_NAME
} elseif ($result -match "already installed|already enabled") {
  Write-Success "$PLUGIN_NAME (da cai truoc do)"
} else {
  Write-Warn "$PLUGIN_NAME"
  Write-Host "  $result"
}

Write-Host ""
Write-Success "Cai dat hoan tat!"
Write-Host ""
Write-Host "  Buoc tiep theo: Restart Claude Code de load plugins." -ForegroundColor Yellow
Write-Host ""
Write-Host "  Sau khi restart, kiem tra bang lenh trong Claude Code:"
Write-Host "    /sbu1-skills:kaopiz-git"
Write-Host "    /sbu1-skills:bitbucket-review"
Write-Host ""
