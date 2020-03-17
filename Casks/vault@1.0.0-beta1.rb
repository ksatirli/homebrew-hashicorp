cask 'vault@1.0.0-beta1' do
  version '1.0.0-beta1'
  sha256 '6ebe3e6d46cbcaea9e987eda1661cd897b1b3ba678a3fac784e4d6974de6e0ea'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.0-beta1/vault_1.0.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
