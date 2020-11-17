#!/usr/bin/env bash

pushd $(dirname "$0") 2>&1 1>/dev/null

cp inp/*.* ../ext/natives/inp
cp natives_test.json ../ext/native-doc-gen/out/natives_test.json

popd 2>&1 1>/dev/null
