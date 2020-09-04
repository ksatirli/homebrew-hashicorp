cask 'vault@1.4.3' do
  version '1.4.3'
  sha256 'f839e98d0f1650815b0077b6ab66ed4de315aad45100789719ddc776e7f33976'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.3/vault_1.4.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
