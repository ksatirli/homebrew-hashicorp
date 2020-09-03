cask 'vault@1.4.4' do
  version '1.4.4'
  sha256 'd41f57d6ac211f4bd764a5a55aa560445e919cc1afb3845d76d49ad3eac9a3d5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.4/vault_1.4.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
