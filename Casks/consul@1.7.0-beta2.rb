cask 'consul@1.7.0-beta2' do
  version '1.7.0-beta2'
  sha256 '69f8295abb4248ad259b0a28862b4baf23248fb8b16e4d0880e8a0d69392982e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.7.0-beta2/consul_1.7.0-beta2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
