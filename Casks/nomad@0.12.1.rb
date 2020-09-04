cask 'nomad@0.12.1' do
  version '0.12.1'
  sha256 'bec1c6ec6383edb3a69455a048e474dfdaa2fd35a4e32a462a0b303d31bfcf3d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.1/nomad_0.12.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
