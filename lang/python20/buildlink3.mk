# $NetBSD: buildlink3.mk,v 1.3 2004/02/10 20:45:02 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PYTHON20_BUILDLINK3_MK:=	${PYTHON20_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	python20
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npython20}
BUILDLINK_PACKAGES+=	python20

.if !empty(PYTHON20_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.python20+=	python20>=2.0
BUILDLINK_PKGSRCDIR.python20?=	../../lang/python20

.if defined(BUILDLINK_DEPMETHOD.python)
BUILDLINK_DEPMETHOD.python20?=	${BUILDLINK_DEPMETHOD.python}
.endif

BUILDLINK_INCDIRS.python20+=	include/python2.0
BUILDLINK_LIBDIRS.python20+=	lib/python2.0/config
BUILDLINK_TRANSFORM+=		l:python:python2.0

.endif	# PYTHON20_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
