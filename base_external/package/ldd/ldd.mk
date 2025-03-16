 ################################################################################
 #
 # ldd
 ################################################################################

LDD_VERSION =a65bbd0f72329d935d104aeb9fe84cb58d2915e5
LDD_SITE =git@github.com:cu-ecen-aeld/assignment-7-aysvarya-gopinath.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_LDD),y)
LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

endif
$(eval $(kernel-module))
$(eval $(generic-package))




