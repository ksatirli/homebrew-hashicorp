cask 'vault@1.2.3' do
  version '1.2.3'
  sha256 '5a5cdd19c22dd5b44d2dc212c84f7dbdb63769bb3d89774136a54db1cceb59d2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.3/vault_1.2.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
