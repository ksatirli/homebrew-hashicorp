cask 'vault@1.0.1' do
  version '1.0.1'
  sha256 '10c1c3a0071dc0d50c2751027def3a0011a003e573bb9586cb34b7dee32e3d6d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.1/vault_1.0.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
