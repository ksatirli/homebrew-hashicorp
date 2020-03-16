cask 'consul@1.0.2' do
  version '1.0.2'
  sha256 '08bea1c4049b0ba4ac07f3c420674c52837f42f0a424ce4c139029f8ab189da4'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.0.2/consul_1.0.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
