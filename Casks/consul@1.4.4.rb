cask 'consul@1.4.4' do
  version '1.4.4'
  sha256 '804a513d4482f214e7124bfa57d7d63d55156abb928e743e1cdfa041b7b131a2'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.4/consul_1.4.4_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
