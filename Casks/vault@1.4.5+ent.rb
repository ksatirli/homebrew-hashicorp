cask 'vault@1.4.5+ent' do
  version '1.4.5+ent'
  sha256 '6d1631a65334fef9e39aebca907c04343f8776fe9f4f017bd1c29ddbbd6d0472'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.5+ent/vault_1.4.5+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
