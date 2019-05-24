#!/usr/bin/perl
undef $/;

sub print_in_visible_whitespace {
  my $string = $_[0];
  $string =~ s/ /·/g;
  $string =~ s/\n/¬\n/g;
  print "$string\n";
}

$text = <>;

print "Input:\n";
print_in_visible_whitespace($text);

$text =~ s/(\n)(\s*)(\n)/$1<p>$3/g;

print "Output:\n";
print_in_visible_whitespace($text);