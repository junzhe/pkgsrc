# $NetBSD: Makefile,v 1.21 2009/09/17 14:00:53 asau Exp $
#

DISTNAME=		crashme-2.4
CATEGORIES=		sysutils
MASTER_SITES=	http://www.ibiblio.org/pub/historic-linux/early-ports/Sparc/crashme/
#		ftp://ftp.std.com/pub/gjc/

EXTRACT_SUFX=	-shar

MAINTAINER=		agc@NetBSD.org
HOMEPAGE=		http://people.delphiforums.com/gjc/crashme.html
COMMENT=		Try to crash machine with random arguments to random system calls

PKG_INSTALLATION_TYPES=	overwrite pkgviews

INSTALLATION_DIRS=	sbin ${PKGMANDIR}/man1

EXTRACT_OPTS=		-f shar
MAKE_FILE=		makefile
WRKSRC=			${WRKDIR}

.include "../../mk/bsd.pkg.mk"
