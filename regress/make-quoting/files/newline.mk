# $NetBSD$
#
# This file documents a bug in the :Q operator, which does not handle
# the newline character correctly. It produces <backslash><newline>
# instead of the proper <quote><newline><quote>.
#

S=	foo ${.newline} bar

all:
	printf "%s\\n" ${S:Q}
