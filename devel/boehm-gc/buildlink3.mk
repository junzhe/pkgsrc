# $NetBSD: buildlink3.mk,v 1.4 2004/01/24 03:26:46 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
BOEHM_GC_BUILDLINK3_MK:=	${BOEHM_GC_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	boehm-gc
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nboehm-gc}
BUILDLINK_PACKAGES+=	boehm-gc

.if !empty(BOEHM_GC_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.boehm-gc+=	boehm-gc>=6.2nb1
BUILDLINK_PKGSRCDIR.boehm-gc?=	../../devel/boehm-gc
.endif	# BOEHM_GC_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
