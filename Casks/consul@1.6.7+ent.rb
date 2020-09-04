cask 'consul@1.6.7+ent' do
  version '1.6.7+ent'
  sha256 'ca298c862cb0e86cdf8b728d94874b7b673410351037f2473b551fceb33f0d4a'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.7+ent/consul_1.6.7+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
