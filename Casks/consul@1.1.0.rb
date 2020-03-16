cask 'consul@1.1.0' do
  version '1.1.0'
  sha256 '4ce1a548fc235132e2b39708f63aa0dca438cbf00c0f91e1fdc745fafa19e49f'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.1.0/consul_1.1.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
