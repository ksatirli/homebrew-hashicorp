cask 'consul@1.3.0+ent' do
  version '1.3.0+ent'
  sha256 '4f5b2b8ce957bb669269909141caca89d759cea6b117ab41eaa06428b743d3e5'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.3.0+ent/consul_1.3.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
