cask 'nomad@0.8.6' do
  version '0.8.6'
  sha256 'bf473d8a263e7e5a64d88a5dae0e556596b543742d21c4dec31d8bb39ab4de53'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.6/nomad_0.8.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
