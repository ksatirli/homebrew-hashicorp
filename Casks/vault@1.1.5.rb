cask 'vault@1.1.5' do
  version '1.1.5'
  sha256 '670f801c076bad005c3f2b60a6d4dee8c7964627b6e2df01494c97283d1e9831'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.5/vault_1.1.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
