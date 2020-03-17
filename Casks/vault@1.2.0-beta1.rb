cask 'vault@1.2.0-beta1' do
  version '1.2.0-beta1'
  sha256 'ebbb54494ecf5e6f316558949c521373bb6676e289fcf5575a786f140be65bf2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.0-beta1/vault_1.2.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
