# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PY_MUTAGEN_BUILDLINK3_MK:=	${PY_MUTAGEN_BUILDLINK3_MK}+

.include "../../lang/python/pyversion.mk"

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	py-mutagen
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npy-mutagen}
BUILDLINK_PACKAGES+=	py-mutagen
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}py-mutagen

.if ${PY_MUTAGEN_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.py-mutagen+=	${PYPKGPREFIX}-mutagen>=1.9
BUILDLINK_PKGSRCDIR.py-mutagen?=	../../audio/py-mutagen
.endif	# PY_MUTAGEN_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
