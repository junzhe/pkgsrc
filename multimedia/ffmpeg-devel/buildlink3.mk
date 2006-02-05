# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/01/24 04:00:37 xtraeme Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FFMPEG_DEVEL_BUILDLINK3_MK:=	${FFMPEG_DEVEL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ffmpeg-devel
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nffmpeg-devel}
BUILDLINK_PACKAGES+=	ffmpeg-devel

.if !empty(FFMPEG_DEVEL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.ffmpeg-devel+=	ffmpeg-devel>=0.4.9pre1
BUILDLINK_RECOMMENDED.ffmpeg-devel?=	ffmpeg-devel>=0.4.9pre1nb1
BUILDLINK_PKGSRCDIR.ffmpeg-devel?=	../../multimedia/ffmpeg-devel
.endif	# FFMPEG_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
