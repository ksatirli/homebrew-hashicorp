cask 'nomad@0.8.0' do
  version '0.8.0'
  sha256 '5fbb606c3ed050c941cf09c2e65fa608a4ac7f549ac41bef54df67f8b7d65801'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.0/nomad_0.8.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
