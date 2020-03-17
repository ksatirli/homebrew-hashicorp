cask 'consul@1.6.2+ent' do
  version '1.6.2+ent'
  sha256 'e36f6f6fbda3cb2e7a51fae049aec91c3093f2187098012ca8487daa48fbca9e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.2+ent/consul_1.6.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
