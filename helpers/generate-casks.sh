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

  *)
    echo "missing product"
    ;;
esac
