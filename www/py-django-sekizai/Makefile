# $NetBSD: Makefile,v 1.4 2012/08/26 12:54:46 adam Exp $

DISTNAME=	django-sekizai-0.6.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	http://pypi.python.org/packages/source/d/django-sekizai/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://github.com/ojii/django-sekizai
COMMENT=	Django Template Blocks with extra functionality
LICENSE=	modified-bsd

USE_LANGUAGES=		# empty
EGG_NAME=		${DISTNAME:S/-/_/}

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
