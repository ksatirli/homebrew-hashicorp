cask 'vault@0.8.0-beta1' do
  version '0.8.0-beta1'
  sha256 '1111feb6965e49a85f3aa6884d19af476f3e376d058cb4e67d77aa7dcc84bd5b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.8.0-beta1/vault_0.8.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
