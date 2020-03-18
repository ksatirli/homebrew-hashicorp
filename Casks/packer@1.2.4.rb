cask 'packer@1.2.4' do
  version '1.2.4'
  sha256 'b3da0ed1bef5b1dc67cf358c3f465ef0b053a7cbe4f3a6459ea1bbd2fe084b7b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.2.4/packer_1.2.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
