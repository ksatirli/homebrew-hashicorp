cask 'packer@1.4.5' do
  version '1.4.5'
  sha256 '97328422361ad69553522786100a62a774eb2cebe0cd89cfb531b53efbf8c9f9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.4.5/packer_1.4.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
