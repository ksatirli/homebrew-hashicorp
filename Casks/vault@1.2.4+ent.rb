cask 'vault@1.2.4+ent' do
  version '1.2.4+ent'
  sha256 'e818fdf94ef61d531694d9737d7a1221691e3661856b1b807ab9ee8ab46bbd0d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.4+ent/vault_1.2.4+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
