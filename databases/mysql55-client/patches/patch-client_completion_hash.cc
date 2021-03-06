$NetBSD: patch-ac,v 1.2 2010/09/21 15:57:30 taca Exp $

* Portability: include <bstring.h> if exists.

--- client/completion_hash.cc.orig	2010-02-04 11:36:51.000000000 +0000
+++ client/completion_hash.cc
@@ -22,6 +22,10 @@
 
 #include <my_global.h>
 #include <m_string.h>
+#ifdef NEEDS_BSTRING_H                         // defines bzero()
+#include <bstring.h>
+#endif
+
 #include <my_sys.h>
 #include "completion_hash.h"
 
