cask 'consul@1.6.0+ent-rc1' do
  version '1.6.0+ent-rc1'
  sha256 'cb4553752584ca41bc7a7e45fa960f40098c49a7baa8799290ab35a6c37d16cf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0+ent-rc1/consul_1.6.0+ent-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
