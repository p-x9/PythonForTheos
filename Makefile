INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PythonForTheos

PythonForTheos_FILES = Tweak.x
PythonForTheos_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
