DEBUG = 0

ARCHS = arm64
TARGET = iphone:13.0:9.3
THEOS_DEVICE_IP = 192.168.0.23 -p 22
GO_EASY_ON_ME := 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PythonForTheos

PythonForTheos_FILES = Tweak.x
PythonForTheos_CFLAGS = -fobjc-arc  -I.BZip2 -I.OpenSSL -I.Python -I.XZ
PythonForTheos_LDFLAGS = -I.BZip2 -I.OpenSSL -I.Python -I.XZ -lsqlite3 -lbzip2 -lOpenSSL -lPython -lxz -lz

include $(THEOS_MAKE_PATH)/tweak.mk
