cask 'consul@1.6.1' do
  version '1.6.1'
  sha256 '4bc205e06b2921f998cb6ddbe70de57f8e558e226e44aba3f337f2f245678b85'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.1/consul_1.6.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
