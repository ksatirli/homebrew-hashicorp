cask 'nomad@0.9.5' do
  version '0.9.5'
  sha256 '82015dc76a04b4141b159e042c680170cd43c8cdcb76f63c4ac22ba264b185e1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.5/nomad_0.9.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
