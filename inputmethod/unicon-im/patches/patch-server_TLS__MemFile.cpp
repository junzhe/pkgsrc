$NetBSD$

--- server/TLS_MemFile.cpp.orig	2011-11-26 03:22:28.000000000 +0000
+++ server/TLS_MemFile.cpp
@@ -1,4 +1,5 @@
-#include <iostream.h>
+#include <iostream>
+using std::cout;
 #include <assert.h>
 #include <stdio.h>
 #include <stdlib.h>
