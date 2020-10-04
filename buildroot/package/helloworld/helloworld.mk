HELLOWORLD_VERSION = 1.0.0
HELLOWORLD_SITE = $(TOPDIR)/dl/local_pro/helloworld
HELLOWORLD_SITE_METHOD = local
HELLOWORLD_INSTALL_TARGET = YES

define HELLOWORLD_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/helloworld $(TARGET_DIR)/usr/bin/helloworld
	$(INSTALL) -D -m 0755 $(@D)/src/init/helloworld-init.sh $(TARGET_DIR)/etc/init.d/S90helloworld
endef

$(eval $(generic-package))
