# SPDX-License-Identifier: Apache-2.0
# Base products
DEVICE_PATH := device/xiaomi/dash
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/ramdisk_stub.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.device=dash
# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 36
BOARD_SHIPPING_API_LEVEL := 202404

