# $NetBSD: buildlink3.mk,v 1.2 2004/02/13 06:58:31 minskim Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBPATHAN_BUILDLINK3_MK:=	${LIBPATHAN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libpathan
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibpathan}
BUILDLINK_PACKAGES+=	libpathan

.if !empty(LIBPATHAN_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libpathan+=	libpathan>=1.2.2
BUILDLINK_PKGSRCDIR.libpathan?=	../../textproc/libpathan

.include "../../textproc/xerces-c/buildlink3.mk"

.endif	# LIBPATHAN_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
