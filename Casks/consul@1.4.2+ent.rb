cask 'consul@1.4.2+ent' do
  version '1.4.2+ent'
  sha256 '1264468917e1d89a93d815e10ffcd180c70d8edaa54d7b79f900c317077781b3'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.2+ent/consul_1.4.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
