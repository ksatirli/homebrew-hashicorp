cask 'packer@1.3.4' do
  version '1.3.4'
  sha256 'f17aae1e7e9c76b2cead6726ff5b68f2dd0284f86296ea883d29d33771631abe'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.3.4/packer_1.3.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
