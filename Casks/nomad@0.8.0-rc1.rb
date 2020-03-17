cask 'nomad@0.8.0-rc1' do
  version '0.8.0-rc1'
  sha256 'fae6d960e5e5876b96e4dbb8e9e8c8bb3952dbc10992c200bdce941d29b969cb'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.0-rc1/nomad_0.8.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
