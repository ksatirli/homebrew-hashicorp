cask 'vault@1.2.4' do
  version '1.2.4'
  sha256 '9c0ae09b111df0ea34b3250c5cbc2d9480ad85c2ff89fc88a929dea18801615b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.4/vault_1.2.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
