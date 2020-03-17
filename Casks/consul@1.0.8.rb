cask 'consul@1.0.8' do
  version '1.0.8'
  sha256 'b9e7a6c8bb284c993669f08b97b1c7df53f3c589aeba105594ea4c87b5af3e75'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.0.8/consul_1.0.8_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
