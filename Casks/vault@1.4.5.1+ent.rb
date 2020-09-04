cask 'vault@1.4.5.1+ent' do
  version '1.4.5.1+ent'
  sha256 '9b80820da65f4d3edb1b1cd1d87ceb68ce35bf63315657d4f0c271ca51c18696'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.5.1+ent/vault_1.4.5.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
