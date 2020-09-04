cask 'vault@1.3.9' do
  version '1.3.9'
  sha256 'cb6295b42cdadc454ac7b033065ae681f9fd7e4372cdb5d3cd36347a68ea2994'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.9/vault_1.3.9_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
