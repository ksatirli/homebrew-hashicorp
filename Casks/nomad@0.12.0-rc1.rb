cask 'nomad@0.12.0-rc1' do
  version '0.12.0-rc1'
  sha256 'f130c3c7011910a3dd60bc22b7a1c348697d4013a7a3ddd7cdd605cea8693600'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0-rc1/nomad_0.12.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
