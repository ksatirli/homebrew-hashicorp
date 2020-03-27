cask 'packer@1.0.2' do
  version '1.0.2'
  sha256 '6718b047024083d8ce0ca70535c9fbea0e5f371557e72873fafdfe0a4a2b838a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.0.2/packer_1.0.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
