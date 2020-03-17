cask 'nomad@0.10.3' do
  version '0.10.3'
  sha256 '608c074cb8eef3106d965c2a8158909f4747bd8e1b71f2bd1cc8df1742d3d127'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.3/nomad_0.10.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
