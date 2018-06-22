package Fuck;

use strict;
use warnings;
use LoadVars;
use DBI;

local $SIG{__DIE__} = sub {warn @_; exit 1};
my $_dbh = {
	'dbh' => '',
};

$SIG{INT} = \&CleanUp;
$SIG{TERM} = \&CleanUp;
$SIG{ALRM} = \&CleanUp;

alarm 5;
my $stdin = <STDIN>;
# sleep(20);
system("sleep 20");
sleep(20);
#print "$CNF{$_}:$_\n" foreach (keys %CNF); 

sub new { goto &fuck; }

sub fuck
{
	my $class = shift;
	$class = ref $class if ref $class;
	my $self = bless {}, $class;
	if (!defined $self->{'dbh'}) {
		# print "DBI->connect($CNF{dsn},$CNF{user},$CNF{passwd})\n";
		$_dbh = DBI->connect($CNF{dsn},$CNF{user},$CNF{passwd});
	}
	 # sleep(20);

	$self->{'dbh'} = $_dbh;
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
