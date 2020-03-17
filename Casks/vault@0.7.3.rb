cask 'vault@0.7.3' do
  version '0.7.3'
  sha256 'fa9badde19ba0bb9d7341ac0521593c09ea15a00ed824382c1f58855d2e0959c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.7.3/vault_0.7.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
