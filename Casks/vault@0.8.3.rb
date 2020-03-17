cask 'vault@0.8.3' do
  version '0.8.3'
  sha256 '43c211d0a2ced793a25ac157cc4f3e2160ea9aa57f8d91f805a51e78a5b0b538'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.8.3/vault_0.8.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
