cask 'nomad@0.10.2-rc1' do
  version '0.10.2-rc1'
  sha256 '66791c94272f8248b1bfd7a66c4375afd446aff842b0314f3d31a06cf0585db2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.2-rc1/nomad_0.10.2-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
