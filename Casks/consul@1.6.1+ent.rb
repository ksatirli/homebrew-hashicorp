cask 'consul@1.6.1+ent' do
  version '1.6.1+ent'
  sha256 '81bac8dd68539108d4554fbb781ca73925e6e245c61fb004147ab4e508e98633'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.1+ent/consul_1.6.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
