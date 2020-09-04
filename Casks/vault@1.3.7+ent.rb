cask 'vault@1.3.7+ent' do
  version '1.3.7+ent'
  sha256 '754e8b071db6033943c653f597601b41734442f424cefea99cc3b9970eb9c597'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.7+ent/vault_1.3.7+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
