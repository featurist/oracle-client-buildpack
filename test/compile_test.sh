#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile() {
  compile
  assertCapturedSuccess
  assertCaptured "Oracle Client Installed"

  . $BUILDPACK_HOME/export
  assertEquals $OCI_LIB_DIR ".oracle-build/instantclient"
  assertEquals $OCI_INC_DIR ".oracle-build/instantclient/sdk/include"
  incDir="${BUILD_DIR}/${OCI_INC_DIR}"
  assertTrue "OCI_INC_DIR missing" "[ -d '${incDir}' ]"
}
