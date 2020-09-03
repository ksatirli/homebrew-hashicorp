cask 'vault@1.5.0+ent' do
  version '1.5.0+ent'
  sha256 '8385adcd3a2f8fbf657948299d874cf702ef2351f6921a54b2c1e59ef63d2e92'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.0+ent/vault_1.5.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
