cask 'consul@1.8.0+ent' do
  version '1.8.0+ent'
  sha256 '8cf43db8513bd7f6e803f3148806f740daef936bcec6a17b4b2948aae4f09106'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.8.0+ent/consul_1.8.0+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
