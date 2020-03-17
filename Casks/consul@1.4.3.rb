cask 'consul@1.4.3' do
  version '1.4.3'
  sha256 '19373558c5a066cf9f53be53050cef7df04eb6fd11ccd759c60e1da48201e43b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.3/consul_1.4.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
