# $NetBSD: buildlink3.mk,v 1.2 2004/02/20 03:12:22 minskim Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PY_ORBIT_BUILDLINK3_MK:=	${PY_ORBIT_BUILDLINK3_MK}+

.include "../../lang/python/pyversion.mk"

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pyorbit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npyorbit}
BUILDLINK_PACKAGES+=	pyorbit

.if !empty(PY_ORBIT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.pyorbit+=	${PYPKGPREFIX}-ORBit>=2.0.0nb1
BUILDLINK_PKGSRCDIR.pyorbit?=	../../net/py-ORBit

.include "../../net/ORBit2/buildlink3.mk"

.endif	# PY_ORBIT_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
