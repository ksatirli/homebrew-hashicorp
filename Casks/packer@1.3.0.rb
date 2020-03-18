cask 'packer@1.3.0' do
  version '1.3.0'
  sha256 '972af633f1d06bfc36e1c932a125396ade4795980a02eaec4c6792763da6de95'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.3.0/packer_1.3.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
