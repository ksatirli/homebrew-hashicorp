#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

case "${1}" in
  consul)
    echo "Installing Consul 1.x.x versions"
    for VERSION in "${CONSUL_1XX[@]}"; do
      install_and_test_cask "consul" "${VERSION}"
    done
    ;;

  nomad)
    echo "Installing Nomad 0.x.x versions"
    for VERSION in "${NOMAD_0XX[@]}"; do
      install_and_test_cask "nomad" "${VERSION}"
    done
    ;;

  vagrant)
    echo "Installing Vagrant 1.x.x versions"
    for VERSION in "${VAGRANT_1XX[@]}"; do
      install_and_test_cask "vagrant" "${VERSION}"
    done

    echo "Installing Vagrant 2.x.x versions"
    for VERSION in "${VAGRANT_2XX[@]}"; do
      install_and_test_cask "vagrant" "${VERSION}"
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
