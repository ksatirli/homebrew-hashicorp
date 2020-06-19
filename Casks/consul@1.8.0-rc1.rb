cask 'consul@1.8.0-rc1' do
  version '1.8.0-rc1'
  sha256 '54e89e88bb74d6e203685677d9391ab45ec0deab5d99636b34aaef06607a3eb2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0-rc1/consul_1.8.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
