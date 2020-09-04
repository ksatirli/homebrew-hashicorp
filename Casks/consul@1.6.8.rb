cask 'consul@1.6.8' do
  version '1.6.8'
  sha256 '65e6c40df8978b81c45e6a11729c4a83123c33f31f713779eaac79ce677743d8'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.8/consul_1.6.8_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
