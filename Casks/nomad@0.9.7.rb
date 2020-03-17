cask 'nomad@0.9.7' do
  version '0.9.7'
  sha256 'e2673447949a40d3875b61917953c95ffe1a528e7b35fe68176e9f8b185fa82f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.7/nomad_0.9.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
