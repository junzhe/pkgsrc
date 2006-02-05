# $NetBSD: buildlink3.mk,v 1.5 2006/01/22 16:45:30 tonio Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
TETEX_BIN_BUILDLINK3_MK:=	${TETEX_BIN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	teTeX-bin
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NteTeX-bin}
BUILDLINK_PACKAGES+=	teTeX-bin

.if !empty(TETEX_BIN_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.teTeX-bin+=	teTeX-bin-2.[0-9]*
BUILDLINK_RECOMMENDED.teTeX-bin?=	teTeX-bin>=2.0.2nb6
BUILDLINK_PKGSRCDIR.teTeX-bin?=	../../print/teTeX-bin
.endif	# TETEX_BIN_BUILDLINK3_MK

TEX=tex
PDFTEX=pdftex
PKG_TEXMFPREFIX=	${PREFIX}/share/texmf
PKG_LOCALTEXMFPREFIX=	${PREFIX}/share/texmf
PLIST_SUBST+=	PKG_TEXMFPREFIX=${PKG_TEXMFPREFIX:C|^${PREFIX}/||}
PLIST_SUBST+=	PKG_LOCALTEXMFPREFIX=${PKG_LOCALTEXMFPREFIX:C|^${PREFIX}/||}

PRINT_PLIST_AWK+=	/^@dirrm ${PKG_LOCALTEXMFPREFIX:S|${PREFIX}/||:S|/|\\/|g}(\/bibtex(\/bib|\/bst)?|\/tex(\/latex)?)?$$/ \
			{ next; }
PRINT_PLIST_AWK+=	/^(@dirrm )?${PKG_LOCALTEXMFPREFIX:S|${PREFIX}/||:S|/|\\/|g}/ \
			{ gsub(/${PKG_LOCALTEXMFPREFIX:S|${PREFIX}/||:S|/|\\/|g}/, "$${PKG_LOCALTEXMFPREFIX}"); \
			print; next; }

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
