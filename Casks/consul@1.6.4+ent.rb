cask 'consul@1.6.4+ent' do
  version '1.6.4+ent'
  sha256 '4f40069af97f1e3e1da990dcfd7bf53e7341316e9d0d877189c9ef7f1c3c1bde'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.4+ent/consul_1.6.4+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
