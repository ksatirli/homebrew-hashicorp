cask 'consul@1.5.0+ent' do
  version '1.5.0+ent'
  sha256 '0fbd7fd857a45d5c59a0b69e5c303b32712e9b7e1821e15508484fd6e1569b55'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.5.0+ent/consul_1.5.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
