LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include
LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libmincrypt
LOCAL_MODULE := mkbootimg-pxa
include $(BUILD_HOST_EXECUTABLE)
