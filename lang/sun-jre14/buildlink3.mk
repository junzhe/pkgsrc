# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SUN_JRE14_BUILDLINK3_MK:=	${SUN_JRE14_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	sun-jre14
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsun-jre14}
BUILDLINK_PACKAGES+=	sun-jre14

.if !empty(SUN_JRE14_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.sun-jre14+=	sun-jre14-[0-9]*
BUILDLINK_PKGSRCDIR.sun-jre14?=	../../lang/sun-jre14
EVAL_PREFIX+=   BUILDLINK_JAVA_PREFIX.sun-jre14=sun-jre14
BUILDLINK_JAVA_PREFIX.sun-jre14= \
	${BUILDLINK_PREFIX.sun-jre14}/java/sun-1.4

UNLIMIT_RESOURCES+=     datasize        # must be at least 131204
.endif	# SUN_JRE14_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
