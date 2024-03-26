#!/usr/bin/env bash

set -euxo pipefail

now=$(date --iso-8601)

wget --output-document $now.html https://www.hiveworkshop.com/pastebin/b2769ab71109c3634b3115937deaa34a.24187

pandoc -r html -w gfm $now.html -o $now.md
