# $NetBSD: buildlink3.mk,v 1.2 2004/02/22 04:01:57 schmonz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBTCPA_BUILDLINK3_MK:=	${LIBTCPA_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libtcpa
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibtcpa}
BUILDLINK_PACKAGES+=	libtcpa

.if !empty(LIBTCPA_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libtcpa+=	libtcpa>=1.1b
BUILDLINK_PKGSRCDIR.libtcpa?=	../../security/libtcpa
BUILDLINK_DEPMETHOD.libtcpa?=	build

.include "../../security/openssl/buildlink3.mk"

.endif	# LIBTCPA_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
