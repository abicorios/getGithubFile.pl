#!/usr/bin/perl
use 5.010;
$_=`whereis wget`;
s/wget://;
die "install wget, please\n" if length($_)<length('/bin/wget');
die "enter 1 argument - ref to file in rep\n" if @ARGV!=1;
$_=$ARGV[0];
s/github\.com/raw.githubusercontent\.com/;
s!/blob/!/!;
`wget $_`;
