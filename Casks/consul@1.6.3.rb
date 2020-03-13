cask 'consul@1.6.3' do
  version '1.6.3'
  sha256 'f6ad99b1595b7b96611e5ea3efb67345828b209611045d9a1ad906780f25625c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.3/consul_1.6.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
