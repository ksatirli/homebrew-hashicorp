cask 'vault@1.1.3' do
  version '1.1.3'
  sha256 'a0a7a242f8299ac4a00af8aa10ccedaf63013c8a068f56eadfb9d730b87155ea'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.3/vault_1.1.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
