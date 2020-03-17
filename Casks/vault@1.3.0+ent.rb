cask 'vault@1.3.0+ent' do
  version '1.3.0+ent'
  sha256 'e60921f8e542fd2ee569ae9a12a2122d7ff06e244c41921a0ba171cf65ad7f13'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.0+ent/vault_1.3.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
