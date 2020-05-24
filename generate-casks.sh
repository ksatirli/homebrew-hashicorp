#!/usr/bin/env bash

set -e

PACKAGE_PROTOCOL="https"
PACKAGE_HOST="releases.hashicorp.com"
CHECKSUM_URL_BASE="${PACKAGE_PROTOCOL}://${PACKAGE_HOST}"
CASK_FILE="templates/generic.cask"

# shellcheck source=./VERSIONS.sh
. "./VERSIONS.sh"

# shellcheck source=../homebrew-tools/FUNCTIONS.sh
. "../homebrew-tools/FUNCTIONS.sh"

case "${1}" in
  consul)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="Consul"
    HOMEPAGE="https:\/\/www.consul.io\/"

    for VERSION in "${CONSUL_1XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  consul-aws)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="${1}"
    HOMEPAGE="https:\/\/github.com\/hashicorp\/consul-aws"

    for VERSION in "${CONSUL_AWS_0XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  consul-template)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="${1}"
    HOMEPAGE="https:\/\/github.com\/hashicorp\/consul-template"

    for VERSION in "${CONSUL_TEMPLATE_0XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  envconsul)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="${1}"
    HOMEPAGE="https:\/\/github.com\/hashicorp\/envconsul"

    for VERSION in "${ENVCONSUL_0XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  nomad)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="Nomad"
    HOMEPAGE="https:\/\/www.nomadproject.io\/"

    for VERSION in "${NOMAD_PREFIXED[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="./${PACKAGE_PATH}"
      generate_cask
    done

    for VERSION in "${NOMAD_NONPREFIXED[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  nomad-autoscaler)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="${1}"
    HOMEPAGE="https:\/\/www.nomadproject.io\/"

    for VERSION in "${NOMAD_AUTOSCALER_0XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  packer)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="Packer"
    HOMEPAGE="https:\/\/www.packer.io\/"

    for VERSION in "${PACKER_1XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  sentinel)
    # shellcheck disable=SC2034
    BINARY="sentinel"
    NAME="Sentinel"
    # shellcheck disable=SC2034
    CASK_FILE="templates/sentinel.cask"

    for VERSION in "${SENTINEL_0XX[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  vagrant)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="Vagrant"
    HOMEPAGE="https:\/\/www.vagrantup.com\/"
    # shellcheck disable=SC2034
    CASK_FILE="templates/vagrant.cask"

    for VERSION in "${VAGRANT_32BIT[@]}"; do
      # Vagrant < 2.x.x requires untrusted packages to be trusted
      if [[ ${VERSION} < "2.0.1" ]]; then
        # shellcheck disable=SC2034
        FLAGS=", allow_untrusted: true"
        PACKAGE_PATH="${BINARY}_${VERSION}.dmg"
      else
        PACKAGE_PATH="${BINARY}_${VERSION}_x86_64.dmg"
      fi

      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      generate_cask
    done

    for VERSION in "${VAGRANT_64BIT[@]}"; do
      # Vagrant < 2.x.x requires untrusted packages to be trusted
      if [[ ${VERSION} < "2.0.1" ]]; then
        # shellcheck disable=SC2034
        FLAGS=", allow_untrusted: true"
      fi

      PACKAGE_PATH="${BINARY}_${VERSION}_x86_64.dmg"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      generate_cask
    done
    ;;

  vault)
    # shellcheck disable=SC2034
    BINARY="${1}"
    NAME="Vault"
    HOMEPAGE="https:\/\/www.vaultproject.io\/"

    for VERSION in "${VAULT_NONPREFIXED[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="${PACKAGE_PATH}"
      generate_cask
    done

    for VERSION in "${VAULT_PREFIXED[@]}"; do
      # shellcheck disable=SC2034
      PACKAGE_PATH="${BINARY}_${VERSION}_darwin_amd64.zip"
      CHECKSUM_URL="${CHECKSUM_URL_BASE}/${BINARY}/${VERSION}/${BINARY}_${VERSION}_SHA256SUMS"
      CHECKSUM_PATTERN="./${PACKAGE_PATH}"
      generate_cask
    done
    ;;

  *)
    echo "missing product"
    ;;
esac
