# $NetBSD: Makefile,v 1.14 2012/10/31 11:17:12 asau Exp $
#

DISTNAME=	libdbusmenu-qt-0.9.2
PKGREVISION=	5
CATEGORIES=	devel
MASTER_SITES=	http://launchpad.net/libdbusmenu-qt/trunk/0.9.2/+download/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://people.canonical.com/~agateau/dbusmenu/index.html
COMMENT=	Dbusmenu library for Qt
LICENSE=	gnu-lgpl-v2.1

FETCH_USING=	curl

USE_LANGUAGES=  c c++
USE_CMAKE=      yes
CMAKE_ARGS+=	-DWITH_DOC=OFF

pre-configure:
	${LN} -sf ${QTDIR}/bin/qmake ${BUILDLINK_DIR}/bin/

PKGCONFIG_OVERRIDE+=	dbusmenu-qt.pc.in

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
