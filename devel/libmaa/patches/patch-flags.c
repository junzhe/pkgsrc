$NetBSD$

--- flags.c.orig	2012-07-05 12:01:24.000000000 +0000
+++ flags.c
@@ -142,7 +142,7 @@ void flg_set( const char *name )
 /* \doc This inlined function tests the |flag|, returning non-zero if the
    |flag| is set, and zero otherwise. */
 
-__inline__ int flg_test( flg_Type flag )
+int flg_test( flg_Type flag )
 {
    return TEST( flag, setFlags );
 }
$NetBSD: patch-flags.c,v 1.1 2012/07/05 18:47:38 joerg Exp $

--- flags.c.orig	2012-07-05 12:01:24.000000000 +0000
+++ flags.c
@@ -142,7 +142,7 @@ void flg_set( const char *name )
 /* \doc This inlined function tests the |flag|, returning non-zero if the
    |flag| is set, and zero otherwise. */
 
-__inline__ int flg_test( flg_Type flag )
+int flg_test( flg_Type flag )
 {
    return TEST( flag, setFlags );
 }
