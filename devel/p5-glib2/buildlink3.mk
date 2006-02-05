# $NetBSD: buildlink3.mk,v 1.4 2006/01/25 11:48:34 xtraeme Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
P5_GLIB2_BUILDLINK3_MK:=	${P5_GLIB2_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	p5-glib2
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Np5-glib2}
BUILDLINK_PACKAGES+=	p5-glib2

.if !empty(P5_GLIB2_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.p5-glib2+=	p5-glib2>=1.103
BUILDLINK_RECOMMENDED.p5-glib2?=	p5-glib2>=1.103nb1
BUILDLINK_PKGSRCDIR.p5-glib2?=	../../devel/p5-glib2
.endif	# P5_GLIB2_BUILDLINK3_MK

.include "../../devel/glib2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
