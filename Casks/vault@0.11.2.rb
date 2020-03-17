cask 'vault@0.11.2' do
  version '0.11.2'
  sha256 'b0319c3ace49b6e298d39d325e9124dfa5489eb0ecc0f59250ef33e18be4e2c2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.2/vault_0.11.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
