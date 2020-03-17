cask 'vault@1.3.0-beta1' do
  version '1.3.0-beta1'
  sha256 'a2b47a1cac15897b556d3ceebdc96d567c69775ab74db2dfd738dcb153a8e9d2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.0-beta1/vault_1.3.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
