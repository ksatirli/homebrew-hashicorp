cask 'nomad@0.9.0-beta3' do
  version '0.9.0-beta3'
  sha256 'b595f89c4ba0083ad4c01b2a69c98ca9f40185a12939715da315a05e87bf5714'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.0-beta3/nomad_0.9.0-beta3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
