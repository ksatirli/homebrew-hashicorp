cask 'consul@1.6.0+ent-beta2' do
  version '1.6.0+ent-beta2'
  sha256 'e6ffbd1307bf1342fa2546a6715621e7bf438584ffd0d17b1ec6ff643f589fdf'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0+ent-beta2/consul_1.6.0+ent-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
