cask 'vault@1.3.6' do
  version '1.3.6'
  sha256 'fcaeaaed1a05466563461377adea69f1404d68698b80fdf78ebb7b32c4d2354e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.6/vault_1.3.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
