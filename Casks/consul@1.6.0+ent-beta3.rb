cask 'consul@1.6.0+ent-beta3' do
  version '1.6.0+ent-beta3'
  sha256 'c7d08f495936de7e7544e8ee3ce6904f40d8243a35cb097fdd81dde652b49771'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0+ent-beta3/consul_1.6.0+ent-beta3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
