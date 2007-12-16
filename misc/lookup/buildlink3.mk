# $NetBSD$
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LOOKUP_BUILDLINK3_MK:=	${LOOKUP_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	lookup
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlookup}
BUILDLINK_PACKAGES+=	lookup
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}lookup

.if ${LOOKUP_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.lookup+=	${EMACS_PKGNAME_PREFIX}lookup>=1.4
BUILDLINK_PKGSRCDIR.lookup?=	../../misc/lookup
.endif	# LOOKUP_BUILDLINK3_MK

BUILDLINK_CONTENTS_FILTER.lookup=	${EGREP} '.*\.el$$|.*\.elc$$'

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
