cask 'nomad@0.8.7-rc1' do
  version '0.8.7-rc1'
  sha256 '163cad0e3c2609381b0bce0c4a27aaff35d1cacc2e7e40618adc7a6b6c233e02'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.7-rc1/nomad_0.8.7-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
