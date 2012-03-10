$NetBSD$

--- mozilla/nsprpub/pr/include/md/prosdep.h.orig	2012-02-16 14:09:27.000000000 +0000
+++ mozilla/nsprpub/pr/include/md/prosdep.h
@@ -66,7 +66,7 @@ PR_BEGIN_EXTERN_C
 #if defined(AIX)
 #include "md/_aix.h"
 
-#elif defined(FREEBSD)
+#elif defined(FREEBSD) || defined(__DragonFly__)
 #include "md/_freebsd.h"
 
 #elif defined(NETBSD)
