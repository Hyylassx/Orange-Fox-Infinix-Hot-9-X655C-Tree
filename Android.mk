#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The TWRP Open Source Project
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), X655C)
include $(call all-makefiles-under,$(LOCAL_PATH))

# Inject Prebuilt vold
include $(CLEAR_VARS)
LOCAL_MODULE := vold_recovery
LOCAL_MODULE_STEM := vold
LOCAL_SRC_FILES := vold  # (Change to prebuilt/vold if they are in a folder)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
include $(BUILD_PREBUILT)

# Inject Prebuilt keystore
include $(CLEAR_VARS)
LOCAL_MODULE := keystore_recovery
LOCAL_MODULE_STEM := keystore
LOCAL_SRC_FILES := keystore  # (Change to prebuilt/keystore if they are in a folder)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
include $(BUILD_PREBUILT)

# Inject Prebuilt gatekeeperd
include $(CLEAR_VARS)
LOCAL_MODULE := gatekeeperd_recovery
LOCAL_MODULE_STEM := gatekeeperd
LOCAL_SRC_FILES := gatekeeperd  # (Change to prebuilt/gatekeeperd if they are in a folder)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
include $(BUILD_PREBUILT)

endif
