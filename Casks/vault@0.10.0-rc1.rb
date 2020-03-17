cask 'vault@0.10.0-rc1' do
  version '0.10.0-rc1'
  sha256 '0764536db0f47f84de94fde6474618cd043c439634d2c43a9fe8e2fb413c6a06'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.0-rc1/vault_0.10.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
