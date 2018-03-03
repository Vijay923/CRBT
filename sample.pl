#!/usr/bin/perl

@arr=qw(23 12 32 11 04 67 39);
print "Before:@arr\n";
@arr=sort(@arr);
print "After:@arr\n";
$rand=sprintf "%.2f", rand(100);
print "rand:$rand\n";
