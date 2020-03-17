cask 'nomad@0.10.4' do
  version '0.10.4'
  sha256 '633f8428b8a8f314914275318fe9213de087041c38c8247e4e1af39a18e205f0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.4/nomad_0.10.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
