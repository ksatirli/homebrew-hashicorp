cask 'vault@1.1.0' do
  version '1.1.0'
  sha256 'b7b43c0a5fa93e04ec314b7cf6bd2f113a8943ee8cc059aa6d7bf3cd7b56181d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.0/vault_1.1.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
