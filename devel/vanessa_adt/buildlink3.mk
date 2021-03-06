# $NetBSD: buildlink3.mk,v 1.7 2009/03/20 19:24:30 joerg Exp $
#
# This file was created automatically using createbuildlink-3.5.

BUILDLINK_TREE+=	vanessa_adt

.if !defined(VANESSA_ADT_BUILDLINK3_MK)
VANESSA_ADT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vanessa_adt+=	vanessa_adt>=0.0.8
BUILDLINK_ABI_DEPENDS.vanessa_adt+=	vanessa_adt>=0.0.8
BUILDLINK_PKGSRCDIR.vanessa_adt?=	../../devel/vanessa_adt

.include "../../devel/vanessa_logger/buildlink3.mk"
.endif # VANESSA_ADT_BUILDLINK3_MK

BUILDLINK_TREE+=	-vanessa_adt
