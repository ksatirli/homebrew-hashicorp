cask 'vault@1.0.0-rc1' do
  version '1.0.0-rc1'
  sha256 '172602634db5e4615354bc4ca1273e47033fedd88a0b69b56abc6ae526d45917'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.0-rc1/vault_1.0.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
