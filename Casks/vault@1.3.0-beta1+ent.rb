cask 'vault@1.3.0-beta1+ent' do
  version '1.3.0-beta1+ent'
  sha256 '4f18fd7890e4295189b297b9cab94635d1cae320f16ebda408321203573a10ce'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.3.0-beta1+ent/vault_1.3.0-beta1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
