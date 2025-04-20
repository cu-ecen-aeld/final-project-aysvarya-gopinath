
##############################################################
#
# SYSTEM_MONITORING
#
##############################################################
 
SYSTEM_MONITORING_VERSION = 781a05662e1495f3cbafa24f8ec348e3ddb0e478   #commit hash after pushing server/client code
#60a8d6472f57de9f7a8e30af9ebf9f6ccda9ffc4              #commit hash previous
 

SYSTEM_MONITORING_SITE = git@github.com:aysvarya-gopinath/aesd_final_project.git
SYSTEM_MONITORING_SITE_METHOD = git
SYSTEM_MONITORING_GIT_SUBMODULES = YES

define SYSTEM_MONITORING_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define SYSTEM_MONITORING_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/tcp_server.c $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/server/tcp_server $(TARGET_DIR)/usr/bin/tcp_server
	$(INSTALL) -m 0755 $(@D)/server/Makefile $(TARGET_DIR)/usr/bin
	
endef


$(eval $(generic-package))








	


