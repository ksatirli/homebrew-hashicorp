cask 'nomad@0.9.4' do
  version '0.9.4'
  sha256 'bb9c1835f75e95df1f7d2d96f1a8c49e6645372484996396c48b09268d931b48'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.4/nomad_0.9.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
