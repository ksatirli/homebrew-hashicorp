cask 'consul@1.4.5+ent' do
  version '1.4.5+ent'
  sha256 'b27f31e29dd7bf5a9f6303c4e1261ee7eb6d062952d1df7394207ecbb3d6df53'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.4.5+ent/consul_1.4.5+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
