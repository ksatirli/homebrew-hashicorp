cask 'packer@1.4.3' do
  version '1.4.3'
  sha256 '9b479c5442f81991eda777445fd07cc4582c573989863c2df56268b2db791bbc'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
