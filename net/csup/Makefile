# $NetBSD: Makefile,v 1.6 2010/04/19 21:23:24 zafer Exp $
#

DISTNAME=	csup-snap-20100404
PKGNAME=	${DISTNAME:S/-snap//}
CATEGORIES=	net devel
MASTER_SITES=	http://distfiles.aydogan.net/net/ \
				http://www.plhk.ru/static/csup/

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://www.mu.org/~mux/csup.html
COMMENT=	Rewrite of the CVSup file updating client in C
LICENSE=	2-clause-bsd

USE_TOOLS+=	lex yacc

USE_BSD_MAKEFILE=	yes

WRKSRC=		${WRKDIR}/${DISTNAME}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${PKGMANDIR}/cat1

CFLAGS+=	${PTHREAD_CFLAGS}
LDFLAGS+=	${PTHREAD_LDFLAGS} ${PTHREAD_LIBS}

BUILDLINK_TRANSFORM+=	rm:-Werror

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD" || ${OPSYS} == "FreeBSD" || ${OPSYS} == "OpenBSD" \
	|| ${OPSYS} == "DragonFly" || ${OPSYS} == "Darwin"
CFLAGS+=	-DHAVE_FFLAGS
.endif

# taken from ${WRKSRC}/GNUmakefile
.if ${OPSYS} == "Linux"
CFLAGS+=	-D_XOPEN_SOURCE -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64
.endif

.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
