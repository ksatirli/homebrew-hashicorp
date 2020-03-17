cask 'nomad@0.8.2' do
  version '0.8.2'
  sha256 'f3928d420f1bade5813320b37f168402e701e2317ca7a00bc26c16893b6a27c1'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.2/nomad_0.8.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
