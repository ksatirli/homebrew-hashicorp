cask 'consul@1.6.6' do
  version '1.6.6'
  sha256 '69df98fc37574d6749d891c6255293c36a89652c596d2aefb6290e31b21c7b92'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.6/consul_1.6.6_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
