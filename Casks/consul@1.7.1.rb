cask 'consul@1.7.1' do
  version '1.7.1'
  sha256 'b33e05518cb53c5c385b9d2968f5e7e646e0fa6e733f6b3e1e15289c306c21e8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.1/consul_1.7.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
