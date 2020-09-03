cask 'vault@1.2.6' do
  version '1.2.6'
  sha256 '01f9990e95b2ac4f5a81fccac54edcc1f1487b45449807c991c71b4aa57c9f6d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.6/vault_1.2.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
