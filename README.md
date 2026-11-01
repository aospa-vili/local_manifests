# Xiaomi 11T Pro (`vili`) — PixelOS 17 Local Manifest

## Usage

Clone into `.repo/local_manifests` before running `repo sync`:

```bash
git clone https://github.com/aospa-vili/pixel_manifest.git -b pixel_17 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
```
