cask 'vault@1.3.8' do
  version '1.3.8'
  sha256 'cca9bda0d761bf11d75b2c05ebe89f1ce363fb73a920ba238148128e3f8d0a57'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.8/vault_1.3.8_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
