cask 'consul@1.0.5' do
  version '1.0.5'
  sha256 '00c886875d00afb1dcb1667402a0da0253df985ef5dac8c13cc21b903799610e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.0.5/consul_1.0.5_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
