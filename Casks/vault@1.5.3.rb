cask 'vault@1.5.3' do
  version '1.5.3'
  sha256 'ca2fa78f05c268d1310d25b3bc3ad20b2970e15c564924c54d2737475111a4d4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.3/vault_1.5.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
