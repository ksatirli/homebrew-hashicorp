cask 'packer@1.5.0' do
  version '1.5.0'
  sha256 'bb7776cf50f081254bfbf6b6f7318d8194b0cf1ef62a316d2d4a349e4fc0dea9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.0/packer_1.5.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
