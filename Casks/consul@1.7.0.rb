cask 'consul@1.7.0' do
  version '1.7.0'
  sha256 'a2bafb8fe83083f542553ebe48381b6806c017458f2223e1189827a3528b6ac4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0/consul_1.7.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
