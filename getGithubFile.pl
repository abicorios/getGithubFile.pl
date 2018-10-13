#!/usr/bin/env perl
if(-e '/usr/ports') {
	$l='fetch';
} else {
	$l='wget';
}
$_=`whereis $l`;
s/$l: ?//;
die "install $l, please\n" if length($_)<length("/bin/$l");
die "enter 1 argument - ref to file in rep\n" if @ARGV!=1;
$_=$ARGV[0];
s/github\.com/raw.githubusercontent\.com/;
s!/blob/!/!;
`$l $_`;
