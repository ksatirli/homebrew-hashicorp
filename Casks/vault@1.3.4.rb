cask 'vault@1.3.4' do
  version '1.3.4'
  sha256 '76299a3502f22920076cd991771dc4422c17f80b834143eca5b28460e744155f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.4/vault_1.3.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
