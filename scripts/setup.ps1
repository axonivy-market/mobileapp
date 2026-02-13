# First-time setup for Axon Ivy Mobile App (Windows)
# Change FLUTTER_VERSION below if needed.

$ErrorActionPreference = "Stop"

# ---- Configuration ----
$FLUTTER_VERSION = "3.38.9"

# Navigate to project root
Set-Location (Split-Path -Parent $PSScriptRoot)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Setup | Flutter $FLUTTER_VERSION" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check Dart
Write-Host "Checking Dart..." -ForegroundColor Yellow
$dartCheck = Get-Command dart -ErrorAction SilentlyContinue
if ($dartCheck) {
    Write-Host "[OK] Dart: $(& dart --version 2>&1)" -ForegroundColor Green
} else {
    Write-Host "[ERROR] Dart not found. Install Flutter SDK first." -ForegroundColor Red
    exit 1
}

# Check Git
Write-Host "Checking Git..." -ForegroundColor Yellow
$gitCheck = Get-Command git -ErrorAction SilentlyContinue
if ($gitCheck) {
    Write-Host "[OK] Git: $(& git --version)" -ForegroundColor Green
} else {
    Write-Host "[ERROR] Git not found. Install Git for Windows." -ForegroundColor Red
    exit 1
}

# Check/install FVM
Write-Host "Checking FVM..." -ForegroundColor Yellow
$fvmCheck = Get-Command fvm -ErrorAction SilentlyContinue
if ($fvmCheck) {
    Write-Host "[OK] FVM: $(& fvm --version 2>&1)" -ForegroundColor Green
} else {
    Write-Host "Installing FVM..." -ForegroundColor Yellow
    dart pub global activate fvm
    if ($LASTEXITCODE -ne 0) {
        Write-Host "[ERROR] Failed to install FVM" -ForegroundColor Red
        exit 1
    }
    $dartGlobalPath = "$env:LOCALAPPDATA\Pub\Cache\bin"
    if (Test-Path $dartGlobalPath) {
        $env:PATH = "$dartGlobalPath;$env:PATH"
    }
    if (-not (Get-Command fvm -ErrorAction SilentlyContinue)) {
        Write-Host "[ERROR] FVM installed but not in PATH. Add to PATH: $dartGlobalPath" -ForegroundColor Red
        exit 1
    }
    Write-Host "[OK] FVM installed" -ForegroundColor Green
}

# Install + use Flutter version
Write-Host "Installing Flutter $FLUTTER_VERSION..." -ForegroundColor Yellow
fvm install $FLUTTER_VERSION
if ($LASTEXITCODE -ne 0) { exit 1 }

if (Test-Path ".fvm\flutter_sdk") {
    Remove-Item -Force -Recurse ".fvm\flutter_sdk" -ErrorAction SilentlyContinue
}
fvm use $FLUTTER_VERSION --force
if ($LASTEXITCODE -ne 0) { exit 1 }

# Dependencies
Write-Host "Installing dependencies..." -ForegroundColor Yellow
fvm flutter pub get
if ($LASTEXITCODE -ne 0) { exit 1 }

# Check Java
Write-Host "Checking Java..." -ForegroundColor Yellow
$javaCheck = Get-Command java -ErrorAction SilentlyContinue
if ($javaCheck) {
    try {
        $javaVersion = & java -version 2>&1 | Out-String
        $javaLine = ($javaVersion -split "`n")[0].Trim()
        Write-Host "[OK] Java: $javaLine" -ForegroundColor Green
    } catch {
        Write-Host "[OK] Java found" -ForegroundColor Green
    }
} else {
    Write-Host "[WARN] Java not found. Install Android Studio or JDK 17+" -ForegroundColor Yellow
}

# Check Android SDK
Write-Host "Checking Android SDK..." -ForegroundColor Yellow
if ($env:ANDROID_HOME -and (Test-Path $env:ANDROID_HOME)) {
    Write-Host "[OK] ANDROID_HOME: $env:ANDROID_HOME" -ForegroundColor Green
} else {
    Write-Host "[WARN] ANDROID_HOME not set or invalid" -ForegroundColor Yellow
}

# Done
Write-Host ""
Write-Host "============================================" -ForegroundColor Green
Write-Host "  Setup Complete!" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  .\scripts\build.ps1   # Build APK" -ForegroundColor White
Write-Host "  .\scripts\run.ps1     # Run on device" -ForegroundColor White
Write-Host ""
