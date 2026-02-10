# Run script for Axon Ivy Mobile App (Windows)
# Change FLUTTER_VERSION or FLAVOR below if needed.

$ErrorActionPreference = "Stop"

# ---- Configuration ----
$FLUTTER_VERSION = "3.38.9"
$FLAVOR          = "dev"
$ENTRY_POINT     = if ($FLAVOR -eq "dev") { "lib/main_dev.dart" } else { "lib/main.dart" }

# Navigate to project root
Set-Location (Split-Path -Parent $PSScriptRoot)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Run: $FLAVOR | Flutter $FLUTTER_VERSION" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

# FVM check
if (-not (Get-Command fvm -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: FVM not installed. Run: dart pub global activate fvm" -ForegroundColor Red
    exit 1
}

# Install + use Flutter version
$fvmList = (& fvm list 2>&1 | Out-String)
if ($fvmList -notmatch [regex]::Escape($FLUTTER_VERSION)) {
    Write-Host "Installing Flutter $FLUTTER_VERSION..." -ForegroundColor Yellow
    fvm install $FLUTTER_VERSION
    if ($LASTEXITCODE -ne 0) { exit 1 }
}

if (Test-Path ".fvm\flutter_sdk") {
    Remove-Item -Force -Recurse ".fvm\flutter_sdk" -ErrorAction SilentlyContinue
}
fvm use $FLUTTER_VERSION --force
if ($LASTEXITCODE -ne 0) { exit 1 }

# Dependencies
fvm flutter pub get
if ($LASTEXITCODE -ne 0) { exit 1 }

# Run
Write-Host ""
Write-Host "Running $FLAVOR... (Ctrl+C to stop)" -ForegroundColor Yellow
fvm flutter run --flavor $FLAVOR -t $ENTRY_POINT
