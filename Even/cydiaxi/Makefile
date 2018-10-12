THEOS_DEVICE_IP = 192.168.10.100
ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CydiaXI
CydiaXI_FILES = Tweak.xm
CydiaXI_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cydia"
