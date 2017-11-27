#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
  compile
  assertCaptured "Oracle Client Installed"

  . $BUILDPACK_HOME/export
  assertEquals $OCI_LIB_DIR "$BUILDPACK_HOME/.oracle-build/instantclient"
  assertEquals $OCI_INC_DIR "$BUILDPACK_HOME/.oracle-build/instantclient/sdk/include"
  assertTrue "[ -d $OCI_INCLUDE_DIR ]"
}
