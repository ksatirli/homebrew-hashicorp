cask 'consul@1.7.3' do
  version '1.7.3'
  sha256 '813eab12ae5c1b815c293c0453d1658dc34d123ac40f3b20c4b12258e0b1034c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.3/consul_1.7.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
