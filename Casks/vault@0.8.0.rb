cask 'vault@0.8.0' do
  version '0.8.0'
  sha256 'ae57608c662942bbcf00a05daad60df3f7f2d9f2d672b4e3490498c518704f20'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.8.0/vault_0.8.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
