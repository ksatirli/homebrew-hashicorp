cask 'vault@1.5.3+ent' do
  version '1.5.3+ent'
  sha256 '8052e524ed8fd5ea393b16dbeae905f2cf7c7406c538d4d32ea8fcbef19a08da'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.3+ent/vault_1.5.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
