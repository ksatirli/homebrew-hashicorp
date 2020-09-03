cask 'nomad@0.12.0-beta1' do
  version '0.12.0-beta1'
  sha256 'c60549a93209055a80d6501f7211ef5460f716cf99043f826c06329d9f2feb6e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/nomad/0.12.0-beta1/nomad_0.12.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/nomad/releases.atom'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'

  auto_updates false
  conflicts_with formula: 'nomad'

  binary 'nomad'
end
