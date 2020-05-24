cask 'nomad@0.11.1' do
  version '0.11.1'
  sha256 'b9df60ba44ed2076c4b7dca45057bec736dc8eebdb0c847ab85200175898a17c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.1/nomad_0.11.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
