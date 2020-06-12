cask 'consul@1.7.3+ent' do
  version '1.7.3+ent'
  sha256 '118b3d0836e536c91997e5e82ad1603c1fb9208148c6fe720dadfe7402343c99'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.3+ent/consul_1.7.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
