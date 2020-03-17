#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/CONFIG.sh
. "./helpers/CONFIG.sh"

function generate_cask() {
  local PRODUCT_NAME="${1}"
  local PRODUCT_VERSION="${2}"
  local PRODUCT_FILE_EXTENSION="${3}"
  local PRODUCT_ARCHITECTURE="${4}"
  local PRODUCT_FLAGS="${5}"
  local PRODUCT_CHECKSUM_PREFIX="${6}"

  # fail if required argument is unset
  if [[ -z ${PRODUCT_NAME} || -z ${PRODUCT_VERSION} || -z ${PRODUCT_FILE_EXTENSION} || -z ${PRODUCT_ARCHITECTURE} ]]; then
    echo "missing positional argument"
    exit 1
  fi

  # omit PRODUCT_ARCHITECTURE string if positional argument calls for it
  if [[ -n ${PRODUCT_ARCHITECTURE} && ${PRODUCT_ARCHITECTURE} == "omit" ]]; then
    PRODUCT_ARCHITECTURE=""
  fi

  echo "generating Cask for ${PRODUCT_NAME}_${PRODUCT_VERSION}${PRODUCT_ARCHITECTURE}"

  # fetch checksums file and assign value to variable
  PRODUCT_CHECKSUM="$(curl \
    --get \
    --location \
    --silent \
    "https://releases.hashicorp.com/${PRODUCT_NAME}/${PRODUCT_VERSION}/${PRODUCT_NAME}_${PRODUCT_VERSION}_SHA256SUMS" |
    grep \
      "  ${PRODUCT_CHECKSUM_PREFIX}${PRODUCT_NAME}_${PRODUCT_VERSION}${PRODUCT_ARCHITECTURE}.${PRODUCT_FILE_EXTENSION}" |
    cut \
      -f 1 \
      -d " ")"

  if [[ -z ${PRODUCT_CHECKSUM} ]]; then
    echo "unable to set CHECKSUM"
    exit 1
  fi

  # generate Cask file
  sed \
    -e "s/%%PRODUCT_VERSION%%/${PRODUCT_VERSION}/g" \
    -e "s/%%PRODUCT_CHECKSUM%%/${PRODUCT_CHECKSUM}/g" \
    -e "s/%%PRODUCT_CHECKSUM%%/${PRODUCT_CHECKSUM}/g" \
    -e "s/%%PRODUCT_ARCHITECTURE%%/${PRODUCT_ARCHITECTURE}/g" \
    -e "s/%%PRODUCT_FILE_EXTENSION%%/${PRODUCT_FILE_EXTENSION}/g" \
    -e "s/%%PRODUCT_FLAGS%%/${PRODUCT_FLAGS}/g" \
    "./helpers/templates/${PRODUCT_NAME}.cask" \
    > "${GENERATED_CASKS_DIR}/${PRODUCT_NAME}@${PRODUCT_VERSION}.rb"
}

function install_and_test_cask() {
  local PRODUCT_NAME="${1}"
  local PRODUCT_VERSION="${2}"
  local EXPECTED_OUTPUT="${3}"

  # uninstall potentially previously installed version of Cask
#  brew cask uninstall --force "${PRODUCT_NAME}@${PRODUCT_VERSION}"

  # replace tapped (upstream) Cask with locally available version
  rm -f "${UPSTREAM_CASKS_DIR}/${PRODUCT_NAME}@${PRODUCT_VERSION}.rb"
  echo cp "${GENERATED_CASKS_DIR}/${PRODUCT_NAME}@${PRODUCT_VERSION}.rb" "${UPSTREAM_CASKS_DIR}/"

  # install Cask
  brew cask install --force "${PRODUCT_NAME}@${PRODUCT_VERSION}"

  # audit Cask
  brew cask audit "${PRODUCT_NAME}@${PRODUCT_VERSION}"

  # check Cask style
  brew cask style "${PRODUCT_NAME}@${PRODUCT_VERSION}"

  # compare installed version with expected version
  ACTUAL_OUTPUT="$(${PRODUCT_NAME} --version)"

  if [[ ${ACTUAL_OUTPUT} == ${EXPECTED_OUTPUT}* ]]; then
    echo "!!! Expected output matched actual output for ${PRODUCT_VERSION}"
    brew cask uninstall --force "${PRODUCT_NAME}@${PRODUCT_VERSION}"
  else
    echo "XXX  Expected output did not match actual output for \"${EXPECTED_OUTPUT}\" (got: ${ACTUAL_OUTPUT})"
    exit 1
  fi
}
