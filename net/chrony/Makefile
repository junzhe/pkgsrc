# $NetBSD: Makefile,v 1.26 2010/02/26 09:27:43 hannken Exp $

DISTNAME=	chrony-1.24
CATEGORIES=	net
MASTER_SITES=	http://download.tuxfamily.org/chrony/

MAINTAINER=	hannken@NetBSD.org
HOMEPAGE=	http://chrony.tuxfamily.org/
COMMENT=	Daemon for maintaining the accuracy of computer clocks

USE_TOOLS+=		gmake
HAS_CONFIGURE=		YES
BUILD_DEFS+=		VARBASE
CONFIGURE_ARGS+=	--prefix=${PREFIX:Q}
CONFIGURE_ARGS+=	--mandir=${PREFIX:Q}/${PKGMANDIR:Q}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
AUTO_MKDIRS=		yes

EGDIR=			${PREFIX}/share/examples/chrony
EGFILES=		chrony.conf.example chrony.keys.example
RCD_SCRIPTS=		chronyd

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	${EGFILES:S/^/examples\//} conf.c chrony.conf.5 \
			chronyd.8
SUBST_SED.paths+=	-e 's,@PREFIX@,${PREFIX},g'
SUBST_SED.paths+=	-e 's,@PKG_SYSCONFDIR@,${PKG_SYSCONFDIR},g'
SUBST_SED.paths+=	-e 's,@VARBASE@,${VARBASE},g'
SUBST_STAGE.paths=	post-patch

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${EGDIR}
	for file in ${EGFILES}; do				\
		${INSTALL_DATA} ${WRKSRC}/examples/$${file}	\
			${DESTDIR}${EGDIR}/$${file};		\
	done

.include "../../devel/readline/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
