LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_MODULE := unpackbootimg-pxa
include $(BUILD_HOST_EXECUTABLE)
