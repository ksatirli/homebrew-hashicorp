cask 'vault@1.2.0-beta2' do
  version '1.2.0-beta2'
  sha256 '1e57cbea880ebd77f82f2c87cbc11376009707778c6a132709d9ce27556c1494'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.0-beta2/vault_1.2.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
