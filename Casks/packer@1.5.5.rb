cask 'packer@1.5.5' do
  version '1.5.5'
  sha256 '899213557a79476406f8b6122725b0021d46337ee14e01e87f9f5f7cddce1d63'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
