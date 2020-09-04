cask 'vault@1.3.7' do
  version '1.3.7'
  sha256 'bb84f321112530fcd3f0a938797e47fc215a39c096a578809e1a403176f52c67'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.7/vault_1.3.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
