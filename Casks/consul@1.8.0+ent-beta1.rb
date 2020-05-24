cask 'consul@1.8.0+ent-beta1' do
  version '1.8.0+ent-beta1'
  sha256 '40407b12515865275bc8657e90e46baea4b4f33fcca80071c46784e9a7bb3e92'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0+ent-beta1/consul_1.8.0+ent-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
