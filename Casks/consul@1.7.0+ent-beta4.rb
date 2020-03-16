cask 'consul@1.7.0+ent-beta4' do
  version '1.7.0+ent-beta4'
  sha256 'f3517ef18e4cc0c852675c14f5a31f8e074a3f16a87433bcdca7e95c13d64292'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0+ent-beta4/consul_1.7.0+ent-beta4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
