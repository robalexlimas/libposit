/* See LICENSE file for copyright and license details. */
#include <math.h>

#include "util.h"

#include "../posit.h"

/* no need to fix the result, as we do not overflow near the poles */
#define RESULT_FIXER_MACRO(arg, res) (res)

static long double
cothl(long double f)
{
	return 1.0l / tanhl(f);
}

static double
coth(double f)
{
	return (double)cothl((long double)f);
}

UTIL_UNARY_FLOAT_POSIT_WRAPPER(coth, coth, RESULT_FIXER_MACRO)
UTIL_UNARY_FLOAT_POSIT_LOG_WRAPPER(coth, coth, RESULT_FIXER_MACRO)
