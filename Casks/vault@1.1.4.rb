cask 'vault@1.1.4' do
  version '1.1.4'
  sha256 'd96e5cd4e2197420b381cbb2707068ab71354e92234ea08e276ac90f517bd0ee'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.4/vault_1.1.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
