include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Lol
Lol_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
