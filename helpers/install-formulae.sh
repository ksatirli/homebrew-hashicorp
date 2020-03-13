#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/VERSIONS.sh
. "./helpers/VERSIONS.sh"

function install_and_test_formula() {
  # uninstall potentially previously installed version of Formula
  brew uninstall --force "${1}@${2}"

  # install Formula
  brew install --force "${1}@${2}" || exit 1

  # audit Formula
  brew audit --strict --online "${1}@${2}"

  # compare installed version with expected version
  EXPECTED_OUTPUT="${3}"

  # only process first line of output, as other lines are not relevant
  ACTUAL_OUTPUT=$(${1} --version | head -n 1)

  if [[ "${ACTUAL_OUTPUT}" == ${EXPECTED_OUTPUT}* ]]; then
    echo "!!! Expected output matched actual output for ${VERSION}"
    brew uninstall --force "${1}@${2}"
  else
    echo "XXX  Expected output did not match actual output for ${2} (got: ${ACTUAL_OUTPUT})"
    exit 1
  fi
}

echo "Installing Consul 1.x.x versions"
for VERSION in "${CONSUL_1XX[@]}"; do
  install_and_test_formula "consul" "${VERSION}" "Consul v${VERSION}"
done
