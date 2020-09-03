cask 'nomad@0.12.0-beta2' do
  version '0.12.0-beta2'
  sha256 '86a18726694090b49f70bb901a96af14c275f2785517cce0453b2827a1e282d7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0-beta2/nomad_0.12.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
