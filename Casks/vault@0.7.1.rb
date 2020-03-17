cask 'vault@0.7.1' do
  version '0.7.1'
  sha256 '9060e4e64b76b566b8ea4f5c76df605292c2aa184b6ec6c1e1fa1afe343e371d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.7.1/vault_0.7.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
