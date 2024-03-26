#!/usr/bin/env bash

set -euxo pipefail

now=$(date --iso-8601)

wget --output-document $now.html https://www.hiveworkshop.com/threads/some-weird-mechanics.278683/

pandoc -r html -w gfm $now.html -o $now.md
