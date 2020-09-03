cask 'vault@1.5.2.1+ent' do
  version '1.5.2.1+ent'
  sha256 'c0f40410802e6f976f3ef03b8183b14880018ddd0eb88e6857b715cc31e7f633'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.2.1+ent/vault_1.5.2.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
