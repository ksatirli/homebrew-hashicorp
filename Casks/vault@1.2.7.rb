cask 'vault@1.2.7' do
  version '1.2.7'
  sha256 '84846ce5cd6b15c89cd3a3cfd20cf736eb822a1f99f374ab19784f5d2e57ec0d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.7/vault_1.2.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
