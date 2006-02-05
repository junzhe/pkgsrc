# $NetBSD: buildlink3.mk,v 1.2 2004/10/03 00:18:05 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
IJS_BUILDLINK3_MK:=	${IJS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ijs
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nijs}
BUILDLINK_PACKAGES+=	ijs

.if !empty(IJS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.ijs+=	ijs>=0.34
BUILDLINK_RECOMMENDED.ijs+=	ijs>=0.34nb2
BUILDLINK_PKGSRCDIR.ijs?=	../../print/ijs
.endif	# IJS_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
