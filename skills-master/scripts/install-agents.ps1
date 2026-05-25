# install-agents.ps1 — Cài đặt SBU1 Skills vào thư mục .agents/skills/ (Windows PowerShell)
# Cách dùng: .\scripts\install-agents.ps1

$ErrorActionPreference = "Stop"

$REPO_URL = "ssh://git@bitbucket.kaopiz.com:7999/coba/sbu1-skills.git"

function Write-Info    { param($msg) Write-Host "-> $msg" -ForegroundColor Cyan }
function Write-Success { param($msg) Write-Host "v  $msg" -ForegroundColor Green }
function Write-Warn    { param($msg) Write-Host "!  $msg" -ForegroundColor Yellow }
function Write-Err     { param($msg) Write-Host "x  $msg" -ForegroundColor Red; exit 1 }
function Write-Prompt  { param($msg) Write-Host $msg -ForegroundColor White }

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "   SBU1 Agent Skills - Installer          " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

# ── Kiểm tra python ───────────────────────────────────────────────────────────
$PyCmd = if (Get-Command python3 -ErrorAction SilentlyContinue) { "python3" }
         elseif (Get-Command python -ErrorAction SilentlyContinue) { "python" }
         else { Write-Err "python3 khong tim thay. Vui long cai Python 3." }

# ── Xác định thư mục repo ─────────────────────────────────────────────────────
$ScriptDir = if ($MyInvocation.MyCommand.Path) { Split-Path -Parent $MyInvocation.MyCommand.Path } else { "" }
$RepoDir   = if ($ScriptDir) { Split-Path -Parent $ScriptDir } else { "" }
$Marketplace = if ($RepoDir) { Join-Path $RepoDir ".claude-plugin\marketplace.json" } else { "" }

# Nếu không có marketplace.json cục bộ, clone tạm
if (-not $Marketplace -or -not (Test-Path $Marketplace)) {
    Write-Info "Cloning repo tam thoi..."
    $TmpDir = Join-Path ([System.IO.Path]::GetTempPath()) ("sbu1-" + [System.Guid]::NewGuid().ToString("N").Substring(0,8))
    try {
        git clone --depth=1 $REPO_URL $TmpDir 2>&1 | Select-Object -Last 1
    } catch {
        Write-Err "Khong the clone repo tu $REPO_URL"
    }
    $RepoDir     = $TmpDir
    $Marketplace = Join-Path $RepoDir ".claude-plugin\marketplace.json"
}

if (-not (Test-Path $Marketplace)) { Write-Err "Khong tim thay .claude-plugin\marketplace.json" }

# ── Đọc danh sách skills từ marketplace.json ─────────────────────────────────
$PyRead = @"
import json, sys
with open(r'$($Marketplace -replace "\\","\\")') as f:
    data = json.load(f)
for plugin in data.get('plugins', []):
    for skill in plugin.get('skills', []):
        print(skill)
"@

$SkillPaths = @((& $PyCmd -c $PyRead) -split "`n" | Where-Object { $_ -ne "" })

if ($SkillPaths.Count -eq 0) { Write-Err "Khong tim thay skill nao trong marketplace.json" }

# Tách tên và resolve đường dẫn
$SkillNames = @()
$SkillDirs  = @()
foreach ($path in $SkillPaths) {
    $name = Split-Path -Leaf $path
    $SkillNames += $name
    $rel = $path -replace '^\./', ''
    $SkillDirs += Join-Path $RepoDir $rel
}

# ── Chọn scope ────────────────────────────────────────────────────────────────
Write-Host ""
Write-Prompt "Chon scope cai dat:"
Write-Host "  1) User scope    - ~/.agents/skills/  (ap dung cho tat ca du an)"
Write-Host "  2) Project scope - .agents/skills/    (chi trong repo hien tai)"
Write-Host ""

$InstallDir  = $null
$ScopeLabel  = $null
$ScopeChoice = $null

while ($true) {
    $ScopeChoice = Read-Host "  Nhap lua chon [1/2]"
    if ($ScopeChoice -eq "1") {
        $InstallDir = Join-Path $env:USERPROFILE ".agents\skills"
        $ScopeLabel = "user scope (~\.agents\skills\)"
        break
    } elseif ($ScopeChoice -eq "2") {
        $GitRoot = (git rev-parse --show-toplevel 2>&1).Trim()
        if ($LASTEXITCODE -ne 0) { Write-Err "Khong tim thay git repo trong thu muc hien tai." }
        $InstallDir = Join-Path $GitRoot ".agents\skills"
        $ScopeLabel = "project scope ($InstallDir)"
        break
    } else {
        Write-Host "  Vui long nhap 1 hoac 2."
    }
}

# ── Chọn skills cần cài ───────────────────────────────────────────────────────
Write-Host ""
Write-Prompt "Chon skill can cai dat:"
Write-Host ""
Write-Host "  0) Tat ca"
for ($i = 0; $i -lt $SkillNames.Count; $i++) {
    Write-Host ("  {0}) {1}" -f ($i + 1), $SkillNames[$i])
}
Write-Host ""

$SelectedNames = @()
$SelectedDirs  = @()

while ($true) {
    $Input  = Read-Host "  Nhap so (cach nhau bang dau cach, vi du: 1 3) hoac 0 de chon tat ca"
    $Tokens = $Input.Trim() -split '\s+'

    if ($Tokens.Count -eq 1 -and $Tokens[0] -eq "0") {
        $SelectedNames = $SkillNames
        $SelectedDirs  = $SkillDirs
        break
    }

    $Valid   = $true
    $TmpNames = @()
    $TmpDirs  = @()
    foreach ($token in $Tokens) {
        if ($token -match '^\d+$') {
            $idx = [int]$token
            if ($idx -ge 1 -and $idx -le $SkillNames.Count) {
                $TmpNames += $SkillNames[$idx - 1]
                $TmpDirs  += $SkillDirs[$idx - 1]
            } else {
                Write-Warn "Lua chon khong hop le: $token (phai tu 1 den $($SkillNames.Count))"
                $Valid = $false; break
            }
        } else {
            Write-Warn "Gia tri khong hop le: $token"
            $Valid = $false; break
        }
    }

    if ($Valid -and $TmpNames.Count -gt 0) {
        $SelectedNames = $TmpNames
        $SelectedDirs  = $TmpDirs
        break
    } elseif ($Valid) {
        Write-Host "  Vui long chon it nhat mot skill."
    }
}

# ── Xác nhận ─────────────────────────────────────────────────────────────────
Write-Host ""
Write-Host "Se cai dat:" -ForegroundColor White
foreach ($name in $SelectedNames) { Write-Host "  - $name" }
Write-Host ""
Write-Host "Vao: $ScopeLabel" -ForegroundColor White
Write-Host ""

$Confirm = Read-Host "Xac nhan? [Y/n]"
if ($Confirm -match '^[Nn]') { Write-Host "Da huy."; exit 0 }

if (-not (Test-Path $InstallDir)) {
    New-Item -ItemType Directory -Path $InstallDir -Force | Out-Null
}

Write-Host ""
Write-Info "Dang cai vao $InstallDir ..."
Write-Host ""

# ── Copy từng skill directory ─────────────────────────────────────────────────
for ($i = 0; $i -lt $SelectedNames.Count; $i++) {
    $name = $SelectedNames[$i]
    $src  = $SelectedDirs[$i]
    $dest = Join-Path $InstallDir $name

    if (-not (Test-Path $src)) {
        Write-Warn "$name -- khong tim thay thu muc nguon ($src), bo qua."
        continue
    }

    if (Test-Path $dest) { Remove-Item $dest -Recurse -Force }
    Copy-Item -Path $src -Destination $dest -Recurse -Force
    Write-Success "$name  ->  $dest"
}

Write-Host ""
Write-Success "Cai dat hoan tat!"
Write-Host ""

if ($ScopeChoice -eq "2") {
    Write-Host "Luu y: Commit thu muc .agents\skills\ vao repo neu muon chia se voi team:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "    git add .agents/skills/"
    Write-Host "    git commit -m 'add agent skills'"
    Write-Host ""
}
