cask 'consul@1.7.7' do
  version '1.7.7'
  sha256 'cb4e75e1511788224d431b585b8f10bc98608dc104789a6c3b287998b6415dea'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.7/consul_1.7.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
