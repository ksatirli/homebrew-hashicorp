cask 'consul@1.6.0-beta2' do
  version '1.6.0-beta2'
  sha256 '16894a6770b1e73923dc30d87194353265b62746a40f734e3ed468af3cbf2ca7'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.0-beta2/consul_1.6.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
