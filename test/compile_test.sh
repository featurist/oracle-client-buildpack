#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
  compile
  assertCaptured "Oracle Client Installed"

  . $BUILDPACK_HOME/export
  assertEquals $OCI_LIB_DIR "$CACHE_DIR/oracle/instantclient"
  assertEquals $OCI_INCLUDE_DIR "$CACHE_DIR/oracle/instantclient/sdk/include"
  assertTrue "[ -d $OCI_INCLUDE_DIR ]"
}
