# $NetBSD: buildlink3.mk,v 1.7 2006/04/12 10:27:19 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GNURADIO_CORE_BUILDLINK3_MK:=	${GNURADIO_CORE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gnuradio-core
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngnuradio-core}
BUILDLINK_PACKAGES+=	gnuradio-core

.if !empty(GNURADIO_CORE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gnuradio-core=	gnuradio-core>=2.8
BUILDLINK_PKGSRCDIR.gnuradio-core?=	../../ham/gnuradio-core
.endif	# GNURADIO_CORE_BUILDLINK3_MK

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/cppunit/buildlink3.mk"
.include "../../devel/swig/buildlink3.mk"
.include "../../lang/python/pyversion.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/application.mk"
.include "../../math/fftwf/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
