#!/usr/bin/env perl
sub p {$_=`whereis $_[0]`;@w=split;$w[1];}
$l=p('fetch') || p('wget') || die "install wget, please\n";
die "enter 1 argument - ref to file in rep\n" if @ARGV!=1;
$_=$ARGV[0];
s/github\.com/raw.githubusercontent\.com/;
s!/blob/!/!;
`$l $_`;
