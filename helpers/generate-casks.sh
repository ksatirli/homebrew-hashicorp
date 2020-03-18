#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

case "${1}" in
  consul)
    # generates Casks for Consul
    for VERSION in "${CONSUL_1XX[@]}"; do
      generate_cask "consul" "${VERSION}" "zip" "_darwin_amd64"
    done
    ;;

  consul-aws)
    # generates Casks for consul-aws
    for VERSION in "${CONSUL_AWS_0XX[@]}"; do
      generate_cask "consul-aws" "${VERSION}" "zip" "_darwin_amd64"
    done
    ;;

  consul-template)
    # generates Casks for consul-template
    for VERSION in "${CONSUL_TEMPLATE_0XX[@]}"; do
      generate_cask "consul-template" "${VERSION}" "zip" "_darwin_amd64"
    done
    ;;

  envconsul)
    # generates Casks for envconsul
    for VERSION in "${ENVCONSUL_0XX[@]}"; do
      generate_cask "envconsul" "${VERSION}" "zip" "_darwin_amd64"
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
      generate_cask "packer" "${VERSION}" "zip" "_darwin_amd64" ""
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
