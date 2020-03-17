cask 'vault@1.2.0-rc1' do
  version '1.2.0-rc1'
  sha256 'f28edcba40ee4dacd4075110176aeaffdc46e6e2cc70f1ebba4ef2a6848a4b46'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.0-rc1/vault_1.2.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
