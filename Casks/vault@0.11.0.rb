cask 'vault@0.11.0' do
  version '0.11.0'
  sha256 '3c70f82cacb105804579c7825a92d3b9dd97ad90c8ee34861290ea4ce60d1063'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.0/vault_0.11.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
