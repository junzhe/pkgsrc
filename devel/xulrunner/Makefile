# $NetBSD: Makefile,v 1.90 2013/01/19 09:25:25 ryoon Exp $

.include "dist.mk"
PKGNAME=	xulrunner-${MOZ_BRANCH}${MOZ_BRANCH_MINOR:S/esr//}
PKGREVISION=	1
CATEGORIES=	devel www

MAINTAINER=	tnn@NetBSD.org
HOMEPAGE=	http://developer.mozilla.org/en/docs/XULRunner
COMMENT=	XML User Interface Language runtime environment
LICENSE=	mpl-1.1

MOZILLA_DIR=	# empty

PKGCONFIG_OVERRIDE+=	xulrunner/installer/libxul-embedding.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/libxul.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/mozilla-gtkmozembed-embedding.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/mozilla-gtkmozembed.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/mozilla-js.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/mozilla-nspr.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/mozilla-nss.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner/installer/mozilla-plugin.pc.in

CONFIGURE_ARGS+=	--enable-application=xulrunner
CONFIGURE_ARGS+=	--enable-libxul

ALL_ENV+=		MOZILLA_PKG_NAME=xulrunner

MAKE_ENV+=		FREEBL_NO_DEPEND=0

# workround for link of xulrunner-bin etc.
LDFLAGS+=		-Wl,-rpath,${PREFIX}/lib/xulrunner -Wl,-rpath,${PREFIX}/lib

.include "mozilla-common.mk"
.include "options.mk"

PLIST_VARS+=	sps webrtc vorbis tremor

.if !empty(MACHINE_PLATFORM:S/i386/x86/:MLinux-*-x86*) || ${OPSYS} == "Darwin"
PLIST.sps=	yes
.endif
.if ${OPSYS} == "Linux" || ${OPSYS} == "Darwin"
PLIST.webrtc=	yes
.endif

.if !empty(MACHINE_PLATFORM:MLinux-*-arm*) || ${OPSYS} == "DragonFly" \
    || ${OPSYS} == "FreeBSD" || ${OPSYS} == "NetBSD" || ${OPSYS} == "OpenBSD"
PLIST.tremor=	yes
.else
PLIST.vorbis=	yes
.endif

pre-configure:
	cd ${WRKSRC} && autoconf
	cd ${WRKSRC}/js/src && autoconf
	mkdir ${WRKSRC}/js/src/.deps

post-install:
	# XXX fix the pkg-config files instead
	mkdir ${DESTDIR}${PREFIX}/lib/xulrunner-sdk/sdk/lib
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner/libxpcomglue.a
	ln -s ${PREFIX}/lib/xulrunner-sdk/sdk/lib/libxpcomglue.a	\
	  ${DESTDIR}${PREFIX}/lib/xulrunner/libxpcomglue.a
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner/libxpcomglue_s.a
	ln -s ${PREFIX}/lib/xulrunner-sdk/sdk/lib/libxpcomglue_s.a	\
	  ${DESTDIR}${PREFIX}/lib/xulrunner/libxpcomglue_s.a
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner/libunicharutil_external_s.a
	ln -s ${PREFIX}/lib/xulrunner-sdk/sdk/lib/libunicharutil_external_s.a \
	  ${DESTDIR}${PREFIX}/lib/xulrunner/libunicharutil_external_s.a
	${TOUCH} ${TOUCH_FLAGS} ${DESTDIR}${PREFIX}/include/xulrunner/mozilla/throw_gcc.h
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${PREFIX}/lib/xulrunner-sdk/sdk/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dist/sdk/bin/xpt.py			\
	  ${DESTDIR}${PREFIX}/lib/xulrunner-sdk/sdk/bin
	${INSTALL_LIB} ${WRKSRC}/mozglue/build/libmozglue.a		\
		${DESTDIR}${PREFIX}/lib/xulrunner
	${INSTALL_LIB} ${WRKSRC}/mozglue/build/libmozglue.a		\
		${DESTDIR}${PREFIX}/lib/xulrunner-sdk/sdk/lib
	ln -s ${PREFIX}/lib/xulrunner/lib \
	  ${DESTDIR}${PREFIX}/lib/xulrunner-sdk/lib

.include "../../mk/bsd.pkg.mk"
