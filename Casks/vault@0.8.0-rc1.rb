cask 'vault@0.8.0-rc1' do
  version '0.8.0-rc1'
  sha256 '659f59b3b86f455ea02a050f4dc5abfbc27b75a963a31ffc39d912e294bd335c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.8.0-rc1/vault_0.8.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
