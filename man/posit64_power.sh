export POSIT_TYPE_SUFFIX=$(if [ -n "$POSIT_TYPE_SUFFIX" ]; then printf "$POSIT_TYPE_SUFFIX"; else printf "64"; fi)
export COMPUTE_DESCRIPTION="the power of a posit"
export COMPUTE_LONG_DESCRIPTION="\n.Va a\nraised to the power of\n.Va b "
export FUNCTION_NAME="power"
export NAN_CONDITION="\n.Va a\nis zero and\n.Va b\nis less than or equal to zero"
export RETURN_TYPE_OVERRIDE=""
export SECOND_ARGUMENT_TYPE=$(if [ -n "$SECOND_ARGUMENT_TYPE" ]; then printf "$SECOND_ARGUMENT_TYPE"; else printf "posit64"; fi)
export SEE_ALSO="integer_power"

$SH man/template/math_function.sh
