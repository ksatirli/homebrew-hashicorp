cask 'vault@1.3.2' do
  version '1.3.2'
  sha256 'cbdd6987e03da912d431a6dac704eac6047089eedf005ecb92df3820c7a1d7bb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.2/vault_1.3.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
