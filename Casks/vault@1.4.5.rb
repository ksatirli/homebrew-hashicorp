cask 'vault@1.4.5' do
  version '1.4.5'
  sha256 '9a423bc43ed33d77a07cb98b5b676b82609caf3698ed766408e91453ecf64916'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.5/vault_1.4.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
