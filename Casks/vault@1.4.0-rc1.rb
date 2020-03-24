cask 'vault@1.4.0-rc1' do
  version '1.4.0-rc1'
  sha256 '9635b72acfe1968e2e6a420b4e8f2081ff65a59226202775eff81057b36f15ad'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.0-rc1/vault_1.4.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
