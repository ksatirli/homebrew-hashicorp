cask 'nomad@0.9.0-rc2' do
  version '0.9.0-rc2'
  sha256 '2f0b9314f049ed10cbdd40b1cccc0209343a9a8b58de9bc4d47dda615e8d66d5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.0-rc2/nomad_0.9.0-rc2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
