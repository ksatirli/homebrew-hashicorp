cask 'vault@1.3.10+ent' do
  version '1.3.10+ent'
  sha256 'b98ebd533dfd6d4102ea9f1d65397952002a912444ce4ca2ec57f5265dd1c254'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.10+ent/vault_1.3.10+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
