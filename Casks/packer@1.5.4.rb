cask 'packer@1.5.4' do
  version '1.5.4'
  sha256 'dab5ab9d4801da5206755856bc3f026942ce18391419202a1b0b442c1c2e591d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.4/packer_1.5.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
