# $NetBSD: Makefile,v 1.38 2012/08/21 23:49:24 marino Exp $
#

DISTNAME=	rat-3.0.28
PKGREVISION=	4
CATEGORIES=	mbone
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/rat/3.0.28/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www-mice.cs.ucl.ac.uk/multimedia/software/rat/
COMMENT=	Robust Audio Tool - multicast audioconferencing

CRYPTO=		yes
USE_TOOLS+=	gmake
USE_X11BASE=	yes

USER=		build

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

post-patch:
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_NetBSD_2
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_NetBSD_3
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_NetBSD_4
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_NetBSD_5
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_NetBSD_6
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_DragonFly_2
	${CP} ${WRKSRC}/Makefile_NetBSD_1 ${WRKSRC}/Makefile_DragonFly_3

do-build:
	cd ${WRKSRC} && USER=${USER} PREFIX=${PREFIX} MAKE=${MAKE_PROGRAM} LDFLAGS="${LDFLAGS}" X11BASE=${X11BASE} LOCALBASE=${LOCALBASE} TCLCONFIG=${BUILDLINK_PREFIX.tcl}/lib/tclConfig.sh ./Build rat

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rat ${DESTDIR}${PREFIX}/bin/rat
	${INSTALL_MAN} ${WRKSRC}/man/man1/rat.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/rat.1

.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
