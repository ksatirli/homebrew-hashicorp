cask 'vault@0.11.4' do
  version '0.11.4'
  sha256 '82b7fc52c725f789c348b2de79f754de346bfa37ae65d5cb2ccb07cee330c7be'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.4/vault_0.11.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
