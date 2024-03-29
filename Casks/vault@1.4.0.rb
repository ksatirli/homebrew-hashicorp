cask 'vault@1.4.0' do
  version '1.4.0'
  sha256 '86f25f32f8fd7664e91b1fe04d23b864e9d35034dd4ccd10770656858e9845ca'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.0/vault_1.4.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
