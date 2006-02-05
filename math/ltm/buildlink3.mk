# $NetBSD: buildlink3.mk,v 1.1.1.1 2004/07/30 13:49:40 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LTM_BUILDLINK3_MK:=	${LTM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ltm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nltm}
BUILDLINK_PACKAGES+=	ltm

.if !empty(LTM_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.ltm+=	ltm>=0.30
BUILDLINK_RECOMMENDED.ltm?=	ltm>=0.30nb1
BUILDLINK_PKGSRCDIR.ltm?=	../../math/ltm
BUILDLINK_DEPMETHOD.ltm?=	build
.endif	# LTM_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
