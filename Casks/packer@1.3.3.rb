cask 'packer@1.3.3' do
  version '1.3.3'
  sha256 '6ffbb13bee76e02f7b065955307d454b14773feee9fcfc3b5dd96ed154b931c4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.3.3/packer_1.3.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
