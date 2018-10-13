#!/usr/bin/env perl
$l='fetch';
sub installed {
	$s=pop @_;
	return length(`whereis $s`)>length("$s: /bin/$s");
}
$l=installed('fetch')?'fetch':'wget';
die "install $l, please\n" if !installed($l);
die "enter 1 argument - ref to file in rep\n" if @ARGV!=1;
$_=$ARGV[0];
s/github\.com/raw.githubusercontent\.com/;
s!/blob/!/!;
`$l $_`;
