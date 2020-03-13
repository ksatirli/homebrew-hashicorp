cask 'consul@1.2.1' do
  version '1.2.1'
  sha256 '17fcebfd28bb6700e2483a0c1d71210e804821e999ff0babc3142bc8217d8cc3'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.2.1/consul_1.2.1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
