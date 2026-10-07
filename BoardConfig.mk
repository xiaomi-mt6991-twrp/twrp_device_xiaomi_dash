# SPDX-License-Identifier: Apache-2.0
# Device tree
DEVICE_PATH := device/xiaomi/dash

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv9-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

# Platform
TARGET_BOARD_PLATFORM := mt6991
TARGET_BOOTLOADER_BOARD_NAME := mt6991
TARGET_NO_BOOTLOADER := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_ODM := odm

# Device-specific configuration
TW_DEVICE_VERSION := dash
TARGET_OTA_ASSERT_DEVICE := dash
