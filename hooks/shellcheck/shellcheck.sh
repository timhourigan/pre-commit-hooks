#!/bin/sh

# Check for installation
if ! shellcheck --version > /dev/null 2>&1; then
    echo "Error: shellcheck needs to be installed, see https://github.com/koalaman/shellcheck"
    exit 1
fi

# Run
shellcheck "$@"
