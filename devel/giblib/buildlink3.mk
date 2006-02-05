# $NetBSD: buildlink3.mk,v 1.4 2004/10/03 00:13:27 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GIBLIB_BUILDLINK3_MK:=	${GIBLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	giblib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngiblib}
BUILDLINK_PACKAGES+=	giblib

.if !empty(GIBLIB_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.giblib+=	giblib>=1.2.3nb3
BUILDLINK_RECOMMENDED.giblib+=	giblib>=1.2.4nb3
BUILDLINK_PKGSRCDIR.giblib?=	../../devel/giblib
.endif	# GIBLIB_BUILDLINK3_MK

.include "../../graphics/imlib2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
