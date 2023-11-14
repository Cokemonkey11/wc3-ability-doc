#!/usr/bin/env bash

set -euxo pipefail

now=$(date --iso-8601)

wget --output-document $now.html https://web.archive.org/web/20180130181746/http://www.wc3c.net/showthread.php?t=101804

tr -cd '\11\12\40-\176' < $now.html > $now.html.cleaned

pandoc -r html -w gfm $now.html.cleaned -o $now.md
