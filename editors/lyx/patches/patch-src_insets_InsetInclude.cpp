$NetBSD$

--- src/insets/InsetInclude.cpp.orig	2012-11-22 21:58:32.000000000 +0000
+++ src/insets/InsetInclude.cpp
@@ -806,7 +806,7 @@ support::FileNameList const &
 		tmp->setParent(&buffer);
 		return cache;
 	}
-	static support::FileNameList const empty;
+	static support::FileNameList empty;
 	return empty;
 }
 
