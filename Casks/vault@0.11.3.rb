cask 'vault@0.11.3' do
  version '0.11.3'
  sha256 '882d54e7c75c4bf064c21459999491da80bae8da6c1d23dd28b04bc6c5812f33'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.3/vault_0.11.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
