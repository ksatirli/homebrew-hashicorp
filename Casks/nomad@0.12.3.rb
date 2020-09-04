cask 'nomad@0.12.3' do
  version '0.12.3'
  sha256 '53f9f0bb2ab5c6f219e140471ec0dfd0bd4b89f23ce5f407309cce1a66aa5219'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.3/nomad_0.12.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
