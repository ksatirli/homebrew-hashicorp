cask 'vault@1.4.1+ent' do
  version '1.4.1+ent'
  sha256 'f4bddbc02e24db9108e95168705252168d527b1e4f73532e55c39a68f452e5ef'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.1+ent/vault_1.4.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
