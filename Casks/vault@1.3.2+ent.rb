cask 'vault@1.3.2+ent' do
  version '1.3.2+ent'
  sha256 '990f28f00ec8687b1bebc23185a72f1199bcb0640d7b9f666f12436b7a5bdc96'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.2+ent/vault_1.3.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
