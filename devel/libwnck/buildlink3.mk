# $NetBSD: buildlink3.mk,v 1.1 2004/02/11 05:38:35 xtraeme Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBWNCK_BUILDLINK3_MK:=	${LIBWNCK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libwnck
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibwnck}
BUILDLINK_PACKAGES+=	libwnck

.if !empty(LIBWNCK_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libwnck+=	libwnck>=2.4.0.1nb1
BUILDLINK_PKGSRCDIR.libwnck?=	../../devel/libwnck

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"

.endif	# LIBWNCK_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
