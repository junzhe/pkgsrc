# $NetBSD: Makefile,v 1.13 2012/10/08 09:21:04 asau Exp $
#

GST_PLUGINS1_NAME=	x264
GST_PLUGINS1_DIRS=	ext/x264

.include "../../multimedia/gst-plugins1-ugly/Makefile.common"

# need shared lib
BUILDLINK_API_DEPENDS.x264-devel+= x264-devel>=20071218nb1
.include "../../multimedia/x264-devel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
