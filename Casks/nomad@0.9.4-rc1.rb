cask 'nomad@0.9.4-rc1' do
  version '0.9.4-rc1'
  sha256 '0391cad05baefbad0c74a656b5b79fb5fd251e745f159e9052f213bfc737cbb6'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.4-rc1/nomad_0.9.4-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
