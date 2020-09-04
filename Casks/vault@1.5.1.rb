cask 'vault@1.5.1' do
  version '1.5.1'
  sha256 '128d11b9fb2de40349fe534ca253d4ad87f2a646cac9dfd63b232e20ce62b54b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.1/vault_1.5.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
