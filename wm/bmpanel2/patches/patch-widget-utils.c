$NetBSD$

alloca.h is deprecated and doesn't exist on many systems.

--- widget-utils.c.orig	2009-11-01 05:50:26.000000000 +0000
+++ widget-utils.c
@@ -1,5 +1,5 @@
 #include <stdio.h>
-#include <alloca.h>
+#include <malloc.h>
 #include "widget-utils.h"
 
 /**************************************************************************
