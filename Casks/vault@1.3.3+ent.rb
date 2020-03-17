cask 'vault@1.3.3+ent' do
  version '1.3.3+ent'
  sha256 'a7fd339b9624a9b3c8f4a67341b2d55f958baa424e984a41fb8a4e81e338206d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.3+ent/vault_1.3.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
