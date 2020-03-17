cask 'consul@1.7.1+ent' do
  version '1.7.1+ent'
  sha256 '27b5895b2a2fcd64b84f54eb627d1977cad812d01b5c1451bcb9c3be1938684e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.1+ent/consul_1.7.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
