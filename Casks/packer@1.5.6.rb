cask 'packer@1.5.6' do
  version '1.5.6'
  sha256 '2731a5139d1311e3bd346fb8c4658fbba77eca3714534011cc3037543673c64a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/packer/1.5.6/packer_1.5.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/packer/releases.atom'
  name 'Packer'
  homepage 'https://www.packer.io/'

  auto_updates false
  conflicts_with formula: 'packer'

  binary 'packer'
end
