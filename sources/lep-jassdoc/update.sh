#!/usr/bin/env bash

set -euxo pipefail

rm -rf tmp/

mkdir -p tmp

pushd tmp

git clone https://github.com/lep/jassdoc.git .

popd

now=$(date --iso-8601)

cp tmp/Blizzard.j Blizard.$now.j

cp tmp/builtin-types.j builtin-types.$now.j

cp tmp/common.j common.$now.j

rm -rf tmp/
