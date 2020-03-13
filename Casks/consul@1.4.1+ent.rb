cask 'consul@1.4.1+ent' do
  version '1.4.1+ent'
  sha256 '6ff45bd7080a04560268ec8f845ebebdd64fa895004ba04f2abd05ee9317995e'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.1+ent/consul_1.4.1+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
