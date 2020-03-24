cask 'vault@1.3.4+ent' do
  version '1.3.4+ent'
  sha256 '66244de0cf1dc8c533db0cc87119c20fedfe3885b2c0122b3e8d755c7c4b27c1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.4+ent/vault_1.3.4+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
