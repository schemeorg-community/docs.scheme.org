#!/bin/sh
set -eu
cd "$(dirname "$0")"
mkdir -p www/srfi/support
curl --location --fail --silent --show-error -o www/srfi/support/index.html \
    https://raw.githubusercontent.com/schemedoc/srfi-metadata/master/table.html
curl --location --fail --silent --show-error -o www/schemeorg.css \
    https://www.scheme.org/schemeorg.css
rsync -crv www/ tuonela.scheme.org:/production/docs/www/
