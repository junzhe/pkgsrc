# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
BIND_BUILDLINK3_MK:=	${BIND_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	bind
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nbind}
BUILDLINK_PACKAGES+=	bind

.if !empty(BIND_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.bind+=	bind>=9.2.2
BUILDLINK_RECOMMENDED.bind?=	bind>=9.2.3nb2
BUILDLINK_PKGSRCDIR.bind?=	../../net/bind9
.endif	# BIND_BUILDLINK3_MK

.include "../../security/openssl/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
