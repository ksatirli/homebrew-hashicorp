cask 'packer@1.2.0' do
  version '1.2.0'
  sha256 '0897dc57b26903c3b09b0af65646b19391b7d645944827b9a3d335dcf72f778f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.2.0/packer_1.2.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
