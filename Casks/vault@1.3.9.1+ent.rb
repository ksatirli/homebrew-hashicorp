cask 'vault@1.3.9.1+ent' do
  version '1.3.9.1+ent'
  sha256 '8a38050d88866f5c9eed09b0373bf2451a444650c142d1e14cf1ae516a9567a6'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.9.1+ent/vault_1.3.9.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
