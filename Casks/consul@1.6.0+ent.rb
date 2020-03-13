cask 'consul@1.6.0+ent' do
  version '1.6.0+ent'
  sha256 'af6283ef11a0020abc1261a7d772281259af77c5bb475ae32f75d7195a402f50'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0+ent/consul_1.6.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
