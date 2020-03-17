cask 'vault@1.2.1' do
  version '1.2.1'
  sha256 '2b795a9d3bd303fbed7277a16e9ad45c16e62be196af5d3af18de0f4422fd2b1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.1/vault_1.2.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
