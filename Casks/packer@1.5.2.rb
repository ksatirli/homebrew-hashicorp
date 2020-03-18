cask 'packer@1.5.2' do
  version '1.5.2'
  sha256 '1c10d4285907d0cd22282fc378cadffc447bdf7b1fa27f6bafac5a18fb132c2a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.2/packer_1.5.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
