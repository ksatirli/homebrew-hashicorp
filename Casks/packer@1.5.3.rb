cask 'packer@1.5.3' do
  version '1.5.3'
  sha256 '2c6c0a4bea062417ce795f7bf3aa9fef29d653093fbd772c510dc19991256da6'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.3/packer_1.5.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
