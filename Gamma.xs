#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include<math.h>


MODULE = Math::Gamma		PACKAGE = Math::Gamma		

int
is_even(input)
	int input
	CODE:
		RETVAL = ( input % 2 == 0 );
	OUTPUT:
		RETVAL

double
gamma(input)
	double input
	CODE:
		RETVAL = tgamma( input );
	OUTPUT:
		RETVAL

double
tgamma(input)
	double input
	CODE:
		RETVAL = tgamma( input );
	OUTPUT:
		RETVAL

double
lgamma(input)
	double input
	CODE:
		RETVAL = lgamma( input );
	OUTPUT:
		RETVAL
