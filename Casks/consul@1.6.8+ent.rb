cask 'consul@1.6.8+ent' do
  version '1.6.8+ent'
  sha256 '33149187047cf06a7fb5c7a56a8c2f9d89f0330ebd12cadb56447442b2856e73'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.8+ent/consul_1.6.8+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
