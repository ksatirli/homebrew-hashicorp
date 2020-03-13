cask 'consul@1.4.5' do
  version '1.4.5'
  sha256 '7a5e2aff2e1d64a97eafc63d36aa561e5d44a036912b359c3e34d1e1e7f2ec91'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.5/consul_1.4.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
