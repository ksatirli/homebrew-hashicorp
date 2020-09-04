cask 'nomad@0.12.0' do
  version '0.12.0'
  sha256 'bac24a2835cee40ba9d81a7ee922909787141534f9e8b6513768bb8cf24ec6cc'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0/nomad_0.12.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
