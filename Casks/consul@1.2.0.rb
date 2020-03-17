cask 'consul@1.2.0' do
  version '1.2.0'
  sha256 '7e0cb817bfcc311f7a93fe6fe0b843a4c9d1a30c865a671c71f93c0629288b30'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.2.0/consul_1.2.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
