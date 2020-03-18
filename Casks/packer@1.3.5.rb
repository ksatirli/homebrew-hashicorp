cask 'packer@1.3.5' do
  version '1.3.5'
  sha256 '22a3442b896120a47f077396e02b14c9474aba8c50fa306f3e6625597546c474'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.3.5/packer_1.3.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
