# $NetBSD: Makefile,v 1.6 2012/10/19 18:22:05 drochner Exp $
#

DISTNAME=	gtksourceview-3.6.0
PKGNAME=	${DISTNAME:S/gtksourceview/gtksourceview3/}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtksourceview/3.6/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	prlw1@cam.ac.uk
HOMEPAGE=	http://projects.gnome.org/gtksourceview/
COMMENT=	Text widget that extends GTK3's GtkTextView widget
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake gsed intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes

PKGCONFIG_OVERRIDE+=	gtksourceview-3.0.pc.in

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
