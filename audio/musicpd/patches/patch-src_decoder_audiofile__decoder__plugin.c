$NetBSD$

Include unistd.h for SEEK_CUR, SEEK_SET.

--- src/decoder/audiofile_decoder_plugin.c.orig	2011-03-19 00:41:52.000000000 +0000
+++ src/decoder/audiofile_decoder_plugin.c
@@ -25,6 +25,7 @@
 #include <af_vfs.h>
 #include <assert.h>
 #include <glib.h>
+#include <unistd.h>
 
 #undef G_LOG_DOMAIN
 #define G_LOG_DOMAIN "audiofile"
