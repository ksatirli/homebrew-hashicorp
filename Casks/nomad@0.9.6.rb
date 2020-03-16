cask 'nomad@0.9.6' do
  version '0.9.6'
  sha256 '636a2b042527f353b2cc99a6f480865bf22d17fab7f6b60055eebf62d70887aa'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.6/nomad_0.9.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
