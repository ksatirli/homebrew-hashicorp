cask 'packer@1.0.3' do
  version '1.0.3'
  sha256 'a0e6de8427603493a1c1fdf714a2ce7e16af66a68326063dddde93494a6b3ed8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
