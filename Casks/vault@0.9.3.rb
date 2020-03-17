cask 'vault@0.9.3' do
  version '0.9.3'
  sha256 '9474cd8eb9207fea3de56ff86068fc4eb8d20ec7adf31cffb8b265633e659581'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.3/vault_0.9.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
