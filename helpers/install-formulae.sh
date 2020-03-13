#!/usr/bin/env bash

set -e

# shellcheck source=./helpers/VERSIONS.sh
. "./helpers/VERSIONS.sh"

# shellcheck source=./helpers/FUNCTIONS.sh
. "./helpers/FUNCTIONS.sh"

echo "Installing Consul 1.x.x versions"
for VERSION in "${CONSUL_1XX[@]}"; do
  install_and_test_formula "consul" "${VERSION}" "Consul v${VERSION}"
done
