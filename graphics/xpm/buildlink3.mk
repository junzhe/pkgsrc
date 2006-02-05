# $NetBSD: buildlink3.mk,v 1.18 2005/06/14 18:10:37 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
XPM_BUILDLINK3_MK:=	${XPM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	xpm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxpm}
BUILDLINK_PACKAGES+=	xpm

.if !empty(XPM_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.xpm+=		xpm>=3.4k
BUILDLINK_RECOMMENDED.xpm?=	xpm>=3.4knb6
BUILDLINK_PKGSRCDIR.xpm?=	../../graphics/xpm
.endif	# XPM_BUILDLINK3_MK

.include "../../mk/x11.buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
