cask 'consul@1.8.1+ent' do
  version '1.8.1+ent'
  sha256 '75a2e15b6e7cd992e537e39f5e3b6ebf345417da2ce9d291ab98755f6a3455bf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.1+ent/consul_1.8.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
