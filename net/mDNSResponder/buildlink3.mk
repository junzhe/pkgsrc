# $NetBSD: buildlink3.mk,v 1.1 2005/05/26 12:50:24 markd Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MDNSRESPONDER_BUILDLINK3_MK:=	${MDNSRESPONDER_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	mDNSResponder
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NmDNSResponder}
BUILDLINK_PACKAGES+=	mDNSResponder

.if !empty(MDNSRESPONDER_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.mDNSResponder+=	mDNSResponder>=98
BUILDLINK_RECOMMENDED.mDNSResponder?=	mDNSResponder>=107.5nb1
BUILDLINK_PKGSRCDIR.mDNSResponder?=	../../net/mDNSResponder
.endif	# MDNSRESPONDER_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
