cask 'consul@1.5.3+ent' do
  version '1.5.3+ent'
  sha256 'b0778c9b3b33d4149ca5d4d8739d8ca3d7ce53c1c5dd3cd4364f1c24addafd26'

  # releases.hashicorp.com was verified as official when first introduced to the cask
  url 'https://releases.hashicorp.com/consul/1.5.3+ent/consul_1.5.3+ent_darwin_amd64.zip'
  appcast 'https://github.com/hashicorp/consul/releases.atom'
  name 'Consul'
  homepage 'https://www.consul.io/'

  auto_updates false

  binary 'consul'
end
