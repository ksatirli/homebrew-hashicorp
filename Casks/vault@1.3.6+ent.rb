cask 'vault@1.3.6+ent' do
  version '1.3.6+ent'
  sha256 '37245b6b96a152d463ebd1904c65640d0d30187aaec79dd1a6a4a2d7204cbce0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.6+ent/vault_1.3.6+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
