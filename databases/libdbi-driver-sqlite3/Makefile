# $NetBSD: Makefile,v 1.4 2012/04/27 12:31:39 obache Exp $
#

.include "../../databases/libdbi-driver-sqlite3/Makefile_drivers"

PKGREVISION=		3
LICENSE=		gnu-lgpl-v2

DRIVER=			sqlite3

COMMENT=		SQLite3 driver for libdbi, a database abstraction

CONFLICTS=		libdbi-sqlite3-[0-9]*

CONFIGURE_ARGS+=	--with-sqlite3
CONFIGURE_ARGS+=	--with-sqlite3-incdir=${BUILDLINK_PREFIX.sqlite}/include
CONFIGURE_ARGS+=	--with-sqlite3-libdir=${BUILDLINK_PREFIX.sqlite}/lib

.include "../../databases/libdbi/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
