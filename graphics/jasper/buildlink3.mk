# $NetBSD: buildlink3.mk,v 1.1 2004/02/11 09:10:15 xtraeme Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
JASPER_BUILDLINK3_MK:=	${JASPER_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	jasper
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Njasper}
BUILDLINK_PACKAGES+=	jasper

.if !empty(JASPER_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.jasper+=	jasper>=1.600.0
BUILDLINK_PKGSRCDIR.jasper?=	../../graphics/jasper

.include "../../graphics/jpeg/buildlink3.mk"

.endif	# JASPER_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
