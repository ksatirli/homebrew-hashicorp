#!/usr/bin/env bash

set -e

. "./helpers/VERSIONS.sh"

function install_and_test_cask() {
  # uninstall potentially previously installed version of Cask
  brew cask uninstall --force "${1}@${2}"

  # install Cask
  brew cask install --force "${1}@${2}" || exit 1

  # audit Cask
  brew cask audit "${1}@${2}"

  # compare installed version with expected version
  EXPECTED_OUTPUT="${3}"
  ACTUAL_OUTPUT="$(${1} --version)"

  if [ "${EXPECTED_OUTPUT}" = "${ACTUAL_OUTPUT}" ]; then
    echo "!!! Expected output matched actual output for ${VERSION}"
    brew cask uninstall --force "${1}@${2}"
  else
    echo "XXX  Expected output did not match actual output for ${2} (got: ${ACTUAL_OUTPUT})"
    exit 1
  fi
}

echo "Installing Vagrant 1.x.x versions"
for VERSION in "${VAGRANT_1XX[@]}"; do
  install_and_test_cask "vagrant" "${VERSION}" "Vagrant ${VERSION}"
done

echo "Installing Vagrant 2.x.x versions"
for VERSION in "${VAGRANT_2XX[@]}"; do
  install_and_test_cask "vagrant" "${VERSION}" "Vagrant ${VERSION}"
done
