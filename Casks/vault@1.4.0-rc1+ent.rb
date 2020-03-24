cask 'vault@1.4.0-rc1+ent' do
  version '1.4.0-rc1+ent'
  sha256 '082c36754d86e01fd4a33c460095ed5066dea63b2acfcdc7a8cee87e74a73ddb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.0-rc1+ent/vault_1.4.0-rc1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
