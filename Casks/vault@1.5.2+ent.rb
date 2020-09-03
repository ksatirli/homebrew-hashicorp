cask 'vault@1.5.2+ent' do
  version '1.5.2+ent'
  sha256 'cc81d4e8cf8de7b9d998a21aed652638574ecf6acfb2212bcf3244777baaa7f7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.5.2+ent/vault_1.5.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
