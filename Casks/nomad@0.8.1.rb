cask 'nomad@0.8.1' do
  version '0.8.1'
  sha256 '50e0d5c9c6a490cd5913b77bd4760092e549babc9185919664807d1678f8d438'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.1/nomad_0.8.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
