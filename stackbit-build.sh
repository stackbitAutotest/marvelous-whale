#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://widget.stackbit.com/init.js 61125d8a3f7e3e00ca067f15

echo "stackbit-build.sh: finished build"
