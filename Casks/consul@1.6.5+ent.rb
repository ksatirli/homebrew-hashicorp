cask 'consul@1.6.5+ent' do
  version '1.6.5+ent'
  sha256 '4dd7be1df29ff208bd94b37e8b4806c70b38cdef0d8e48c8f0a1af5d88c92ac9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.5+ent/consul_1.6.5+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
