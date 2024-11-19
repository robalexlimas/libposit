export POSIT_TYPE_SUFFIX=$(if [ -n "$POSIT_TYPE_SUFFIX" ]; then printf "$POSIT_TYPE_SUFFIX"; else printf "_log64"; fi)
export COMPUTE_DESCRIPTION="the decadic logarithm of one plus a linear posit"
export COMPUTE_LONG_DESCRIPTION="the decadic, i.e. base 10, logarithm of one plus\n.Va a "
export FUNCTION_NAME="lg_1_plus"
export NAN_CONDITION="\n.Va a\nis smaller than or equal to minus one"
export RETURN_TYPE_OVERRIDE=""
export SECOND_ARGUMENT_TYPE=""
export SEE_ALSO="lg"

$SH man/template/math_function.sh
