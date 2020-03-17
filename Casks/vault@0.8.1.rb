cask 'vault@0.8.1' do
  version '0.8.1'
  sha256 '8efa6ef642edf9fc48a6a7e2b0a24aec9b143369bca90add7724ddcf1e358ffd'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.8.1/vault_0.8.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
