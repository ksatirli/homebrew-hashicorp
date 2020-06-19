cask 'consul@1.8.0+ent-rc1' do
  version '1.8.0+ent-rc1'
  sha256 '3a0c2aeddcdbad8715425866a3308113a5879e57f4d1a5922cc1977b22cb6f1d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0+ent-rc1/consul_1.8.0+ent-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
