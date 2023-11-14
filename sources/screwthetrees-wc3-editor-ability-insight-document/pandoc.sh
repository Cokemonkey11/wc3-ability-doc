#!/usr/bin/env bash

set -euxo pipefail

pandoc -r odt -w gfm $1 -o 2023-11-14.md
