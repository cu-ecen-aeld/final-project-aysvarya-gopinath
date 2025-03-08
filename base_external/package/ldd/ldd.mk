 ################################################################################
 #
 # ldd
 ################################################################################

LDD_VERSION = 60e9264e58f0dfa94e80a79384ff5223b4058d4a
LDD_SITE =git@github.com:cu-ecen-aeld/assignment-7-aysvarya-gopinath.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_LDD),y)
LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

else

endif
$(eval $(kernel-module))
$(eval $(generic-package))

