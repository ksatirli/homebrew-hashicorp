cask 'vault@0.10.0' do
  version '0.10.0'
  sha256 'f5ceed96375ddf6eead43956113b0e6ba36f2b74dd45f302d5bacb78e76eb20a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.10.0/vault_0.10.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
