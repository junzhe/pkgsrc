#!/bin/sh
#
# $NetBSD: config.SunOS.sh,v 1.2 1999/09/20 19:23:16 kim Exp $
#
# config.sh
# This file was produced by running the Configure script.
# (and manually bashed on by kim@netbsd.org)

n=''
c='\c'
libc='/usr/lib/libc.a'
eunicefix=':'
eunice='undef'
cpp='gcc -pipe -E'
shsharp='true'
startsh='#!/bin/sh'
spitshell='cat'
test='test'
expr='expr'
sed='sed'
echo='echo'
cat='cat'
rm='rm'
cp='cp'
tr='tr'
mkdir='mkdir'
inews='inews'
grep='grep'
chmod='chmod'
awk='awk'
egrep='/usr/bin/egrep'
nidump='/bin/cat'
ypmatch='/bin/cat'
jobslib=''
contains='grep'
lib='@PREFIX@/etc'
libexp='@PREFIX@/etc'
nametype='bsd'
cc='gcc -pipe'
iandd=''
include='-DUSG'
socketlib='-lsocket -lnsl'
posix=''
nonetdb='undef'
internet=''
filexp=''
dotdir='define'
strncasecmp='define'
strcasecmp='define'
seteuid='define'
sitename=''
hostfile='@PKGSYSCONFDIR@/domainname'
domain=''
isadmin='undef'
newsadmin='root'
novoid='undef'
mansrc='@PREFIX@/man/man1'
manext='1'
rootid='0'
strchr='define'
memcpy='define'
sunos4='undef'
solaris='define'
portable='define'
passnam='define'
berknam='define'
usgnam='undef'
whoami='undef'
getpwent='define'
gethostname='undef'
douname='undef'
phostname='undef'
hostcmd=''
serverfile='@PKGSYSCONFDIR@/etc/nntp/server'
auth='define'
authsimple='define'
authold='define'
passfile='@PKGSYSCONFDIR@/etc/nntp/server.auth'
decnet='undef'
datakit='undef'
CONFIG=true
