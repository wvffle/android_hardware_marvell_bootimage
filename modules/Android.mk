hardware_modules := power
include $(call all-named-subdir-makefiles,$(hardware_modules))
