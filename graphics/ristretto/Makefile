# $NetBSD: Makefile,v 1.20 2012/10/08 23:01:48 adam Exp $
#

DISTNAME=	ristretto-0.0.22
PKGREVISION=	18
CATEGORIES=	graphics
MASTER_SITES=	http://goodies.xfce.org/releases/ristretto/

MAINTAINER=	martin@NetBSD.org
HOMEPAGE=	http://goodies.xfce.org/projects/applications/ristretto
COMMENT=	Xfce image viewer
LICENSE=	gnu-gpl-v2

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake pkg-config msgfmt perl intltool

LDFLAGS.DragonFly=	-lX11
LDFLAGS.SunOS=		-lX11

.include "../../devel/xfce4-dev-tools/buildlink3.mk"
.include "../../graphics/libexif/buildlink3.mk"
.include "../../sysutils/xfce4-thunar/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
