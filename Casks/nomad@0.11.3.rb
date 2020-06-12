cask 'nomad@0.11.3' do
  version '0.11.3'
  sha256 '5c4087d6e79e1465bd9464d17d196b489abfb0c3c1290fc56ab88843d92a08da'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.3/nomad_0.11.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
