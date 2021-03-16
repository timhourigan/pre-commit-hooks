#!/bin/sh

# Check for installation
if ! shellcheck --version 2>&1 > /dev/null; then
    echo "Error: shellcheck needs to be installed, see https://github.com/koalaman/shellcheck"
    exit 1
fi

# Run
shellcheck "$@"
