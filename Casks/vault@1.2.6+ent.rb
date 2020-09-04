cask 'vault@1.2.6+ent' do
  version '1.2.6+ent'
  sha256 'bd7e654fdba994df8da840eedeab5e1c0afd21ce29434fa89ecafbab9020d182'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/vault/1.2.6+ent/vault_1.2.6+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/vault/releases.atom'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'

  auto_updates false
  conflicts_with formula: 'vault'

  binary 'vault'
end
