# $NetBSD: buildlink3.mk,v 1.1 2004/02/22 16:51:23 minskim Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
NETATALK_BUILDLINK3_MK:=	${NETATALK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	netatalk
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGESNnetatalk}
BUILDLINK_PACKAGES+=	netatalk

.if !empty(NETATALK_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.netatalk+=	netatalk>=1.6.2
BUILDLINK_PKGSRCDIR.netatalk?=	../../net/netatalk

.include "../../devel/rx/buildlink3.mk"

.endif	# NETATALK_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
