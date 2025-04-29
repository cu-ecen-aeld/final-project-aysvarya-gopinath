
##############################################################
#
# SYSTEM_MONITORING
#
##############################################################
 
SYSTEM_MONITORING_VERSION = 369c88acfa451fe11194ac117df68df323b49ec0      #commit hash after pushing server/client code
#cec2a6f22bda364ff98c87b372136576fa9b61b2             #commit hash previous
 

SYSTEM_MONITORING_SITE = git@github.com:aysvarya-gopinath/aesd_final_project.git
SYSTEM_MONITORING_SITE_METHOD = git
SYSTEM_MONITORING_GIT_SUBMODULES = YES

define SYSTEM_MONITORING_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpio all
endef

define SYSTEM_MONITORING_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/tcp_server.c $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/server/tcp_server $(TARGET_DIR)/usr/bin/tcp_server
	$(INSTALL) -m 0755 $(@D)/server/Makefile $(TARGET_DIR)/usr/bin
	
	#installing gpio init scripts in target 	
	$(INSTALL) -m 0755 $(@D)/gpio/gpio_button.c $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/gpio/gpio_button $(TARGET_DIR)/usr/bin/gpio_button		
	$(INSTALL) -m 0755 $(@D)/gpio/gpio-start-stop.sh $(TARGET_DIR)/etc/init.d/S99gpio_button
	$(INSTALL) -m 0755 $(@D)/gpio/Makefile $(TARGET_DIR)/usr/bin
	
	
endef


$(eval $(generic-package))








	


