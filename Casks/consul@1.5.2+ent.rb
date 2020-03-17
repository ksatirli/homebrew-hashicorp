cask 'consul@1.5.2+ent' do
  version '1.5.2+ent'
  sha256 'b8990151a0d6be786cdb1e5e191d1ea6259c9a2b8a1ba0b942fe38b1df1e1989'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.5.2+ent/consul_1.5.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
