# SPDX-License-Identifier: Apache-2.0
# Incremental relink dependency workaround; platform files use PRODUCT_COPY_FILES.
ifneq ($(filter twrp_dash,$(TARGET_PRODUCT)),)
# Build the AOSP sparse converter directly into the recovery ramdisk.
LOCAL_PATH := system/core/libsparse
include $(CLEAR_VARS)
LOCAL_MODULE := simg2img_dash
LOCAL_MODULE_STEM := simg2img
LOCAL_SRC_FILES := simg2img.cpp
LOCAL_CFLAGS := -Werror
LOCAL_SHARED_LIBRARIES := libsparse
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
include $(BUILD_EXECUTABLE)

# Package-list changes must regenerate the platform ramdisk, including removals.
$(call intermediates-dir-for,PACKAGING,vendor_boot)/vendor_ramdisk.cpio.gz: device/xiaomi/dash/device.mk
# Required modules only provide ordering; rebuilt source files must trigger recopying.
$(call module-built-files,relink_libraries): $(RELINK) \
    $(filter-out $(TARGET_RECOVERY_ROOT_OUT)/%, \
        $(filter $(RECOVERY_LIBRARY_SOURCE_FILES), \
            $(call module-installed-files,$(TARGET_RELINK_LIBRARY_MODULES))))
$(call module-built-files,relink_binaries): $(RELINK) \
    $(filter-out $(TARGET_RECOVERY_ROOT_OUT)/%, \
        $(filter $(RECOVERY_BINARY_SOURCE_FILES), \
            $(call module-installed-files,$(TARGET_BINARY_RELINK_FILES))))
$(call module-built-files,relink_vendor_hw_binaries): $(RELINK) \
    $(filter-out $(TARGET_RECOVERY_ROOT_OUT)/%, \
        $(filter $(RECOVERY_VENDOR_HW_BINARY_FILES), \
            $(call module-installed-files,$(TARGET_VENDOR_BINARY_RELINK_FILES))))
endif
