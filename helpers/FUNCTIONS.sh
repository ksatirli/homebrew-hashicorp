#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/CONFIG.sh
. "./helpers/CONFIG.sh"

function generate_cask() {
  # fail if required argument is unset
  if [[ -z ${1} || -z ${2} ]]; then
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

  # Vagrant < 2.x.x requires untrusted packages to be trusted
  if [[ ${PRODUCT} == "vagrant" && "${VERSION}" < "2.0.0" ]]; then
    PACKAGE_FLAG=", allow_untrusted: true"
  else
    PACKAGE_FLAG=""
  fi

  echo "generating Cask for ${PRODUCT}_${VERSION}${ARCHITECTURE}"

  # fetch checksums file and assign value to variable
  CHECKSUM="$(curl \
    --get \
    --location \
    --silent \
    "${BASE_URL}/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_SHA256SUMS" |
    grep \
      "  ${PRODUCT}_${VERSION}${ARCHITECTURE}.dmg" |
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
