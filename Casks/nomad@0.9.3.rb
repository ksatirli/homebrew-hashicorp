cask 'nomad@0.9.3' do
  version '0.9.3'
  sha256 'addf794e8f6ef915df28a10e1cf65f64c07688d472d40181b24359a785db60ea'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.3/nomad_0.9.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
