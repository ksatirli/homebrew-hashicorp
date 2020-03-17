cask 'consul@1.0.3' do
  version '1.0.3'
  sha256 'd3999f80d3083ceee800ef8d0cf06dbe88d0449d4056203bd2f7491218b99d1d'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.0.3/consul_1.0.3_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
