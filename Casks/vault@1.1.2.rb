cask 'vault@1.1.2' do
  version '1.1.2'
  sha256 '0dcc8f5ad55be2a1d485a165f97d7f01a20f95950e32d25a2818ff62328f2f52'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.2/vault_1.1.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
