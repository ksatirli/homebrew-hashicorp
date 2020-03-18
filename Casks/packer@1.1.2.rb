cask 'packer@1.1.2' do
  version '1.1.2'
  sha256 '1966dc694f9d01dedb12c6561e41a0ed21dc99f7df06d1e306e9362affcd97d8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.1.2/packer_1.1.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
