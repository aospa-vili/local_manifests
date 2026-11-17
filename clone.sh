#!/usr/bin/env bash
set -e

# Xiaomi 11T Pro (vili) - Android 17 Dependencies Clone Script
# Target Organization: https://github.com/aospa-vili
# Target Branch: 17

DEPTH_ARG=""
if [ "$1" == "--depth" ] && [ -n "$2" ]; then
    DEPTH_ARG="--depth $2"
elif [ "$1" == "--shallow" ]; then
    DEPTH_ARG="--depth 1"
fi

REPOS=(
    "device_xiaomi_vili:device/xiaomi/vili"
    "device_xiaomi_sm8350-common:device/xiaomi/sm8350-common"
    "proprietary_vendor_xiaomi_vili:vendor/xiaomi/vili"
    "proprietary_vendor_xiaomi_sm8350-common:vendor/xiaomi/sm8350-common"
    "proprietary_vendor_xiaomi_camera:vendor/xiaomi/camera"
    "vendor-xiaomi-vili-firmware:vendor/xiaomi/vili-firmware"
    "kernel_xiaomi_sm8350:kernel/xiaomi/sm8350"
    "hardware_xiaomi:hardware/xiaomi"
    "proprietary_vendor_sony_dolby:vendor/sony/dolby"
    "packages_apps_LunarisDolby:packages/apps/LunarisDolby"
    "packages_apps_GameBar:packages/apps/GameBar"
    "packages_apps_TouchServices:packages/apps/TouchServices"
    "packages_apps_Matlog:packages/apps/Matlog"
    "vendor_bcr:vendor/bcr"
)

BASE_URL="https://github.com/aospa-vili"
BRANCH="17"

echo "=========================================================="
echo " Cloning all 14 repositories for Xiaomi 11T Pro (vili)..."
echo " Target Branch: $BRANCH"
echo " Base Org:      $BASE_URL"
echo "=========================================================="

for item in "${REPOS[@]}"; do
    NAME="${item%%:*}"
    DEST="${item##*:}"

    if [ -d "$DEST/.git" ]; then
        echo " [SKIP] $DEST already exists."
    else
        echo " [CLONE] $NAME -> $DEST"
        mkdir -p "$(dirname "$DEST")"
        git clone --progress -b "$BRANCH" --single-branch $DEPTH_ARG "$BASE_URL/$NAME.git" "$DEST"
    fi
done

echo ""
echo " All dependencies cloned successfully!"
