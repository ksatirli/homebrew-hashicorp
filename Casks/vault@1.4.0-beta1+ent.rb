cask 'vault@1.4.0-beta1+ent' do
  version '1.4.0-beta1+ent'
  sha256 'e78ee4a7e80b275215bffb47e51578e6a4040332a5a38431850b151c0553ed8e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.4.0-beta1+ent/vault_1.4.0-beta1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
