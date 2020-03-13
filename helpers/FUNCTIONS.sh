#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/CONFIG.sh
. "./helpers/CONFIG.sh"

function generate_cask() {
  local PRODUCT="${1}"
  local VERSION="${2}"
  local EXTENSION="${3}"
  local ARCHITECTURE="${4}"
  local PACKAGE_FLAGS="${5}"

  # fail if required argument is unset
  if [[ -z ${PRODUCT} || -z ${VERSION} || -z ${EXTENSION} || -z ${ARCHITECTURE} ]]; then
    echo "missing positional argument"
    exit 1
  fi

  # omit architecture string if positional argument calls for it
  if [[ -n ${ARCHITECTURE} && ${ARCHITECTURE} == "omit" ]]; then
    ARCHITECTURE=""
  fi

  echo "generating Cask for ${PRODUCT}_${VERSION}${ARCHITECTURE}"

  # fetch checksums file and assign value to variable
  CHECKSUM="$(curl \
    --get \
    --location \
    --silent \
    "${BASE_URL}/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_SHA256SUMS" |
    grep \
      "  ${PRODUCT}_${VERSION}${ARCHITECTURE}.${EXTENSION}" |
    cut \
      -f 1 \
      -d " ")"

  if [[ -z ${CHECKSUM} ]]; then
    echo "unable to set CHECKSUM"
    exit 1
  fi

  # generate Cask file
  sed \
    -e "s/%%VERSION%%/${VERSION}/g" \
    -e "s/%%CHECKSUM%%/${CHECKSUM}/g" \
    -e "s/%%ARCHITECTURE%%/${ARCHITECTURE}/g" \
    -e "s/%%PACKAGE_FLAG%%/${PACKAGE_FLAGS}/g" \
    "${TEMPLATE_DIR}/${PRODUCT}.cask" \
    > "${CASKS_DIR}/${PRODUCT}@${VERSION}.rb"
}

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
