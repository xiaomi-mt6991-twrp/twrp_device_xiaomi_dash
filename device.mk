# SPDX-License-Identifier: Apache-2.0
# Base products
DEVICE_PATH := device/xiaomi/dash
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/ramdisk_stub.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Stock platform ramdisk
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/prebuilt/platform,$(TARGET_COPY_OUT_VENDOR_RAMDISK))

# Virtual A/B
PRODUCT_USE_DYNAMIC_PARTITIONS := true
AB_OTA_UPDATER := true
PRODUCT_VIRTUAL_AB_OTA := true
PRODUCT_VIRTUAL_AB_COMPRESSION := true
PRODUCT_VENDOR_PROPERTIES += \
    ro.virtual_ab.enabled=true \
    ro.virtual_ab.compression.enabled=true \
    ro.virtual_ab.userspace.snapshots.enabled=true \
    ro.virtual_ab.batch_writes=true \
    ro.virtual_ab.io_uring.enabled?=true \
    ro.virtual_ab.compression.xor.enabled=true
# Images
PRODUCT_BUILD_VENDOR_BOOT_IMAGE := true
PRODUCT_BUILD_RECOVERY_IMAGE := true
PRODUCT_BUILD_BOOT_IMAGE := false
PRODUCT_BUILD_INIT_BOOT_IMAGE := false
PRODUCT_BUILD_VBMETA_IMAGE := false
PRODUCT_BUILD_DEBUG_BOOT_IMAGE := false
PRODUCT_BUILD_DEBUG_VENDOR_BOOT_IMAGE := false
PRODUCT_BUILD_SYSTEM_IMAGE := false
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := false
PRODUCT_BUILD_PRODUCT_IMAGE := false
PRODUCT_BUILD_VENDOR_IMAGE := false
PRODUCT_BUILD_ODM_IMAGE := false
PRODUCT_BUILD_SYSTEM_DLKM_IMAGE := false
PRODUCT_BUILD_VENDOR_DLKM_IMAGE := false
PRODUCT_BUILD_ODM_DLKM_IMAGE := false

# Packages
PRODUCT_PACKAGES += \
    android.hardware.fastboot-service.example_recovery \
    android.hardware.health-service.example_recovery \
    android.hardware.boot-V1-ndk.recovery \
    android.hardware.boot@1.1.recovery \
    fastbootd \
    hwservicemanager.recovery \
    libdl_android.recovery \
    snapuserd.recovery \
    update_engine_sideload

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.recovery.usb.vid=18D1 \
    ro.recovery.usb.adb.pid=D001 \
    ro.recovery.usb.fastboot.pid=4EE0

# Device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device=dash
# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 36
BOARD_SHIPPING_API_LEVEL := 202404

