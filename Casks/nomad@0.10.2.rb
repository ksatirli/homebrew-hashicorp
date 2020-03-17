cask 'nomad@0.10.2' do
  version '0.10.2'
  sha256 '83449af9b3daba3509686898847cbb9cb8c9c1d6b846b63f2b995e0559109544'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.2/nomad_0.10.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
