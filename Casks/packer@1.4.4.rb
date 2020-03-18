cask 'packer@1.4.4' do
  version '1.4.4'
  sha256 'd57c8ecc3b4356b176e600e4de420fc3feba1ca0d95693dfabb0860145b720b1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.4.4/packer_1.4.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
