# $NetBSD: Makefile,v 1.22 2012/10/08 12:42:24 asau Exp $
#

DISTNAME=	windowlab-1.33
PKGREVISION=	3
CATEGORIES=	wm
MASTER_SITES=	http://nickgravgaard.com/windowlab/
EXTRACT_SUFX=	.tar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://nickgravgaard.com/windowlab/
COMMENT=	Small and simple window manager

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=	gmake pkg-config

EGDIR=		${PREFIX}/share/examples/windowlab
CONF_FILES=	${EGDIR}/windowlab.menurc ${PKG_SYSCONFDIR}/windowlab.menurc

INSTALLATION_DIRS=	share/examples/windowlab

post-install:
	${INSTALL_DATA} ${WRKSRC}/windowlab.menurc ${DESTDIR}${EGDIR}

.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
