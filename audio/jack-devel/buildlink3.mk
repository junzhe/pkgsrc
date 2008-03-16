# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
JACK_DEVEL_BUILDLINK3_MK:=	${JACK_DEVEL_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	jack-devel
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Njack-devel}
BUILDLINK_PACKAGES+=	jack-devel
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}jack-devel

.if ${JACK_DEVEL_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.jack-devel+=	jack-devel>=0.109.10
BUILDLINK_PKGSRCDIR.jack-devel?=	../../audio/jack-devel
.endif	# JACK_DEVEL_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
