package Fuck;
print "package loaded successfully\n";

use Exporter;
@ISA = qw(Exporter);

@EXPORT = qw($fuck);

my $fuck = "FUckedlikeanything"; 
sub new
{
	goto &fuck;
}

sub fuck
{
	$caller=caller();
	print "actuall caller: $caller\n";
	return "Fuckman";
}
1;