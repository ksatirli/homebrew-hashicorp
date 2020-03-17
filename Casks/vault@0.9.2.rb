cask 'vault@0.9.2' do
  version '0.9.2'
  sha256 'd79adf8a12afe701eb8b2ad3aeb4b1a1c2ed6dd3a11c3b1aa0739c6fec229d90'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.2/vault_0.9.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
