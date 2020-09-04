cask 'nomad@0.12.4-rc1' do
  version '0.12.4-rc1'
  sha256 '7e6b3cf3fb3180518014e797aeac5c4aa3d1ea5fdbda1e28cbbb229ac514a2a9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.4-rc1/nomad_0.12.4-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
