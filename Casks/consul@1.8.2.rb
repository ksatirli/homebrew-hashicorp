cask 'consul@1.8.2' do
  version '1.8.2'
  sha256 '88b464fb1c0713b82cff51ec0d794d3ff7c75e60138d752f0b1bed7f62131500'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.2/consul_1.8.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
