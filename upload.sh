#!/bin/sh
set -eu
cd "$(dirname "$0")"
mkdir -p www/srfi/support
curl --location --fail --silent --show-error -o www/srfi/support/index.html \
    https://raw.githubusercontent.com/schemedoc/srfi-metadata/master/table.html
curl --location --fail --silent --show-error -o www/schemeorg.css \
    https://www.staging.scheme.org/schemeorg.css
rsync -crv www/ alpha.servers.scheme.org:/production/docs/www/
