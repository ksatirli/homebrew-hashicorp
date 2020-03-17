cask 'nomad@0.9.0-beta2' do
  version '0.9.0-beta2'
  sha256 '2b155b9278fb818d60f00e6fdf3a2e8d1685d69df553d8ec966cb82e8b18b164'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.9.0-beta2/nomad_0.9.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false

  binary 'nomad'
end
