#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
  compile
  assertCapturedSuccess
  assertCaptured "Oracle Client Installed"

  . $BUILDPACK_HOME/export
  assertEquals $LD_LIBRARY_PATH "$BUILD_DIR/.oracle-build/instantclient/"
  assertEquals $OCI_LIB_DIR "$BUILD_DIR/.oracle-build/instantclient"
  assertEquals $OCI_INC_DIR "$BUILD_DIR/.oracle-build/instantclient/sdk/include"
  assertTrue "'\$OCI_LIB_DIR/libclntsh.so' missing" "[ -f '${OCI_LIB_DIR}/libclntsh.so' ]"
  assertTrue "OCI_INC_DIR missing" "[ -d '${OCI_INC_DIR}' ]"

  . $BUILD_DIR/.profile.d/oracle-driver-buildpack-runtime-env.sh
  assertEquals ${LD_LIBRARY_PATH} "$HOME/.oracle-build/instantclient/:/app/.apt/lib/x86_64-linux-gnu/:$BUILD_DIR/.oracle-build/instantclient/"
  assertEquals $OCI_LIB_DIR "$HOME/.oracle-build/instantclient"
  assertEquals $OCI_INC_DIR "$HOME/.oracle-build/instantclient/sdk/include"
}
