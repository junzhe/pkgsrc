# $NetBSD: buildlink3.mk,v 1.6 2004/02/10 20:45:01 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DB4_BUILDLINK3_MK:=	${DB4_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	db4
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndb4}
BUILDLINK_PACKAGES+=	db4

.if !empty(DB4_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.db4+=		db4>=4.2.52
BUILDLINK_PKGSRCDIR.db4?=	../../databases/db4
BUILDLINK_INCDIRS.db4?=		include/db4
.endif	# DB4_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
