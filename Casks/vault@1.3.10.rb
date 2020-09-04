cask 'vault@1.3.10' do
  version '1.3.10'
  sha256 'c6f76465fc8f68d4fed2af6af5fc3f65dd08f184472f5c7db008d10c5e12bdcf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.10/vault_1.3.10_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
