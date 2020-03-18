cask 'packer@1.2.2' do
  version '1.2.2'
  sha256 'ede71b1ab599990c23a9fce88666bdab441a1d10f8066d6d4188239917f9e777'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
