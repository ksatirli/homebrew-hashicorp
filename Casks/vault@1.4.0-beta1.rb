cask 'vault@1.4.0-beta1' do
  version '1.4.0-beta1'
  sha256 '3967ea1c5aed39cc7482f12bb712b9fe501979e4442e2525c7467c7ed1646dea'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.0-beta1/vault_1.4.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
