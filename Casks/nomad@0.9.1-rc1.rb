cask 'nomad@0.9.1-rc1' do
  version '0.9.1-rc1'
  sha256 '1b4f2758f95afa4db417ee0ceabec0c8099583148876334d40b7fc1a0a8c22cf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.1-rc1/nomad_0.9.1-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
