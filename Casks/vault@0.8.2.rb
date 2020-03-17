cask 'vault@0.8.2' do
  version '0.8.2'
  sha256 '55dd805fa96a0142b941b1e79c16cf02bd3555546ac51c26f8f307e91eeb966d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.8.2/vault_0.8.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
