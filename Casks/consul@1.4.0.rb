cask 'consul@1.4.0' do
  version '1.4.0'
  sha256 '8a7118cf29c697ddd072eaf40080d61aea16f606e50ef4e6784ca121c5fa1c1e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.0/consul_1.4.0_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
