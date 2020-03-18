cask 'packer@1.1.3' do
  version '1.1.3'
  sha256 'b8ca17aedfbbb8607066528631d4f5992746fe9b2ec1bbc8d33fd1e5c196cd2c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.1.3/packer_1.1.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
