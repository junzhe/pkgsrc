# $NetBSD: Makefile,v 1.5 2012/10/03 21:58:05 wiz Exp $
#

DISTNAME=	Text-TabularDisplay-1.28
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Text-TabularDisplay/
COMMENT=	Display text in formatted table output
LICENSE=	gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Text/TabularDisplay/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
