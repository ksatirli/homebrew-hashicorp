cask 'packer@1.0.4' do
  version '1.0.4'
  sha256 'a7aef181b9f6371cd8d9c18dc110cd28684eb1095665ba4c9c28786d79d10f17'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.0.4/packer_1.0.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
