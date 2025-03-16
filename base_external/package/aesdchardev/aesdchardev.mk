 ################################################################################
 #
 # aesdchardev
 ################################################################################

AESDCHARDEV_VERSION =f7bda2c8570f587544d11c6971f0ece7a315cc1a

AESDCHARDEV_SITE =git@github.com:cu-ecen-aeld/assignments-3-and-later-aysvarya-gopinath.git
AESDCHARDEV_SITE_METHOD = git
AESDCHARDEV_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_AESDCHARDEV),y)
AESDCHARDEV_MODULE_SUBDIRS = aesd-char-driver #subdirectory

endif
$(eval $(kernel-module))
$(eval $(generic-package))


