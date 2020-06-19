cask 'consul@1.8.0' do
  version '1.8.0'
  sha256 'e75e51115e864ab622cbc1873c169be642bcaf35c3b4af257243cbabb9b52753'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0/consul_1.8.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
