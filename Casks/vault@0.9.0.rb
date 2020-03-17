cask 'vault@0.9.0' do
  version '0.9.0'
  sha256 '4ebe1cc96d89fa581ea14c87748b11aa6e54b8ef1fefca747159b9240c907207'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.0/vault_0.9.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
