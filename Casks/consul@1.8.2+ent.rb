cask 'consul@1.8.2+ent' do
  version '1.8.2+ent'
  sha256 'fd437e1d65311609de6937bb0dec2b1613c0416eb5ca492380b2bf09d170672a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.2+ent/consul_1.8.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
