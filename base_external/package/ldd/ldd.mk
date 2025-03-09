 ################################################################################
 #
 # ldd
 ################################################################################

LDD_VERSION =d0e0ba46c228a276db737d1984dd214b0417cb28
#d0e0ba46c228a276db737d1984dd214b0417cb28
LDD_SITE =git@github.com:cu-ecen-aeld/assignment-7-aysvarya-gopinath.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_LDD),y)
LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

endif
$(eval $(kernel-module))
$(eval $(generic-package))




