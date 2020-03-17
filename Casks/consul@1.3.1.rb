cask 'consul@1.3.1' do
  version '1.3.1'
  sha256 'd520c549a8e2ba79169f5e7dbbb0cca03b94d9316427b518f554d04deaaebbd4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.3.1/consul_1.3.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
