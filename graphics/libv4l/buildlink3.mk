# $NetBSD: buildlink3.mk,v 1.2 2009/01/10 21:04:23 jmcneill Exp $

BUILDLINK_TREE+=	libv4l

.if !defined(LIBV4L_BUILDLINK3_MK)
LIBV4L_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libv4l+=		libv4l>=0.4.3nb2
BUILDLINK_ABI_DEPENDS.libv4l+=		libv4l>=0.4.3nb2
BUILDLINK_PKGSRCDIR.libv4l?=		../../graphics/libv4l
.endif # LIBV4L_BUILDLINK3_MK

BUILDLINK_TREE+=	-libv4l
