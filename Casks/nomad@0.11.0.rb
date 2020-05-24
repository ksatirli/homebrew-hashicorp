cask 'nomad@0.11.0' do
  version '0.11.0'
  sha256 '992f0ad3c031369e189e33ee5d14b99977d5f15253bc8646a93835ff11514b55'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.0/nomad_0.11.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
