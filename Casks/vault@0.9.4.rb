cask 'vault@0.9.4' do
  version '0.9.4'
  sha256 '42772e82839423948e2230b164bda037c4c301581f642c72f93c384efc7735d8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.9.4/vault_0.9.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
