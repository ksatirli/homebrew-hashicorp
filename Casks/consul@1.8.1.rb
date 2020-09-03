cask 'consul@1.8.1' do
  version '1.8.1'
  sha256 'd4a480587fd8b0293ce5f050aa537723b1a6e173ba3a567cb7fa95b92b483662'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.1/consul_1.8.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
