cask 'consul@1.8.0-beta1' do
  version '1.8.0-beta1'
  sha256 'bd6a7513869e54de3fee22e56153479e81eff6844e8f1e4df3d67c73439f5ce7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0-beta1/consul_1.8.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
