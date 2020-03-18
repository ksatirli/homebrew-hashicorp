cask 'packer@1.1.1' do
  version '1.1.1'
  sha256 '8f8a043075255034a1a84506b778381ab59dd84903c6c211a23f9e2f0d456f2b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.1.1/packer_1.1.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
