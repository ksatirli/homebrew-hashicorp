#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

case "${1}" in
  consul)
    for VERSION in "${CONSUL_1XX[@]}"; do
      install_and_test_cask "consul" "${VERSION}"
    done
    ;;

  consul-aws)
    for VERSION in "${CONSUL_AWS_0XX[@]}"; do
      install_and_test_cask "consul-aws" "${VERSION}"
    done
    ;;

  consul-template)
    for VERSION in "${CONSUL_TEMPLATE_0XX[@]}"; do
      install_and_test_cask "consul-template" "${VERSION}"
    done
    ;;

  envconsul)
    for VERSION in "${ENVCONSUL_0XX[@]}"; do
      install_and_test_cask "envconsul" "${VERSION}"
    done
    ;;

  nomad)
    for VERSION in "${NOMAD_0XX[@]}"; do
      install_and_test_cask "nomad" "${VERSION}"
    done
    ;;

  sentinel)
    for VERSION in "${SENTINEL_0XX[@]}"; do
      install_and_test_cask "sentinel" "${VERSION}"
    done
    ;;

  packer)
    for VERSION in "${PACKER_1XX[@]}"; do
      install_and_test_cask "packer" "${VERSION}"
    done
    ;;

  vagrant)
    for VERSION in "${VAGRANT_1XX[@]}"; do
      install_and_test_cask "vagrant" "${VERSION}"
    done

    for VERSION in "${VAGRANT_2XX[@]}"; do
      install_and_test_cask "vagrant" "${VERSION}"
    done
    ;;

  vault)
    for VERSION in "${VAULT_0XX[@]}"; do
      install_and_test_cask "vault" "${VERSION}"
    done

    for VERSION in "${VAULT_1XX[@]}"; do
      install_and_test_cask "vault" "${VERSION}"
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
