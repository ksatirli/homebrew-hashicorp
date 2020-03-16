cask 'nomad@0.9.2' do
  version '0.9.2'
  sha256 'd858858d52d4df13f2eae37b942f9b1552cd2840d8ef73204c42029f7659a2a3'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.2/nomad_0.9.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
