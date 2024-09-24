#!/usr/bin/env bash

# This script compares skipped checks listed in the input file $1 with an allow-list file,
# listing checks which are known and allowed to be skipped, due to bugs in genmc.

SCRIPTS_DIR=$(dirname -- "$( readlink -f -- "$0"; )";)
SORTED_WLIST_NAME="sorted_list.txt"

# generate sorted file
cat "${SCRIPTS_DIR}/known_skipped_verification.txt" | sort | uniq > ${SORTED_WLIST_NAME}

DIFF=$(diff --suppress-common-lines ${SORTED_WLIST_NAME} "$1" | grep -v "^---" | grep -v "^[0-9c0-9]" | grep -v "^< ")

if [[ -n "$DIFF" ]]; then
    echo "New checks were skipped or test names were modified."
    echo "If this is expected, and you have approval from the maintainers, please update the list"
    echo "of known skipped checks at scripts/known_skipped_verification.txt"
    echo "New or changed tests:"
    echo "${DIFF}"
    exit 1
else
    echo "No new tests were skipped. Ok."
fi
