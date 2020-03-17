cask 'consul@1.7.2' do
  version '1.7.2'
  sha256 'c474f00b022cae38acae2d19b2a707a4fcb08dfdd22875efeefdf052ce19c90b'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.2/consul_1.7.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
