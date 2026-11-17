# Xiaomi 11T Pro (`vili`) - Android 17 Local Manifest

Local manifests and manual clone commands to set up all device, vendor, kernel, hardware, and package trees needed to build Android 17 (Paranoid Android / AOSP) for the **Xiaomi 11T Pro (`vili`)**.

All repositories are hosted under the [**aospa-vili**](https://github.com/aospa-vili) organization and tracked on branch **`17`**.

---

## Method 1: Using Repo Tool (Local Manifest)

### 1. Initialize your ROM tree
```bash
repo init -u https://github.com/AOSPA/manifest -b uvite --git-lfs
```

### 2. Clone this local manifest
Clone this repository into your ROM source root under `.repo/local_manifests/`:
```bash
git clone https://github.com/aospa-vili/local_manifests.git -b 17 .repo/local_manifests
```

### 3. Sync all trees
```bash
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune --current-branch -j$(nproc --all)
```

---

## Method 2: One-Step Clone Script

From the root of your Android build directory:

```bash
# Full clone
curl -sL https://raw.githubusercontent.com/aospa-vili/local_manifests/17/clone.sh | bash

# Or shallow clone (faster download, depth 1)
curl -sL https://raw.githubusercontent.com/aospa-vili/local_manifests/17/clone.sh | bash -s -- --shallow
```

---

## Method 3: Manual Clone Commands

You can run these commands manually in the root of your Android ROM source tree:

### Device Trees
```bash
git clone https://github.com/aospa-vili/device_xiaomi_vili.git -b 17 device/xiaomi/vili
git clone https://github.com/aospa-vili/device_xiaomi_sm8350-common.git -b 17 device/xiaomi/sm8350-common
```

### Vendor Trees
```bash
git clone https://github.com/aospa-vili/proprietary_vendor_xiaomi_vili.git -b 17 vendor/xiaomi/vili
git clone https://github.com/aospa-vili/proprietary_vendor_xiaomi_sm8350-common.git -b 17 vendor/xiaomi/sm8350-common
git clone https://github.com/aospa-vili/proprietary_vendor_xiaomi_camera.git -b 17 vendor/xiaomi/camera
git clone https://github.com/aospa-vili/vendor-xiaomi-vili-firmware.git -b 17 vendor/xiaomi/vili-firmware
```

### Kernel & Hardware
```bash
git clone https://github.com/aospa-vili/kernel_xiaomi_sm8350.git -b 17 kernel/xiaomi/sm8350
git clone https://github.com/aospa-vili/hardware_xiaomi.git -b 17 hardware/xiaomi
```

### Audio, Apps & Extensions
```bash
git clone https://github.com/aospa-vili/proprietary_vendor_sony_dolby.git -b 17 vendor/sony/dolby
git clone https://github.com/aospa-vili/packages_apps_LunarisDolby.git -b 17 packages/apps/LunarisDolby
git clone https://github.com/aospa-vili/packages_apps_GameBar.git -b 17 packages/apps/GameBar
git clone https://github.com/aospa-vili/packages_apps_TouchServices.git -b 17 packages/apps/TouchServices
git clone https://github.com/aospa-vili/packages_apps_Matlog.git -b 17 packages/apps/Matlog
git clone https://github.com/aospa-vili/vendor_bcr.git -b 17 vendor/bcr
```

---

### Single Copy-Paste Block (All 14 Repositories)

```bash
git clone https://github.com/aospa-vili/device_xiaomi_vili.git -b 17 device/xiaomi/vili && \
git clone https://github.com/aospa-vili/device_xiaomi_sm8350-common.git -b 17 device/xiaomi/sm8350-common && \
git clone https://github.com/aospa-vili/proprietary_vendor_xiaomi_vili.git -b 17 vendor/xiaomi/vili && \
git clone https://github.com/aospa-vili/proprietary_vendor_xiaomi_sm8350-common.git -b 17 vendor/xiaomi/sm8350-common && \
git clone https://github.com/aospa-vili/proprietary_vendor_xiaomi_camera.git -b 17 vendor/xiaomi/camera && \
git clone https://github.com/aospa-vili/vendor-xiaomi-vili-firmware.git -b 17 vendor/xiaomi/vili-firmware && \
git clone https://github.com/aospa-vili/kernel_xiaomi_sm8350.git -b 17 kernel/xiaomi/sm8350 && \
git clone https://github.com/aospa-vili/hardware_xiaomi.git -b 17 hardware/xiaomi && \
git clone https://github.com/aospa-vili/proprietary_vendor_sony_dolby.git -b 17 vendor/sony/dolby && \
git clone https://github.com/aospa-vili/packages_apps_LunarisDolby.git -b 17 packages/apps/LunarisDolby && \
git clone https://github.com/aospa-vili/packages_apps_GameBar.git -b 17 packages/apps/GameBar && \
git clone https://github.com/aospa-vili/packages_apps_TouchServices.git -b 17 packages/apps/TouchServices && \
git clone https://github.com/aospa-vili/packages_apps_Matlog.git -b 17 packages/apps/Matlog && \
git clone https://github.com/aospa-vili/vendor_bcr.git -b 17 vendor/bcr
```

---

## Repositories Included

| # | Local Target Path | Repository | Branch |
|:---:|---|---|:---:|
| 1 | `device/xiaomi/vili` | [`device_xiaomi_vili`](https://github.com/aospa-vili/device_xiaomi_vili) | `17` |
| 2 | `device/xiaomi/sm8350-common` | [`device_xiaomi_sm8350-common`](https://github.com/aospa-vili/device_xiaomi_sm8350-common) | `17` |
| 3 | `vendor/xiaomi/vili` | [`proprietary_vendor_xiaomi_vili`](https://github.com/aospa-vili/proprietary_vendor_xiaomi_vili) | `17` |
| 4 | `vendor/xiaomi/sm8350-common` | [`proprietary_vendor_xiaomi_sm8350-common`](https://github.com/aospa-vili/proprietary_vendor_xiaomi_sm8350-common) | `17` |
| 5 | `vendor/xiaomi/camera` | [`proprietary_vendor_xiaomi_camera`](https://github.com/aospa-vili/proprietary_vendor_xiaomi_camera) | `17` |
| 6 | `vendor/xiaomi/vili-firmware` | [`vendor-xiaomi-vili-firmware`](https://github.com/aospa-vili/vendor-xiaomi-vili-firmware) | `17` |
| 7 | `kernel/xiaomi/sm8350` | [`kernel_xiaomi_sm8350`](https://github.com/aospa-vili/kernel_xiaomi_sm8350) | `17` |
| 8 | `hardware/xiaomi` | [`hardware_xiaomi`](https://github.com/aospa-vili/hardware_xiaomi) | `17` |
| 9 | `vendor/sony/dolby` | [`proprietary_vendor_sony_dolby`](https://github.com/aospa-vili/proprietary_vendor_sony_dolby) | `17` |
| 10 | `packages/apps/LunarisDolby` | [`packages_apps_LunarisDolby`](https://github.com/aospa-vili/packages_apps_LunarisDolby) | `17` |
| 11 | `packages/apps/GameBar` | [`packages_apps_GameBar`](https://github.com/aospa-vili/packages_apps_GameBar) | `17` |
| 12 | `packages/apps/TouchServices` | [`packages_apps_TouchServices`](https://github.com/aospa-vili/packages_apps_TouchServices) | `17` |
| 13 | `packages/apps/Matlog` | [`packages_apps_Matlog`](https://github.com/aospa-vili/packages_apps_Matlog) | `17` |
| 14 | `vendor/bcr` | [`vendor_bcr`](https://github.com/aospa-vili/vendor_bcr) | `17` |
