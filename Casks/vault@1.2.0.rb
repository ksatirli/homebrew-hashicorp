cask 'vault@1.2.0' do
  version '1.2.0'
  sha256 '6f4119c4e6758e96ee323e50a6292af3d49033eafbeeb06224f9fc506ef774f4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.0/vault_1.2.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
