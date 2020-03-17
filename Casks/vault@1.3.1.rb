cask 'vault@1.3.1' do
  version '1.3.1'
  sha256 '23abadfcda33d5dffa238284c68061d6938aaaa11324301c042fe8d00b83fa7f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.1/vault_1.3.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
