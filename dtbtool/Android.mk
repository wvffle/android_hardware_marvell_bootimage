LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_BOARD_SOC),pxa1088)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := pxa1088-dtbtool.c
LOCAL_CFLAGS += -Wall
LOCAL_MODULE := dtbToolPXA
include $(BUILD_HOST_EXECUTABLE)
endif

ifeq ($(TARGET_BOARD_SOC),pxa1908)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := pxa1908-dtbtool.c
LOCAL_CFLAGS += -Wall
LOCAL_MODULE := dtbToolPXA
include $(BUILD_HOST_EXECUTABLE)
endif
