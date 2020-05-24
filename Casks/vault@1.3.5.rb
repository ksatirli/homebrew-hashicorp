cask 'vault@1.3.5' do
  version '1.3.5'
  sha256 'ba77669224b8c8a8f0505971dd0b83ac883c9472fcef384c82d67b4f6258f77b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.5/vault_1.3.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
