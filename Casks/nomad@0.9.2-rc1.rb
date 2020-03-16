cask 'nomad@0.9.2-rc1' do
  version '0.9.2-rc1'
  sha256 '9ecdde5c62cb8a9ca2b7a83b5d028ec39108354eea3c058400fec6711bc932c3'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.2-rc1/nomad_0.9.2-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
