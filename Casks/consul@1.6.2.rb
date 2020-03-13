cask 'consul@1.6.2' do
  version '1.6.2'
  sha256 '283146dc098e4b7823fc498604c4416ec10fae2c42bc20daa535923e83b083f4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.2/consul_1.6.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
