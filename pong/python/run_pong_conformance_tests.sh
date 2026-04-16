#!/bin/bash

UNRECOVERABLE_ERROR_EXIT_CODE=69
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if command -v python3 >/dev/null 2>&1; then
    PYTHON_CMD="python3"
elif command -v python >/dev/null 2>&1; then
    PYTHON_CMD="python"
else
    printf "Error: Python interpreter not found. Please install Python.\n"
    exit $UNRECOVERABLE_ERROR_EXIT_CODE
fi

if ! "$PYTHON_CMD" -c "import pexpect" >/dev/null 2>&1; then
    printf "Error: Python package 'pexpect' is required but not installed.\n"
    printf "Install it with: %s -m pip install pexpect\n" "$PYTHON_CMD"
    exit $UNRECOVERABLE_ERROR_EXIT_CODE
fi

if ! "$PYTHON_CMD" -c "import pyte" >/dev/null 2>&1; then
    printf "Error: Python package 'pyte' is required but not installed.\n"
    printf "Install it with: %s -m pip install pyte\n" "$PYTHON_CMD"
    exit $UNRECOVERABLE_ERROR_EXIT_CODE
fi

exec "$SCRIPT_DIR/../../scripts/run_conformance_tests_python.sh" "$@"
