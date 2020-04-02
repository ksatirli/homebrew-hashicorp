cask 'nomad@0.11.0-beta2' do
  version '0.11.0-beta2'
  sha256 '4e42806b2828738c5bbd7746e9c47772bdc9d78ff13c12b82f3a64367dfca0d4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.0-beta2/nomad_0.11.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
