cask 'consul@1.6.0+ent-beta1' do
  version '1.6.0+ent-beta1'
  sha256 '394a0f9bdf2e22040649b1368db6728d9902f707c7cbee759b381cec23fa1e75'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0+ent-beta1/consul_1.6.0+ent-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
