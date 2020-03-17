#!/bin/sh

# shellcheck disable=SC2034
GENERATED_CASKS_DIR="Casks"
UPSTREAM_CASKS_DIR="$(brew --repo)/Library/Taps/operatehappy/homebrew-hashicorp/Casks"

# shellcheck source=./helpers/VERSIONS.sh
. "./helpers/VERSIONS.sh"
