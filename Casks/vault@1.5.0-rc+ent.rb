cask 'vault@1.5.0-rc+ent' do
  version '1.5.0-rc+ent'
  sha256 '18eaea9d76ee8a0b964483e2bdee960c521864a9689355727b78bdf227b3b471'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.0-rc+ent/vault_1.5.0-rc+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
