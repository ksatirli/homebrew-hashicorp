cask 'vault@0.7.2' do
  version '0.7.2'
  sha256 '1b29fabd094ab1afbb26ec6c3df3f7c3deef5ef408bb24db94ae07a330ab5317'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.7.2/vault_0.7.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
