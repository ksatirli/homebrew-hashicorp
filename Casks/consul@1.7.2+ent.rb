cask 'consul@1.7.2+ent' do
  version '1.7.2+ent'
  sha256 '18fab5ce3d50373d638a904024c62ab1af5432cf64956de1445bdc26c4dda0df'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.2+ent/consul_1.7.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
