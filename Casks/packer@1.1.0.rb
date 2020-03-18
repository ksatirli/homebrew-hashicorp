cask 'packer@1.1.0' do
  version '1.1.0'
  sha256 '3fbb09b5e2a2c292752c9a0eab899b6a93e5645fa8a4f3fc4b9640f732188406'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.1.0/packer_1.1.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
