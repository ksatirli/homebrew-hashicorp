cask 'consul@1.7.0-beta3' do
  version '1.7.0-beta3'
  sha256 '04450107d479965b29a3baf3ea8399ea74aa7fd096effd46c4df875a28584d60'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0-beta3/consul_1.7.0-beta3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
