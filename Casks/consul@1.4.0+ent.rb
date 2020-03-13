cask 'consul@1.4.0+ent' do
  version '1.4.0+ent'
  sha256 '416219bd46e66086653428d6b7b70a42fb33780653f77e4813a74d89d7d266e6'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.0+ent/consul_1.4.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
