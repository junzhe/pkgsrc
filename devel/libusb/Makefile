# $NetBSD: Makefile,v 1.32 2012/05/30 15:48:21 wiz Exp $

DISTNAME=	libusb-0.1.12
PKGREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libusb/}

MAINTAINER=	drochner@NetBSD.org
HOMEPAGE=	http://libusb.sourceforge.net/
COMMENT=	USB access library (version 0)
LICENSE=	gnu-lgpl-v2.1

USE_LANGUAGES=		c c++
GCC_REQD+=		3.3
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-build-docs
PKGCONFIG_OVERRIDE+=	libusb.pc.in

ONLY_FOR_PLATFORM=	Darwin-*-* FreeBSD-*-* Linux-*-* NetBSD-*-*
ONLY_FOR_PLATFORM+=	OpenBSD-*-* DragonFly-*-*

TEST_TARGET=		check

CONFLICTS=		libusb-compat-[0-9]*

.include "../../mk/bsd.pkg.mk"
