 ################################################################################
 #
 # ldd
 ################################################################################

LDD_VERSION = d0e0ba46c228a276db737d1984dd214b0417cb28
#60e9264e58f0dfa94e80a79384ff5223b4058d4a
LDD_SITE =git@github.com:cu-ecen-aeld/assignment-7-aysvarya-gopinath.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_LDD),y)
LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS
#installing scull and misc modules from the ldd directory to run on the target 
        $(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
        $(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	
	
endef


endif
$(eval $(kernel-module))
$(eval $(generic-package))




