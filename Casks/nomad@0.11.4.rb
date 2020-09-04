cask 'nomad@0.11.4' do
  version '0.11.4'
  sha256 'b1eecc79414e15585a96396a815420debd0feb47a889f9cc9eb269cfc1b2f59e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.11.4/nomad_0.11.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
