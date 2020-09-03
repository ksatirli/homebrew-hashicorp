cask 'vault@1.2.7+ent' do
  version '1.2.7+ent'
  sha256 'ecaeb26dcf5a99502c3bbdc3016620f37d2e184775e280267689d6f36b060667'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.7+ent/vault_1.2.7+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
