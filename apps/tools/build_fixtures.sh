#!/usr/bin/env bash
set -e
CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

APPS_DIR="$CUR_DIR/../"
EXOCORE_ROOT="$APPS_DIR/../"

pushd $APPS_DIR/example/
cargo build --target wasm32-unknown-unknown --release
cp $EXOCORE_ROOT/target/wasm32-unknown-unknown/release/exocore_apps_example.wasm $APPS_DIR/runtime/fixtures/example.wasm