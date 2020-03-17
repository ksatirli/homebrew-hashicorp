cask 'nomad@0.9.1' do
  version '0.9.1'
  sha256 '1ed53502a3cc71ffc0e752cb77b7c18b7d3dea905c366355f90796616fb38cd2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.1/nomad_0.9.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
