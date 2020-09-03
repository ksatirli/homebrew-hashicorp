cask 'vault@1.2.5+ent' do
  version '1.2.5+ent'
  sha256 'd129a7c79a2090cc0774c36985d6edd357a00b6db98485c54232682def1681fb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.5+ent/vault_1.2.5+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
