cask 'vault@1.3.1+ent' do
  version '1.3.1+ent'
  sha256 '7d7f1b67931f752860c5f8fa8d0fd7330f71f20396c4e2100650959c147aa4cb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.1+ent/vault_1.3.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
