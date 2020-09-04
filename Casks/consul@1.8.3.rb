cask 'consul@1.8.3' do
  version '1.8.3'
  sha256 'cd3c47042b8b766439c79e1e4bccc18cbeaa6e866e3b7eef647a321749452aff'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.3/consul_1.8.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
