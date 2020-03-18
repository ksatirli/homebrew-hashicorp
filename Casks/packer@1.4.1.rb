cask 'packer@1.4.1' do
  version '1.4.1'
  sha256 '2c5d4a2d0bf9e02dc790fddaa0a74e8fedb6ddd74c6f3b85d04536d9d757fe07'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.4.1/packer_1.4.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
