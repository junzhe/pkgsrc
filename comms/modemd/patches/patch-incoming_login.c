$NetBSD$

--- incoming/login.c.orig	2011-11-25 20:00:14.000000000 +0000
+++ incoming/login.c
@@ -47,6 +47,7 @@ static char copyright[] =
 #include <stdio.h>
 #include <fcntl.h>
 #include <syslog.h>
+#include <stdlib.h>
 #include "mcap.h"
 #include "ttio.h"
 
