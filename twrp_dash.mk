# SPDX-License-Identifier: Apache-2.0
DEVICE_PATH := device/xiaomi/dash
PRODUCT_DEVICE := dash
PRODUCT_NAME := twrp_dash
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Turbo 5 Max
PRODUCT_MANUFACTURER := Xiaomi

$(call inherit-product, $(DEVICE_PATH)/device.mk)
