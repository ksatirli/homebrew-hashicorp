cask 'packer@1.6.1' do
  version '1.6.1'
  sha256 '668cf8b798c5dbbdb04ced053dbb33ea76a5d6a4de955e7ce39a52fe2a758d10'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.6.1/packer_1.6.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
