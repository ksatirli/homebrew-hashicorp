cask 'vault@1.3.9+ent' do
  version '1.3.9+ent'
  sha256 '8d57e31c4457ef26b56a6de1e062c1279c97bf536c426b0eec20fef851d6f0db'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.9+ent/vault_1.3.9+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
