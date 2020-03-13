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
    -e "s/%%PACKAGE_FLAG%%/${PACKAGE_FLAG}/g" \
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

function generate_formula() {
  if [[ -z ${1} || -z ${2} ]]; then
    # fail if required argument is unset
    echo "missing positional argument #1 or #2"
    exit 1
  else
    PRODUCT="${1}"
    VERSION="${2}"
  fi

  # omit architecture string if positional argument calls for it
  if [[ -n ${3} && ${3} == "omit" ]]; then
    ARCHITECTURE=""
  elif [[ -n ${3} && ${3} != "omit" ]]; then
    ARCHITECTURE="${3}"
  fi

  # allow setting of Checksum filename prefix (currently needed for Nomad)
  if [[ -n ${4} ]]; then
    FILENAME_PREFIX="${4}"
  fi

  echo "generating Formula for ${PRODUCT}_${VERSION}${ARCHITECTURE}"

  # fetch checksums file and assign value to variable
  CHECKSUM="$(curl \
    --get \
    --location \
    --silent \
    "${BASE_URL}/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_SHA256SUMS" |
    grep \
      "  ${FILENAME_PREFIX}${PRODUCT}_${VERSION}${ARCHITECTURE}.zip" |
    cut \
      -f 1 \
      -d " ")"

  if [[ -z ${CHECKSUM} ]]; then
    echo "unable to set CHECKSUM"
    exit 1
  fi

  # replace all period characters (`.`) with nothing
  CLEAN_VERSION="${VERSION//./}"

  # replace dash (`-`) with nothing
  CLEAN_VERSION="${CLEAN_VERSION//-/}"

  # replace plus (`+`) with `x` character
  CLEAN_VERSION="${CLEAN_VERSION//+/x}"

  # replace lowercase strings with capitalized version
  CLEAN_VERSION="${CLEAN_VERSION//beta/Beta}"
  CLEAN_VERSION="${CLEAN_VERSION//rc/Rc}"
  #CLEAN_VERSION="${CLEAN_VERSION//ent/Ent}"

  # generate Cask file
  sed \
    -e "s/%%VERSION%%/${VERSION}/g" \
    -e "s/%%CLEAN_VERSION%%/${CLEAN_VERSION}/g" \
    -e "s/%%CHECKSUM%%/${CHECKSUM}/g" \
    -e "s/%%ARCHITECTURE%%/${ARCHITECTURE}/g" \
    "${TEMPLATE_DIR}/${PRODUCT}.formula" \
    > "${FORMULA_DIR}/${PRODUCT}@${VERSION}.rb"
}

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

  if [[ ${ACTUAL_OUTPUT} == ${EXPECTED_OUTPUT}* ]]; then
    echo "!!! Expected output matched actual output for ${VERSION}"
    brew uninstall --force "${1}@${2}"
  else
    echo "XXX  Expected output did not match actual output for ${2} (got: ${ACTUAL_OUTPUT})"
    exit 1
  fi
}
