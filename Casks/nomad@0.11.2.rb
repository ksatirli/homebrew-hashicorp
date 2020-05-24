cask 'nomad@0.11.2' do
  version '0.11.2'
  sha256 'cfdffe9bb1fa14f94c1c089df5980059b7fdab4e0c0149ca8052a96683c4d1af'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.2/nomad_0.11.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
