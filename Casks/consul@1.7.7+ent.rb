cask 'consul@1.7.7+ent' do
  version '1.7.7+ent'
  sha256 '67a4f67e8cb284f4b0a7f70a4b5f5765903fc6b48ae43b6f187d3f867b442167'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.7+ent/consul_1.7.7+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
