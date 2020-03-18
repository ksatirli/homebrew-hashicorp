cask 'packer@1.2.1' do
  version '1.2.1'
  sha256 'b0b30cc24aed1b8cded2df903183b884c77f086efffc36ef19876d1c55fef93d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
