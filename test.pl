#!/usr/bin/perl
use DBI;
=pod
use LWP::UserAgent;
#use HTTP::Request::Common;
$request=POST "http://192.169.2.3/CheckBalance/WebForm1.aspx?msisdn=123";
print "$request\n";
=pod
print "$PROGRAM_NAME\n";
print "$PROCESS_ID\n";
print "$proceesid\n";
print "$0\n";
print "$1\n";

system("ls");

print "sript start here\n";
$a=23;
print "$a\n";

$a=undef;

print "$a\n";
=cut
$user='root';
$pass='redhat';
$dsn='DBI:mysql:vijay;host=localhost';

$ttid="12345";
$songname="I fuck you once again";
$msg='Dear Customer,you have just listened to '."<$songname>".'.To set this as your CRBT,'."SMS GET $ttid to 150".'.It\'\'s all about U!';

print "$msg\n";
$msg='Dear Customer,you have just listened to '."<$songname>".'.To set this as your CRBT,'."SMS GET $ttid to 150".'.It\'\'s all about U!';

print "$msg\n";

$msisdn="918553133036";

$mysql=DBI->connect($dsn,$user,$pass);
$mysql->do(" insert into Send_dtl(Short_Code, Msisdn, Short_message, Inserted_time, MesgFrom) values('150','$msisdn','$msg', now(),0)");
$mysql->disconnect();
exit;
