cask 'vault@0.10.0-beta1' do
  version '0.10.0-beta1'
  sha256 'be9e47c0ae01a8bcebd661418d7477d095a3e4873773e757ae4dce1a09c56d5c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.0-beta1/vault_0.10.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
