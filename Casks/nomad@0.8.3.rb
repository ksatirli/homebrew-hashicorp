cask 'nomad@0.8.3' do
  version '0.8.3'
  sha256 'd7fdfaf95155f1c28adbd781a6c9afa528a7cb1b2387633fa986eed63f0a14f8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.3/nomad_0.8.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
