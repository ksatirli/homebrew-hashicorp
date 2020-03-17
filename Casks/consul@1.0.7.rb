cask 'consul@1.0.7' do
  version '1.0.7'
  sha256 '3999366b146738b93454ce9f1c65bf192f13b2700ec468291100faf420f3ea12'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.0.7/consul_1.0.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
