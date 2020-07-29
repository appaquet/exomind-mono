#!/usr/bin/env bash
set -e
CUR_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$CUR_DIR"

EXOCORE_IOS_ROOT="$CUR_DIR/../"
EXOCORE_ROOT="$EXOCORE_IOS_ROOT/../../"

MODE=${1:-debug}
if [[ "$MODE" == "release" ]]; then
    LIPO_ARGS="--release"
elif [[ "$MODE" == "debug" ]]; then
    LIPO_ARGS=""
else
    echo "syntax: $0 [release|debug]"
    exit 1
fi

pushd $EXOCORE_IOS_ROOT
cargo lipo $LIPO_ARGS
EXOCORE_IOS_LIB_DIR="$EXOCORE_IOS_ROOT/lib"
rm -rf $EXOCORE_IOS_LIB_DIR
mkdir $EXOCORE_IOS_LIB_DIR
cp $EXOCORE_ROOT/target/universal/$MODE/*.a $EXOCORE_IOS_LIB_DIR/  # TODO: debug vs release
popd
