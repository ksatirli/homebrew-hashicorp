cask 'vault@1.0.0-beta2' do
  version '1.0.0-beta2'
  sha256 'ec90ba0ecf754424bbc808c3007aaf7ab2ede112aae8e9bac0ed9c9933744395'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.0-beta2/vault_1.0.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
