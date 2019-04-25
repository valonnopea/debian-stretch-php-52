#!/bin/bash
set -e

cd "${1}"
extra_libs="$(grep -oEe '^EXTRA_LIBS\s*=\s*.+$' 'Makefile')"
fixed_libs="$(echo "${extra_libs}" |\
        sed 's/-lcrypt//g') -lcrypt -lcrypto -lssl"
sed -i "s/^EXTRA_LIBS\s*=\s*.*$/${fixed_libs}/" 'Makefile'

