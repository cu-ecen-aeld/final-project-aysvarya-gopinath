 ################################################################################
 #
 # aesdchardev
 ################################################################################

AESDCHARDEV_VERSION =8ce0cc01e4ea3d9a1e4db29e2e1c4a5ea280fe10
#cd06fcb6919cd8feae54fa54b47d1ac555003abd

AESDCHARDEV_SITE =git@github.com:cu-ecen-aeld/assignments-3-and-later-aysvarya-gopinath.git
AESDCHARDEV_SITE_METHOD = git
AESDCHARDEV_GIT_SUBMODULES = YES

ifeq ($(BR2_PACKAGE_AESDCHARDEV),y)
AESDCHARDEV_MODULE_SUBDIRS = aesd-char-driver #subdirectory

endif
$(eval $(kernel-module))
$(eval $(generic-package))


