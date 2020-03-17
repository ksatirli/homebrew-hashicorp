cask 'vault@0.11.6' do
  version '0.11.6'
  sha256 'dfe11b4964735dc80d04c610eae19f6453ff9ca5f0873d300f06044b9eca4fa9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.6/vault_0.11.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
