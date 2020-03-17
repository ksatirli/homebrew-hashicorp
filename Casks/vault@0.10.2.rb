cask 'vault@0.10.2' do
  version '0.10.2'
  sha256 '1bdc0f9c5d3e2794a8809ca6613b854889117efebef21d8fbcd674e6d8a882a5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.2/vault_0.10.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
