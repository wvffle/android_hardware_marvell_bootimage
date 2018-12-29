ifeq ($(BOARD_PROVIDES_MKBOOTIMG),true)
ifeq ($(BOARD_MKBOOTIMG_MRVL),true)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mkbootimg
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_IS_HOST_MODULE := true

LOCAL_MODULE := mkbootimg_pxa

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := unpackbootimg
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_IS_HOST_MODULE := true

LOCAL_MODULE := unpackbootimg_pxa

include $(BUILD_PREBUILT)

endif
endif
