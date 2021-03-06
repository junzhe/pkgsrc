$NetBSD$

Chase after the C++ standard:
   - string constants are const char *

--- doctype/htmltag.hxx~	1998-11-11 21:31:12.000000000 +0000
+++ doctype/htmltag.hxx
@@ -22,7 +22,7 @@ public:
   ~HTMLTAG();
 
 private:
-    int TagMatch(char* tag, char* tagType) const;
+    int TagMatch(const char* tag, const char* tagType) const;
 };
 
 typedef HTMLTAG* PHTMLTAG;
