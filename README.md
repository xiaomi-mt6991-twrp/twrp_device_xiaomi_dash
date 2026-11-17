# TWRP device tree for Xiaomi dash

TWRP device tree for Redmi Turbo 5 Max. <ins><em><strong>Maybe</strong></em></ins> works on Poco too.

<ins><em><strong>Maybe</strong></em></ins> compatible. Compatibility is NOT guaranteed. No LOGS, NO BUGS.

The DTB, platform ramdisk, and device-specific recovery blobs use `OS4.0.4.0.XPLCNXM` as their baseline. Recovery retains its existing Binder runtime. Flash at your own risk.

## Working

- [x] ADB
- [x] ADB sideload
- [x] Backup / Restore
- [x] Decryption / Multi-user decryption tested on [LineageOS 24.0](https://github.com/YorokobiMaster/android_device_xiaomi_dash)
- [x] Fake-lock `lk` support
- [x] Fastbootd
- [x] Flashing
- [x] Haptics
- [x] MTP
- [x] Screenshot
- [x] Touch
- [x] USB-OTG
- [x] Virtual A/B OTA & snapshot merge tested on [Paranoid Android](https://github.com/Content-Creation-Club/AOSPA_device_xiaomi_dash)

## How to build

- [TWRP-Test/platform_manifest_twrp_aosp](https://github.com/TWRP-Test/platform_manifest_twrp_aosp)

## Credits

- [TeamWin Recovery Project](https://github.com/TeamWin/android_bootable_recovery)
- [TWRP-Test](https://github.com/TWRP-Test)
