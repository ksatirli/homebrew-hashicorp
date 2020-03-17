cask 'vault@1.3.3' do
  version '1.3.3'
  sha256 '8641e140ef3166e6be274392a62b6a112878ffde610d6d8f21570fc690951e11'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.3/vault_1.3.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
