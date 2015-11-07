LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),msm8960)
ifeq ($(TARGET_DEVICE),nicki)

# HAL module implemenation stored in
# hw/<POWERS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c power-8960.c
LOCAL_MODULE := power.qcom
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

endif
endif
