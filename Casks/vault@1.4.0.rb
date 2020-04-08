cask 'vault@1.4.0' do
  version '1.4.0'
  sha256 '6b25a36b784ba9a57d891b9bdacc65ad2a9d393684a23de8b3967fe58d284af1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.0/vault_1.4.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
