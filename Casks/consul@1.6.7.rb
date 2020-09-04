cask 'consul@1.6.7' do
  version '1.6.7'
  sha256 'f37eb8a2eff5aeb58f1edc61025d45feca76a859b26c4c8b0a8d0ead111d140d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.7/consul_1.6.7_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
