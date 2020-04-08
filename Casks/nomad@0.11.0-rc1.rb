cask 'nomad@0.11.0-rc1' do
  version '0.11.0-rc1'
  sha256 '97ed5fd8678b1cfd0a3d49dd41fe6c44639ff12e1725a71e5f435e58333b5545'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.0-rc1/nomad_0.11.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
