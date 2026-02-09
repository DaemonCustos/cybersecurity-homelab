#!/usr/bin/env bash

# ================================
# IronKey KeePassXC Runner (Linux)
# Self‑scrubbing version
# ================================

# Paths
IRONKEY_PATH="/run/media/$USER/KINGSTON"
APPIMAGE_SRC="$IRONKEY_PATH/KeePassXC-Linux/KeePassXC-2.7.11-1-x86_64.AppImage"
APPIMAGE_TMP="/tmp/KeePassXC-Temp.AppImage"

# 1. Verify IronKey is mounted
if [ ! -d "$IRONKEY_PATH" ]; then
    echo "IronKey secure partition not found at $IRONKEY_PATH"
    exit 1
fi

# 2. Verify AppImage exists
if [ ! -f "$APPIMAGE_SRC" ]; then
    echo "KeePassXC AppImage not found on IronKey."
    exit 1
fi

# 3. Copy AppImage to /tmp
echo "Copying KeePassXC AppImage to /tmp..."
cp "$APPIMAGE_SRC" "$APPIMAGE_TMP"

# 4. Make it executable
chmod +x "$APPIMAGE_TMP"

# 5. Run KeePassXC
echo "Launching KeePassXC..."
"$APPIMAGE_TMP"

# 6. Cleanup AppImage
echo "Cleaning up temporary AppImage..."
rm -f "$APPIMAGE_TMP"

# 7. Self-delete
SCRIPT_PATH="$(realpath "$0")"
echo "Self-deleting script at $SCRIPT_PATH..."
rm -f "$SCRIPT_PATH"

echo "Done."
