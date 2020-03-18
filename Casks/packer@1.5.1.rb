cask 'packer@1.5.1' do
  version '1.5.1'
  sha256 '9cb7d75cbb73af1379f2d72235b7fba184518944d0ae013b77739b453c7cd074'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.1/packer_1.5.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
