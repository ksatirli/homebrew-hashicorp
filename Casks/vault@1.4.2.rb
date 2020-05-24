cask 'vault@1.4.2' do
  version '1.4.2'
  sha256 '30d08188fd251a4e214c3a320472ee0b27b0499522860b7061bf0e49bc5fc466'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.2/vault_1.4.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
