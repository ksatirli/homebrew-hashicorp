cask 'packer@1.4.0' do
  version '1.4.0'
  sha256 '475a2a63d37c5bbd27a4b836ffb1ac85d1288f4d55caf04fde3e31ca8e289773'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.4.0/packer_1.4.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
