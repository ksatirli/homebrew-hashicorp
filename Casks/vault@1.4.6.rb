cask 'vault@1.4.6' do
  version '1.4.6'
  sha256 '69f398956293983266d35e2e09d92e8e1c3341def6cacfaf1aa9f1b12d88ce7a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.6/vault_1.4.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
