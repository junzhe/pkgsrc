# $NetBSD: buildlink3.mk,v 1.18 2006/10/12 09:24:19 martti Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
XFCE4_PRINT_BUILDLINK3_MK:=	${XFCE4_PRINT_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	xfce4-print
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxfce4-print}
BUILDLINK_PACKAGES+=	xfce4-print
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}xfce4-print

.if ${XFCE4_PRINT_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.xfce4-print+=	xfce4-print>=4.2.4
BUILDLINK_PKGSRCDIR.xfce4-print?=	../../print/xfce4-print
.endif	# XFCE4_PRINT_BUILDLINK3_MK

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../print/a2ps/buildlink3.mk"
.include "../../x11/xfce4-mcs-plugins/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"

.if !defined(PKG_BUILD_OPTIONS.xfce4-print)
PKG_BUILD_OPTIONS.xfce4-print!=						\
	cd ${BUILDLINK_PKGSRCDIR.xfce4-print} &&			\
	${MAKE} show-var ${MAKEFLAGS} VARNAME=PKG_OPTIONS
MAKEFLAGS+=	PKG_BUILD_OPTIONS.xfce4-print=${PKG_BUILD_OPTIONS.xfce4-print:Q}
.endif
MAKEVARS+=	PKG_BUILD_OPTIONS.xfce4-print

.if !empty(PKG_BUILD_OPTIONS.xfce4-print:Mcups)
.  include "../../print/cups/buildlink3.mk"
.endif

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
