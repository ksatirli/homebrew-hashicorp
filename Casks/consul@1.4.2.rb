cask 'consul@1.4.2' do
  version '1.4.2'
  sha256 'f34cac59028a6916b781540c4f427e39fc19e76b5b7cb0163cb2d50280e8c0ba'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.2/consul_1.4.2_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
