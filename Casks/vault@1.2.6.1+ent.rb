cask 'vault@1.2.6.1+ent' do
  version '1.2.6.1+ent'
  sha256 '33e0204765ccc86a4550596fec4e88b0deabd13322883b7ee3bf34f0145c23c0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.6.1+ent/vault_1.2.6.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
