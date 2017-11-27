#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
  compile
  assertCaptured "Oracle Client Installed"

  . $BUILDPACK_HOME/export
  assertEquals $OCI_LIB_DIR "$BUILD_DIR/.oracle-build/instantclient"
  assertEquals $OCI_INC_DIR "$BUILD_DIR/.oracle-build/instantclient/sdk/include"
  assertTrue "OCI_INC_DIR missing" "[ -d '${OCI_INC_DIR}' ]"
}
