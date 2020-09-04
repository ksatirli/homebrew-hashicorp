cask 'vault@1.4.4+ent' do
  version '1.4.4+ent'
  sha256 '9e2522a7d833878e943f9d028377ebbb21d1ecb0e3a93dad9a99c0e36687c99c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.4+ent/vault_1.4.4+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
