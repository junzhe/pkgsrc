# $NetBSD: buildlink3.mk,v 1.22 2010/11/15 22:58:23 abs Exp $

BUILDLINK_TREE+=	libgnomeprintui

.if !defined(LIBGNOMEPRINTUI_BUILDLINK3_MK)
LIBGNOMEPRINTUI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgnomeprintui+=	libgnomeprintui>=2.8.0
BUILDLINK_ABI_DEPENDS.libgnomeprintui+=	libgnomeprintui>=2.18.6nb2
BUILDLINK_PKGSRCDIR.libgnomeprintui?=	../../print/libgnomeprintui

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/gnome-icon-theme/buildlink3.mk"
.include "../../graphics/libart/buildlink3.mk"
.include "../../graphics/libgnomecanvas/buildlink3.mk"
.include "../../print/libgnomeprint/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif # LIBGNOMEPRINTUI_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgnomeprintui
