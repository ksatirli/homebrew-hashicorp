cask 'vault@1.2.5' do
  version '1.2.5'
  sha256 '83a3ac02a8575462e98fc015cf2b2d6bac533b34b8ba587d6b8bf87adcfecbbb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.5/vault_1.2.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
