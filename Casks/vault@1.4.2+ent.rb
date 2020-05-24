cask 'vault@1.4.2+ent' do
  version '1.4.2+ent'
  sha256 '0c8b134b18008c430c08f9d509b0f04647fcf7ae03bf60794c998597b517dcfe'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.2+ent/vault_1.4.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
