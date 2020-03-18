cask 'packer@1.4.2' do
  version '1.4.2'
  sha256 '4e9bf72be16b00953dd7213e19fba97de569b91d8b8116b190efd647efe7d047'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.4.2/packer_1.4.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
