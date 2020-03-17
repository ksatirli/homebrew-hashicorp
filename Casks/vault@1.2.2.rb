cask 'vault@1.2.2' do
  version '1.2.2'
  sha256 '3c5a575ab85648a8e39e79f313ae9c7a6f317ecda7931546a52836fa4ad22733'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.2/vault_1.2.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
