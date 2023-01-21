# Additional help function
# Print extra information when user types "hmm"
__customer_help() {
    cat <<EOF
Additional functions:

EOF
}

# Customer build prefix
# If undefined, customer can provide custom __customer_check_product
# If empty, prefix is disabled
# Advantage: support multiple configurations in one build.
# Disadvantage: does not support CTS test.
# Default: lmodroid_
export CUSTOMER_BUILD_PREFIX=lmodroid_
