# $NetBSD: buildlink3.mk,v 1.1 2004/02/20 11:33:21 jmmv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GST_PLUGINS_BUILDLINK3_MK:=	${GST_PLUGINS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gst-plugins
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngst-plugins}
BUILDLINK_PACKAGES+=	gst-plugins

.if !empty(GST_PLUGINS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.gst-plugins+=		gst-plugins>=0.6.4
BUILDLINK_PKGSRCDIR.gst-plugins?=	../../multimedia/gst-plugins
.endif	# GST_PLUGINS_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
