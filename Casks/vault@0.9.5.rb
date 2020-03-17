cask 'vault@0.9.5' do
  version '0.9.5'
  sha256 '8cbe240b250ff29d0b18d871545ceb642cb375291bfdef47a56b63186dc2b2d0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.5/vault_0.9.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
