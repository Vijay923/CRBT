package LoadVars;


use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(%CNF);

our %CNF = (
	'dsn' => 'DBI:mysql:database=vijay',
	'user' => 'root',
	'passwd' => 'redhat'
	);
1;