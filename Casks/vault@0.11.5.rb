cask 'vault@0.11.5' do
  version '0.11.5'
  sha256 '58630a89ed1657814fcd1e00226db83479e10b0019b118d125a78b02a7d15ac5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.5/vault_0.11.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
