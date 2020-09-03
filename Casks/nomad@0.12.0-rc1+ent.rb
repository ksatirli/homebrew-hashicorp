cask 'nomad@0.12.0-rc1+ent' do
  version '0.12.0-rc1+ent'
  sha256 'c30376f915256f0c6833cec8c88601ef81fbc50a0e4a8529acc6e31b4345b62a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0-rc1+ent/nomad_0.12.0-rc1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
