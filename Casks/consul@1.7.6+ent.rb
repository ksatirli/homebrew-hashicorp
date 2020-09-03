cask 'consul@1.7.6+ent' do
  version '1.7.6+ent'
  sha256 '3f2122502427112519fcf80b4d644e038d396ea948cd7c5bbbb9ac63eb27a066'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.6+ent/consul_1.7.6+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
