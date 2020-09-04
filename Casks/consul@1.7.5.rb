cask 'consul@1.7.5' do
  version '1.7.5'
  sha256 'b4f018bd371ffed15cfdc84704fea593a35b4cc949d6889819eb61fcd586f3c0'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.5/consul_1.7.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
