#!/bin/bash
# Build script for Axon Ivy Mobile App (Linux / macOS)
# Change FLUTTER_VERSION or FLAVOR below if needed.

set -e
cd "$(dirname "$0")/.."

# ---- Configuration ----
FLUTTER_VERSION="3.38.9"
FLAVOR="dev"
ENTRY_POINT=$([[ "$FLAVOR" == "dev" ]] && echo "lib/main_dev.dart" || echo "lib/main.dart")
APK_PATH="build/app/outputs/flutter-apk/app-${FLAVOR}-release.apk"

echo "============================================"
echo "  Build: $FLAVOR | Flutter $FLUTTER_VERSION"
echo "============================================"

# FVM check
if ! command -v fvm &> /dev/null; then
    echo "ERROR: FVM not installed. Run: dart pub global activate fvm"
    exit 1
fi

# Install + use Flutter version
if ! fvm list 2>/dev/null | grep -q "$FLUTTER_VERSION"; then
    echo "Installing Flutter $FLUTTER_VERSION..."
    fvm install "$FLUTTER_VERSION"
fi
fvm use "$FLUTTER_VERSION" --force

# Clean + dependencies
fvm flutter clean
fvm flutter pub get

# Build
echo ""
echo "Building $FLAVOR APK..."
fvm flutter build apk --flavor "$FLAVOR" -t "$ENTRY_POINT"

echo ""
echo "BUILD SUCCESSFUL!"
echo "APK: $APK_PATH"
echo "Size: $(du -h "$APK_PATH" 2>/dev/null | cut -f1)"
