cask 'nomad@0.8.4-rc1' do
  version '0.8.4-rc1'
  sha256 '4a9b05c06f22f7bcce25e0827856bc90179187f2b4db276517e149680ac30378'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.4-rc1/nomad_0.8.4-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
