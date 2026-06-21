#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), X655C)
include $(call all-makefiles-under,$(LOCAL_PATH))

# Inject Prebuilt vold
include $(CLEAR_VARS)
LOCAL_MODULE := vold_recovery
LOCAL_MODULE_STEM := vold
LOCAL_SRC_FILES := prebuilt/vold
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODE := 0755
include $(BUILD_PREBUILT)

# Inject Prebuilt keystore
include $(CLEAR_VARS)
LOCAL_MODULE := keystore_recovery
LOCAL_MODULE_STEM := keystore
LOCAL_SRC_FILES := prebuilt/keystore
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODE := 0755
include $(BUILD_PREBUILT)

# Inject Prebuilt gatekeeperd
include $(CLEAR_VARS)
LOCAL_MODULE := gatekeeperd_recovery
LOCAL_MODULE_STEM := gatekeeperd
LOCAL_SRC_FILES := prebuilt/gatekeeperd
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODE := 0755
include $(BUILD_PREBUILT)

endif
