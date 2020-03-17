cask 'nomad@0.10.4-rc1' do
  version '0.10.4-rc1'
  sha256 '9dedcf7b343bdefc50d5348476d28b8d2f5218cec5a476286f349734c1f23615'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.10.4-rc1/nomad_0.10.4-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
