cask 'vault@0.10.3' do
  version '0.10.3'
  sha256 'c092bd4d279494daf801eee1905d693ec505fd274e0587c69a64354df66af426'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.3/vault_0.10.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
