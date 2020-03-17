cask 'vault@0.10.4' do
  version '0.10.4'
  sha256 '28241dca5aade21b3db0fb69dd065b132085504365af08f45ace15e7c2df1287'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.4/vault_0.10.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
