# $NetBSD: buildlink3.mk,v 1.1 2004/02/14 18:08:44 minskim Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
COMPFACE_BUILDLINK3_MK:=	${COMPFACE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	compface
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncompface}
BUILDLINK_PACKAGES+=	compface

.if !empty(COMPFACE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.compface+=	compface>=1.4
BUILDLINK_PKGSRCDIR.compface?=	../../graphics/compface
.endif	# COMPFACE_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
