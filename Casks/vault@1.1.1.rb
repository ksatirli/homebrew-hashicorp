cask 'vault@1.1.1' do
  version '1.1.1'
  sha256 '8baaee83ba73f53ef629fd05f9bc01ed325a3feff909439397b3046accc7fb8a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.1/vault_1.1.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
