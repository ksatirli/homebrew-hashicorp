cask 'consul@1.6.5' do
  version '1.6.5'
  sha256 'd1e113f0c54bdf466ae939581c61c7c9e21b88dca1b2ce577bac4c1b69f91e1c'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.5/consul_1.6.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
