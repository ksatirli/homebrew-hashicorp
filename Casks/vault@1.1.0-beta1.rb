cask 'vault@1.1.0-beta1' do
  version '1.1.0-beta1'
  sha256 '2c7779900b9c71193f383fe7850388470d31c512f03729e1bd382643210701e0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.1.0-beta1/vault_1.1.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
