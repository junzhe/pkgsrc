# $NetBSD: Makefile,v 1.24 2012/10/06 14:11:20 asau Exp $
#

PKGNAME=		${RUBY_PKGPREFIX}-gnome2-goocanvas-${VERSION}
COMMENT=		Ruby binding of GooCanvas
PKGREVISION=		4
CATEGORIES=		graphics gnome

CONFLICTS+=		ruby[0-9][0-9]-gnome2-goocanvas-[0-9]*

RUBY_EXTCONF_SUBDIRS=	goocanvas

DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-gtk>=${VERSION}:../../x11/ruby-gnome2-gtk

.include "../../graphics/goocanvas/buildlink3.mk"
.include "../../graphics/ruby-rcairo/buildlink3.mk"
.include "../../devel/ruby-pkg-config/tool.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
