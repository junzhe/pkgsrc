$NetBSD$

Fix build with png 1.6.

--- src/celengine/texture.cpp~	2004-02-22 00:35:52.000000000 +0000
+++ src/celengine/texture.cpp
@@ -27,6 +27,7 @@
 #include <fstream>
 #include <cstdlib>
 #include <cstdio>
+#include <cstring>
 #include <cassert>
 
 #ifndef _WIN32
