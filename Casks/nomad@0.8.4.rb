cask 'nomad@0.8.4' do
  version '0.8.4'
  sha256 'a50e98a94d5ac31053fc572bab735380266902035a27a95248ef5f636b11dfb6'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.8.4/nomad_0.8.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
