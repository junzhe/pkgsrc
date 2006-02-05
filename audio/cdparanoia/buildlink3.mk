# $NetBSD: buildlink3.mk,v 1.3 2004/10/03 00:13:05 tv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
CDPARANOIA_BUILDLINK3_MK:=	${CDPARANOIA_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	cdparanoia
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncdparanoia}
BUILDLINK_PACKAGES+=	cdparanoia

.if !empty(CDPARANOIA_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.cdparanoia+=		cdparanoia>=3.0
BUILDLINK_RECOMMENDED.cdparanoia+=	cdparanoia>=3.0.9.8nb4
BUILDLINK_PKGSRCDIR.cdparanoia?=	../../audio/cdparanoia
.endif	# CDPARANOIA_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
