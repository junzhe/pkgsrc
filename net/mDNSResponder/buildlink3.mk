# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MDNSRESPONDER_BUILDLINK3_MK:=	${MDNSRESPONDER_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	mDNSResponder
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NmDNSResponder}
BUILDLINK_PACKAGES+=	mDNSResponder

.if !empty(MDNSRESPONDER_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.mDNSResponder+=	mDNSResponder>=98
BUILDLINK_PKGSRCDIR.mDNSResponder?=	../../net/mDNSResponder
.endif	# MDNSRESPONDER_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
