cask 'vault@1.2.3+ent' do
  version '1.2.3+ent'
  sha256 '49628225f74161de5e66f73fc0027d062612e8f04cae0a817a1d9fb8670c6053'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.3+ent/vault_1.2.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
