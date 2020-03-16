cask 'nomad@0.9.0-rc1' do
  version '0.9.0-rc1'
  sha256 'c8e2b911f4afb573620bb29f4325c14832d5057469e80eaf2a7a97e2c3911b40'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.0-rc1/nomad_0.9.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
