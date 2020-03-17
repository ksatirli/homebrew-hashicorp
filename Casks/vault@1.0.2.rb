cask 'vault@1.0.2' do
  version '1.0.2'
  sha256 'fad34b8514dd47d95f19f84e1b1a95f3cab25ca1317dcc1b1a94f2aab1c3cacf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.2/vault_1.0.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
