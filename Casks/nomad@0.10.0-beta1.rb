cask 'nomad@0.10.0-beta1' do
  version '0.10.0-beta1'
  sha256 '72cb5d7f81bbddc7c9584153e84bd14e8ee7087a3e17cc0ae40d7947e46b7b33'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.0-beta1/nomad_0.10.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
