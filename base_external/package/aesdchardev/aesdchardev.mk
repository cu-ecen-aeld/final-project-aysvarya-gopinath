 ################################################################################
 #
 # aesdchardev
 ################################################################################

AESDCHARDEV_VERSION =cd06fcb6919cd8feae54fa54b47d1ac555003abd
#e0fa4e6667747ae64a648750ffecce52e44d0b7f

AESDCHARDEV_SITE =git@github.com:cu-ecen-aeld/assignments-3-and-later-aysvarya-gopinath.git
AESDCHARDEV_SITE_METHOD = git
AESDCHARDEV_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_AESDCHARDEV),y)
AESDCHARDEV_MODULE_SUBDIRS = aesd-char-driver #subdirectory

endif
$(eval $(kernel-module))
$(eval $(generic-package))


