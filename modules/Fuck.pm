package Fuck;

use strict;
use warnings;

print "package loaded successfully\n";

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw($fuck);
our $fuck = "FUckedlikeanything"; 

local $SIG{__DIE__} = sub {warn @_; exit 1};


$SIG{INT} = \&CleanUp;
$SIG{TERM} = \&CleanUp;

sleep(20);

sub new
{
	goto &fuck;
}

sub fuck
{
	my $class = shift;
	$class = ref $class if ref $class;
	my $self = bless {}, $class;
	return $self;
}

sub CleanUp
{
	my $sig = shift;
	if ($sig eq "TERM") {
		 print("received TERMINATE $! will wait for 10 sec.\n");
		 sleep(10);
		 exit(1);
	} elsif ($sig eq "INT") {
		 die "received INTERRUPT $! . will wait for 10 sec\n";
		 sleep(10);
		 exit(1);
	} else {
		print("received $sig $! .");
		exit(1);
	}
}
1;
