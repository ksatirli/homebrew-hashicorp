cask 'nomad@0.10.0-rc1' do
  version '0.10.0-rc1'
  sha256 '07b4fd8bae51b4f988175082f2604a070bf808518a22fb37162c60c07cb29f9b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.0-rc1/nomad_0.10.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
