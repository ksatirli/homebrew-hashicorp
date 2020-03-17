cask 'consul@1.6.0' do
  version '1.6.0'
  sha256 'cda9a251036ce1f14db59af68dbc7499ac88490dfff794c998f8120d00812a58'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0/consul_1.6.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
