cask 'consul@1.6.3+ent' do
  version '1.6.3+ent'
  sha256 '860ccaa79a78c539ef55aa28906aa2a7234d6809878dc5b136ada93861987602'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.6.3+ent/consul_1.6.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
