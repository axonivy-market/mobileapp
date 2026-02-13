# Build script for Axon Ivy Mobile App (Windows)
# Change FLUTTER_VERSION or FLAVOR below if needed.

$ErrorActionPreference = "Stop"

# ---- Configuration ----
$FLUTTER_VERSION = "3.38.9"
$FLAVOR          = "dev"
$ENTRY_POINT     = $(if ($FLAVOR -eq "dev") { "lib/main_dev.dart" } else { "lib/main.dart" })
$APK_PATH        = "build\app\outputs\flutter-apk\app-$FLAVOR-release.apk"

# Navigate to project root
Set-Location (Split-Path -Parent $PSScriptRoot)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Build: $FLAVOR | Flutter $FLUTTER_VERSION" -ForegroundColor Cyan
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

# Clean + dependencies
fvm flutter clean
fvm flutter pub get
if ($LASTEXITCODE -ne 0) { exit 1 }

# Build
Write-Host ""
Write-Host "Building $FLAVOR APK..." -ForegroundColor Yellow
fvm flutter build apk --flavor $FLAVOR -t $ENTRY_POINT

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "BUILD SUCCESSFUL!" -ForegroundColor Green
    Write-Host "APK: $APK_PATH" -ForegroundColor Green
    if (Test-Path $APK_PATH) {
        $sizeMB = [math]::Round((Get-Item $APK_PATH).Length / 1MB, 2)
        Write-Host "Size: $sizeMB MB" -ForegroundColor Green
    }
} else {
    Write-Host "BUILD FAILED" -ForegroundColor Red
    exit 1
}
