################################################################################
#
# xfsprogs
#
################################################################################

XFSPROGS_VERSION = 3.1.11
XFSPROGS_SITE = ftp://oss.sgi.com/projects/xfs/cmd_tars

XFSPROGS_DEPENDENCIES = util-linux

XFSPROGS_CONF_ENV = ac_cv_header_aio_h=yes ac_cv_lib_rt_lio_listio=yes
XFSPROGS_CONF_OPT = \
	--enable-lib64=no \
	--enable-gettext=no \
	INSTALL_USER=root \
	INSTALL_GROUP=root

XFSPROGS_INSTALL_TARGET_OPT = DIST_ROOT=$(TARGET_DIR) install

$(eval $(autotools-package))
