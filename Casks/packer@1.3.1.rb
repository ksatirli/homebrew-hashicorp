cask 'packer@1.3.1' do
  version '1.3.1'
  sha256 'c0b42313e3a24573bf53b28ac8d12fc88c652ed625756a7a09d618c6e7c6cd8a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.3.1/packer_1.3.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
