cask 'vault@1.5.2' do
  version '1.5.2'
  sha256 '74608b89484d14f535a497042ae48340d108d8c423b964213856d264aac45d24'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.2/vault_1.5.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
