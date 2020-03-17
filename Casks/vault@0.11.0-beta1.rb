cask 'vault@0.11.0-beta1' do
  version '0.11.0-beta1'
  sha256 'a7ccde8ce99ed4ec242b89db0182fe87f50826c3ddc6db5d730652c9a18caabc'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/0.11.0-beta1/vault_0.11.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false

  binary 'vault'

  conflicts_with formula: 'vault'
end
