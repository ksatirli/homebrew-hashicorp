#!/usr/bin/env bash

set -e

# shellcheck source=./VERSIONS.sh
. "./VERSIONS.sh"
PRODUCT_PACKAGE_HOST="https://releases.hashicorp.com"

# shellcheck source=../homebrew-tools/FUNCTIONS.sh
. "../homebrew-tools/FUNCTIONS.sh"

case "${1}" in
  consul)
    # generates Casks for Consul
    for VERSION in "${CONSUL_1XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="consul"
      PRODUCT_VERSION="${VERSION}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION}"
      PRODUCT_PACKAGE_PATH="${PRODUCT_NAME}_${PRODUCT_VERSION}_darwin_amd64.zip"
      PRODUCT_CHECKSUM_URL="${PRODUCT_PACKAGE_HOST}/${PRODUCT_NAME}/${PRODUCT_VERSION}/${PRODUCT_NAME}_${PRODUCT_VERSION}_SHA256SUMS"
      PRODUCT_CHECKSUM_PATTERN="${PRODUCT_PACKAGE_PATH}"

      generate_cask
    done
    ;;

  consul-aws)
    # generates Casks for consul-aws
    for VERSION in "${CONSUL_AWS_0XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="consul-aws"
      PRODUCT_VERSION="${VERSION}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION}"
      PRODUCT_PACKAGE_PATH="${PRODUCT_NAME}_${PRODUCT_VERSION}_darwin_amd64.zip"
      PRODUCT_CHECKSUM_URL="${PRODUCT_PACKAGE_HOST}/${PRODUCT_NAME}/${PRODUCT_VERSION}/${PRODUCT_NAME}_${PRODUCT_VERSION}_SHA256SUMS"
      PRODUCT_CHECKSUM_PATTERN="${PRODUCT_PACKAGE_PATH}"

      generate_cask
    done
    ;;

  consul-template)
    # generates Casks for consul-template
    for VERSION in "${CONSUL_TEMPLATE_0XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="consul-template"
      PRODUCT_VERSION="${VERSION}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION}"
      PRODUCT_PACKAGE_PATH="${PRODUCT_NAME}_${PRODUCT_VERSION}_darwin_amd64.zip"
      PRODUCT_CHECKSUM_URL="${PRODUCT_PACKAGE_HOST}/${PRODUCT_NAME}/${PRODUCT_VERSION}/${PRODUCT_NAME}_${PRODUCT_VERSION}_SHA256SUMS"
      PRODUCT_CHECKSUM_PATTERN="${PRODUCT_PACKAGE_PATH}"

      generate_cask
    done
    ;;

  envconsul)
    # generates Casks for envconsul
    for VERSION in "${ENVCONSUL_0XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="envconsul"
      PRODUCT_VERSION="${VERSION}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION}"
      PRODUCT_PACKAGE_PATH="${PRODUCT_NAME}_${PRODUCT_VERSION}_darwin_amd64.zip"
      PRODUCT_CHECKSUM_URL="${PRODUCT_PACKAGE_HOST}/${PRODUCT_NAME}/${PRODUCT_VERSION}/${PRODUCT_NAME}_${PRODUCT_VERSION}_SHA256SUMS"
      PRODUCT_CHECKSUM_PATTERN="${PRODUCT_PACKAGE_PATH}"

      generate_cask
    done
    ;;

  nomad)
    # generates Casks for Nomad and sets prefix (`./`) for checksums
    for VERSION in "${NOMAD_PREFIXED[@]}"; do
      generate_cask "nomad" "${VERSION}" "zip" "_darwin_amd64" "" "./"
    done

    # generates Casks for Nomad
    for VERSION in "${NOMAD_NONPREFIXED[@]}"; do
      generate_cask "nomad" "${VERSION}" "zip" "_darwin_amd64" ""
    done
    ;;

  packer)
    # generates Casks for Packer
    for VERSION in "${PACKER_1XX[@]}"; do
      # shellcheck disable=SC2034
      PRODUCT_NAME="packer"
      PRODUCT_VERSION="${VERSION}"
      PRODUCT_VERSION_CLEAN="${PRODUCT_VERSION}"
      PRODUCT_PACKAGE_PATH="${PRODUCT_NAME}_${PRODUCT_VERSION}_darwin_amd64.zip"
      PRODUCT_CHECKSUM_URL="${PRODUCT_PACKAGE_HOST}/${PRODUCT_NAME}/${PRODUCT_VERSION}/${PRODUCT_NAME}_${PRODUCT_VERSION}_SHA256SUMS"
      PRODUCT_CHECKSUM_PATTERN="${PRODUCT_PACKAGE_PATH}"

      generate_cask
    done
    ;;

  sentinel)
    # generates Casks for Sentinel
    for VERSION in "${SENTINEL_0XX[@]}"; do
      generate_cask "sentinel" "${VERSION}" "zip" "_darwin_amd64" ""
    done
    ;;

  vagrant)
    # generates Casks for 32-bit versions of Vagrant
    for VERSION in "${VAGRANT_32BIT[@]}"; do
      # Vagrant < 2.x.x requires untrusted packages to be trusted
      if [[ ${VERSION} < "2.0.1" ]]; then
        generate_cask "vagrant" "${VERSION}" "dmg" "omit" ", allow_untrusted: true"
      else
        generate_cask "vagrant" "${VERSION}" "dmg" "omit"
      fi
    done

    # generates Casks for 64-bit versions of Vagrant
    for VERSION in "${VAGRANT_64BIT[@]}"; do
      if [[ ${VERSION} < "2.0.1" ]]; then
        generate_cask "vagrant" "${VERSION}" "dmg" "_x86_64" ", allow_untrusted: true"
      else
        generate_cask "vagrant" "${VERSION}" "dmg" "_x86_64"
      fi
    done
    ;;

  vault)
    # generates Casks for Vault
    for VERSION in "${VAULT_NONPREFIXED[@]}"; do
      generate_cask "vault" "${VERSION}" "zip" "_darwin_amd64" ""
    done

    # generates Casks for Vault and sets prefix (`./`) for checksums
    for VERSION in "${VAULT_PREFIXED[@]}"; do
      generate_cask "vault" "${VERSION}" "zip" "_darwin_amd64" "" "./"
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
