################################################################################
#
# aravis
#
################################################################################

ARAVIS_VERSION = 0.8.21
ARAVIS_SITE = $(call github,AravisProject,aravis,$(ARAVIS_VERSION))
ARAVIS_DEPENDENCIES = \
	host-pkgconf \
	libglib2 \
	libxml2
ARAVIS_INSTALL_STAGING = YES
ARAVIS_LICENSE = LGPL-2
ARAVIS_LICENSE_FILES = COPYING
ARAVIS_LDFLAGS = $(TARGET_LDFLAGS) $(TARGET_NLS_LIBS)

ARAVIS_CONF_OPTS += -Ddocumentation=disabled

$(eval $(meson-package))

