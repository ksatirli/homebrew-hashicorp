cask 'vault@1.4.6+ent' do
  version '1.4.6+ent'
  sha256 '8038a6afdc9152c8383554eaa6b6f44536b8971e039d5e7758cd5cbfa51486a4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.6+ent/vault_1.4.6+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
