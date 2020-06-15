cask 'consul@1.6.6+ent' do
  version '1.6.6+ent'
  sha256 '156c1f261d8093ba99273da35176c21a432ec3cfc5f16fb519197cf6975b6597'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.6+ent/consul_1.6.6+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
