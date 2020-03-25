cask 'nomad@0.10.5' do
  version '0.10.5'
  sha256 '3e56a43a9baec897d80a8811b1751e5e2c71618649fb1ce453ccac534c3dab06'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.5/nomad_0.10.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
