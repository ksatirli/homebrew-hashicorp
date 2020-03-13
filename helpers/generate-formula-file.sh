#!/usr/bin/env bash

# shellcheck source=./helpers/CONFIG.sh
. "./helpers/CONFIG.sh"

ARCHITECTURE="_darwin_amd64"

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

echo "generating Formula for ${PRODUCT}_${VERSION}${ARCHITECTURE}"

# fetch checksums file and assign value to variable
CHECKSUM="$(curl \
  --get \
  --location \
  --silent \
  "${BASE_URL}/${PRODUCT}/${VERSION}/${PRODUCT}_${VERSION}_SHA256SUMS" |
  grep \
    "  ${PRODUCT}_${VERSION}${ARCHITECTURE}.zip" |
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
#CLEAN_VERSION="${CLEAN_VERSION//ent/Ent}"

# generate Cask file
sed \
  -e "s/%%VERSION%%/${VERSION}/g" \
  -e "s/%%CLEAN_VERSION%%/${CLEAN_VERSION}/g" \
  -e "s/%%CHECKSUM%%/${CHECKSUM}/g" \
  -e "s/%%ARCHITECTURE%%/${ARCHITECTURE}/g" \
  "${TEMPLATE_DIR}/${PRODUCT}.formula" \
  > "${FORMULA_DIR}/${PRODUCT}@${VERSION}.rb"
