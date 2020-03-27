cask 'packer@1.0.0' do
  version '1.0.0'
  sha256 '274f2e45db0e6f6f6673a1c1481afc8c6f402217d984af0ca2956c3488f1ead1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.0.0/packer_1.0.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
