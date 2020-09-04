cask 'vault@1.5.0' do
  version '1.5.0'
  sha256 '12f76f032d6192cc16ea79205c09c7a97635228d92f34568c5938ce1e1514877'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.0/vault_1.5.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
