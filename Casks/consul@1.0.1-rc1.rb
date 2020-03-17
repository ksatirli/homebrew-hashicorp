cask 'consul@1.0.1-rc1' do
  version '1.0.1-rc1'
  sha256 '42ec6ca4f420c27eac0cc737016fd3c8a2bc8479d4757a07038124d1b5d89f6c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.0.1-rc1/consul_1.0.1-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
