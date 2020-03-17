cask 'vault@0.10.1' do
  version '0.10.1'
  sha256 '5aa325988835d5c347f057aa120388076412554075cf6e7e840c649a5f2d1a9f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.1/vault_0.10.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
