# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SHAPELIB_BUILDLINK3_MK:=	${SHAPELIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	shapelib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nshapelib}
BUILDLINK_PACKAGES+=	shapelib

.if !empty(SHAPELIB_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.shapelib+=	shapelib>=1.2.10
BUILDLINK_PKGSRCDIR.shapelib?=	../../geography/shapelib
.endif	# SHAPELIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
