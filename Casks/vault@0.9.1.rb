cask 'vault@0.9.1' do
  version '0.9.1'
  sha256 '16f318f46770fe229e9532912846f2d43c3877b4b9e8229d11920bdb90f92fd7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.1/vault_0.9.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
