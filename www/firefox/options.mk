# $NetBSD: options.mk,v 1.6 2009/08/30 01:14:50 markd Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.firefox
PKG_SUPPORTED_OPTIONS=	debug official-mozilla-branding

PLIST_VARS+=		branding

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
.else
CONFIGURE_ARGS+=	--disable-debug
.endif

.if !empty(PKG_OPTIONS:Mofficial-mozilla-branding)
CONFIGURE_ARGS+=	--enable-official-branding
PLIST.branding=		yes
LICENSE=		mozilla-trademark-license
RESTRICTED=		Trademark holder prohibits distribution of modified versions.
NO_BIN_ON_CDROM=	${RESTRICTED}
NO_BIN_ON_FTP=		${RESTRICTED}
.endif
