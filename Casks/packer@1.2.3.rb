cask 'packer@1.2.3' do
  version '1.2.3'
  sha256 '3c49a7d94c6c632d4c6c762328e12398e7132d5261f6cd3bca785c99d3fe512b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.2.3/packer_1.2.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
