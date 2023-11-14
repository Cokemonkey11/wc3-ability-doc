#!/usr/bin/env bash

set -euxo pipefail

now=$(date --iso-8601)

wget --output-document $now.html https://www.hiveworkshop.com/threads/base-abilities-for-custom-spells-cast-by-melee-game-ai-units.193280/

pandoc -r html -w markdown $now.html -o $now.md
