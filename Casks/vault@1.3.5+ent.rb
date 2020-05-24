cask 'vault@1.3.5+ent' do
  version '1.3.5+ent'
  sha256 '30f53a1d31e6c215ff3f7dca38c7881d511bac758dad3fb0c9762d40663cafb5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.5+ent/vault_1.3.5+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
