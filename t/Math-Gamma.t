# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Math-Gamma.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More tests => 2;
subtest 'USAGE' => sub {
	plan tests => 1;
	use_ok 'Math::Gamma';
};

use Math::Gamma;
subtest 'is_even' => sub {
	plan tests => 4;
	
	ok( Math::Gamma::is_even( 4 ) );
	ok( Math::Gamma::is_even( 423452 ) );
	ok( !Math::Gamma::is_even( 5 ) );
	ok( !Math::Gamma::is_even( 231489761 ) );
};
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

