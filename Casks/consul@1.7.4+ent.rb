cask 'consul@1.7.4+ent' do
  version '1.7.4+ent'
  sha256 'ad925e7fc9d8d0791339e2e4bfd0bad2488ab1e752740819f619b73736aef843'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.4+ent/consul_1.7.4+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
