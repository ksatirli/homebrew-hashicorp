cask 'nomad@0.12.2' do
  version '0.12.2'
  sha256 '50907d2bbf000feee447277317812412196674e456494b73e0f81d5b9e864a72'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.2/nomad_0.12.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
