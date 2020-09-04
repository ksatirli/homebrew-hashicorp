cask 'packer@1.6.2' do
  version '1.6.2'
  sha256 '2b5e8c76ae280c72fe33b2ac6511c24d2e0c02df9d437d2e4a5efbe988f71e2b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.6.2/packer_1.6.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
