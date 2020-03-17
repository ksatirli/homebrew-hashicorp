cask 'vault@0.9.6' do
  version '0.9.6'
  sha256 '002fd4f590bc906ec951c7a1a60d95fe73f9cd07840ca356687e6db2d440b563'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.6/vault_0.9.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
