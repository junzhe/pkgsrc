# $NetBSD: buildlink3.mk,v 1.4 2004/01/24 03:26:46 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
POPT_BUILDLINK3_MK:=	${POPT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	popt
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npopt}
BUILDLINK_PACKAGES+=	popt

.if !empty(POPT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.popt+=	popt>=1.7nb3
BUILDLINK_PKGSRCDIR.popt?=	../../devel/popt

.include "../../devel/gettext-lib/buildlink3.mk"

.endif	# POPT_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
