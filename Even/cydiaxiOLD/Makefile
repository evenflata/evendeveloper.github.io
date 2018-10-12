THEOS_DEVICE_IP = xxx.xxx.xxx.xxx
ARCHS = armv7 arm64
include /home/EvenDev/theos/makefiles/common.mk

TWEAK_NAME = CydiaXI
CydiaXI_FILES = Tweak.xm
CydiaXI_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cydia"
