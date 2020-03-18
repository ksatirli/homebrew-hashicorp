cask 'packer@1.2.5' do
  version '1.2.5'
  sha256 '3d546eff8179fc0de94ad736718fdaebdfc506536203eade732d9d218fbb347c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
