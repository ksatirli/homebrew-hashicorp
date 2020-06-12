cask 'packer@1.6.0' do
  version '1.6.0'
  sha256 '037572085722adbeac22b69940330f86b1e82547056740cf1cc42636b057d2a2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.6.0/packer_1.6.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
