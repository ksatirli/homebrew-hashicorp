cask 'consul@1.7.6' do
  version '1.7.6'
  sha256 '677b99bd3e105bbad1a71908c3207a23f3c5d928b2b2fcea5e550d1a1bd59cd7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.6/consul_1.7.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
