cask 'consul@1.7.0-beta1' do
  version '1.7.0-beta1'
  sha256 'e167ffda6b82c8b6974d190351b1dac2dbfabea3a79bf4914308ea37941b76d9'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0-beta1/consul_1.7.0-beta1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
