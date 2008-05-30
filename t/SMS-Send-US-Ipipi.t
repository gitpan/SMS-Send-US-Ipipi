# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl SMS-Send-Ipipi.t'

use Test::More tests => 3;
BEGIN { use_ok('SMS::Send::US::Ipipi') };

use SMS::Send;

# Get the sender and login
my $sender = SMS::Send->new( 'US::Ipipi',
                             _login    => '',
                             _password => '',
                        );

isa_ok( $sender, 'SMS::Send' );

my $sent = $sender->send_sms( text => 'This is the message',
                              to   => '212-555-1212',
                         );

ok( $sent, 'message was sent' );



