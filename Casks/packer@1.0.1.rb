cask 'packer@1.0.1' do
  version '1.0.1'
  sha256 'ee631e85f1ed77f1b52ce9bdce75cf92f952ebffba600df32892e95a78cc5133'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.0.1/packer_1.0.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
