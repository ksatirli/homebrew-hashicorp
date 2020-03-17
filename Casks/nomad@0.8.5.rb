cask 'nomad@0.8.5' do
  version '0.8.5'
  sha256 'b213aca736d6aff3cb897a325e39240172b4c2f117be5be4805deb838e25ab1d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.5/nomad_0.8.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
