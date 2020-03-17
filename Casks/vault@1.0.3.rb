cask 'vault@1.0.3' do
  version '1.0.3'
  sha256 'c69321e0c4a51c5cb84d4e3b2380ec4e313468eba8946b9f411b70d59302cf8e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.0.3/vault_1.0.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
