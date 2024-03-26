#!/usr/bin/env bash

set -euxo pipefail

now=$(date --iso-8601)

wget --output-document $now.html https://www.hiveworkshop.com/threads/snippet-set-unit-range-partial-fix.352220/

pandoc -r html -w gfm $now.html -o $now.md
