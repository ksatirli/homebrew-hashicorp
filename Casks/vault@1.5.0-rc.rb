cask 'vault@1.5.0-rc' do
  version '1.5.0-rc'
  sha256 'c7345ee33ce9a0049779ab6efb550cc107481152deb0b00f67b13f257c70fdda'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.0-rc/vault_1.5.0-rc_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
