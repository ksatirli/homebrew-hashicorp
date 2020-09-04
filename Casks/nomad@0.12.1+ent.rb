cask 'nomad@0.12.1+ent' do
  version '0.12.1+ent'
  sha256 '5b2481ee362f55f241573fc8203ac1278707795fefc838b488e40a33028ffbe0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.1+ent/nomad_0.12.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
