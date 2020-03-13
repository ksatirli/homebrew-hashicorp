cask 'consul@1.4.0-rc1' do
  version '1.4.0-rc1'
  sha256 '65078518b2958110d2b07244e8a699365f56abc403dce2bdbde9eddafbb5b634'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.0-rc1/consul_1.4.0-rc1_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
