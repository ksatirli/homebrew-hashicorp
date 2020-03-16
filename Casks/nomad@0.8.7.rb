cask 'nomad@0.8.7' do
  version '0.8.7'
  sha256 '70e21f908afde83b57e25602939210541222133ccbfabdab68a548df5f3226f2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.7/nomad_0.8.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
