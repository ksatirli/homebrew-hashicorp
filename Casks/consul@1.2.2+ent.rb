cask 'consul@1.2.2+ent' do
  version '1.2.2+ent'
  sha256 '6e51569160907873f3b44e6a0d753beeae88fd0a65d376e07dd9a6838c71e130'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.2.2+ent/consul_1.2.2+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false
  conflicts_with formula: 'consul'

  binary 'consul'
end
