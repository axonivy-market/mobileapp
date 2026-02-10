# Build & Run Guide

## Prerequisites

- **FVM**: `dart pub global activate fvm`
- **Java 17+** (or Android Studio's bundled JDK)
- **Android SDK** with Platform 36 & Build-Tools 34+

## Quick Start

### Windows (PowerShell)
```powershell
.\scripts\setup.ps1      # First-time setup
.\scripts\build.ps1      # Build APK
.\scripts\run.ps1        # Run on device/emulator
```

### Linux / macOS
```bash
./scripts/build.sh       # Build APK
```

Default: **Flutter 3.38.9**, **dev** flavor. Edit the `Configuration` section in each script to change.

## Scripts Reference

| Script | Purpose |
|--------|---------|
| `setup.ps1` | First-time setup (Windows): installs FVM, Flutter, dependencies |
| `build.ps1` / `build.sh` | Build APK for the configured flavor |
| `run.ps1` | Run app on connected device/emulator (Windows) |

## Flavor Reference

| Flavor | Entry Point | APK |
|--------|-------------|-----|
| `dev` | `lib/main_dev.dart` | `build/app/outputs/flutter-apk/app-dev-release.apk` |
| `prod` | `lib/main.dart` | `build/app/outputs/flutter-apk/app-prod-release.apk` |

## Manual Commands

### Build
```bash
fvm use 3.38.9 --force
fvm flutter clean
fvm flutter pub get
fvm flutter build apk --flavor dev -t lib/main_dev.dart
```

### Run
```bash
fvm flutter run --flavor dev -t lib/main_dev.dart
```
