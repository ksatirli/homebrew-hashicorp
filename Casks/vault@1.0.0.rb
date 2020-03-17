cask 'vault@1.0.0' do
  version '1.0.0'
  sha256 '1bb19dbfd96751d3b8e644dee592891167db5b2e0998d047c7365db312cd337c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.0/vault_1.0.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
