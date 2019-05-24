#!/usr/bin/perl
undef $/;
$text = <>;
$text =~ s/(\n)(\s*)(?=\n)/$1<p>/g;

# make whitespace visible
$text =~ s/ /·/g;
$text =~ s/\n/¬\n/g;

print "$text\n";