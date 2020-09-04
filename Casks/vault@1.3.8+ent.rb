cask 'vault@1.3.8+ent' do
  version '1.3.8+ent'
  sha256 'fd4c9582862e8b422c55f55e3eebe415c87e878a98f80041c19f86ecb40b9db7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.8+ent/vault_1.3.8+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
