cask 'vault@0.11.1' do
  version '0.11.1'
  sha256 '88c96123bb476d9a5c6a4517fd122872232eb6aef94ccdfea065bb8e2c9d0bd7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.1/vault_0.11.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
