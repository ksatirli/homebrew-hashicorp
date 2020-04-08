#!/usr/bin/env bash

set -e

# shellcheck source=./VERSIONS.sh
. "./VERSIONS.sh"

# shellcheck source=../homebrew-tools/FUNCTIONS.sh
. "../homebrew-tools/FUNCTIONS.sh"

case "${1}" in
  consul)
    for VERSION in "${CONSUL_1XX[@]}"; do
      PRODUCT_NAME="consul"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  consul-aws)
    for VERSION in "${CONSUL_AWS_0XX[@]}"; do
      PRODUCT_NAME="consul-aws"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  consul-template)
    for VERSION in "${CONSUL_TEMPLATE_0XX[@]}"; do
      PRODUCT_NAME="consul-template"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  envconsul)
    for VERSION in "${ENVCONSUL_0XX[@]}"; do
      PRODUCT_NAME="envconsul"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  nomad)
    for VERSION in "${NOMAD_0XX[@]}"; do
      PRODUCT_NAME="nomad"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  packer)
    for VERSION in "${PACKER_1XX[@]}"; do
      PRODUCT_NAME="packer"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  sentinel)
    for VERSION in "${SENTINEL_0XX[@]}"; do
      PRODUCT_NAME="sentinel"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  vagrant)
    for VERSION in "${VAGRANT_1XX[@]}"; do
      PRODUCT_NAME="vagrant"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done

    for VERSION in "${VAGRANT_2XX[@]}"; do
      PRODUCT_NAME="vagrant"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  vault)
    for VERSION in "${VAULT_0XX[@]}"; do
      PRODUCT_NAME="vault"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done

    for VERSION in "${VAULT_1XX[@]}"; do
      PRODUCT_NAME="vault"
      PRODUCT_VERSION_CLEAN="${VERSION}"

      verify_cask
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
