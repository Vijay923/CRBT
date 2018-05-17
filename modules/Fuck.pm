package Fuck;
print "package loaded successfully\n";

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