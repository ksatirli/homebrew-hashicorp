cask 'vault@1.5.1+ent' do
  version '1.5.1+ent'
  sha256 'dadacb7a21f5620472fd1b791c385e1647739916c4641e08c75352e4c499f2ad'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.1+ent/vault_1.5.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
