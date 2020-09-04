cask 'vault@1.4.3+ent' do
  version '1.4.3+ent'
  sha256 'a46806c2d06d98c757472b6ff8e01088bc0e8bfb573b294847cf76869bb6a227'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.3+ent/vault_1.4.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
