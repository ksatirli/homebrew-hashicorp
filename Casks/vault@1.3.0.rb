cask 'vault@1.3.0' do
  version '1.3.0'
  sha256 '6f6cbf11c7cdcd8fbbf2e9780b576a352fdc71bfee6299a6f8c71b9bfeb57b84'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.0/vault_1.3.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
