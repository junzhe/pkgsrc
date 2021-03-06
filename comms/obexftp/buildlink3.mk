# $NetBSD: buildlink3.mk,v 1.1 2006/11/30 00:07:03 xtraeme Exp $

BUILDLINK_TREE+=	obexftp

.if !defined(OBEXFTP_BUILDLINK3_MK)
OBEXFTP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.obexftp+=	obexftp>=0.20nb1
BUILDLINK_PKGSRCDIR.obexftp?=	../../comms/obexftp

.include "../../comms/openobex/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/libusb/buildlink3.mk"
.endif # OBEXFTP_BUILDLINK3_MK

BUILDLINK_TREE+=	-obexftp
